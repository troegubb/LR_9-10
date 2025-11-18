var
a: array[1..5] of integer = (2, 3, 4, 5, 6);
function mul_all: integer;
var
  i, res: integer;
begin
  res := 1;
  for i := 1 to 5 do
    res := res * a[i];
  mul_all := res;
end;
function mul_even: integer;
var
  i, res: integer;
begin
  res := 1;
  for i := 1 to 5 do
    if a[i] mod 2 = 0 then
      res := res * a[i];
  mul_even := res;
end;
begin
  writeln('Все элементы: ', mul_all);
  writeln('Четные элементы: ', mul_even);
end.