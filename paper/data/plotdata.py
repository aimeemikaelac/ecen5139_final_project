#!/usr/bin/python

from pylab import plotfile, show, legend, figure, semilogy, title, xlabel, ylabel, grid, savefig, plot, scatter, semilogx, loglog, axhline
import numpy
import csv

utilization_file = open("utilization.csv")
#requires the fields names to be the first row of the file
utilization_reader = csv.DictReader(utilization_file)

markers = ['o', '*', 'x', 'D', '8', 's']
colors = ['blue', 'green', 'black', 'cyan', 'purple', 'brown']
queue_names_map = {'minheap_verilog':'Min-Heap', 'midterm_verilog':'Tagged Up/Down Sorter', 'huang':'Huang, et. al.', 'kumar':'Kumar, et. al.'}

data_dict = {}

minheap_verilog_luts = []
minheap_verilog_ff = []
minheap_verilog_time = []
minheap_verilog_sizes = []

midterm_verilog_luts = []
midterm_verilog_ff = []
midterm_verilog_time = []
midterm_verilog_sizes = []

all_sizes = [1]

for row in utilization_reader:
    time_tokens = row['time'].split(":")
    minutes = float(time_tokens[0])
    seconds = float(time_tokens[1])
    time_total = minutes + seconds/60
    if row['queue'] not in data_dict:
        currentDict = {}
        currentDict['luts'] = []
        currentDict['ff'] = []
        currentDict['times'] = []
        currentDict['sizes'] = []
        data_dict[row['queue']] = currentDict

    data_dict[row['queue']]['luts'].append(int(row['lut']))
    data_dict[row['queue']]['ff'].append(int(row['slice']))
    data_dict[row['queue']]['times'].append(time_total)
    data_dict[row['queue']]['sizes'].append(int(row['size']))
    all_sizes.append(int(row['size']))

all_sizes = sorted(set(all_sizes))

i=0
fits = []
queue_names = []
for queue, queue_data in data_dict.iteritems():
    if queue == 'huang':
        continue
    queue_names.append(queue_names_map[queue])
    sizes, luts = (list(t) for t in zip(*sorted(zip(queue_data['sizes'], queue_data['luts']))))
    fit = numpy.polyfit(numpy.log(sizes), numpy.log(luts), 1)
    fit_fn = numpy.poly1d(fit)
    fits.append(fit_fn)
    loglog(sizes, luts, marker=markers[i], linestyle = 'None', c=colors[i])
    i = i + 1

xlabel("Size of Priority Queue")
ylabel("LUT Utilization")
legend(queue_names, loc=4)

for i in range(len(fits)):
    fit = fits[i]
    ys = lambda x: numpy.exp(fit(numpy.log(x)))
    loglog(all_sizes, ys(all_sizes), c=colors[i])

axhline(53200, linestyle='dashed', color='red')

grid()

savefig("lut_utilization.pdf", bbox_inches='tight')


figure()

i = 0
fits = []
queue_names = []
for queue, queue_data in data_dict.iteritems():
    queue_names.append(queue_names_map[queue])
    sizes, ffs = (list(t) for t in zip(*sorted(zip(queue_data['sizes'], queue_data['ff']))))
    fit = numpy.polyfit(numpy.log(sizes), numpy.log(ffs), 1)
    fit_fn = numpy.poly1d(fit)
    fits.append(fit_fn)
    loglog(sizes, ffs, marker=markers[i], c=colors[i], linestyle='None')
    i = i + 1


xlabel("Size of Priority Queue")
ylabel("Flip-flop Utilization")
legend(queue_names, loc=4)
grid()

for i in range(len(fits)):
    fit = fits[i]
    ys = lambda x: numpy.exp(fit(numpy.log(x)))
    loglog(all_sizes, ys(all_sizes), c=colors[i])

axhline(106400, linestyle='dashed', color='red')

savefig("ff_utilization.pdf", bbox_inches='tight')

figure()

i = 0
queue_names = []
for queue, queue_data in data_dict.iteritems():
    if queue == 'kumar' or queue == 'huang':
        continue
    queue_names.append(queue_names_map[queue])
    sizes, times = (list(t) for t in zip(*sorted(zip(queue_data['sizes'], queue_data['times']))))
    loglog(sizes, times, marker=markers[i])
    i = i + 1

xlabel("Size of Priority Queue")
ylabel("Synthesis time")
legend(queue_names, loc=4)
grid()

savefig("synthesis_times.pdf", bbox_inches='tight')

show()
