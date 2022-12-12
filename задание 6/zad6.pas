var
  f1, f2, f3: file of integer;
  s: integer;

begin
  
  WriteLn('Введите число, для добавления в первый файл:');
  ReadLn(s);
  Assign(f1, 'file1.txt'); Rewrite(f1);
  Write(f1, s);
  Close(f1);
  
  WriteLn('Введите число, для добавления во второй файл:');
  ReadLn(s);
  Assign(f2, 'file2.txt'); Rewrite(f2);
  Write(f2, s);
  Close(f2);
  
  Assign(f1, 'file1.txt'); Reset(f1);
  Assign(f3, 'file3.txt'); Rewrite(f3);
  
  while not eof(f1) do
  begin
    read(f1, s);
    write(f3, s);
  end;
  
  Close(f1); 
  Close(f3);
  
  Assign(f2, 'file2.txt'); Reset(f2);
  Assign(f1, 'file1.txt'); Rewrite(f1);
  
  while not eof(f2) do
  begin
    read(f2, s);
    write(f1, s);
  end;
  
  Close(f2); 
  Close(f1);
  
  Assign(f2, 'file2.txt'); Reset(f2);
  Close(f2);
  Erase(f2);
  
  Assign(f1, 'file1.txt'); Reset(f1);
  
  while not eof(f1) do
  begin
    read(f1, s);
    writeLn(s);
  end;
  
  Close(f1);
  
  Assign(f3, 'file3.txt'); Reset(f3);
  
  while not eof(f3) do
  begin
    read(f3, s);
    writeLn(s);
  end;
  
  Close(f3);
  Rename(f3, 'file2.txt');
end.