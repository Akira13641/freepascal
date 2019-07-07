program tmultilinestring12;

{$modeswitch MultiLineStrings}

procedure TakesAString(const S: String);
begin
  Write(S);
end;

begin
  TakesAString(
`
This
works
just
fine!
`
  );
end.