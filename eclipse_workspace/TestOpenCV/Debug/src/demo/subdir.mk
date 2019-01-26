################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/demo/dm03_maskbit.cpp \
../src/demo/dm04_mat.cpp 

OBJS += \
./src/demo/dm03_maskbit.o \
./src/demo/dm04_mat.o 

CPP_DEPS += \
./src/demo/dm03_maskbit.d \
./src/demo/dm04_mat.d 


# Each subdirectory must supply rules for building sources it contributes
src/demo/%.o: ../src/demo/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/Users/lisujia/workspace/LearnOPENCV/opencv_lib/release/include/opencv4 -O0 -g3 -Wall -c -fmessage-length=0 -std=c++11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


