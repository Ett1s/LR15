var s,s1:string;
f,f1:text;
i:integer;
begin
assign(f,'file1.txt');
reset(f);
assign(f1,'file2.txt');
rewrite(f1);
i:=0;
while not eof(f) do
begin
  inc(i);
  readln(f,s);
  str(i,s1); 
  insert(s1+'. ',s,1);
  writeln(f1,s);
end;
 
close(f);
close(f1);
end.