################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../source/priorityQueueMidterm_Verilog_Runner.cpp 

OBJS += \
./source/priorityQueueMidterm_Verilog_Runner.o 

CPP_DEPS += \
./source/priorityQueueMidterm_Verilog_Runner.d 


# Each subdirectory must supply rules for building sources it contributes
source/priorityQueueMidterm_Verilog_Runner.o: /home/michael/ecen5139_final_project/CAV_MidtermPriorityQueue_Verilog_Runner/source/priorityQueueMidterm_Verilog_Runner.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/home/michael/ecen5139_final_project -I/Xilinx/Vivado_HLS/2014.1/include -I/Xilinx/Vivado_HLS/2014.1/lnx64/tools/systemc/include -I/Xilinx/Vivado_HLS/2014.1/include/ap_sysc -I/Xilinx/Vivado_HLS/2014.1/lnx64/tools/auto_cc/include -I/Xilinx/Vivado_HLS/2014.1/include/etc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


