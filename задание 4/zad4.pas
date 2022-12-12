var
f,f1,f2:text;
s,s1:String;
begin
  Assign(f,'test.txt');
  reset(f);
  Assign(f1,'test2.txt');
  Assign(f2,'test3.txt');
  rewrite(f2);
  while(not eof(f))do
  begin
     readln(f,s);
     reset(f1);
     while(not eof(f1))do
     begin
       readln(f1,s1);
       if s = s1 then
           writeln(f2,s1);
     end;  
  end;
  Close(f2);
  Close(f1);
  Close(f);
  readln;
end.