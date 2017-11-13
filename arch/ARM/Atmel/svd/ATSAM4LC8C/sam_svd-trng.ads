--  ============================================================================
--  Atmel Microcontroller Software Support
--  ============================================================================
--  Copyright (c) 2016 Atmel Corporation,
--  a wholly owned subsidiary of Microchip Technology Inc.
--
--  Licensed under the Apache License, Version 2.0 (the "License");
--  you may not use this file except in compliance with the License.
--  You may obtain a copy of the Licence at
--
--  http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an "AS IS" BASIS,
--  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.
--  ============================================================================  

--  This spec has been automatically generated from ATSAM4LC8C.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.TRNG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype TRNG_CR_KEY_Field is HAL.UInt24;

   --  Control Register
   type TRNG_CR_Register is record
      --  Write-only. Enables the TRNG to provide random values
      ENABLE       : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write-only. Security Key
      KEY          : TRNG_CR_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_CR_Register use record
      ENABLE       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      KEY          at 0 range 8 .. 31;
   end record;

   --  Interrupt Enable Register
   type TRNG_IER_Register is record
      --  Write-only. Data Ready Interrupt Enable
      DATRDY        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_IER_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Disable Register
   type TRNG_IDR_Register is record
      --  Write-only. Data Ready Interrupt Disable
      DATRDY        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_IDR_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Mask Register
   type TRNG_IMR_Register is record
      --  Read-only. Data Ready Interrupt Mask
      DATRDY        : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_IMR_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Status Register
   type TRNG_ISR_Register is record
      --  Read-only. Data Ready Interrupt Status
      DATRDY        : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_ISR_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Output Data Register
   type TRNG_ODATA_Register is record
      --  Read-only. Output Data
      ODATA         : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_ODATA_Register use record
      ODATA         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype TRNG_VERSION_VERSION_Field is HAL.UInt12;
   subtype TRNG_VERSION_VARIANT_Field is HAL.UInt3;

   --  Version Register
   type TRNG_VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : TRNG_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : TRNG_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  True Random Number Generator
   type TRNG_Peripheral is record
      --  Control Register
      CR      : aliased TRNG_CR_Register;
      --  Interrupt Enable Register
      IER     : aliased TRNG_IER_Register;
      --  Interrupt Disable Register
      IDR     : aliased TRNG_IDR_Register;
      --  Interrupt Mask Register
      IMR     : aliased TRNG_IMR_Register;
      --  Interrupt Status Register
      ISR     : aliased TRNG_ISR_Register;
      --  Output Data Register
      ODATA   : aliased TRNG_ODATA_Register;
      --  Version Register
      VERSION : aliased TRNG_VERSION_Register;
   end record
     with Volatile;

   for TRNG_Peripheral use record
      CR      at 16#0# range 0 .. 31;
      IER     at 16#10# range 0 .. 31;
      IDR     at 16#14# range 0 .. 31;
      IMR     at 16#18# range 0 .. 31;
      ISR     at 16#1C# range 0 .. 31;
      ODATA   at 16#50# range 0 .. 31;
      VERSION at 16#FC# range 0 .. 31;
   end record;

   --  True Random Number Generator
   TRNG_Periph : aliased TRNG_Peripheral
     with Import, Address => System'To_Address (16#40068000#);

end SAM_SVD.TRNG;
