var intext, outtext: text;
  s:string;
begin
  assign(intext,'6.1.txt');
  assign(outtext,'6.2.txt');
  reset(intext);
  rewrite(outtext);
  while not eof(intext) do
  begin
    Readln(intext,s);
    if s <> '' then
      writeln(outtext,s);
  end;
  close(intext);
  close(outtext);
end.