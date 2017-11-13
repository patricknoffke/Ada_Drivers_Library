--  Copyright (c) 2017 Microchip Technology Inc.
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Licensed under the Apache License, Version 2.0 (the "License"); you may
--  not use this file except in compliance with the License.
--  You may obtain a copy of the Licence at
--
--  http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an AS IS BASIS, WITHOUT
--  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.  

--  This spec has been automatically generated from ATSAMD51J19A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.I2S is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  I2S_CTRLA_CKEN array
   type I2S_CTRLA_CKEN_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for I2S_CTRLA_CKEN
   type I2S_CTRLA_CKEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CKEN as a value
            Val : HAL.UInt2;
         when True =>
            --  CKEN as an array
            Arr : I2S_CTRLA_CKEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for I2S_CTRLA_CKEN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Control A
   type I2S_CTRLA_Register is record
      --  Software Reset
      SWRST        : Boolean := False;
      --  Enable
      ENABLE       : Boolean := False;
      --  Clock Unit 0 Enable
      CKEN         : I2S_CTRLA_CKEN_Field :=
                      (As_Array => False, Val => 16#0#);
      --  Tx Serializer Enable
      TXEN         : Boolean := False;
      --  Rx Serializer Enable
      RXEN         : Boolean := False;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for I2S_CTRLA_Register use record
      SWRST        at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      CKEN         at 0 range 2 .. 3;
      TXEN         at 0 range 4 .. 4;
      RXEN         at 0 range 5 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Slot Size
   type CLKCTRL_SLOTSIZESelect is
     (
      --  8-bit Slot for Clock Unit n
      CLKCTRL_SLOTSIZESelect_8,
      --  16-bit Slot for Clock Unit n
      CLKCTRL_SLOTSIZESelect_16,
      --  24-bit Slot for Clock Unit n
      CLKCTRL_SLOTSIZESelect_24,
      --  32-bit Slot for Clock Unit n
      CLKCTRL_SLOTSIZESelect_32)
     with Size => 2;
   for CLKCTRL_SLOTSIZESelect use
     (CLKCTRL_SLOTSIZESelect_8 => 0,
      CLKCTRL_SLOTSIZESelect_16 => 1,
      CLKCTRL_SLOTSIZESelect_24 => 2,
      CLKCTRL_SLOTSIZESelect_32 => 3);

   subtype I2S_CLKCTRL_NBSLOTS_Field is HAL.UInt3;

   --  Frame Sync Width
   type CLKCTRL_FSWIDTHSelect is
     (
      --  Frame Sync Pulse is 1 Slot wide (default for I2S protocol)
      Slot,
      --  Frame Sync Pulse is half a Frame wide
      Half,
      --  Frame Sync Pulse is 1 Bit wide
      Bit,
      --  Clock Unit n operates in Burst mode, with a 1-bit wide Frame Sync
      --  pulse per Data sample, only when Data transfer is requested
      Burst)
     with Size => 2;
   for CLKCTRL_FSWIDTHSelect use
     (Slot => 0,
      Half => 1,
      Bit => 2,
      Burst => 3);

   --  Data Delay from Frame Sync
   type CLKCTRL_BITDELAYSelect is
     (
      --  Left Justified (0 Bit Delay)
      Lj,
      --  I2S (1 Bit Delay)
      I2S)
     with Size => 1;
   for CLKCTRL_BITDELAYSelect use
     (Lj => 0,
      I2S => 1);

   --  Frame Sync Select
   type CLKCTRL_FSSELSelect is
     (
      --  Divided Serial Clock n is used as Frame Sync n source
      Sckdiv,
      --  FSn input pin is used as Frame Sync n source
      Fspin)
     with Size => 1;
   for CLKCTRL_FSSELSelect use
     (Sckdiv => 0,
      Fspin => 1);

   --  Serial Clock Select
   type CLKCTRL_SCKSELSelect is
     (
      --  Divided Master Clock n is used as Serial Clock n source
      Mckdiv,
      --  SCKn input pin is used as Serial Clock n source
      Sckpin)
     with Size => 1;
   for CLKCTRL_SCKSELSelect use
     (Mckdiv => 0,
      Sckpin => 1);

   --  Master Clock Select
   type CLKCTRL_MCKSELSelect is
     (
      --  GCLK_I2S_n is used as Master Clock n source
      Gclk,
      --  MCKn input pin is used as Master Clock n source
      Mckpin)
     with Size => 1;
   for CLKCTRL_MCKSELSelect use
     (Gclk => 0,
      Mckpin => 1);

   subtype I2S_CLKCTRL_MCKDIV_Field is HAL.UInt6;
   subtype I2S_CLKCTRL_MCKOUTDIV_Field is HAL.UInt6;

   --  Clock Unit n Control
   type I2S_CLKCTRL_Register is record
      --  Slot Size
      SLOTSIZE       : CLKCTRL_SLOTSIZESelect :=
                        SAM_SVD.I2S.CLKCTRL_SLOTSIZESelect_8;
      --  Number of Slots in Frame
      NBSLOTS        : I2S_CLKCTRL_NBSLOTS_Field := 16#0#;
      --  Frame Sync Width
      FSWIDTH        : CLKCTRL_FSWIDTHSelect := SAM_SVD.I2S.Slot;
      --  Data Delay from Frame Sync
      BITDELAY       : CLKCTRL_BITDELAYSelect := SAM_SVD.I2S.Lj;
      --  Frame Sync Select
      FSSEL          : CLKCTRL_FSSELSelect := SAM_SVD.I2S.Sckdiv;
      --  Frame Sync Invert
      FSINV          : Boolean := False;
      --  Frame Sync Output Invert
      FSOUTINV       : Boolean := False;
      --  Serial Clock Select
      SCKSEL         : CLKCTRL_SCKSELSelect := SAM_SVD.I2S.Mckdiv;
      --  Serial Clock Output Invert
      SCKOUTINV      : Boolean := False;
      --  Master Clock Select
      MCKSEL         : CLKCTRL_MCKSELSelect := SAM_SVD.I2S.Gclk;
      --  Master Clock Enable
      MCKEN          : Boolean := False;
      --  Master Clock Output Invert
      MCKOUTINV      : Boolean := False;
      --  Master Clock Division Factor
      MCKDIV         : I2S_CLKCTRL_MCKDIV_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Master Clock Output Division Factor
      MCKOUTDIV      : I2S_CLKCTRL_MCKOUTDIV_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2S_CLKCTRL_Register use record
      SLOTSIZE       at 0 range 0 .. 1;
      NBSLOTS        at 0 range 2 .. 4;
      FSWIDTH        at 0 range 5 .. 6;
      BITDELAY       at 0 range 7 .. 7;
      FSSEL          at 0 range 8 .. 8;
      FSINV          at 0 range 9 .. 9;
      FSOUTINV       at 0 range 10 .. 10;
      SCKSEL         at 0 range 11 .. 11;
      SCKOUTINV      at 0 range 12 .. 12;
      MCKSEL         at 0 range 13 .. 13;
      MCKEN          at 0 range 14 .. 14;
      MCKOUTINV      at 0 range 15 .. 15;
      MCKDIV         at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      MCKOUTDIV      at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Clock Unit n Control
   type I2S_CLKCTRL_Registers is array (0 .. 1) of I2S_CLKCTRL_Register
     with Volatile;

   --  I2S_INTENCLR_RXRDY array
   type I2S_INTENCLR_RXRDY_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for I2S_INTENCLR_RXRDY
   type I2S_INTENCLR_RXRDY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RXRDY as a value
            Val : HAL.UInt2;
         when True =>
            --  RXRDY as an array
            Arr : I2S_INTENCLR_RXRDY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for I2S_INTENCLR_RXRDY_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  I2S_INTENCLR_RXOR array
   type I2S_INTENCLR_RXOR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for I2S_INTENCLR_RXOR
   type I2S_INTENCLR_RXOR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RXOR as a value
            Val : HAL.UInt2;
         when True =>
            --  RXOR as an array
            Arr : I2S_INTENCLR_RXOR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for I2S_INTENCLR_RXOR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  I2S_INTENCLR_TXRDY array
   type I2S_INTENCLR_TXRDY_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for I2S_INTENCLR_TXRDY
   type I2S_INTENCLR_TXRDY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TXRDY as a value
            Val : HAL.UInt2;
         when True =>
            --  TXRDY as an array
            Arr : I2S_INTENCLR_TXRDY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for I2S_INTENCLR_TXRDY_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  I2S_INTENCLR_TXUR array
   type I2S_INTENCLR_TXUR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for I2S_INTENCLR_TXUR
   type I2S_INTENCLR_TXUR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TXUR as a value
            Val : HAL.UInt2;
         when True =>
            --  TXUR as an array
            Arr : I2S_INTENCLR_TXUR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for I2S_INTENCLR_TXUR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Enable Clear
   type I2S_INTENCLR_Register is record
      --  Receive Ready 0 Interrupt Enable
      RXRDY          : I2S_INTENCLR_RXRDY_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Receive Overrun 0 Interrupt Enable
      RXOR           : I2S_INTENCLR_RXOR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Transmit Ready 0 Interrupt Enable
      TXRDY          : I2S_INTENCLR_TXRDY_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Transmit Underrun 0 Interrupt Enable
      TXUR           : I2S_INTENCLR_TXUR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for I2S_INTENCLR_Register use record
      RXRDY          at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RXOR           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TXRDY          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      TXUR           at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  I2S_INTENSET_RXRDY array
   type I2S_INTENSET_RXRDY_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for I2S_INTENSET_RXRDY
   type I2S_INTENSET_RXRDY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RXRDY as a value
            Val : HAL.UInt2;
         when True =>
            --  RXRDY as an array
            Arr : I2S_INTENSET_RXRDY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for I2S_INTENSET_RXRDY_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  I2S_INTENSET_RXOR array
   type I2S_INTENSET_RXOR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for I2S_INTENSET_RXOR
   type I2S_INTENSET_RXOR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RXOR as a value
            Val : HAL.UInt2;
         when True =>
            --  RXOR as an array
            Arr : I2S_INTENSET_RXOR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for I2S_INTENSET_RXOR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  I2S_INTENSET_TXRDY array
   type I2S_INTENSET_TXRDY_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for I2S_INTENSET_TXRDY
   type I2S_INTENSET_TXRDY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TXRDY as a value
            Val : HAL.UInt2;
         when True =>
            --  TXRDY as an array
            Arr : I2S_INTENSET_TXRDY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for I2S_INTENSET_TXRDY_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  I2S_INTENSET_TXUR array
   type I2S_INTENSET_TXUR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for I2S_INTENSET_TXUR
   type I2S_INTENSET_TXUR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TXUR as a value
            Val : HAL.UInt2;
         when True =>
            --  TXUR as an array
            Arr : I2S_INTENSET_TXUR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for I2S_INTENSET_TXUR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Enable Set
   type I2S_INTENSET_Register is record
      --  Receive Ready 0 Interrupt Enable
      RXRDY          : I2S_INTENSET_RXRDY_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Receive Overrun 0 Interrupt Enable
      RXOR           : I2S_INTENSET_RXOR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Transmit Ready 0 Interrupt Enable
      TXRDY          : I2S_INTENSET_TXRDY_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Transmit Underrun 0 Interrupt Enable
      TXUR           : I2S_INTENSET_TXUR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for I2S_INTENSET_Register use record
      RXRDY          at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RXOR           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TXRDY          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      TXUR           at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  I2S_INTFLAG_RXRDY array
   type I2S_INTFLAG_RXRDY_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for I2S_INTFLAG_RXRDY
   type I2S_INTFLAG_RXRDY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RXRDY as a value
            Val : HAL.UInt2;
         when True =>
            --  RXRDY as an array
            Arr : I2S_INTFLAG_RXRDY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for I2S_INTFLAG_RXRDY_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  I2S_INTFLAG_RXOR array
   type I2S_INTFLAG_RXOR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for I2S_INTFLAG_RXOR
   type I2S_INTFLAG_RXOR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RXOR as a value
            Val : HAL.UInt2;
         when True =>
            --  RXOR as an array
            Arr : I2S_INTFLAG_RXOR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for I2S_INTFLAG_RXOR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  I2S_INTFLAG_TXRDY array
   type I2S_INTFLAG_TXRDY_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for I2S_INTFLAG_TXRDY
   type I2S_INTFLAG_TXRDY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TXRDY as a value
            Val : HAL.UInt2;
         when True =>
            --  TXRDY as an array
            Arr : I2S_INTFLAG_TXRDY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for I2S_INTFLAG_TXRDY_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  I2S_INTFLAG_TXUR array
   type I2S_INTFLAG_TXUR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for I2S_INTFLAG_TXUR
   type I2S_INTFLAG_TXUR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TXUR as a value
            Val : HAL.UInt2;
         when True =>
            --  TXUR as an array
            Arr : I2S_INTFLAG_TXUR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for I2S_INTFLAG_TXUR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Flag Status and Clear
   type I2S_INTFLAG_Register is record
      --  Receive Ready 0
      RXRDY          : I2S_INTFLAG_RXRDY_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Receive Overrun 0
      RXOR           : I2S_INTFLAG_RXOR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Transmit Ready 0
      TXRDY          : I2S_INTFLAG_TXRDY_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Transmit Underrun 0
      TXUR           : I2S_INTFLAG_TXUR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for I2S_INTFLAG_Register use record
      RXRDY          at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RXOR           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TXRDY          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      TXUR           at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  I2S_SYNCBUSY_CKEN array
   type I2S_SYNCBUSY_CKEN_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for I2S_SYNCBUSY_CKEN
   type I2S_SYNCBUSY_CKEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CKEN as a value
            Val : HAL.UInt2;
         when True =>
            --  CKEN as an array
            Arr : I2S_SYNCBUSY_CKEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for I2S_SYNCBUSY_CKEN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Synchronization Status
   type I2S_SYNCBUSY_Register is record
      --  Read-only. Software Reset Synchronization Status
      SWRST          : Boolean;
      --  Read-only. Enable Synchronization Status
      ENABLE         : Boolean;
      --  Read-only. Clock Unit 0 Enable Synchronization Status
      CKEN           : I2S_SYNCBUSY_CKEN_Field;
      --  Read-only. Tx Serializer Enable Synchronization Status
      TXEN           : Boolean;
      --  Read-only. Rx Serializer Enable Synchronization Status
      RXEN           : Boolean;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Tx Data Synchronization Status
      TXDATA         : Boolean;
      --  Read-only. Rx Data Synchronization Status
      RXDATA         : Boolean;
      --  unspecified
      Reserved_10_15 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for I2S_SYNCBUSY_Register use record
      SWRST          at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      CKEN           at 0 range 2 .. 3;
      TXEN           at 0 range 4 .. 4;
      RXEN           at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TXDATA         at 0 range 8 .. 8;
      RXDATA         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  Line Default Line when Slot Disabled
   type TXCTRL_TXDEFAULTSelect is
     (
      --  Output Default Value is 0
      Zero,
      --  Output Default Value is 1
      One,
      --  Output Default Value is high impedance
      Hiz)
     with Size => 2;
   for TXCTRL_TXDEFAULTSelect use
     (Zero => 0,
      One => 1,
      Hiz => 3);

   --  Transmit Data when Underrun
   type TXCTRL_TXSAMESelect is
     (
      --  Zero data transmitted in case of underrun
      Zero,
      --  Last data transmitted in case of underrun
      Same)
     with Size => 1;
   for TXCTRL_TXSAMESelect use
     (Zero => 0,
      Same => 1);

   --  Data Slot Formatting Adjust
   type TXCTRL_SLOTADJSelect is
     (
      --  Data is right adjusted in slot
      Right,
      --  Data is left adjusted in slot
      Left)
     with Size => 1;
   for TXCTRL_SLOTADJSelect use
     (Right => 0,
      Left => 1);

   --  Data Word Size
   type TXCTRL_DATASIZESelect is
     (
      --  32 bits
      TXCTRL_DATASIZESelect_32,
      --  24 bits
      TXCTRL_DATASIZESelect_24,
      --  20 bits
      TXCTRL_DATASIZESelect_20,
      --  18 bits
      TXCTRL_DATASIZESelect_18,
      --  16 bits
      TXCTRL_DATASIZESelect_16,
      --  16 bits compact stereo
      TXCTRL_DATASIZESelect_16C,
      --  8 bits
      TXCTRL_DATASIZESelect_8,
      --  8 bits compact stereo
      TXCTRL_DATASIZESelect_8C)
     with Size => 3;
   for TXCTRL_DATASIZESelect use
     (TXCTRL_DATASIZESelect_32 => 0,
      TXCTRL_DATASIZESelect_24 => 1,
      TXCTRL_DATASIZESelect_20 => 2,
      TXCTRL_DATASIZESelect_18 => 3,
      TXCTRL_DATASIZESelect_16 => 4,
      TXCTRL_DATASIZESelect_16C => 5,
      TXCTRL_DATASIZESelect_8 => 6,
      TXCTRL_DATASIZESelect_8C => 7);

   --  Data Word Formatting Adjust
   type TXCTRL_WORDADJSelect is
     (
      --  Data is right adjusted in word
      Right,
      --  Data is left adjusted in word
      Left)
     with Size => 1;
   for TXCTRL_WORDADJSelect use
     (Right => 0,
      Left => 1);

   --  Data Formatting Bit Extension
   type TXCTRL_EXTENDSelect is
     (
      --  Extend with zeroes
      Zero,
      --  Extend with ones
      One,
      --  Extend with Most Significant Bit
      Msbit,
      --  Extend with Least Significant Bit
      Lsbit)
     with Size => 2;
   for TXCTRL_EXTENDSelect use
     (Zero => 0,
      One => 1,
      Msbit => 2,
      Lsbit => 3);

   --  Data Formatting Bit Reverse
   type TXCTRL_BITREVSelect is
     (
      --  Transfer Data Most Significant Bit (MSB) first (default for I2S
      --  protocol)
      Msbit,
      --  Transfer Data Least Significant Bit (LSB) first
      Lsbit)
     with Size => 1;
   for TXCTRL_BITREVSelect use
     (Msbit => 0,
      Lsbit => 1);

   --  I2S_TXCTRL_SLOTDIS array
   type I2S_TXCTRL_SLOTDIS_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for I2S_TXCTRL_SLOTDIS
   type I2S_TXCTRL_SLOTDIS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLOTDIS as a value
            Val : HAL.UInt8;
         when True =>
            --  SLOTDIS as an array
            Arr : I2S_TXCTRL_SLOTDIS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for I2S_TXCTRL_SLOTDIS_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Mono Mode
   type TXCTRL_MONOSelect is
     (
      --  Normal mode
      Stereo,
      --  Left channel data is duplicated to right channel
      Mono)
     with Size => 1;
   for TXCTRL_MONOSelect use
     (Stereo => 0,
      Mono => 1);

   --  Single or Multiple DMA Channels
   type TXCTRL_DMASelect is
     (
      --  Single DMA channel
      Single,
      --  One DMA channel per data channel
      Multiple)
     with Size => 1;
   for TXCTRL_DMASelect use
     (Single => 0,
      Multiple => 1);

   --  Tx Serializer Control
   type I2S_TXCTRL_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Line Default Line when Slot Disabled
      TXDEFAULT      : TXCTRL_TXDEFAULTSelect := SAM_SVD.I2S.Zero;
      --  Transmit Data when Underrun
      TXSAME         : TXCTRL_TXSAMESelect := SAM_SVD.I2S.Zero;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Data Slot Formatting Adjust
      SLOTADJ        : TXCTRL_SLOTADJSelect := SAM_SVD.I2S.Right;
      --  Data Word Size
      DATASIZE       : TXCTRL_DATASIZESelect :=
                        SAM_SVD.I2S.TXCTRL_DATASIZESelect_32;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Data Word Formatting Adjust
      WORDADJ        : TXCTRL_WORDADJSelect := SAM_SVD.I2S.Right;
      --  Data Formatting Bit Extension
      EXTEND         : TXCTRL_EXTENDSelect := SAM_SVD.I2S.Zero;
      --  Data Formatting Bit Reverse
      BITREV         : TXCTRL_BITREVSelect := SAM_SVD.I2S.Msbit;
      --  Slot 0 Disabled for this Serializer
      SLOTDIS        : I2S_TXCTRL_SLOTDIS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Mono Mode
      MONO           : TXCTRL_MONOSelect := SAM_SVD.I2S.Stereo;
      --  Single or Multiple DMA Channels
      DMA            : TXCTRL_DMASelect := SAM_SVD.I2S.Single;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2S_TXCTRL_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      TXDEFAULT      at 0 range 2 .. 3;
      TXSAME         at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      SLOTADJ        at 0 range 7 .. 7;
      DATASIZE       at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      WORDADJ        at 0 range 12 .. 12;
      EXTEND         at 0 range 13 .. 14;
      BITREV         at 0 range 15 .. 15;
      SLOTDIS        at 0 range 16 .. 23;
      MONO           at 0 range 24 .. 24;
      DMA            at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Serializer Mode
   type RXCTRL_SERMODESelect is
     (
      --  Receive
      Rx,
      --  Receive one PDM data on each serial clock edge
      Pdm2)
     with Size => 2;
   for RXCTRL_SERMODESelect use
     (Rx => 0,
      Pdm2 => 2);

   --  Clock Unit Selection
   type RXCTRL_CLKSELSelect is
     (
      --  Use Clock Unit 0
      Clk0,
      --  Use Clock Unit 1
      Clk1)
     with Size => 1;
   for RXCTRL_CLKSELSelect use
     (Clk0 => 0,
      Clk1 => 1);

   --  Data Slot Formatting Adjust
   type RXCTRL_SLOTADJSelect is
     (
      --  Data is right adjusted in slot
      Right,
      --  Data is left adjusted in slot
      Left)
     with Size => 1;
   for RXCTRL_SLOTADJSelect use
     (Right => 0,
      Left => 1);

   --  Data Word Size
   type RXCTRL_DATASIZESelect is
     (
      --  32 bits
      RXCTRL_DATASIZESelect_32,
      --  24 bits
      RXCTRL_DATASIZESelect_24,
      --  20 bits
      RXCTRL_DATASIZESelect_20,
      --  18 bits
      RXCTRL_DATASIZESelect_18,
      --  16 bits
      RXCTRL_DATASIZESelect_16,
      --  16 bits compact stereo
      RXCTRL_DATASIZESelect_16C,
      --  8 bits
      RXCTRL_DATASIZESelect_8,
      --  8 bits compact stereo
      RXCTRL_DATASIZESelect_8C)
     with Size => 3;
   for RXCTRL_DATASIZESelect use
     (RXCTRL_DATASIZESelect_32 => 0,
      RXCTRL_DATASIZESelect_24 => 1,
      RXCTRL_DATASIZESelect_20 => 2,
      RXCTRL_DATASIZESelect_18 => 3,
      RXCTRL_DATASIZESelect_16 => 4,
      RXCTRL_DATASIZESelect_16C => 5,
      RXCTRL_DATASIZESelect_8 => 6,
      RXCTRL_DATASIZESelect_8C => 7);

   --  Data Word Formatting Adjust
   type RXCTRL_WORDADJSelect is
     (
      --  Data is right adjusted in word
      Right,
      --  Data is left adjusted in word
      Left)
     with Size => 1;
   for RXCTRL_WORDADJSelect use
     (Right => 0,
      Left => 1);

   --  Data Formatting Bit Extension
   type RXCTRL_EXTENDSelect is
     (
      --  Extend with zeroes
      Zero,
      --  Extend with ones
      One,
      --  Extend with Most Significant Bit
      Msbit,
      --  Extend with Least Significant Bit
      Lsbit)
     with Size => 2;
   for RXCTRL_EXTENDSelect use
     (Zero => 0,
      One => 1,
      Msbit => 2,
      Lsbit => 3);

   --  Data Formatting Bit Reverse
   type RXCTRL_BITREVSelect is
     (
      --  Transfer Data Most Significant Bit (MSB) first (default for I2S
      --  protocol)
      Msbit,
      --  Transfer Data Least Significant Bit (LSB) first
      Lsbit)
     with Size => 1;
   for RXCTRL_BITREVSelect use
     (Msbit => 0,
      Lsbit => 1);

   --  I2S_RXCTRL_SLOTDIS array
   type I2S_RXCTRL_SLOTDIS_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for I2S_RXCTRL_SLOTDIS
   type I2S_RXCTRL_SLOTDIS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLOTDIS as a value
            Val : HAL.UInt8;
         when True =>
            --  SLOTDIS as an array
            Arr : I2S_RXCTRL_SLOTDIS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for I2S_RXCTRL_SLOTDIS_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Mono Mode
   type RXCTRL_MONOSelect is
     (
      --  Normal mode
      Stereo,
      --  Left channel data is duplicated to right channel
      Mono)
     with Size => 1;
   for RXCTRL_MONOSelect use
     (Stereo => 0,
      Mono => 1);

   --  Single or Multiple DMA Channels
   type RXCTRL_DMASelect is
     (
      --  Single DMA channel
      Single,
      --  One DMA channel per data channel
      Multiple)
     with Size => 1;
   for RXCTRL_DMASelect use
     (Single => 0,
      Multiple => 1);

   --  Rx Serializer Control
   type I2S_RXCTRL_Register is record
      --  Serializer Mode
      SERMODE        : RXCTRL_SERMODESelect := SAM_SVD.I2S.Rx;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  Clock Unit Selection
      CLKSEL         : RXCTRL_CLKSELSelect := SAM_SVD.I2S.Clk0;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Data Slot Formatting Adjust
      SLOTADJ        : RXCTRL_SLOTADJSelect := SAM_SVD.I2S.Right;
      --  Data Word Size
      DATASIZE       : RXCTRL_DATASIZESelect :=
                        SAM_SVD.I2S.RXCTRL_DATASIZESelect_32;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Data Word Formatting Adjust
      WORDADJ        : RXCTRL_WORDADJSelect := SAM_SVD.I2S.Right;
      --  Data Formatting Bit Extension
      EXTEND         : RXCTRL_EXTENDSelect := SAM_SVD.I2S.Zero;
      --  Data Formatting Bit Reverse
      BITREV         : RXCTRL_BITREVSelect := SAM_SVD.I2S.Msbit;
      --  Slot 0 Disabled for this Serializer
      SLOTDIS        : I2S_RXCTRL_SLOTDIS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Mono Mode
      MONO           : RXCTRL_MONOSelect := SAM_SVD.I2S.Stereo;
      --  Single or Multiple DMA Channels
      DMA            : RXCTRL_DMASelect := SAM_SVD.I2S.Single;
      --  Loop-back Test Mode
      RXLOOP         : Boolean := False;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2S_RXCTRL_Register use record
      SERMODE        at 0 range 0 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      CLKSEL         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      SLOTADJ        at 0 range 7 .. 7;
      DATASIZE       at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      WORDADJ        at 0 range 12 .. 12;
      EXTEND         at 0 range 13 .. 14;
      BITREV         at 0 range 15 .. 15;
      SLOTDIS        at 0 range 16 .. 23;
      MONO           at 0 range 24 .. 24;
      DMA            at 0 range 25 .. 25;
      RXLOOP         at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Inter-IC Sound Interface
   type I2S_Peripheral is record
      --  Control A
      CTRLA    : aliased I2S_CTRLA_Register;
      --  Clock Unit n Control
      CLKCTRL  : aliased I2S_CLKCTRL_Registers;
      --  Interrupt Enable Clear
      INTENCLR : aliased I2S_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET : aliased I2S_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG  : aliased I2S_INTFLAG_Register;
      --  Synchronization Status
      SYNCBUSY : aliased I2S_SYNCBUSY_Register;
      --  Tx Serializer Control
      TXCTRL   : aliased I2S_TXCTRL_Register;
      --  Rx Serializer Control
      RXCTRL   : aliased I2S_RXCTRL_Register;
      --  Tx Data
      TXDATA   : aliased HAL.UInt32;
      --  Rx Data
      RXDATA   : aliased HAL.UInt32;
   end record
     with Volatile;

   for I2S_Peripheral use record
      CTRLA    at 16#0# range 0 .. 7;
      CLKCTRL  at 16#4# range 0 .. 63;
      INTENCLR at 16#C# range 0 .. 15;
      INTENSET at 16#10# range 0 .. 15;
      INTFLAG  at 16#14# range 0 .. 15;
      SYNCBUSY at 16#18# range 0 .. 15;
      TXCTRL   at 16#20# range 0 .. 31;
      RXCTRL   at 16#24# range 0 .. 31;
      TXDATA   at 16#30# range 0 .. 31;
      RXDATA   at 16#34# range 0 .. 31;
   end record;

   --  Inter-IC Sound Interface
   I2S_Periph : aliased I2S_Peripheral
     with Import, Address => System'To_Address (16#43002800#);

end SAM_SVD.I2S;
