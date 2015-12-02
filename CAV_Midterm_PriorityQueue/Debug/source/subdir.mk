################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../source/priorityQueueMidterm.cpp 

OBJS += \
./source/priorityQueueMidterm.o 

CPP_DEPS += \
./source/priorityQueueMidterm.d 


# Each subdirectory must supply rules for building sources it contributes
source/priorityQueueMidterm.o: /home/michael/Documents/CAV_Midterm_PriorityQueue/source/priorityQueueMidterm.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/Xilinx/Vivado_HLS/2014.1/include -I/Xilinx/Vivado_HLS/2014.1/lnx64/tools/systemc/include -I/Xilinx/Vivado_HLS/2014.1/include/ap_sysc -I/home/michael/Documents -I/Xilinx/Vivado_HLS/2014.1/lnx64/tools/auto_cc/include -I/Xilinx/Vivado_HLS/2014.1/include/etc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


