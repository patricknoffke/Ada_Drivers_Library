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

--  This spec has been automatically generated from ATSAML21E18A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.DAC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control A
   type DAC_CTRLA_Register is record
      --  Software Reset
      SWRST        : Boolean := False;
      --  Enable DAC Controller
      ENABLE       : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DAC_CTRLA_Register use record
      SWRST        at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Reference Selection for DAC0/1
   type CTRLB_REFSELSelect is
     (
      --  External reference unbuffered
      Vrefpu,
      --  Analog supply
      Vddana,
      --  External reference buffered
      Vrefpb,
      --  Internal bandgap reference
      Intref)
     with Size => 2;
   for CTRLB_REFSELSelect use
     (Vrefpu => 0,
      Vddana => 1,
      Vrefpb => 2,
      Intref => 3);

   --  Control B
   type DAC_CTRLB_Register is record
      --  Differential mode enable
      DIFF         : Boolean := False;
      --  Reference Selection for DAC0/1
      REFSEL       : CTRLB_REFSELSelect := SAM_SVD.DAC.Vrefpu;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DAC_CTRLB_Register use record
      DIFF         at 0 range 0 .. 0;
      REFSEL       at 0 range 1 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  DAC_EVCTRL_STARTEI array
   type DAC_EVCTRL_STARTEI_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DAC_EVCTRL_STARTEI
   type DAC_EVCTRL_STARTEI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  STARTEI as a value
            Val : HAL.UInt2;
         when True =>
            --  STARTEI as an array
            Arr : DAC_EVCTRL_STARTEI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DAC_EVCTRL_STARTEI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  DAC_EVCTRL_EMPTYEO array
   type DAC_EVCTRL_EMPTYEO_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DAC_EVCTRL_EMPTYEO
   type DAC_EVCTRL_EMPTYEO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EMPTYEO as a value
            Val : HAL.UInt2;
         when True =>
            --  EMPTYEO as an array
            Arr : DAC_EVCTRL_EMPTYEO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DAC_EVCTRL_EMPTYEO_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  DAC_EVCTRL_INVEI array
   type DAC_EVCTRL_INVEI_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DAC_EVCTRL_INVEI
   type DAC_EVCTRL_INVEI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INVEI as a value
            Val : HAL.UInt2;
         when True =>
            --  INVEI as an array
            Arr : DAC_EVCTRL_INVEI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DAC_EVCTRL_INVEI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Event Control
   type DAC_EVCTRL_Register is record
      --  Start Conversion Event Input DAC 0
      STARTEI      : DAC_EVCTRL_STARTEI_Field :=
                      (As_Array => False, Val => 16#0#);
      --  Data Buffer Empty Event Output DAC 0
      EMPTYEO      : DAC_EVCTRL_EMPTYEO_Field :=
                      (As_Array => False, Val => 16#0#);
      --  Enable Invertion of DAC 0 input event
      INVEI        : DAC_EVCTRL_INVEI_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DAC_EVCTRL_Register use record
      STARTEI      at 0 range 0 .. 1;
      EMPTYEO      at 0 range 2 .. 3;
      INVEI        at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  DAC_INTENCLR_UNDERRUN array
   type DAC_INTENCLR_UNDERRUN_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DAC_INTENCLR_UNDERRUN
   type DAC_INTENCLR_UNDERRUN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UNDERRUN as a value
            Val : HAL.UInt2;
         when True =>
            --  UNDERRUN as an array
            Arr : DAC_INTENCLR_UNDERRUN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DAC_INTENCLR_UNDERRUN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  DAC_INTENCLR_EMPTY array
   type DAC_INTENCLR_EMPTY_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DAC_INTENCLR_EMPTY
   type DAC_INTENCLR_EMPTY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EMPTY as a value
            Val : HAL.UInt2;
         when True =>
            --  EMPTY as an array
            Arr : DAC_INTENCLR_EMPTY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DAC_INTENCLR_EMPTY_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Enable Clear
   type DAC_INTENCLR_Register is record
      --  Underrun Interrupt Enable for DAC 0
      UNDERRUN     : DAC_INTENCLR_UNDERRUN_Field :=
                      (As_Array => False, Val => 16#0#);
      --  Data Buffer 0 Empty Interrupt Enable
      EMPTY        : DAC_INTENCLR_EMPTY_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DAC_INTENCLR_Register use record
      UNDERRUN     at 0 range 0 .. 1;
      EMPTY        at 0 range 2 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  DAC_INTENSET_UNDERRUN array
   type DAC_INTENSET_UNDERRUN_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DAC_INTENSET_UNDERRUN
   type DAC_INTENSET_UNDERRUN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UNDERRUN as a value
            Val : HAL.UInt2;
         when True =>
            --  UNDERRUN as an array
            Arr : DAC_INTENSET_UNDERRUN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DAC_INTENSET_UNDERRUN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  DAC_INTENSET_EMPTY array
   type DAC_INTENSET_EMPTY_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DAC_INTENSET_EMPTY
   type DAC_INTENSET_EMPTY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EMPTY as a value
            Val : HAL.UInt2;
         when True =>
            --  EMPTY as an array
            Arr : DAC_INTENSET_EMPTY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DAC_INTENSET_EMPTY_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Enable Set
   type DAC_INTENSET_Register is record
      --  Underrun Interrupt Enable for DAC 0
      UNDERRUN     : DAC_INTENSET_UNDERRUN_Field :=
                      (As_Array => False, Val => 16#0#);
      --  Data Buffer 0 Empty Interrupt Enable
      EMPTY        : DAC_INTENSET_EMPTY_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DAC_INTENSET_Register use record
      UNDERRUN     at 0 range 0 .. 1;
      EMPTY        at 0 range 2 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  DAC_INTFLAG_UNDERRUN array
   type DAC_INTFLAG_UNDERRUN_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DAC_INTFLAG_UNDERRUN
   type DAC_INTFLAG_UNDERRUN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UNDERRUN as a value
            Val : HAL.UInt2;
         when True =>
            --  UNDERRUN as an array
            Arr : DAC_INTFLAG_UNDERRUN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DAC_INTFLAG_UNDERRUN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  DAC_INTFLAG_EMPTY array
   type DAC_INTFLAG_EMPTY_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DAC_INTFLAG_EMPTY
   type DAC_INTFLAG_EMPTY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EMPTY as a value
            Val : HAL.UInt2;
         when True =>
            --  EMPTY as an array
            Arr : DAC_INTFLAG_EMPTY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DAC_INTFLAG_EMPTY_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Flag Status and Clear
   type DAC_INTFLAG_Register is record
      --  DAC 0 Underrun
      UNDERRUN     : DAC_INTFLAG_UNDERRUN_Field :=
                      (As_Array => False, Val => 16#0#);
      --  Data Buffer 0 Empty
      EMPTY        : DAC_INTFLAG_EMPTY_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DAC_INTFLAG_Register use record
      UNDERRUN     at 0 range 0 .. 1;
      EMPTY        at 0 range 2 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  DAC_STATUS_READY array
   type DAC_STATUS_READY_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DAC_STATUS_READY
   type DAC_STATUS_READY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  READY as a value
            Val : HAL.UInt2;
         when True =>
            --  READY as an array
            Arr : DAC_STATUS_READY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DAC_STATUS_READY_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  DAC_STATUS_EOC array
   type DAC_STATUS_EOC_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DAC_STATUS_EOC
   type DAC_STATUS_EOC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOC as a value
            Val : HAL.UInt2;
         when True =>
            --  EOC as an array
            Arr : DAC_STATUS_EOC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DAC_STATUS_EOC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Status
   type DAC_STATUS_Register is record
      --  Read-only. DAC 0 Startup Ready
      READY        : DAC_STATUS_READY_Field;
      --  Read-only. DAC 0 End of Conversion
      EOC          : DAC_STATUS_EOC_Field;
      --  unspecified
      Reserved_4_7 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DAC_STATUS_Register use record
      READY        at 0 range 0 .. 1;
      EOC          at 0 range 2 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  DAC_SYNCBUSY_DATA array
   type DAC_SYNCBUSY_DATA_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DAC_SYNCBUSY_DATA
   type DAC_SYNCBUSY_DATA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt2;
         when True =>
            --  DATA as an array
            Arr : DAC_SYNCBUSY_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DAC_SYNCBUSY_DATA_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  DAC_SYNCBUSY_DATABUF array
   type DAC_SYNCBUSY_DATABUF_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DAC_SYNCBUSY_DATABUF
   type DAC_SYNCBUSY_DATABUF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATABUF as a value
            Val : HAL.UInt2;
         when True =>
            --  DATABUF as an array
            Arr : DAC_SYNCBUSY_DATABUF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DAC_SYNCBUSY_DATABUF_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Synchronization Busy
   type DAC_SYNCBUSY_Register is record
      --  Read-only. Software Reset
      SWRST         : Boolean;
      --  Read-only. DAC Enable Status
      ENABLE        : Boolean;
      --  Read-only. Data DAC 0
      DATA          : DAC_SYNCBUSY_DATA_Field;
      --  Read-only. Data Buffer DAC 0
      DATABUF       : DAC_SYNCBUSY_DATABUF_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_SYNCBUSY_Register use record
      SWRST         at 0 range 0 .. 0;
      ENABLE        at 0 range 1 .. 1;
      DATA          at 0 range 2 .. 3;
      DATABUF       at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Current Control
   type DACCTRL_CCTRLSelect is
     (
      --  1MHz<GCLK_DAC<12MHz
      Cc12M,
      --  100kHz<GCLK_DAC<1MHz
      Cc1M,
      --  10kHz<GCLK_DAC<100kHz
      Cc100K,
      --  GCLK_DAC<100kHz
      Cc10K)
     with Size => 2;
   for DACCTRL_CCTRLSelect use
     (Cc12M => 0,
      Cc1M => 1,
      Cc100K => 2,
      Cc10K => 3);

   subtype DAC_DACCTRL_REFRESH_Field is HAL.UInt4;

   --  DACx Control
   type DAC_DACCTRL_Register is record
      --  Left Adjusted Data
      LEFTADJ        : Boolean := False;
      --  Enable DAC0
      ENABLE         : Boolean := False;
      --  Current Control
      CCTRL          : DACCTRL_CCTRLSelect := SAM_SVD.DAC.Cc12M;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Run in Standby
      RUNSTDBY       : Boolean := False;
      --  Dithering Mode
      DITHER         : Boolean := False;
      --  Refresh period
      REFRESH        : DAC_DACCTRL_REFRESH_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for DAC_DACCTRL_Register use record
      LEFTADJ        at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      CCTRL          at 0 range 2 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      DITHER         at 0 range 7 .. 7;
      REFRESH        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   --  DACx Control
   type DAC_DACCTRL_Registers is array (0 .. 1) of DAC_DACCTRL_Register
     with Volatile;

   --  Data DAC0

   --  Data DAC0
   type DAC_DATA_Registers is array (0 .. 1) of HAL.UInt16
     with Volatile;

   --  Data Buffer DAC0

   --  Data Buffer DAC0
   type DAC_DATABUF_Registers is array (0 .. 1) of HAL.UInt16
     with Volatile;

   --  Debug Control
   type DAC_DBGCTRL_Register is record
      --  Debug Run
      DBGRUN       : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DAC_DBGCTRL_Register use record
      DBGRUN       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Digital-to-Analog Converter
   type DAC_Peripheral is record
      --  Control A
      CTRLA    : aliased DAC_CTRLA_Register;
      --  Control B
      CTRLB    : aliased DAC_CTRLB_Register;
      --  Event Control
      EVCTRL   : aliased DAC_EVCTRL_Register;
      --  Interrupt Enable Clear
      INTENCLR : aliased DAC_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET : aliased DAC_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG  : aliased DAC_INTFLAG_Register;
      --  Status
      STATUS   : aliased DAC_STATUS_Register;
      --  Synchronization Busy
      SYNCBUSY : aliased DAC_SYNCBUSY_Register;
      --  DACx Control
      DACCTRL  : aliased DAC_DACCTRL_Registers;
      --  Data DAC0
      DATA     : aliased DAC_DATA_Registers;
      --  Data Buffer DAC0
      DATABUF  : aliased DAC_DATABUF_Registers;
      --  Debug Control
      DBGCTRL  : aliased DAC_DBGCTRL_Register;
   end record
     with Volatile;

   for DAC_Peripheral use record
      CTRLA    at 16#0# range 0 .. 7;
      CTRLB    at 16#1# range 0 .. 7;
      EVCTRL   at 16#2# range 0 .. 7;
      INTENCLR at 16#4# range 0 .. 7;
      INTENSET at 16#5# range 0 .. 7;
      INTFLAG  at 16#6# range 0 .. 7;
      STATUS   at 16#7# range 0 .. 7;
      SYNCBUSY at 16#8# range 0 .. 31;
      DACCTRL  at 16#C# range 0 .. 31;
      DATA     at 16#10# range 0 .. 31;
      DATABUF  at 16#14# range 0 .. 31;
      DBGCTRL  at 16#18# range 0 .. 7;
   end record;

   --  Digital-to-Analog Converter
   DAC_Periph : aliased DAC_Peripheral
     with Import, Address => System'To_Address (16#42003000#);

end SAM_SVD.DAC;
