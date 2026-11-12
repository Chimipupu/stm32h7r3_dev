################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/dev_work/git/other/WeActStudio.STM32H7R3Zx_CoreBoard/Examples/00-ExtMemLoader/ExtMemLoader/Core/Src/extmem_manager.c \
C:/dev_work/git/other/WeActStudio.STM32H7R3Zx_CoreBoard/Examples/00-ExtMemLoader/ExtMemLoader/Core/Src/extmemloader_init.c \
C:/dev_work/git/other/WeActStudio.STM32H7R3Zx_CoreBoard/Examples/00-ExtMemLoader/ExtMemLoader/Core/Src/gpio.c \
C:/dev_work/git/other/WeActStudio.STM32H7R3Zx_CoreBoard/Examples/00-ExtMemLoader/ExtMemLoader/Core/Src/stm32h7rsxx_hal_msp.c \
C:/dev_work/git/other/WeActStudio.STM32H7R3Zx_CoreBoard/Examples/00-ExtMemLoader/ExtMemLoader/Core/Src/xspi.c 

OBJS += \
./Application/User/Core/extmem_manager.o \
./Application/User/Core/extmemloader_init.o \
./Application/User/Core/gpio.o \
./Application/User/Core/stm32h7rsxx_hal_msp.o \
./Application/User/Core/xspi.o 

C_DEPS += \
./Application/User/Core/extmem_manager.d \
./Application/User/Core/extmemloader_init.d \
./Application/User/Core/gpio.d \
./Application/User/Core/stm32h7rsxx_hal_msp.d \
./Application/User/Core/xspi.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/Core/extmem_manager.o: C:/dev_work/git/other/WeActStudio.STM32H7R3Zx_CoreBoard/Examples/00-ExtMemLoader/ExtMemLoader/Core/Src/extmem_manager.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7R3xx -DSTM32_EXTMEMLOADER_STM32CUBETARGET -c -I../../../ExtMemLoader/Core/Inc -I../../../Drivers/STM32H7RSxx_HAL_Driver/Inc -I../../../Drivers/STM32H7RSxx_HAL_Driver/Inc/Legacy -I../../../Middlewares/ST/STM32_ExtMem_Loader/core -I../../../Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM -I../../../Middlewares/ST/STM32_ExtMem_Loader/STM32Cube -I../../../Middlewares/ST/STM32_ExtMem_Manager -I../../../Middlewares/ST/STM32_ExtMem_Manager/sal -I../../../Middlewares/ST/STM32_ExtMem_Manager/nor_sfdp -I../../../Middlewares/ST/STM32_ExtMem_Manager/psram -I../../../Middlewares/ST/STM32_ExtMem_Manager/sdcard -I../../../Middlewares/ST/STM32_ExtMem_Manager/user -I../../../Drivers/CMSIS/Device/ST/STM32H7RSxx/Include -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/extmemloader_init.o: C:/dev_work/git/other/WeActStudio.STM32H7R3Zx_CoreBoard/Examples/00-ExtMemLoader/ExtMemLoader/Core/Src/extmemloader_init.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7R3xx -DSTM32_EXTMEMLOADER_STM32CUBETARGET -c -I../../../ExtMemLoader/Core/Inc -I../../../Drivers/STM32H7RSxx_HAL_Driver/Inc -I../../../Drivers/STM32H7RSxx_HAL_Driver/Inc/Legacy -I../../../Middlewares/ST/STM32_ExtMem_Loader/core -I../../../Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM -I../../../Middlewares/ST/STM32_ExtMem_Loader/STM32Cube -I../../../Middlewares/ST/STM32_ExtMem_Manager -I../../../Middlewares/ST/STM32_ExtMem_Manager/sal -I../../../Middlewares/ST/STM32_ExtMem_Manager/nor_sfdp -I../../../Middlewares/ST/STM32_ExtMem_Manager/psram -I../../../Middlewares/ST/STM32_ExtMem_Manager/sdcard -I../../../Middlewares/ST/STM32_ExtMem_Manager/user -I../../../Drivers/CMSIS/Device/ST/STM32H7RSxx/Include -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/gpio.o: C:/dev_work/git/other/WeActStudio.STM32H7R3Zx_CoreBoard/Examples/00-ExtMemLoader/ExtMemLoader/Core/Src/gpio.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7R3xx -DSTM32_EXTMEMLOADER_STM32CUBETARGET -c -I../../../ExtMemLoader/Core/Inc -I../../../Drivers/STM32H7RSxx_HAL_Driver/Inc -I../../../Drivers/STM32H7RSxx_HAL_Driver/Inc/Legacy -I../../../Middlewares/ST/STM32_ExtMem_Loader/core -I../../../Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM -I../../../Middlewares/ST/STM32_ExtMem_Loader/STM32Cube -I../../../Middlewares/ST/STM32_ExtMem_Manager -I../../../Middlewares/ST/STM32_ExtMem_Manager/sal -I../../../Middlewares/ST/STM32_ExtMem_Manager/nor_sfdp -I../../../Middlewares/ST/STM32_ExtMem_Manager/psram -I../../../Middlewares/ST/STM32_ExtMem_Manager/sdcard -I../../../Middlewares/ST/STM32_ExtMem_Manager/user -I../../../Drivers/CMSIS/Device/ST/STM32H7RSxx/Include -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/stm32h7rsxx_hal_msp.o: C:/dev_work/git/other/WeActStudio.STM32H7R3Zx_CoreBoard/Examples/00-ExtMemLoader/ExtMemLoader/Core/Src/stm32h7rsxx_hal_msp.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7R3xx -DSTM32_EXTMEMLOADER_STM32CUBETARGET -c -I../../../ExtMemLoader/Core/Inc -I../../../Drivers/STM32H7RSxx_HAL_Driver/Inc -I../../../Drivers/STM32H7RSxx_HAL_Driver/Inc/Legacy -I../../../Middlewares/ST/STM32_ExtMem_Loader/core -I../../../Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM -I../../../Middlewares/ST/STM32_ExtMem_Loader/STM32Cube -I../../../Middlewares/ST/STM32_ExtMem_Manager -I../../../Middlewares/ST/STM32_ExtMem_Manager/sal -I../../../Middlewares/ST/STM32_ExtMem_Manager/nor_sfdp -I../../../Middlewares/ST/STM32_ExtMem_Manager/psram -I../../../Middlewares/ST/STM32_ExtMem_Manager/sdcard -I../../../Middlewares/ST/STM32_ExtMem_Manager/user -I../../../Drivers/CMSIS/Device/ST/STM32H7RSxx/Include -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/xspi.o: C:/dev_work/git/other/WeActStudio.STM32H7R3Zx_CoreBoard/Examples/00-ExtMemLoader/ExtMemLoader/Core/Src/xspi.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7R3xx -DSTM32_EXTMEMLOADER_STM32CUBETARGET -c -I../../../ExtMemLoader/Core/Inc -I../../../Drivers/STM32H7RSxx_HAL_Driver/Inc -I../../../Drivers/STM32H7RSxx_HAL_Driver/Inc/Legacy -I../../../Middlewares/ST/STM32_ExtMem_Loader/core -I../../../Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM -I../../../Middlewares/ST/STM32_ExtMem_Loader/STM32Cube -I../../../Middlewares/ST/STM32_ExtMem_Manager -I../../../Middlewares/ST/STM32_ExtMem_Manager/sal -I../../../Middlewares/ST/STM32_ExtMem_Manager/nor_sfdp -I../../../Middlewares/ST/STM32_ExtMem_Manager/psram -I../../../Middlewares/ST/STM32_ExtMem_Manager/sdcard -I../../../Middlewares/ST/STM32_ExtMem_Manager/user -I../../../Drivers/CMSIS/Device/ST/STM32H7RSxx/Include -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User-2f-Core

clean-Application-2f-User-2f-Core:
	-$(RM) ./Application/User/Core/extmem_manager.cyclo ./Application/User/Core/extmem_manager.d ./Application/User/Core/extmem_manager.o ./Application/User/Core/extmem_manager.su ./Application/User/Core/extmemloader_init.cyclo ./Application/User/Core/extmemloader_init.d ./Application/User/Core/extmemloader_init.o ./Application/User/Core/extmemloader_init.su ./Application/User/Core/gpio.cyclo ./Application/User/Core/gpio.d ./Application/User/Core/gpio.o ./Application/User/Core/gpio.su ./Application/User/Core/stm32h7rsxx_hal_msp.cyclo ./Application/User/Core/stm32h7rsxx_hal_msp.d ./Application/User/Core/stm32h7rsxx_hal_msp.o ./Application/User/Core/stm32h7rsxx_hal_msp.su ./Application/User/Core/xspi.cyclo ./Application/User/Core/xspi.d ./Application/User/Core/xspi.o ./Application/User/Core/xspi.su

.PHONY: clean-Application-2f-User-2f-Core

