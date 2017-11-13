--  This spec has been automatically generated from STM32F301.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.SYSCFG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype SYSCFG_CFGR1_MEM_MODE_Field is HAL.UInt2;
   subtype SYSCFG_CFGR1_ENCODER_MODE_Field is HAL.UInt2;
   subtype SYSCFG_CFGR1_FPU_IT_Field is HAL.UInt6;

   --  configuration register 1
   type SYSCFG_CFGR1_Register is record
      --  Memory mapping selection bits
      MEM_MODE          : SYSCFG_CFGR1_MEM_MODE_Field := 16#0#;
      --  unspecified
      Reserved_2_4      : HAL.UInt3 := 16#0#;
      --  USB interrupt remap
      USB_IT_RMP        : Boolean := False;
      --  Timer 1 ITR3 selection
      TIM1_ITR_RMP      : Boolean := False;
      --  DAC trigger remap (when TSEL = 001)
      DAC_TRIG_RMP      : Boolean := False;
      --  ADC24 DMA remapping bit
      ADC24_DMA_RMP     : Boolean := False;
      --  unspecified
      Reserved_9_10     : HAL.UInt2 := 16#0#;
      --  TIM16 DMA request remapping bit
      TIM16_DMA_RMP     : Boolean := False;
      --  TIM17 DMA request remapping bit
      TIM17_DMA_RMP     : Boolean := False;
      --  TIM6 and DAC1 DMA request remapping bit
      TIM6_DAC1_DMA_RMP : Boolean := False;
      --  TIM7 and DAC2 DMA request remapping bit
      TIM7_DAC2_DMA_RMP : Boolean := False;
      --  unspecified
      Reserved_15_15    : HAL.Bit := 16#0#;
      --  Fast Mode Plus (FM+) driving capability activation bits.
      I2C_PB6_FM        : Boolean := False;
      --  Fast Mode Plus (FM+) driving capability activation bits.
      I2C_PB7_FM        : Boolean := False;
      --  Fast Mode Plus (FM+) driving capability activation bits.
      I2C_PB8_FM        : Boolean := False;
      --  Fast Mode Plus (FM+) driving capability activation bits.
      I2C_PB9_FM        : Boolean := False;
      --  I2C1 Fast Mode Plus
      I2C1_FM           : Boolean := False;
      --  I2C2 Fast Mode Plus
      I2C2_FM           : Boolean := False;
      --  Encoder mode
      ENCODER_MODE      : SYSCFG_CFGR1_ENCODER_MODE_Field := 16#0#;
      --  unspecified
      Reserved_24_25    : HAL.UInt2 := 16#0#;
      --  Interrupt enable bits from FPU
      FPU_IT            : SYSCFG_CFGR1_FPU_IT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CFGR1_Register use record
      MEM_MODE          at 0 range 0 .. 1;
      Reserved_2_4      at 0 range 2 .. 4;
      USB_IT_RMP        at 0 range 5 .. 5;
      TIM1_ITR_RMP      at 0 range 6 .. 6;
      DAC_TRIG_RMP      at 0 range 7 .. 7;
      ADC24_DMA_RMP     at 0 range 8 .. 8;
      Reserved_9_10     at 0 range 9 .. 10;
      TIM16_DMA_RMP     at 0 range 11 .. 11;
      TIM17_DMA_RMP     at 0 range 12 .. 12;
      TIM6_DAC1_DMA_RMP at 0 range 13 .. 13;
      TIM7_DAC2_DMA_RMP at 0 range 14 .. 14;
      Reserved_15_15    at 0 range 15 .. 15;
      I2C_PB6_FM        at 0 range 16 .. 16;
      I2C_PB7_FM        at 0 range 17 .. 17;
      I2C_PB8_FM        at 0 range 18 .. 18;
      I2C_PB9_FM        at 0 range 19 .. 19;
      I2C1_FM           at 0 range 20 .. 20;
      I2C2_FM           at 0 range 21 .. 21;
      ENCODER_MODE      at 0 range 22 .. 23;
      Reserved_24_25    at 0 range 24 .. 25;
      FPU_IT            at 0 range 26 .. 31;
   end record;

   --  CCM SRAM protection register
   type SYSCFG_RCR_Register is record
      --  CCM SRAM page write protection bit
      PAGE0_WP      : Boolean := False;
      --  CCM SRAM page write protection bit
      PAGE1_WP      : Boolean := False;
      --  CCM SRAM page write protection bit
      PAGE2_WP      : Boolean := False;
      --  CCM SRAM page write protection bit
      PAGE3_WP      : Boolean := False;
      --  CCM SRAM page write protection bit
      PAGE4_WP      : Boolean := False;
      --  CCM SRAM page write protection bit
      PAGE5_WP      : Boolean := False;
      --  CCM SRAM page write protection bit
      PAGE6_WP      : Boolean := False;
      --  CCM SRAM page write protection bit
      PAGE7_WP      : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_RCR_Register use record
      PAGE0_WP      at 0 range 0 .. 0;
      PAGE1_WP      at 0 range 1 .. 1;
      PAGE2_WP      at 0 range 2 .. 2;
      PAGE3_WP      at 0 range 3 .. 3;
      PAGE4_WP      at 0 range 4 .. 4;
      PAGE5_WP      at 0 range 5 .. 5;
      PAGE6_WP      at 0 range 6 .. 6;
      PAGE7_WP      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  SYSCFG_EXTICR1_EXTI array element
   subtype SYSCFG_EXTICR1_EXTI_Element is HAL.UInt4;

   --  SYSCFG_EXTICR1_EXTI array
   type SYSCFG_EXTICR1_EXTI_Field_Array is array (0 .. 3)
     of SYSCFG_EXTICR1_EXTI_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for SYSCFG_EXTICR1_EXTI
   type SYSCFG_EXTICR1_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : HAL.UInt16;
         when True =>
            --  EXTI as an array
            Arr : SYSCFG_EXTICR1_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SYSCFG_EXTICR1_EXTI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  external interrupt configuration register 1
   type SYSCFG_EXTICR1_Register is record
      --  EXTI 0 configuration bits
      EXTI           : SYSCFG_EXTICR1_EXTI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_EXTICR1_Register use record
      EXTI           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SYSCFG_EXTICR2_EXTI array element
   subtype SYSCFG_EXTICR2_EXTI_Element is HAL.UInt4;

   --  SYSCFG_EXTICR2_EXTI array
   type SYSCFG_EXTICR2_EXTI_Field_Array is array (4 .. 7)
     of SYSCFG_EXTICR2_EXTI_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for SYSCFG_EXTICR2_EXTI
   type SYSCFG_EXTICR2_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : HAL.UInt16;
         when True =>
            --  EXTI as an array
            Arr : SYSCFG_EXTICR2_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SYSCFG_EXTICR2_EXTI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  external interrupt configuration register 2
   type SYSCFG_EXTICR2_Register is record
      --  EXTI 4 configuration bits
      EXTI           : SYSCFG_EXTICR2_EXTI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_EXTICR2_Register use record
      EXTI           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SYSCFG_EXTICR3_EXTI array element
   subtype SYSCFG_EXTICR3_EXTI_Element is HAL.UInt4;

   --  SYSCFG_EXTICR3_EXTI array
   type SYSCFG_EXTICR3_EXTI_Field_Array is array (8 .. 11)
     of SYSCFG_EXTICR3_EXTI_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for SYSCFG_EXTICR3_EXTI
   type SYSCFG_EXTICR3_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : HAL.UInt16;
         when True =>
            --  EXTI as an array
            Arr : SYSCFG_EXTICR3_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SYSCFG_EXTICR3_EXTI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  external interrupt configuration register 3
   type SYSCFG_EXTICR3_Register is record
      --  EXTI 8 configuration bits
      EXTI           : SYSCFG_EXTICR3_EXTI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_EXTICR3_Register use record
      EXTI           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SYSCFG_EXTICR4_EXTI array element
   subtype SYSCFG_EXTICR4_EXTI_Element is HAL.UInt4;

   --  SYSCFG_EXTICR4_EXTI array
   type SYSCFG_EXTICR4_EXTI_Field_Array is array (12 .. 15)
     of SYSCFG_EXTICR4_EXTI_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for SYSCFG_EXTICR4_EXTI
   type SYSCFG_EXTICR4_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : HAL.UInt16;
         when True =>
            --  EXTI as an array
            Arr : SYSCFG_EXTICR4_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SYSCFG_EXTICR4_EXTI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  external interrupt configuration register 4
   type SYSCFG_EXTICR4_Register is record
      --  EXTI 12 configuration bits
      EXTI           : SYSCFG_EXTICR4_EXTI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_EXTICR4_Register use record
      EXTI           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  configuration register 2
   type SYSCFG_CFGR2_Register is record
      --  Cortex-M0 LOCKUP bit enable bit
      LOCUP_LOCK       : Boolean := False;
      --  SRAM parity lock bit
      SRAM_PARITY_LOCK : Boolean := False;
      --  PVD lock enable bit
      PVD_LOCK         : Boolean := False;
      --  unspecified
      Reserved_3_3     : HAL.Bit := 16#0#;
      --  Bypass address bit 29 in parity calculation
      BYP_ADD_PAR      : Boolean := False;
      --  unspecified
      Reserved_5_7     : HAL.UInt3 := 16#0#;
      --  SRAM parity flag
      SRAM_PEF         : Boolean := False;
      --  unspecified
      Reserved_9_31    : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CFGR2_Register use record
      LOCUP_LOCK       at 0 range 0 .. 0;
      SRAM_PARITY_LOCK at 0 range 1 .. 1;
      PVD_LOCK         at 0 range 2 .. 2;
      Reserved_3_3     at 0 range 3 .. 3;
      BYP_ADD_PAR      at 0 range 4 .. 4;
      Reserved_5_7     at 0 range 5 .. 7;
      SRAM_PEF         at 0 range 8 .. 8;
      Reserved_9_31    at 0 range 9 .. 31;
   end record;

   subtype COMP2_CSR_COMP2MODE_Field is HAL.UInt2;
   subtype COMP2_CSR_COMP2INSEL_Field is HAL.UInt3;
   subtype COMP2_CSR_COMP2_OUT_SEL_Field is HAL.UInt4;
   subtype COMP2_CSR_COMP2HYST_Field is HAL.UInt2;
   subtype COMP2_CSR_COMP2_BLANKING_Field is HAL.UInt3;

   --  control and status register
   type COMP2_CSR_Register is record
      --  Comparator 2 enable
      COMP2EN        : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Comparator 2 mode
      COMP2MODE      : COMP2_CSR_COMP2MODE_Field := 16#0#;
      --  Comparator 2 inverting input selection
      COMP2INSEL     : COMP2_CSR_COMP2INSEL_Field := 16#0#;
      --  Comparator 2 non inverted input selection
      COMP2INPSEL    : Boolean := False;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Comparator 1inverting input selection
      COMP2INMSEL    : Boolean := False;
      --  Comparator 2 output selection
      COMP2_OUT_SEL  : COMP2_CSR_COMP2_OUT_SEL_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Comparator 2 output polarity
      COMP2POL       : Boolean := False;
      --  Comparator 2 hysteresis
      COMP2HYST      : COMP2_CSR_COMP2HYST_Field := 16#0#;
      --  Comparator 2 blanking source
      COMP2_BLANKING : COMP2_CSR_COMP2_BLANKING_Field := 16#0#;
      --  unspecified
      Reserved_21_29 : HAL.UInt9 := 16#0#;
      --  Read-only. Comparator 2 output
      COMP2OUT       : Boolean := False;
      --  Comparator 2 lock
      COMP2LOCK      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP2_CSR_Register use record
      COMP2EN        at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      COMP2MODE      at 0 range 2 .. 3;
      COMP2INSEL     at 0 range 4 .. 6;
      COMP2INPSEL    at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      COMP2INMSEL    at 0 range 9 .. 9;
      COMP2_OUT_SEL  at 0 range 10 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      COMP2POL       at 0 range 15 .. 15;
      COMP2HYST      at 0 range 16 .. 17;
      COMP2_BLANKING at 0 range 18 .. 20;
      Reserved_21_29 at 0 range 21 .. 29;
      COMP2OUT       at 0 range 30 .. 30;
      COMP2LOCK      at 0 range 31 .. 31;
   end record;

   subtype COMP4_CSR_COMP4MODE_Field is HAL.UInt2;
   subtype COMP4_CSR_COMP4INSEL_Field is HAL.UInt3;
   subtype COMP4_CSR_COMP4_OUT_SEL_Field is HAL.UInt4;
   subtype COMP4_CSR_COMP4HYST_Field is HAL.UInt2;
   subtype COMP4_CSR_COMP4_BLANKING_Field is HAL.UInt3;

   --  control and status register
   type COMP4_CSR_Register is record
      --  Comparator 4 enable
      COMP4EN        : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Comparator 4 mode
      COMP4MODE      : COMP4_CSR_COMP4MODE_Field := 16#0#;
      --  Comparator 4 inverting input selection
      COMP4INSEL     : COMP4_CSR_COMP4INSEL_Field := 16#0#;
      --  Comparator 4 non inverted input selection
      COMP4INPSEL    : Boolean := False;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Comparator 4 window mode
      COM4WINMODE    : Boolean := False;
      --  Comparator 4 output selection
      COMP4_OUT_SEL  : COMP4_CSR_COMP4_OUT_SEL_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Comparator 4 output polarity
      COMP4POL       : Boolean := False;
      --  Comparator 4 hysteresis
      COMP4HYST      : COMP4_CSR_COMP4HYST_Field := 16#0#;
      --  Comparator 4 blanking source
      COMP4_BLANKING : COMP4_CSR_COMP4_BLANKING_Field := 16#0#;
      --  unspecified
      Reserved_21_29 : HAL.UInt9 := 16#0#;
      --  Read-only. Comparator 4 output
      COMP4OUT       : Boolean := False;
      --  Comparator 4 lock
      COMP4LOCK      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP4_CSR_Register use record
      COMP4EN        at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      COMP4MODE      at 0 range 2 .. 3;
      COMP4INSEL     at 0 range 4 .. 6;
      COMP4INPSEL    at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      COM4WINMODE    at 0 range 9 .. 9;
      COMP4_OUT_SEL  at 0 range 10 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      COMP4POL       at 0 range 15 .. 15;
      COMP4HYST      at 0 range 16 .. 17;
      COMP4_BLANKING at 0 range 18 .. 20;
      Reserved_21_29 at 0 range 21 .. 29;
      COMP4OUT       at 0 range 30 .. 30;
      COMP4LOCK      at 0 range 31 .. 31;
   end record;

   subtype COMP6_CSR_COMP6MODE_Field is HAL.UInt2;
   subtype COMP6_CSR_COMP6INSEL_Field is HAL.UInt3;
   subtype COMP6_CSR_COMP6_OUT_SEL_Field is HAL.UInt4;
   subtype COMP6_CSR_COMP6HYST_Field is HAL.UInt2;
   subtype COMP6_CSR_COMP6_BLANKING_Field is HAL.UInt3;

   --  control and status register
   type COMP6_CSR_Register is record
      --  Comparator 6 enable
      COMP6EN        : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Comparator 6 mode
      COMP6MODE      : COMP6_CSR_COMP6MODE_Field := 16#0#;
      --  Comparator 6 inverting input selection
      COMP6INSEL     : COMP6_CSR_COMP6INSEL_Field := 16#0#;
      --  Comparator 6 non inverted input selection
      COMP6INPSEL    : Boolean := False;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Comparator 6 window mode
      COM6WINMODE    : Boolean := False;
      --  Comparator 6 output selection
      COMP6_OUT_SEL  : COMP6_CSR_COMP6_OUT_SEL_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Comparator 6 output polarity
      COMP6POL       : Boolean := False;
      --  Comparator 6 hysteresis
      COMP6HYST      : COMP6_CSR_COMP6HYST_Field := 16#0#;
      --  Comparator 6 blanking source
      COMP6_BLANKING : COMP6_CSR_COMP6_BLANKING_Field := 16#0#;
      --  unspecified
      Reserved_21_29 : HAL.UInt9 := 16#0#;
      --  Read-only. Comparator 6 output
      COMP6OUT       : Boolean := False;
      --  Comparator 6 lock
      COMP6LOCK      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP6_CSR_Register use record
      COMP6EN        at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      COMP6MODE      at 0 range 2 .. 3;
      COMP6INSEL     at 0 range 4 .. 6;
      COMP6INPSEL    at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      COM6WINMODE    at 0 range 9 .. 9;
      COMP6_OUT_SEL  at 0 range 10 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      COMP6POL       at 0 range 15 .. 15;
      COMP6HYST      at 0 range 16 .. 17;
      COMP6_BLANKING at 0 range 18 .. 20;
      Reserved_21_29 at 0 range 21 .. 29;
      COMP6OUT       at 0 range 30 .. 30;
      COMP6LOCK      at 0 range 31 .. 31;
   end record;

   subtype OPAMP2_CSR_VP_SEL_Field is HAL.UInt2;
   subtype OPAMP2_CSR_VM_SEL_Field is HAL.UInt2;
   subtype OPAMP2_CSR_VPS_SEL_Field is HAL.UInt2;
   subtype OPAMP2_CSR_CAL_SEL_Field is HAL.UInt2;
   subtype OPAMP2_CSR_PGA_GAIN_Field is HAL.UInt4;
   subtype OPAMP2_CSR_TRIMOFFSETP_Field is HAL.UInt5;
   subtype OPAMP2_CSR_TRIMOFFSETN_Field is HAL.UInt5;

   --  OPAMP2 control register
   type OPAMP2_CSR_Register is record
      --  OPAMP2 enable
      OPAMP2EN     : Boolean := False;
      --  FORCE_VP
      FORCE_VP     : Boolean := False;
      --  OPAMP2 Non inverting input selection
      VP_SEL       : OPAMP2_CSR_VP_SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_4 : HAL.Bit := 16#0#;
      --  OPAMP2 inverting input selection
      VM_SEL       : OPAMP2_CSR_VM_SEL_Field := 16#0#;
      --  Timer controlled Mux mode enable
      TCM_EN       : Boolean := False;
      --  OPAMP2 inverting input secondary selection
      VMS_SEL      : Boolean := False;
      --  OPAMP2 Non inverting input secondary selection
      VPS_SEL      : OPAMP2_CSR_VPS_SEL_Field := 16#0#;
      --  Calibration mode enable
      CALON        : Boolean := False;
      --  Calibration selection
      CAL_SEL      : OPAMP2_CSR_CAL_SEL_Field := 16#0#;
      --  Gain in PGA mode
      PGA_GAIN     : OPAMP2_CSR_PGA_GAIN_Field := 16#0#;
      --  User trimming enable
      USER_TRIM    : Boolean := False;
      --  Offset trimming value (PMOS)
      TRIMOFFSETP  : OPAMP2_CSR_TRIMOFFSETP_Field := 16#0#;
      --  Offset trimming value (NMOS)
      TRIMOFFSETN  : OPAMP2_CSR_TRIMOFFSETN_Field := 16#0#;
      --  TSTREF
      TSTREF       : Boolean := False;
      --  Read-only. OPAMP 2 ouput status flag
      OUTCAL       : Boolean := False;
      --  OPAMP 2 lock
      LOCK         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPAMP2_CSR_Register use record
      OPAMP2EN     at 0 range 0 .. 0;
      FORCE_VP     at 0 range 1 .. 1;
      VP_SEL       at 0 range 2 .. 3;
      Reserved_4_4 at 0 range 4 .. 4;
      VM_SEL       at 0 range 5 .. 6;
      TCM_EN       at 0 range 7 .. 7;
      VMS_SEL      at 0 range 8 .. 8;
      VPS_SEL      at 0 range 9 .. 10;
      CALON        at 0 range 11 .. 11;
      CAL_SEL      at 0 range 12 .. 13;
      PGA_GAIN     at 0 range 14 .. 17;
      USER_TRIM    at 0 range 18 .. 18;
      TRIMOFFSETP  at 0 range 19 .. 23;
      TRIMOFFSETN  at 0 range 24 .. 28;
      TSTREF       at 0 range 29 .. 29;
      OUTCAL       at 0 range 30 .. 30;
      LOCK         at 0 range 31 .. 31;
   end record;

   subtype SYSCFG_CFGR3_SPI1_RX_DMA_RMP_Field is HAL.UInt2;
   subtype SYSCFG_CFGR3_SPI1_TX_DMA_RMP_Field is HAL.UInt2;
   subtype SYSCFG_CFGR3_I2C1_RX_DMA_RMP_Field is HAL.UInt2;
   subtype SYSCFG_CFGR3_ADC2_DMA_RMP_0_Field is HAL.UInt2;

   --  configuration register 3
   type SYSCFG_CFGR3_Register is record
      --  SPI1_RX DMA remapping bit
      SPI1_RX_DMA_RMP : SYSCFG_CFGR3_SPI1_RX_DMA_RMP_Field := 16#0#;
      --  SPI1_TX DMA remapping bit
      SPI1_TX_DMA_RMP : SYSCFG_CFGR3_SPI1_TX_DMA_RMP_Field := 16#0#;
      --  I2C1_RX DMA remapping bit
      I2C1_RX_DMA_RMP : SYSCFG_CFGR3_I2C1_RX_DMA_RMP_Field := 16#0#;
      --  ADC2 DMA channel remapping bit
      ADC2_DMA_RMP_0  : SYSCFG_CFGR3_ADC2_DMA_RMP_0_Field := 16#0#;
      --  unspecified
      Reserved_8_8    : HAL.Bit := 16#0#;
      --  ADC2 DMA controller remapping bit
      ADC2_DMA_RMP_1  : Boolean := False;
      --  unspecified
      Reserved_10_15  : HAL.UInt6 := 16#0#;
      --  DAC1_CH1 / DAC1_CH2 Trigger remap
      DAC1_TRIG3_RMP  : Boolean := False;
      --  DAC1_CH1 / DAC1_CH2 Trigger remap
      DAC1_TRIG5_RMP  : Boolean := False;
      --  unspecified
      Reserved_18_31  : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CFGR3_Register use record
      SPI1_RX_DMA_RMP at 0 range 0 .. 1;
      SPI1_TX_DMA_RMP at 0 range 2 .. 3;
      I2C1_RX_DMA_RMP at 0 range 4 .. 5;
      ADC2_DMA_RMP_0  at 0 range 6 .. 7;
      Reserved_8_8    at 0 range 8 .. 8;
      ADC2_DMA_RMP_1  at 0 range 9 .. 9;
      Reserved_10_15  at 0 range 10 .. 15;
      DAC1_TRIG3_RMP  at 0 range 16 .. 16;
      DAC1_TRIG5_RMP  at 0 range 17 .. 17;
      Reserved_18_31  at 0 range 18 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System configuration controller
   type SYSCFG_COMP_OPAMP_Peripheral is record
      --  configuration register 1
      SYSCFG_CFGR1   : aliased SYSCFG_CFGR1_Register;
      --  CCM SRAM protection register
      SYSCFG_RCR     : aliased SYSCFG_RCR_Register;
      --  external interrupt configuration register 1
      SYSCFG_EXTICR1 : aliased SYSCFG_EXTICR1_Register;
      --  external interrupt configuration register 2
      SYSCFG_EXTICR2 : aliased SYSCFG_EXTICR2_Register;
      --  external interrupt configuration register 3
      SYSCFG_EXTICR3 : aliased SYSCFG_EXTICR3_Register;
      --  external interrupt configuration register 4
      SYSCFG_EXTICR4 : aliased SYSCFG_EXTICR4_Register;
      --  configuration register 2
      SYSCFG_CFGR2   : aliased SYSCFG_CFGR2_Register;
      --  control and status register
      COMP2_CSR      : aliased COMP2_CSR_Register;
      --  control and status register
      COMP4_CSR      : aliased COMP4_CSR_Register;
      --  control and status register
      COMP6_CSR      : aliased COMP6_CSR_Register;
      --  OPAMP2 control register
      OPAMP2_CSR     : aliased OPAMP2_CSR_Register;
      --  configuration register 3
      SYSCFG_CFGR3   : aliased SYSCFG_CFGR3_Register;
   end record
     with Volatile;

   for SYSCFG_COMP_OPAMP_Peripheral use record
      SYSCFG_CFGR1   at 16#0# range 0 .. 31;
      SYSCFG_RCR     at 16#4# range 0 .. 31;
      SYSCFG_EXTICR1 at 16#8# range 0 .. 31;
      SYSCFG_EXTICR2 at 16#C# range 0 .. 31;
      SYSCFG_EXTICR3 at 16#10# range 0 .. 31;
      SYSCFG_EXTICR4 at 16#14# range 0 .. 31;
      SYSCFG_CFGR2   at 16#18# range 0 .. 31;
      COMP2_CSR      at 16#20# range 0 .. 31;
      COMP4_CSR      at 16#28# range 0 .. 31;
      COMP6_CSR      at 16#30# range 0 .. 31;
      OPAMP2_CSR     at 16#3C# range 0 .. 31;
      SYSCFG_CFGR3   at 16#50# range 0 .. 31;
   end record;

   --  System configuration controller
   SYSCFG_COMP_OPAMP_Periph : aliased SYSCFG_COMP_OPAMP_Peripheral
     with Import, Address => System'To_Address (16#40010000#);

end STM32_SVD.SYSCFG;