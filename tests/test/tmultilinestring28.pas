{ %FAIL }

{ Will show: 
  tmultilinestring28.pas(17,1) Fatal: Unterminated multi-line string beginning at line 8, column 7. }

program tmultilinestring28;

{$modeswitch MultiLineStrings}

const
  a = `this will be unterminated
with some
lines in it.

var
  B : String;

begin
  B:=`
again
something
end backticked`;

end.