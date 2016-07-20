with HAL.UART;
with HAL; use HAL;

package AdaFruit_Thermal_Printer is

   type TP_Device (Port : not null HAL.UART.UART_Port_Ref) is
     tagged private;

   --  Sets the line spacing to n dots. The default value is 32
   procedure Set_Line_Spacing (This : in out TP_Device; Spacing : Byte);
   type Text_Align is (Right, Center, Left);
   procedure Set_Align (This : in out TP_Device; Align : Text_Align);
   procedure Set_Font_Enlarge (This : in out TP_Device; Height, Width : Boolean);
   procedure Set_Bold (This : in out TP_Device; Bold : Boolean);
   procedure Set_Double_Width (This : in out TP_Device; Double : Boolean);
   procedure Set_UpDown (This : in out TP_Device; UpDown : Boolean);
   procedure Set_Reversed (This : in out TP_Device; Reversed : Boolean);
   subtype Underline_Height is Byte range 0 .. 2;
   procedure Set_Underline_Height (This : in out TP_Device; Height : Underline_Height);

   type Character_Set is (USA, France, Germany, UK, Denmark1, Sweden, Italy,
                          Spain1, Japan, Norway, Denmark2, Spain2,
                          Latin_Americam, Korea);
   procedure Set_Character_Set (This : in out TP_Device; Set : Character_Set);

   procedure Reset (This : in out TP_Device); --  ESC @

   type Printer_Status is record
      Paper       : Boolean;
      Voltage     : Integer;
      Temperature : Integer;
   end record;
   function Get_Status (This : in out TP_Device) return Printer_Status;

   type Printer_Settings is record
      --  Unit: 8 dots,  Default: 7 (64 dots))
      Max_Printing_Dots : Byte;
      --  Unit 10us, Default: 80 (800us)
      Heating_Time      : Byte;
      --  Unit 10us, Default: 2 (20us)
      Heating_Interval  : Byte;
   end record;

   procedure Set_Density (This : in out TP_Device; Density, Breaktime : Byte);
   procedure Set_Printer_Settings (This : in out TP_Device; Settings : Printer_Settings);

   procedure Print_Test_Page (This : in out TP_Device);

private
   type TP_Device (Port : not null HAL.UART.UART_Port_Ref) is
     tagged null record;

end AdaFruit_Thermal_Printer;
