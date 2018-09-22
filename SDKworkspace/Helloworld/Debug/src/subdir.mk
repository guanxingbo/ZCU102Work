################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/config.c \
../src/gic_setup.c \
../src/ipi.c \
../src/main.c \
../src/pm_cfg_obj.c \
../src/pm_ipi.c \
../src/test_aux.c 

OBJS += \
./src/config.o \
./src/gic_setup.o \
./src/ipi.o \
./src/main.o \
./src/pm_cfg_obj.o \
./src/pm_ipi.o \
./src/test_aux.o 

C_DEPS += \
./src/config.d \
./src/gic_setup.d \
./src/ipi.d \
./src/main.d \
./src/pm_cfg_obj.d \
./src/pm_ipi.d \
./src/test_aux.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM R5 gcc compiler'
	armr5-none-eabi-gcc -DARMR5 -Wall -O0 -g3 -I../../Helloworld_bsp/psu_cortexr5_0/include -I/home/guan/workspace/Helloworld/src -c -fmessage-length=0 -MT"$@" -mcpu=cortex-r5 -mfloat-abi=hard  -mfpu=vfpv3-d16 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


