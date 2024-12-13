```ada
function Check_Range(Num : Integer) return Boolean is
begin
   if Num < 10 then
      return False;
   elsif Num > 20 then
      return False;
   else
      return True;
   end if;
exception
   when Data_Error =>
      Put_Line("Invalid input. Please enter an integer.");
      return False; 
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Num : Integer;
begin
   Put("Enter a number: ");
   begin
      Get(Num);
   exception
      when others =>
         Put_Line("An unexpected error occurred.");
         return;
end;

   if Check_Range(Num) then
      Put_Line("Number is within range.");
   else
      Put_Line("Number is out of range.");
   end if;
end Main;
```