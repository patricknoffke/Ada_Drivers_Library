--

--  This spec has been automatically generated from SN32F700B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.WDT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  WDT enable
   type CFG_WDTEN_Field is
     (
      --  Disable WDT
      Disable,
      --  Enable WDT
      Enable)
     with Size => 1;
   for CFG_WDTEN_Field use
     (Disable => 0,
      Enable => 1);

   --  WDT interrupt enable
   type CFG_WDTIE_Field is
     (
      --  WDT reset when WDT time-out
      Disable,
      --  Enable WDT interrupt
      Enable)
     with Size => 1;
   for CFG_WDTIE_Field use
     (Disable => 0,
      Enable => 1);

   --  WDT interrupt flag
   type CFG_WDTINT_Field is
     (
      --  No WDT time-out
      No,
      --  WDT interrupt is triggered if WDTIE=1
      Wdt TIME-OUT)
     with Size => 1;
   for CFG_WDTINT_Field use
     (No => 0,
      Wdt TIME-OUT => 1);

   subtype CFG_WDKEY_Field is HAL.UInt16;

   --  Offset:0x00 WDT Configuration Register
   type CFG_Register is record
      --  WDT enable
      WDTEN         : CFG_WDTEN_Field := NRF_SVD.WDT.Disable;
      --  WDT interrupt enable
      WDTIE         : CFG_WDTIE_Field := NRF_SVD.WDT.Disable;
      --  WDT interrupt flag
      WDTINT        : CFG_WDTINT_Field := NRF_SVD.WDT.No;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
      --  Write-only. WDT register key
      WDKEY         : CFG_WDKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      WDTEN         at 0 range 0 .. 0;
      WDTIE         at 0 range 1 .. 1;
      WDTINT        at 0 range 2 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
      WDKEY         at 0 range 16 .. 31;
   end record;

   --  WDT clock source
   type CLKSOURCE_CLKSEL_Field is
     (
      --  WDT clock source=ILRC
      Ilrc,
      --  WDT clock source=ELS XTAL
      Els Xtal)
     with Size => 2;
   for CLKSOURCE_CLKSEL_Field use
     (Ilrc => 2,
      Els Xtal => 3);

   subtype CLKSOURCE_WDKEY_Field is HAL.UInt16;

   --  Offset:0x04 WDT Clock Source Register
   type CLKSOURCE_Register is record
      --  WDT clock source
      CLKSEL        : CLKSOURCE_CLKSEL_Field := NRF_SVD.WDT.Ilrc;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
      --  Write-only. WDT register key
      WDKEY         : CLKSOURCE_WDKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKSOURCE_Register use record
      CLKSEL        at 0 range 0 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
      WDKEY         at 0 range 16 .. 31;
   end record;

   subtype TC_TC_Field is HAL.UInt8;
   subtype TC_WDKEY_Field is HAL.UInt16;

   --  Offset:0x08 WDT Timer Constant Register
   type TC_Register is record
      --  Watchdog timer constant reload value
      TC            : TC_TC_Field := 16#FF#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
      --  Write-only. WDT register key
      WDKEY         : TC_WDKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_Register use record
      TC            at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
      WDKEY         at 0 range 16 .. 31;
   end record;

   subtype FEED_FV_Field is HAL.UInt16;
   subtype FEED_WDKEY_Field is HAL.UInt16;

   --  Offset:0x0C WDT Feed Register
   type FEED_Register is record
      --  Write-only. Watchdog feed value
      FV    : FEED_FV_Field := 16#0#;
      --  Write-only. WDT register key
      WDKEY : FEED_WDKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FEED_Register use record
      FV    at 0 range 0 .. 15;
      WDKEY at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Watchdog Timer
   type SN_WDT_Peripheral is record
      --  Offset:0x00 WDT Configuration Register
      CFG       : aliased CFG_Register;
      --  Offset:0x04 WDT Clock Source Register
      CLKSOURCE : aliased CLKSOURCE_Register;
      --  Offset:0x08 WDT Timer Constant Register
      TC        : aliased TC_Register;
      --  Offset:0x0C WDT Feed Register
      FEED      : aliased FEED_Register;
   end record
     with Volatile;

   for SN_WDT_Peripheral use record
      CFG       at 16#0# range 0 .. 31;
      CLKSOURCE at 16#4# range 0 .. 31;
      TC        at 16#8# range 0 .. 31;
      FEED      at 16#C# range 0 .. 31;
   end record;

   --  Watchdog Timer
   SN_WDT_Periph : aliased SN_WDT_Peripheral
     with Import, Address => System'To_Address (16#40010000#);

end NRF_SVD.WDT;