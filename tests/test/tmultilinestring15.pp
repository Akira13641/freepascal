program tmultilinestring15;

{$modeswitch MultiLineStrings}
{$MultiLineStringTrimLeft 2}

const X = `
  Hello
  every
  body!
`;

const Y = `
  Goodbye
  every
  body!
`;

begin
  Write(X + Y);
  Write(Concat(X, Y));
  Write(
    'Single line string ' +
    `
    ` +
    Y +
    X
  );
end.