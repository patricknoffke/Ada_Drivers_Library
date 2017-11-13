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

--  This spec has been automatically generated from ATSAMD21E15L.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  Atmel ATSAMD21E15L device: Cortex-M0+ Microcontroller with 32KB Flash, 4KB
--  SRAM, QFN32_LIGHTING-pin package (refer to
--  http://www.atmel.com/devices/SAMD21E15L.aspx for more)
package SAM_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   AC_Base : constant System.Address :=
     System'To_Address (16#42004400#);
   AC1_Base : constant System.Address :=
     System'To_Address (16#42005400#);
   ADC_Base : constant System.Address :=
     System'To_Address (16#42004000#);
   DAC_Base : constant System.Address :=
     System'To_Address (16#42004800#);
   DMAC_Base : constant System.Address :=
     System'To_Address (16#41004800#);
   DSU_Base : constant System.Address :=
     System'To_Address (16#41002000#);
   EIC_Base : constant System.Address :=
     System'To_Address (16#40001800#);
   EVSYS_Base : constant System.Address :=
     System'To_Address (16#42000400#);
   GCLK_Base : constant System.Address :=
     System'To_Address (16#40000C00#);
   HMATRIX_Base : constant System.Address :=
     System'To_Address (16#41007000#);
   MTB_Base : constant System.Address :=
     System'To_Address (16#41006000#);
   NVMCTRL_Base : constant System.Address :=
     System'To_Address (16#41004000#);
   PAC0_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   PAC1_Base : constant System.Address :=
     System'To_Address (16#41000000#);
   PAC2_Base : constant System.Address :=
     System'To_Address (16#42000000#);
   PM_Base : constant System.Address :=
     System'To_Address (16#40000400#);
   PORT_Base : constant System.Address :=
     System'To_Address (16#41004400#);
   PORT_IOBUS_Base : constant System.Address :=
     System'To_Address (16#60000000#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#40001400#);
   SERCOM0_Base : constant System.Address :=
     System'To_Address (16#42000800#);
   SERCOM1_Base : constant System.Address :=
     System'To_Address (16#42000C00#);
   SERCOM2_Base : constant System.Address :=
     System'To_Address (16#42001000#);
   SERCOM3_Base : constant System.Address :=
     System'To_Address (16#42001400#);
   SYSCTRL_Base : constant System.Address :=
     System'To_Address (16#40000800#);
   TC3_Base : constant System.Address :=
     System'To_Address (16#42002C00#);
   TC4_Base : constant System.Address :=
     System'To_Address (16#42003000#);
   TC5_Base : constant System.Address :=
     System'To_Address (16#42003400#);
   TCC0_Base : constant System.Address :=
     System'To_Address (16#42002000#);
   TCC1_Base : constant System.Address :=
     System'To_Address (16#42002400#);
   TCC2_Base : constant System.Address :=
     System'To_Address (16#42002800#);
   WDT_Base : constant System.Address :=
     System'To_Address (16#40001000#);

end SAM_SVD;