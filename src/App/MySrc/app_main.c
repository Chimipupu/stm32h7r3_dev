/**
 * @file app_main.c
 * @author Chimipupu(https://github.com/Chimipupu)
 * @brief アプリメイン for STM32H7R3Z8J6
 * @version 0.1
 * @date 2026-05-20
 * @copyright Copyright (c) 2026 Chimipupu All Rights Reserved.
 */

#include "app_main.h"

// -----------------------------------------------------------
static uint8_t g_tx_usb_cdc_str_buf[32] = {0};
static uint32_t g_tx_usb_cdc_str_len = 0;
static uint64_t s_cpu_cycle = 0;
static uint32_t s_led_val = 0;

// -----------------------------------------------------------
// [API]

void DWT_Init(void)
{
    CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk;
    DWT->CYCCNT = 0U;
    DWT->CTRL |= DWT_CTRL_CYCCNTENA_Msk;
}

uint32_t get_cpu_cycle_cnt(void)
{
    return DWT->CYCCNT;
}

void delay_cycle_ms(uint32_t ms)
{
    const uint32_t cycles_per_ms = (SystemCoreClock + 999U) / 1000U;

    while (ms > 0U)
    {
        const uint32_t start = DWT->CYCCNT;

        while ((uint32_t)(DWT->CYCCNT - start) < cycles_per_ms)
        {
            asm volatile("nop");
        }

        ms--;
    }
}

void app_main_init(void)
{
    memset(&g_tx_usb_cdc_str_buf[0], 0x00, sizeof(g_tx_usb_cdc_str_buf));
    g_tx_usb_cdc_str_len = 0;

    DWT_Init();
}

void app_main(void)
{
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, s_led_val ? GPIO_PIN_SET : GPIO_PIN_RESET);
    s_led_val ^= 1;

    s_cpu_cycle = get_cpu_cycle_cnt();
    g_tx_usb_cdc_str_len = sprintf((char *) &g_tx_usb_cdc_str_buf[0],"Cpu Cycle: %lu\r\n", (unsigned long)s_cpu_cycle);
    CDC_Transmit_HS(&g_tx_usb_cdc_str_buf[0], g_tx_usb_cdc_str_len);

    delay_cycle_ms(100);
}
// -----------------------------------------------------------