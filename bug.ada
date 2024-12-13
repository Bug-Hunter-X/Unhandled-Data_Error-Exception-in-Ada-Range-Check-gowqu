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
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Num : Integer;
begin
   Put("Enter a number: ");
   Get(Num);

   if Check_Range(Num) then
      Put_Line("Number is within range.");
   else
      Put_Line("Number is out of range.");
   end if;
end Main;
```