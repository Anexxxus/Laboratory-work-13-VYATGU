var intext, outtext: text;
  s: string;
  K,i: integer;
begin
  Writeln('Введите число');
  readln(K);
  assign(intext,'4.1.txt');
  assign(outtext,'4.2.txt');
  reset(intext);
  rewrite(outtext);
  i:=0;
  while not eof(intext) do
  begin
    Readln(intext,s);
   inc(i);
   if i=K then 
     Writeln(outtext);
   Writeln(outtext,s);
  end;
  Close(intext);
  Close(outtext);
end.