--  This spec has been automatically generated from STM32F0x1.svd

--  Definition of the device's interrupts
package STM32_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   --  Window Watchdog interrupt
   WWDG                                   : constant := 0;

   --  PVD and VDDIO2 supply comparator interrupt
   PVD                                    : constant := 1;

   --  RTC interrupts
   RTC                                    : constant := 2;

   --  Flash global interrupt
   FLASH                                  : constant := 3;

   --  RCC and CRS global interrupts
   RCC_CRS                                : constant := 4;

   --  EXTI Line[1:0] interrupts
   EXTI0_1                                : constant := 5;

   --  EXTI Line[3:2] interrupts
   EXTI2_3                                : constant := 6;

   --  EXTI Line15 and EXTI4 interrupts
   EXTI4_15                               : constant := 7;

   --  Touch sensing interrupt
   TSC                                    : constant := 8;

   --  DMA1 channel 1 interrupt
   DMA1_CH1                               : constant := 9;

   --  DMA1 channel 2 and 3 and DMA2 channel 1 and 2 interrupt
   DMA1_CH2_3_DMA2_CH1_2                  : constant := 10;

   --  DMA1 channel 4, 5, 6 and 7 and DMA2 channel 3, 4 and 5 interrupts
   DMA1_CH4_5_6_7_DMA2_CH3_4_5            : constant := 11;

   --  ADC and comparator interrupts
   ADC_COMP                               : constant := 12;

   --  TIM1 break, update, trigger and commutation interrupt
   TIM1_BRK_UP_TRG_COM                    : constant := 13;

   --  TIM1 Capture Compare interrupt
   TIM1_CC                                : constant := 14;

   --  TIM2 global interrupt
   TIM2                                   : constant := 15;

   --  TIM3 global interrupt
   TIM3                                   : constant := 16;

   --  TIM6 global interrupt and DAC underrun interrupt
   TIM6_DAC                               : constant := 17;

   --  TIM7 global interrupt
   TIM7                                   : constant := 18;

   --  TIM14 global interrupt
   TIM14                                  : constant := 19;

   --  TIM15 global interrupt
   TIM15                                  : constant := 20;

   --  TIM16 global interrupt
   TIM16                                  : constant := 21;

   --  TIM17 global interrupt
   TIM17                                  : constant := 22;

   --  I2C1 global interrupt
   I2C1                                   : constant := 23;

   --  I2C2 global interrupt
   I2C2                                   : constant := 24;

   --  SPI1_global_interrupt
   SPI1                                   : constant := 25;

   --  SPI2 global interrupt
   SPI2                                   : constant := 26;

   --  USART1 global interrupt
   USART1                                 : constant := 27;

   --  USART2 global interrupt
   USART2                                 : constant := 28;

   --  USART3, USART4, USART5, USART6, USART7, USART8 global interrupt
   USART3_4_5_6_7_8                       : constant := 29;

   --  CEC and CAN global interrupt
   CEC_CAN                                : constant := 30;

   --  USB global interrupt
   USB                                    : constant := 31;

end STM32_SVD.Interrupts;