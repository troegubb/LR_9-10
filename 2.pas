const
  r = 8;
  c = 6;
type
  mat = array[1..r, 1..c] of integer;
  arr = array[1..r] of integer;
procedure make_mat(var m: mat);
var
  i, j: integer;
begin
  randomize;
  for i := 1 to r do
    for j := 1 to c do
      m[i, j] := random(16) - 5;
end;
function check_row(var row: array of integer): integer;
var
  i: integer;
begin
  for i := 0 to High(row) do
    if row[i] < 0 then
    begin
      check_row := -1;
      exit;
    end;
  check_row := 1;
end;
procedure make_res(var m: mat; var res: arr);
var
  i, j: integer;
begin
  for i := 1 to r do
  begin
    res[i] := 1;
    for j := 1 to c do
      if m[i, j] < 0 then
      begin
        res[i] := -1;
        break;
      end;
  end;
end;
procedure print_mat(m: mat);
var
  i, j: integer;
begin
  for i := 1 to r do
  begin
    for j := 1 to c do
      write(m[i, j]:4);
    writeln;
  end;
end;
procedure print_res(res: arr);
var
  i: integer;
begin
  for i := 1 to r do
    write(res[i]:4);
  writeln;
end;
var
  m: mat;
  res: arr;
begin
  make_mat(m);
  writeln('Матрица 8x6:');
  print_mat(m);
  make_res(m, res);
  writeln('Результат:');
  print_res(res);
end.