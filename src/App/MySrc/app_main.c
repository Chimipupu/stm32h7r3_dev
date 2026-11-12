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

#define PI_CALC_ITERATIONS     3
static volatile double s_pi_result = 0.0;
static double _calc_pi_gauss_legendre(uint32_t iterations);
// -----------------------------------------------------------
//  確実にSTM32H7R3Z8J6の倍精度FPUでvsqrt.f64命令1発（約28サイクル）させるラッパ
static inline double _hw_sqrt(double val)
{
    double res;
    __asm volatile ("vsqrt.f64 %P0, %P1" : "=w" (res) : "w" (val));
    return res;
}

/**
 * @brief ガウスルジャンドルで円周率を計算
 * @note STM32H7R3Z8J6のFPUは倍精度なのでFPUで計算
 * @param iterations 計算の反復回数
 * @return double 計算した円周率の値
 */
static double _calc_pi_gauss_legendre(uint32_t iterations)
{
    double a = 1.0;
#if 1
    double b = 0.70710678118654752440; /* 1 / sqrt(2) */
#else
    double b = 1.0 / sqrt(2.0);
#endif
    double t = 0.25;
    double p = 1.0;
    double a_next;
    double b_next;
    double diff;
    double sum;
    uint32_t i;

    for (i = 0; i < iterations; ++i)
    {
        a_next = (a + b) * 0.5;
        b_next = _hw_sqrt(a * b);
        diff   = a - a_next;
        t     -= p * (diff * diff); /* pow()を使わず乗算にする */
        p     *= 2.0;

        a = a_next;
        b = b_next;
    }

    sum = a + b;
    return (sum * sum) / (4.0 * t);
}
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
    // I-CacheとD-Cacheを有効化
    if ((SCB->CCR & SCB_CCR_IC_Msk) == 0U) {
        SCB_EnableICache();
    }
    if ((SCB->CCR & SCB_CCR_DC_Msk) == 0U) {
        SCB_EnableDCache();
    }

    memset(&g_tx_usb_cdc_str_buf[0], 0x00, sizeof(g_tx_usb_cdc_str_buf));
    g_tx_usb_cdc_str_len = 0;

    DWT_Init();
}

void app_main(void)
{
    volatile uint32_t start_cycle;
    volatile uint32_t end_cycle;
    volatile uint32_t proc_cycle;
    volatile uint32_t proc_time_us = 0;    // 処理時間 us

    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, s_led_val ? GPIO_PIN_SET : GPIO_PIN_RESET);
    s_led_val ^= 1;


    // [円周率の計算時間で処理速度を評価]
    // 600MHz動作、I-CacheとD-Cacheあり、最適化=Os、円周率3回反復 -> 244サイクルで406.748ns
    start_cycle = get_cpu_cycle_cnt();
    s_pi_result = _calc_pi_gauss_legendre(PI_CALC_ITERATIONS);
    end_cycle = get_cpu_cycle_cnt();
    proc_cycle = end_cycle - start_cycle;
    proc_time_us = proc_cycle / (SystemCoreClock / 1000000);
    (void)proc_time_us;

#if 0
    g_tx_usb_cdc_str_len = sprintf((char *) &g_tx_usb_cdc_str_buf[0],"Cpu Cycle: %lu\r\n", (unsigned long)s_cpu_cycle);
    CDC_Transmit_HS(&g_tx_usb_cdc_str_buf[0], g_tx_usb_cdc_str_len);
#endif

    delay_cycle_ms(100);
}
// -----------------------------------------------------------