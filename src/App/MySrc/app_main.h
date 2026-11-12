/**
 * @file app_main.h
 * @author Chimipupu(https://github.com/Chimipupu)
 * @brief アプリメイン for STM32H7R3Z8J6
 * @version 0.1
 * @date 2026-05-20
 * @copyright Copyright (c) 2026 Chimipupu All Rights Reserved.
 */

#ifndef APP_MAIN_H
#define APP_MAIN_H

// C Std Lib
#include <string.h>
#include <stdint.h>
#include <stdbool.h>
#include <math.h>

// ST Lib
#include "stm32h7rsxx_hal.h"
#include "gpio.h"
#include "usb_device.h"
#include "usbd_cdc_if.h"

#ifdef __cplusplus
extern "C" {
#endif

// -----------------------------------------------------------
void DWT_Init(void);
uint32_t get_cpu_cycle_cnt(void);
void delay_cycle_ms(uint32_t ms);
void app_main_init(void);
void app_main(void);
// -----------------------------------------------------------

#ifdef __cplusplus
}
#endif

#endif // APP_MAIN_H