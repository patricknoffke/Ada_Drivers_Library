--  This spec has been automatically generated from STM32F410.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.RCC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_HSITRIM_Field is HAL.UInt5;
   subtype CR_HSICAL_Field is HAL.UInt8;

   --  clock control register
   type CR_Register is record
      --  Internal high-speed clock enable
      HSION          : Boolean := True;
      --  Read-only. Internal high-speed clock ready flag
      HSIRDY         : Boolean := True;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Internal high-speed clock trimming
      HSITRIM        : CR_HSITRIM_Field := 16#10#;
      --  Read-only. Internal high-speed clock calibration
      HSICAL         : CR_HSICAL_Field := 16#0#;
      --  HSE clock enable
      HSEON          : Boolean := False;
      --  Read-only. HSE clock ready flag
      HSERDY         : Boolean := False;
      --  HSE clock bypass
      HSEBYP         : Boolean := False;
      --  Clock security system enable
      CSSON          : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Main PLL (PLL) enable
      PLLON          : Boolean := False;
      --  Read-only. Main PLL (PLL) clock ready flag
      PLLRDY         : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      HSION          at 0 range 0 .. 0;
      HSIRDY         at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      HSITRIM        at 0 range 3 .. 7;
      HSICAL         at 0 range 8 .. 15;
      HSEON          at 0 range 16 .. 16;
      HSERDY         at 0 range 17 .. 17;
      HSEBYP         at 0 range 18 .. 18;
      CSSON          at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      PLLON          at 0 range 24 .. 24;
      PLLRDY         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  PLLCFGR_PLLM array
   type PLLCFGR_PLLM_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for PLLCFGR_PLLM
   type PLLCFGR_PLLM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PLLM as a value
            Val : HAL.UInt6;
         when True =>
            --  PLLM as an array
            Arr : PLLCFGR_PLLM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for PLLCFGR_PLLM_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  PLLCFGR_PLLN array
   type PLLCFGR_PLLN_Field_Array is array (0 .. 8) of Boolean
     with Component_Size => 1, Size => 9;

   --  Type definition for PLLCFGR_PLLN
   type PLLCFGR_PLLN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PLLN as a value
            Val : HAL.UInt9;
         when True =>
            --  PLLN as an array
            Arr : PLLCFGR_PLLN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for PLLCFGR_PLLN_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  PLLCFGR_PLLP array
   type PLLCFGR_PLLP_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PLLCFGR_PLLP
   type PLLCFGR_PLLP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PLLP as a value
            Val : HAL.UInt2;
         when True =>
            --  PLLP as an array
            Arr : PLLCFGR_PLLP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PLLCFGR_PLLP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PLLCFGR_PLLQ array
   type PLLCFGR_PLLQ_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PLLCFGR_PLLQ
   type PLLCFGR_PLLQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PLLQ as a value
            Val : HAL.UInt4;
         when True =>
            --  PLLQ as an array
            Arr : PLLCFGR_PLLQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PLLCFGR_PLLQ_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PLLCFGR_PLLR array
   type PLLCFGR_PLLR_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for PLLCFGR_PLLR
   type PLLCFGR_PLLR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PLLR as a value
            Val : HAL.UInt3;
         when True =>
            --  PLLR as an array
            Arr : PLLCFGR_PLLR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PLLCFGR_PLLR_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  PLL configuration register
   type PLLCFGR_Register is record
      --  Division factor for the main PLL (PLL) and audio PLL (PLLI2S) input
      --  clock
      PLLM           : PLLCFGR_PLLM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Main PLL (PLL) multiplication factor for VCO
      PLLN           : PLLCFGR_PLLN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Main PLL (PLL) division factor for main system clock
      PLLP           : PLLCFGR_PLLP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  Main PLL(PLL) and audio PLL (PLLI2S) entry clock source
      PLLSRC         : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Main PLL (PLL) division factor for USB OTG FS, SDIO and random number
      --  generator clocks
      PLLQ           : PLLCFGR_PLLQ_Field :=
                        (As_Array => False, Val => 16#1#);
      --  PLLR1
      PLLR           : PLLCFGR_PLLR_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLLCFGR_Register use record
      PLLM           at 0 range 0 .. 5;
      PLLN           at 0 range 6 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PLLP           at 0 range 16 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PLLSRC         at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      PLLQ           at 0 range 24 .. 27;
      PLLR           at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  CFGR_SW array
   type CFGR_SW_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CFGR_SW
   type CFGR_SW_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SW as a value
            Val : HAL.UInt2;
         when True =>
            --  SW as an array
            Arr : CFGR_SW_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CFGR_SW_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CFGR_SWS array
   type CFGR_SWS_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CFGR_SWS
   type CFGR_SWS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWS as a value
            Val : HAL.UInt2;
         when True =>
            --  SWS as an array
            Arr : CFGR_SWS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CFGR_SWS_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CFGR_HPRE_Field is HAL.UInt4;
   --  CFGR_PPRE array element
   subtype CFGR_PPRE_Element is HAL.UInt3;

   --  CFGR_PPRE array
   type CFGR_PPRE_Field_Array is array (1 .. 2) of CFGR_PPRE_Element
     with Component_Size => 3, Size => 6;

   --  Type definition for CFGR_PPRE
   type CFGR_PPRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPRE as a value
            Val : HAL.UInt6;
         when True =>
            --  PPRE as an array
            Arr : CFGR_PPRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for CFGR_PPRE_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   subtype CFGR_RTCPRE_Field is HAL.UInt5;
   subtype CFGR_MCO1_Field is HAL.UInt2;
   subtype CFGR_MCO1PRE_Field is HAL.UInt3;
   subtype CFGR_MCO2PRE_Field is HAL.UInt3;
   subtype CFGR_MCO2_Field is HAL.UInt2;

   --  clock configuration register
   type CFGR_Register is record
      --  System clock switch
      SW             : CFGR_SW_Field := (As_Array => False, Val => 16#0#);
      --  Read-only. System clock switch status
      SWS            : CFGR_SWS_Field := (As_Array => False, Val => 16#0#);
      --  AHB prescaler
      HPRE           : CFGR_HPRE_Field := 16#0#;
      --  MCO output enable
      MCO1EN         : Boolean := False;
      --  MCO output enable
      MCO2EN         : Boolean := False;
      --  APB Low speed prescaler (APB1)
      PPRE           : CFGR_PPRE_Field := (As_Array => False, Val => 16#0#);
      --  HSE division factor for RTC clock
      RTCPRE         : CFGR_RTCPRE_Field := 16#0#;
      --  Microcontroller clock output 1
      MCO1           : CFGR_MCO1_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  MCO1 prescaler
      MCO1PRE        : CFGR_MCO1PRE_Field := 16#0#;
      --  MCO2 prescaler
      MCO2PRE        : CFGR_MCO2PRE_Field := 16#0#;
      --  Microcontroller clock output 2
      MCO2           : CFGR_MCO2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR_Register use record
      SW             at 0 range 0 .. 1;
      SWS            at 0 range 2 .. 3;
      HPRE           at 0 range 4 .. 7;
      MCO1EN         at 0 range 8 .. 8;
      MCO2EN         at 0 range 9 .. 9;
      PPRE           at 0 range 10 .. 15;
      RTCPRE         at 0 range 16 .. 20;
      MCO1           at 0 range 21 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      MCO1PRE        at 0 range 24 .. 26;
      MCO2PRE        at 0 range 27 .. 29;
      MCO2           at 0 range 30 .. 31;
   end record;

   --  clock interrupt register
   type CIR_Register is record
      --  Read-only. LSI ready interrupt flag
      LSIRDYF        : Boolean := False;
      --  Read-only. LSE ready interrupt flag
      LSERDYF        : Boolean := False;
      --  Read-only. HSI ready interrupt flag
      HSIRDYF        : Boolean := False;
      --  Read-only. HSE ready interrupt flag
      HSERDYF        : Boolean := False;
      --  Read-only. Main PLL (PLL) ready interrupt flag
      PLLRDYF        : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Read-only. Clock security system interrupt flag
      CSSF           : Boolean := False;
      --  LSI ready interrupt enable
      LSIRDYIE       : Boolean := False;
      --  LSE ready interrupt enable
      LSERDYIE       : Boolean := False;
      --  HSI ready interrupt enable
      HSIRDYIE       : Boolean := False;
      --  HSE ready interrupt enable
      HSERDYIE       : Boolean := False;
      --  Main PLL (PLL) ready interrupt enable
      PLLRDYIE       : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Write-only. LSI ready interrupt clear
      LSIRDYC        : Boolean := False;
      --  Write-only. LSE ready interrupt clear
      LSERDYC        : Boolean := False;
      --  Write-only. HSI ready interrupt clear
      HSIRDYC        : Boolean := False;
      --  Write-only. HSE ready interrupt clear
      HSERDYC        : Boolean := False;
      --  Write-only. Main PLL(PLL) ready interrupt clear
      PLLRDYC        : Boolean := False;
      --  Write-only. PLLI2S ready interrupt clear
      PLLI2SRDYC     : Boolean := False;
      --  unspecified
      Reserved_22_22 : HAL.Bit := 16#0#;
      --  Write-only. Clock security system interrupt clear
      CSSC           : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CIR_Register use record
      LSIRDYF        at 0 range 0 .. 0;
      LSERDYF        at 0 range 1 .. 1;
      HSIRDYF        at 0 range 2 .. 2;
      HSERDYF        at 0 range 3 .. 3;
      PLLRDYF        at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      CSSF           at 0 range 7 .. 7;
      LSIRDYIE       at 0 range 8 .. 8;
      LSERDYIE       at 0 range 9 .. 9;
      HSIRDYIE       at 0 range 10 .. 10;
      HSERDYIE       at 0 range 11 .. 11;
      PLLRDYIE       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      LSIRDYC        at 0 range 16 .. 16;
      LSERDYC        at 0 range 17 .. 17;
      HSIRDYC        at 0 range 18 .. 18;
      HSERDYC        at 0 range 19 .. 19;
      PLLRDYC        at 0 range 20 .. 20;
      PLLI2SRDYC     at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      CSSC           at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  AHB1 peripheral reset register
   type AHB1RSTR_Register is record
      --  IO port A reset
      GPIOARST       : Boolean := False;
      --  IO port B reset
      GPIOBRST       : Boolean := False;
      --  IO port C reset
      GPIOCRST       : Boolean := False;
      --  unspecified
      Reserved_3_6   : HAL.UInt4 := 16#0#;
      --  IO port H reset
      GPIOHRST       : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  CRC reset
      CRCRST         : Boolean := False;
      --  unspecified
      Reserved_13_20 : HAL.UInt8 := 16#0#;
      --  DMA2 reset
      DMA1RST        : Boolean := False;
      --  DMA2 reset
      DMA2RST        : Boolean := False;
      --  unspecified
      Reserved_23_30 : HAL.UInt8 := 16#0#;
      --  RNGRST
      RNGRST         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB1RSTR_Register use record
      GPIOARST       at 0 range 0 .. 0;
      GPIOBRST       at 0 range 1 .. 1;
      GPIOCRST       at 0 range 2 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      GPIOHRST       at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      CRCRST         at 0 range 12 .. 12;
      Reserved_13_20 at 0 range 13 .. 20;
      DMA1RST        at 0 range 21 .. 21;
      DMA2RST        at 0 range 22 .. 22;
      Reserved_23_30 at 0 range 23 .. 30;
      RNGRST         at 0 range 31 .. 31;
   end record;

   --  APB1 peripheral reset register
   type APB1RSTR_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  TIM5 reset
      TIM5RST        : Boolean := False;
      --  TIM6 reset
      TIM6RST        : Boolean := False;
      --  unspecified
      Reserved_5_8   : HAL.UInt4 := 16#0#;
      --  LPTIM1 reset
      LPTIM1RST      : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Window watchdog reset
      WWDGRST        : Boolean := False;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  SPI 2 reset
      SPI2RST        : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  USART 2 reset
      UART2RST       : Boolean := False;
      --  unspecified
      Reserved_18_20 : HAL.UInt3 := 16#0#;
      --  I2C 1 reset
      I2C1RST        : Boolean := False;
      --  I2C 2 reset
      I2C2RST        : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  I2C4 reset
      I2C4RST        : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Power interface reset
      PWRRST         : Boolean := False;
      --  DAC reset
      DACRST         : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1RSTR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      TIM5RST        at 0 range 3 .. 3;
      TIM6RST        at 0 range 4 .. 4;
      Reserved_5_8   at 0 range 5 .. 8;
      LPTIM1RST      at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WWDGRST        at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2RST        at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      UART2RST       at 0 range 17 .. 17;
      Reserved_18_20 at 0 range 18 .. 20;
      I2C1RST        at 0 range 21 .. 21;
      I2C2RST        at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      I2C4RST        at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      PWRRST         at 0 range 28 .. 28;
      DACRST         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  APB2 peripheral reset register
   type APB2RSTR_Register is record
      --  TIM1 reset
      TIM1RST        : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  USART1 reset
      USART1RST      : Boolean := False;
      --  USART6 reset
      USART6RST      : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  ADC interface reset (common to all ADCs)
      ADCRST         : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  SPI 1 reset
      SPI1RST        : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  System configuration controller reset
      SYSCFGRST      : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  TIM9 reset
      TIM9RST        : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  TIM11 reset
      TIM11RST       : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2RSTR_Register use record
      TIM1RST        at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      USART1RST      at 0 range 4 .. 4;
      USART6RST      at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ADCRST         at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      SPI1RST        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      SYSCFGRST      at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TIM9RST        at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TIM11RST       at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  AHB1 peripheral clock register
   type AHB1ENR_Register is record
      --  IO port A clock enable
      GPIOAEN        : Boolean := False;
      --  IO port B clock enable
      GPIOBEN        : Boolean := False;
      --  IO port C clock enable
      GPIOCEN        : Boolean := False;
      --  unspecified
      Reserved_3_6   : HAL.UInt4 := 16#0#;
      --  IO port H clock enable
      GPIOHEN        : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  CRC clock enable
      CRCEN          : Boolean := False;
      --  unspecified
      Reserved_13_20 : HAL.UInt8 := 16#80#;
      --  DMA1 clock enable
      DMA1EN         : Boolean := False;
      --  DMA2 clock enable
      DMA2EN         : Boolean := False;
      --  unspecified
      Reserved_23_30 : HAL.UInt8 := 16#0#;
      --  RNG clock enable
      RNGEN          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB1ENR_Register use record
      GPIOAEN        at 0 range 0 .. 0;
      GPIOBEN        at 0 range 1 .. 1;
      GPIOCEN        at 0 range 2 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      GPIOHEN        at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      CRCEN          at 0 range 12 .. 12;
      Reserved_13_20 at 0 range 13 .. 20;
      DMA1EN         at 0 range 21 .. 21;
      DMA2EN         at 0 range 22 .. 22;
      Reserved_23_30 at 0 range 23 .. 30;
      RNGEN          at 0 range 31 .. 31;
   end record;

   --  APB1 peripheral clock enable register
   type APB1ENR_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  TIM5 clock enable
      TIM5EN         : Boolean := False;
      --  TIM6 clock enable
      TIM6EN         : Boolean := False;
      --  unspecified
      Reserved_5_8   : HAL.UInt4 := 16#0#;
      --  LPTIM1 clock enable
      LPTIM1EN       : Boolean := False;
      --  RTC APB clock enable
      RTCAPBEN       : Boolean := False;
      --  Window watchdog clock enable
      WWDGEN         : Boolean := False;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  SPI2 clock enable
      SPI2EN         : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  USART 2 clock enable
      USART2EN       : Boolean := False;
      --  unspecified
      Reserved_18_20 : HAL.UInt3 := 16#0#;
      --  I2C1 clock enable
      I2C1EN         : Boolean := False;
      --  I2C2 clock enable
      I2C2EN         : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  I2C4 clock enable
      I2C4EN         : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Power interface clock enable
      PWREN          : Boolean := False;
      --  DAC interface clock enable
      DACEN          : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1ENR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      TIM5EN         at 0 range 3 .. 3;
      TIM6EN         at 0 range 4 .. 4;
      Reserved_5_8   at 0 range 5 .. 8;
      LPTIM1EN       at 0 range 9 .. 9;
      RTCAPBEN       at 0 range 10 .. 10;
      WWDGEN         at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2EN         at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      USART2EN       at 0 range 17 .. 17;
      Reserved_18_20 at 0 range 18 .. 20;
      I2C1EN         at 0 range 21 .. 21;
      I2C2EN         at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      I2C4EN         at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      PWREN          at 0 range 28 .. 28;
      DACEN          at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  APB2 peripheral clock enable register
   type APB2ENR_Register is record
      --  TIM1 clock enable
      TIM1EN         : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  USART1 clock enable
      USART1EN       : Boolean := False;
      --  USART6 clock enable
      USART6EN       : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  ADC1 clock enable
      ADC1EN         : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  SPI1 clock enable
      SPI1EN         : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  System configuration controller clock enable
      SYSCFGEN       : Boolean := False;
      --  EXTI ans external IT clock enable
      EXTITEN        : Boolean := False;
      --  TIM9 clock enable
      TIM9EN         : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  TIM11 clock enable
      TIM11EN        : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  SPI5 clock enable
      SPI5EN         : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2ENR_Register use record
      TIM1EN         at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      USART1EN       at 0 range 4 .. 4;
      USART6EN       at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ADC1EN         at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      SPI1EN         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      SYSCFGEN       at 0 range 14 .. 14;
      EXTITEN        at 0 range 15 .. 15;
      TIM9EN         at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TIM11EN        at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      SPI5EN         at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  AHB1 peripheral clock enable in low power mode register
   type AHB1LPENR_Register is record
      --  IO port A clock enable during sleep mode
      GPIOALPEN      : Boolean := True;
      --  IO port B clock enable during Sleep mode
      GPIOBLPEN      : Boolean := True;
      --  IO port C clock enable during Sleep mode
      GPIOCLPEN      : Boolean := True;
      --  unspecified
      Reserved_3_6   : HAL.UInt4 := 16#F#;
      --  IO port H clock enable during Sleep mode
      GPIOHLPEN      : Boolean := True;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#1#;
      --  CRC clock enable during Sleep mode
      CRCLPEN        : Boolean := True;
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  Flash interface clock enable during Sleep mode
      FLITFLPEN      : Boolean := True;
      --  SRAM 1interface clock enable during Sleep mode
      SRAM1LPEN      : Boolean := True;
      --  unspecified
      Reserved_17_20 : HAL.UInt4 := 16#3#;
      --  DMA1 clock enable during Sleep mode
      DMA1LPEN       : Boolean := True;
      --  DMA2 clock enable during Sleep mode
      DMA2LPEN       : Boolean := True;
      --  unspecified
      Reserved_23_30 : HAL.UInt8 := 16#FC#;
      --  RNG clock enable during sleep mode
      RNGLPEN        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB1LPENR_Register use record
      GPIOALPEN      at 0 range 0 .. 0;
      GPIOBLPEN      at 0 range 1 .. 1;
      GPIOCLPEN      at 0 range 2 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      GPIOHLPEN      at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      CRCLPEN        at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      FLITFLPEN      at 0 range 15 .. 15;
      SRAM1LPEN      at 0 range 16 .. 16;
      Reserved_17_20 at 0 range 17 .. 20;
      DMA1LPEN       at 0 range 21 .. 21;
      DMA2LPEN       at 0 range 22 .. 22;
      Reserved_23_30 at 0 range 23 .. 30;
      RNGLPEN        at 0 range 31 .. 31;
   end record;

   --  APB1 peripheral clock enable in low power mode register
   type APB1LPENR_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#7#;
      --  TIM5 clock enable during Sleep mode
      TIM5LPEN       : Boolean := True;
      --  TIM6 clock enable during Sleep mode
      TIM6LPEN       : Boolean := True;
      --  unspecified
      Reserved_5_8   : HAL.UInt4 := 16#F#;
      --  LPTIM1 clock enable during sleep mode
      LPTIM1LPEN     : Boolean := False;
      --  RTC APB clock enable during sleep mode
      RTCAPBLPEN     : Boolean := False;
      --  Window watchdog clock enable during Sleep mode
      WWDGLPEN       : Boolean := True;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  SPI2 clock enable during Sleep mode
      SPI2LPEN       : Boolean := True;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#1#;
      --  USART2 clock enable during Sleep mode
      USART2LPEN     : Boolean := True;
      --  unspecified
      Reserved_18_20 : HAL.UInt3 := 16#7#;
      --  I2C1 clock enable during Sleep mode
      I2C1LPEN       : Boolean := True;
      --  I2C2 clock enable during Sleep mode
      I2C2LPEN       : Boolean := True;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#1#;
      --  I2C4 clock enable during Sleep mode
      I2C4LPEN       : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#3#;
      --  Power interface clock enable during Sleep mode
      PWRLPEN        : Boolean := True;
      --  DAC interface clock enable during sleep mode
      DACLPEN        : Boolean := True;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1LPENR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      TIM5LPEN       at 0 range 3 .. 3;
      TIM6LPEN       at 0 range 4 .. 4;
      Reserved_5_8   at 0 range 5 .. 8;
      LPTIM1LPEN     at 0 range 9 .. 9;
      RTCAPBLPEN     at 0 range 10 .. 10;
      WWDGLPEN       at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2LPEN       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      USART2LPEN     at 0 range 17 .. 17;
      Reserved_18_20 at 0 range 18 .. 20;
      I2C1LPEN       at 0 range 21 .. 21;
      I2C2LPEN       at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      I2C4LPEN       at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      PWRLPEN        at 0 range 28 .. 28;
      DACLPEN        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  APB2 peripheral clock enabled in low power mode register
   type APB2LPENR_Register is record
      --  TIM1 clock enable during Sleep mode
      TIM1LPEN       : Boolean := True;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#1#;
      --  USART1 clock enable during Sleep mode
      USART1LPEN     : Boolean := True;
      --  USART6 clock enable during Sleep mode
      USART6LPEN     : Boolean := True;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  ADC1 clock enable during Sleep mode
      ADC1LPEN       : Boolean := True;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#3#;
      --  SDIO clock enable during Sleep mode
      SDIOLPEN       : Boolean := True;
      --  SPI 1 clock enable during Sleep mode
      SPI1LPEN       : Boolean := True;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  System configuration controller clock enable during Sleep mode
      SYSCFGLPEN     : Boolean := True;
      --  EXTI and External IT clock enable during sleep mode
      EXTITLPEN      : Boolean := False;
      --  TIM9 clock enable during sleep mode
      TIM9LPEN       : Boolean := True;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#1#;
      --  TIM11 clock enable during Sleep mode
      TIM11LPEN      : Boolean := True;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2LPENR_Register use record
      TIM1LPEN       at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      USART1LPEN     at 0 range 4 .. 4;
      USART6LPEN     at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ADC1LPEN       at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      SDIOLPEN       at 0 range 11 .. 11;
      SPI1LPEN       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      SYSCFGLPEN     at 0 range 14 .. 14;
      EXTITLPEN      at 0 range 15 .. 15;
      TIM9LPEN       at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TIM11LPEN      at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  BDCR_RTCSEL array
   type BDCR_RTCSEL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for BDCR_RTCSEL
   type BDCR_RTCSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RTCSEL as a value
            Val : HAL.UInt2;
         when True =>
            --  RTCSEL as an array
            Arr : BDCR_RTCSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for BDCR_RTCSEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Backup domain control register
   type BDCR_Register is record
      --  External low-speed oscillator enable
      LSEON          : Boolean := False;
      --  Read-only. External low-speed oscillator ready
      LSERDY         : Boolean := False;
      --  External low-speed oscillator bypass
      LSEBYP         : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  RTC clock source selection
      RTCSEL         : BDCR_RTCSEL_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  RTC clock enable
      RTCEN          : Boolean := False;
      --  Backup domain software reset
      BDRST          : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BDCR_Register use record
      LSEON          at 0 range 0 .. 0;
      LSERDY         at 0 range 1 .. 1;
      LSEBYP         at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      RTCSEL         at 0 range 8 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      RTCEN          at 0 range 15 .. 15;
      BDRST          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  clock control & status register
   type CSR_Register is record
      --  Internal low-speed oscillator enable
      LSION         : Boolean := False;
      --  Read-only. Internal low-speed oscillator ready
      LSIRDY        : Boolean := False;
      --  unspecified
      Reserved_2_23 : HAL.UInt22 := 16#0#;
      --  Remove reset flag
      RMVF          : Boolean := False;
      --  BOR reset flag
      BORRSTF       : Boolean := True;
      --  PIN reset flag
      PADRSTF       : Boolean := True;
      --  POR/PDR reset flag
      PORRSTF       : Boolean := True;
      --  Software reset flag
      SFTRSTF       : Boolean := False;
      --  Independent watchdog reset flag
      WDGRSTF       : Boolean := False;
      --  Window watchdog reset flag
      WWDGRSTF      : Boolean := False;
      --  Low-power reset flag
      LPWRRSTF      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      LSION         at 0 range 0 .. 0;
      LSIRDY        at 0 range 1 .. 1;
      Reserved_2_23 at 0 range 2 .. 23;
      RMVF          at 0 range 24 .. 24;
      BORRSTF       at 0 range 25 .. 25;
      PADRSTF       at 0 range 26 .. 26;
      PORRSTF       at 0 range 27 .. 27;
      SFTRSTF       at 0 range 28 .. 28;
      WDGRSTF       at 0 range 29 .. 29;
      WWDGRSTF      at 0 range 30 .. 30;
      LPWRRSTF      at 0 range 31 .. 31;
   end record;

   subtype SSCGR_MODPER_Field is HAL.UInt13;
   subtype SSCGR_INCSTEP_Field is HAL.UInt15;

   --  spread spectrum clock generation register
   type SSCGR_Register is record
      --  Modulation period
      MODPER         : SSCGR_MODPER_Field := 16#0#;
      --  Incrementation step
      INCSTEP        : SSCGR_INCSTEP_Field := 16#0#;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  Spread Select
      SPREADSEL      : Boolean := False;
      --  Spread spectrum modulation enable
      SSCGEN         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSCGR_Register use record
      MODPER         at 0 range 0 .. 12;
      INCSTEP        at 0 range 13 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      SPREADSEL      at 0 range 30 .. 30;
      SSCGEN         at 0 range 31 .. 31;
   end record;

   subtype DCKCFGR_I2SSRC_Field is HAL.UInt2;

   --  DCKCFGR register
   type DCKCFGR_Register is record
      --  unspecified
      Reserved_0_23  : HAL.UInt24 := 16#0#;
      --  TIMPRE
      TIMPRE         : Boolean := False;
      --  I2SSRC
      I2SSRC         : DCKCFGR_I2SSRC_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCKCFGR_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      TIMPRE         at 0 range 24 .. 24;
      I2SSRC         at 0 range 25 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DCKCFGR2_I2C4SEL_Field is HAL.UInt2;
   subtype DCKCFGR2_LPTIM1SEL_Field is HAL.UInt2;

   --  DCKCFGR2 register
   type DCKCFGR2_Register is record
      --  unspecified
      Reserved_0_21  : HAL.UInt22 := 16#0#;
      --  I2C4SEL
      I2C4SEL        : DCKCFGR2_I2C4SEL_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  LPTIM1SEL
      LPTIM1SEL      : DCKCFGR2_LPTIM1SEL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCKCFGR2_Register use record
      Reserved_0_21  at 0 range 0 .. 21;
      I2C4SEL        at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      LPTIM1SEL      at 0 range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Reset and clock control
   type RCC_Peripheral is record
      --  clock control register
      CR        : aliased CR_Register;
      --  PLL configuration register
      PLLCFGR   : aliased PLLCFGR_Register;
      --  clock configuration register
      CFGR      : aliased CFGR_Register;
      --  clock interrupt register
      CIR       : aliased CIR_Register;
      --  AHB1 peripheral reset register
      AHB1RSTR  : aliased AHB1RSTR_Register;
      --  APB1 peripheral reset register
      APB1RSTR  : aliased APB1RSTR_Register;
      --  APB2 peripheral reset register
      APB2RSTR  : aliased APB2RSTR_Register;
      --  AHB1 peripheral clock register
      AHB1ENR   : aliased AHB1ENR_Register;
      --  APB1 peripheral clock enable register
      APB1ENR   : aliased APB1ENR_Register;
      --  APB2 peripheral clock enable register
      APB2ENR   : aliased APB2ENR_Register;
      --  AHB1 peripheral clock enable in low power mode register
      AHB1LPENR : aliased AHB1LPENR_Register;
      --  APB1 peripheral clock enable in low power mode register
      APB1LPENR : aliased APB1LPENR_Register;
      --  APB2 peripheral clock enabled in low power mode register
      APB2LPENR : aliased APB2LPENR_Register;
      --  Backup domain control register
      BDCR      : aliased BDCR_Register;
      --  clock control & status register
      CSR       : aliased CSR_Register;
      --  spread spectrum clock generation register
      SSCGR     : aliased SSCGR_Register;
      --  DCKCFGR register
      DCKCFGR   : aliased DCKCFGR_Register;
      --  DCKCFGR2 register
      DCKCFGR2  : aliased DCKCFGR2_Register;
   end record
     with Volatile;

   for RCC_Peripheral use record
      CR        at 16#0# range 0 .. 31;
      PLLCFGR   at 16#4# range 0 .. 31;
      CFGR      at 16#8# range 0 .. 31;
      CIR       at 16#C# range 0 .. 31;
      AHB1RSTR  at 16#10# range 0 .. 31;
      APB1RSTR  at 16#20# range 0 .. 31;
      APB2RSTR  at 16#24# range 0 .. 31;
      AHB1ENR   at 16#30# range 0 .. 31;
      APB1ENR   at 16#40# range 0 .. 31;
      APB2ENR   at 16#44# range 0 .. 31;
      AHB1LPENR at 16#50# range 0 .. 31;
      APB1LPENR at 16#60# range 0 .. 31;
      APB2LPENR at 16#64# range 0 .. 31;
      BDCR      at 16#70# range 0 .. 31;
      CSR       at 16#74# range 0 .. 31;
      SSCGR     at 16#80# range 0 .. 31;
      DCKCFGR   at 16#8C# range 0 .. 31;
      DCKCFGR2  at 16#94# range 0 .. 31;
   end record;

   --  Reset and clock control
   RCC_Periph : aliased RCC_Peripheral
     with Import, Address => System'To_Address (16#40023800#);

end STM32_SVD.RCC;
