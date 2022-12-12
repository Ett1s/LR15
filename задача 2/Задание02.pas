const
  Cap = ['A'..'Z', 'А'..'Я'];

var
  f: Text;
  s, min1: string;
  ch: char;
  st, kol, min: integer;

begin
  Assign(f, 'text.txt');
  
  Reset(f);
  while not eof(f) do
  begin
    Readln(f, ch);
    if ch in Cap then
      st := st + 1;
  end;
  Close(f);
  writeln('Количество строк начинающихся с заглавной буквы = ', st);
  
  Reset(f);
  while not eof(f) do
  begin
    Readln(f, s);
    st := length(s);
    if s[1] = s[st] then
      kol := kol + 1;
  end;
  Close(f);
  writeln('Количество строк начинающиеся и заканчивающиеся на один и тот же символ = ', kol);
  
  Reset(f);
  min := 1000000000;
  while not eof(f) do
  begin
    Readln(f, s);
    st := length(s);
    if min > st then
    begin
      min := st;
      min1 := s;
    end;
  end;
  Close(f);
  writeln('Минимальная строка из файла это ', min1);
  
  reset(f);
  while not eof(f) do
 begin
  readln(f, s);
  st:=0;
  For var i:=1 to length(s) do
   begin
    if s[1]=S[length(s)] then
      st:=1;
   end;
   if st=1 then
   writeln('Симметричная строка: ',s);
 end;
 close(f);
end.