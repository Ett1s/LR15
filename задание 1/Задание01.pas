uses crt;
var
  f: Text;
  n, s, e, max, min, sum, nom: integer;

begin
  n := 0;
  s := 0;
  Assign(f, 'input.txt');
  Reset(f);
  min:=1000000000;
  while not Eof(f) do
  begin
    read(f,e);
    n := n + 1;
    s := s + e;
    if e>max then
      begin
      max:=e;
      nom:=n;
      end;
    if e<min then
      min:=e;
    if e mod 2 = 0 then
    begin
      sum:=sum+e;
    end;
  end;
  Close(f);
  writeln('В файле ', n, ' чисел');
  writeln('В файле максимальное число в файле ', max);
  writeln('Сумма чисел из файла равна ', s);
  Writeln('Разность максимального и минимального числа в файле = ', max-min);
  writeln('Среднее арифметическое из файла ~ ', s div n);
  writeln('Номер максимального числа в файле ', nom);
  writeln('Сумма четных числе из файла = ',sum);
  sum:=0;
  writeln;
  writeln('Максимальное число из строк:');
  reset(f);
  while not Eof(f) do
  begin
    var i:integer;
    i:=i+1;
    max:=0;
    while not Eoln(f) do
    begin
      read(f,e);
      if e>max then
        max:=e;
    end;
    readln(f);
    writeln('Строка ',i,' максимальное число ',max);
  end;
  Close(f);
  
  writeln;
  writeln('Сумма чисел из строк:');
  reset(f);
  while not Eof(f) do
  begin
    var i:integer;
    i:=i+1;
    while not Eoln(f) do
    begin
      read(f,e);
      sum:=sum+e;
    end;
    readln(f);
    writeln('Строка ',i,' сумма чисел = ',sum);
  end;
  Close(f);
  
  writeln;
  writeln('Разность максимального и минимального числа в строке:');
  reset(f);
  while not Eof(f) do
  begin
    var i:integer;
    i:=i+1;
    max:=0;
    min:=1000000000;
    while not Eoln(f) do
    begin
      read(f,e);
      if e>max then
        max:=e;
      if e<min then
        min:=e;
    end;
    readln(f);
    writeln('Строка ',i,' разность максимального и минимального числа ',max-min);
  end;
  Close(f);
  
  writeln;
  writeln('Среднее арифметическое из строк:');
  reset(f);
  while not Eof(f) do
  begin
    var i:integer;
    i:=i+1;
    n:=0;
    while not Eoln(f) do
    begin
      read(f,e);
      sum:=sum+e;
      n:=n+1;
    end;
    readln(f);
    writeln('Строка ',i,' среднее арифметическое ~ ',sum div n);
  end;
  Close(f);
  
  writeln;
  reset(f);
  sum:=0;
  while not Eof(f) do
  begin
    var i:integer;
    i:=i+1;
    max:=0;
    while not Eoln(f) do
    begin
      read(f,e);
      if e>max then
        max:=e;
    end;
    readln(f);
    sum:=sum+max;
  end;
  Close(f);
  writeln('Сумма максимальных элементов из файла = ', sum);
end.
