program tmultilinestring6;

{$CodePage UTF8}
{$modeswitch MultiLineStrings}
{$MultiLineStringLineEnding CR}

const A =
`
😊
😊
😊
😊
😊
`;

{$MultiLineStringLineEnding CRLF}

const B =
`
😊
😊
😊
😊
😊
`;

{$MultiLineStringLineEnding LF}

const C =
`
😊
😊
😊
😊
😊
`;

{$MultiLineStringLineEnding PLATFORM}

const D =
`
😊
😊
😊
😊
😊
`;

{$MultiLineStringLineEnding RAW}

const E =
`
😊
😊
😊
😊
😊
`;

begin
  Write(A);
  Write(B);
  Write(C);
  Write(D);
  Write(E);
end.