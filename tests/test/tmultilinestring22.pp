program tmultilinestring22;

{$modeswitch MultiLineStrings}
{$MultiLineStringTrimLeft 5}

const Test = ` ThisSpace>>>>     <<<<disappeared`;

begin
  Write(Test);
end.
