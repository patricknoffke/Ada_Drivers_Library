--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  o Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  o Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  o Neither the name of the copyright holder nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
--  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
--  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
--  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
--  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
--  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
--  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
--  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
--  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from MKV58F24.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  System Mode Controller
package NRF_SVD.SMC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Allow Very-Low-Leakage Stop Mode
   type PMPROT_AVLLS_Field is
     (
      --  Any VLLSx mode is not allowed
      PMPROT_AVLLS_Field_0,
      --  Any VLLSx mode is allowed
      PMPROT_AVLLS_Field_1)
     with Size => 1;
   for PMPROT_AVLLS_Field use
     (PMPROT_AVLLS_Field_0 => 0,
      PMPROT_AVLLS_Field_1 => 1);

   --  Allow Very-Low-Power Modes
   type PMPROT_AVLP_Field is
     (
      --  VLPR, VLPW, and VLPS are not allowed.
      PMPROT_AVLP_Field_0,
      --  VLPR, VLPW, and VLPS are allowed.
      PMPROT_AVLP_Field_1)
     with Size => 1;
   for PMPROT_AVLP_Field use
     (PMPROT_AVLP_Field_0 => 0,
      PMPROT_AVLP_Field_1 => 1);

   --  Allow High Speed Run mode
   type PMPROT_AHSRUN_Field is
     (
      --  HSRUN is not allowed
      PMPROT_AHSRUN_Field_0,
      --  HSRUN is allowed
      PMPROT_AHSRUN_Field_1)
     with Size => 1;
   for PMPROT_AHSRUN_Field use
     (PMPROT_AHSRUN_Field_0 => 0,
      PMPROT_AHSRUN_Field_1 => 1);

   --  Power Mode Protection register
   type SMC_PMPROT_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit := 16#0#;
      --  Allow Very-Low-Leakage Stop Mode
      AVLLS        : PMPROT_AVLLS_Field := NRF_SVD.SMC.PMPROT_AVLLS_Field_0;
      --  unspecified
      Reserved_2_4 : HAL.UInt3 := 16#0#;
      --  Allow Very-Low-Power Modes
      AVLP         : PMPROT_AVLP_Field := NRF_SVD.SMC.PMPROT_AVLP_Field_1;
      --  unspecified
      Reserved_6_6 : HAL.Bit := 16#0#;
      --  Allow High Speed Run mode
      AHSRUN       : PMPROT_AHSRUN_Field := NRF_SVD.SMC.PMPROT_AHSRUN_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SMC_PMPROT_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      AVLLS        at 0 range 1 .. 1;
      Reserved_2_4 at 0 range 2 .. 4;
      AVLP         at 0 range 5 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      AHSRUN       at 0 range 7 .. 7;
   end record;

   --  Stop Mode Control
   type PMCTRL_STOPM_Field is
     (
      --  Normal Stop (STOP)
      PMCTRL_STOPM_Field_000,
      --  Very-Low-Power Stop (VLPS)
      PMCTRL_STOPM_Field_010,
      --  Very-Low-Leakage Stop (VLLSx)
      PMCTRL_STOPM_Field_100,
      --  Reseved
      PMCTRL_STOPM_Field_110)
     with Size => 3;
   for PMCTRL_STOPM_Field use
     (PMCTRL_STOPM_Field_000 => 0,
      PMCTRL_STOPM_Field_010 => 2,
      PMCTRL_STOPM_Field_100 => 4,
      PMCTRL_STOPM_Field_110 => 6);

   --  Stop Aborted
   type PMCTRL_STOPA_Field is
     (
      --  The previous stop mode entry was successful.
      PMCTRL_STOPA_Field_0,
      --  The previous stop mode entry was aborted.
      PMCTRL_STOPA_Field_1)
     with Size => 1;
   for PMCTRL_STOPA_Field use
     (PMCTRL_STOPA_Field_0 => 0,
      PMCTRL_STOPA_Field_1 => 1);

   --  Run Mode Control
   type PMCTRL_RUNM_Field is
     (
      --  Normal Run mode (RUN)
      PMCTRL_RUNM_Field_00,
      --  Very-Low-Power Run mode (VLPR)
      PMCTRL_RUNM_Field_10,
      --  High Speed Run mode (HSRUN)
      PMCTRL_RUNM_Field_11)
     with Size => 2;
   for PMCTRL_RUNM_Field use
     (PMCTRL_RUNM_Field_00 => 0,
      PMCTRL_RUNM_Field_10 => 2,
      PMCTRL_RUNM_Field_11 => 3);

   --  Power Mode Control register
   type SMC_PMCTRL_Register is record
      --  Stop Mode Control
      STOPM        : PMCTRL_STOPM_Field := NRF_SVD.SMC.PMCTRL_STOPM_Field_000;
      --  Read-only. Stop Aborted
      STOPA        : PMCTRL_STOPA_Field := NRF_SVD.SMC.PMCTRL_STOPA_Field_0;
      --  unspecified
      Reserved_4_4 : HAL.Bit := 16#0#;
      --  Run Mode Control
      RUNM         : PMCTRL_RUNM_Field := NRF_SVD.SMC.PMCTRL_RUNM_Field_10;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SMC_PMCTRL_Register use record
      STOPM        at 0 range 0 .. 2;
      STOPA        at 0 range 3 .. 3;
      Reserved_4_4 at 0 range 4 .. 4;
      RUNM         at 0 range 5 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   --  VLLS Mode Control
   type STOPCTRL_VLLSM_Field is
     (
      --  VLLS0
      STOPCTRL_VLLSM_Field_000,
      --  VLLS1
      STOPCTRL_VLLSM_Field_001,
      --  VLLS2
      STOPCTRL_VLLSM_Field_010,
      --  VLLS3
      STOPCTRL_VLLSM_Field_011)
     with Size => 3;
   for STOPCTRL_VLLSM_Field use
     (STOPCTRL_VLLSM_Field_000 => 0,
      STOPCTRL_VLLSM_Field_001 => 1,
      STOPCTRL_VLLSM_Field_010 => 2,
      STOPCTRL_VLLSM_Field_011 => 3);

   --  LPO Power Option
   type STOPCTRL_LPOPO_Field is
     (
      --  LPO clock is enabled in VLLSx
      STOPCTRL_LPOPO_Field_0,
      --  LPO clock is disabled in VLLSx
      STOPCTRL_LPOPO_Field_1)
     with Size => 1;
   for STOPCTRL_LPOPO_Field use
     (STOPCTRL_LPOPO_Field_0 => 0,
      STOPCTRL_LPOPO_Field_1 => 1);

   --  RAM2 Power Option
   type STOPCTRL_RAM2PO_Field is
     (
      --  RAM2 not powered in VLLS2
      STOPCTRL_RAM2PO_Field_0,
      --  RAM2 powered in VLLS2
      STOPCTRL_RAM2PO_Field_1)
     with Size => 1;
   for STOPCTRL_RAM2PO_Field use
     (STOPCTRL_RAM2PO_Field_0 => 0,
      STOPCTRL_RAM2PO_Field_1 => 1);

   --  POR Power Option
   type STOPCTRL_PORPO_Field is
     (
      --  POR detect circuit is enabled in VLLS0
      STOPCTRL_PORPO_Field_0,
      --  POR detect circuit is disabled in VLLS0
      STOPCTRL_PORPO_Field_1)
     with Size => 1;
   for STOPCTRL_PORPO_Field use
     (STOPCTRL_PORPO_Field_0 => 0,
      STOPCTRL_PORPO_Field_1 => 1);

   --  Partial Stop Option
   type STOPCTRL_PSTOPO_Field is
     (
      --  STOP - Normal Stop mode
      STOPCTRL_PSTOPO_Field_00,
      --  PSTOP1 - Partial Stop with both system and bus clocks disabled
      STOPCTRL_PSTOPO_Field_01,
      --  PSTOP2 - Partial Stop with system clock disabled and bus clock
      --  enabled
      STOPCTRL_PSTOPO_Field_10)
     with Size => 2;
   for STOPCTRL_PSTOPO_Field use
     (STOPCTRL_PSTOPO_Field_00 => 0,
      STOPCTRL_PSTOPO_Field_01 => 1,
      STOPCTRL_PSTOPO_Field_10 => 2);

   --  Stop Control Register
   type SMC_STOPCTRL_Register is record
      --  VLLS Mode Control
      VLLSM  : STOPCTRL_VLLSM_Field := NRF_SVD.SMC.STOPCTRL_VLLSM_Field_011;
      --  LPO Power Option
      LPOPO  : STOPCTRL_LPOPO_Field := NRF_SVD.SMC.STOPCTRL_LPOPO_Field_0;
      --  RAM2 Power Option
      RAM2PO : STOPCTRL_RAM2PO_Field := NRF_SVD.SMC.STOPCTRL_RAM2PO_Field_0;
      --  POR Power Option
      PORPO  : STOPCTRL_PORPO_Field := NRF_SVD.SMC.STOPCTRL_PORPO_Field_0;
      --  Partial Stop Option
      PSTOPO : STOPCTRL_PSTOPO_Field := NRF_SVD.SMC.STOPCTRL_PSTOPO_Field_00;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SMC_STOPCTRL_Register use record
      VLLSM  at 0 range 0 .. 2;
      LPOPO  at 0 range 3 .. 3;
      RAM2PO at 0 range 4 .. 4;
      PORPO  at 0 range 5 .. 5;
      PSTOPO at 0 range 6 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Mode Controller
   type SMC_Peripheral is record
      --  Power Mode Protection register
      PMPROT   : aliased SMC_PMPROT_Register;
      --  Power Mode Control register
      PMCTRL   : aliased SMC_PMCTRL_Register;
      --  Stop Control Register
      STOPCTRL : aliased SMC_STOPCTRL_Register;
      --  Power Mode Status register
      PMSTAT   : aliased HAL.UInt8;
   end record
     with Volatile;

   for SMC_Peripheral use record
      PMPROT   at 16#0# range 0 .. 7;
      PMCTRL   at 16#1# range 0 .. 7;
      STOPCTRL at 16#2# range 0 .. 7;
      PMSTAT   at 16#3# range 0 .. 7;
   end record;

   --  System Mode Controller
   SMC_Periph : aliased SMC_Peripheral
     with Import, Address => SMC_Base;

end NRF_SVD.SMC;