```ada
function Check_Range (Num : Integer) return Boolean is
begin
   if Num < 10 or Num > 100 then
      raise Range_Error;
   else
      return True;
   end if;
exception
   when Range_Error =>
      Put_Line("Range Error: Number outside 10-100");
      return False; 
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Input_Num : Integer;
begin
   Put("Enter an integer: ");
   Get(Input_Num);

   if Check_Range(Input_Num) then
      Put_Line("Number is within range (10-100)");
   else
      Put_Line("Number is outside the range");
   end if;
end Main;
```