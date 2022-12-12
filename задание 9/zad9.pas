var f,g:text;
    s:string;
begin
assign(f,'111.txt');
reset(f);
assign(g,'112.txt');
rewrite(g);
while not eof(f) do
 begin
  readln(f,s);
  while length(s)<80 do
  s:=' '+s+' ';
  writeln(g,s);
 end;
close(g);
close(f);

end.