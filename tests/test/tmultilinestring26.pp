program tmultilinestring26;

{$modeswitch MultiLineStrings}
{$MultiLineStringTrimLeft 5}

const middleSpaceBug: array[0..5] of string = (
#$41` `#$42   //<--- this becomes #$41#$42 instead of #$41#$20#$42
,
#$41` - `#$42 //<--- this becomes #$41#$2D#$20#$42 instead of #$41#$20#$2D#$20#$42
,
#$41`      -      `#$42  //<--- one space left instead of six spaces
,
#$41`      -      `#$42`  --  `  //<---- the same bug twice
,
'  '#$41` `#$42   //<--- the space between backticks disappears: #$20#$20#$41#$42
,
^T' e s'` t`  //<--- last two: $73$74 instead of $73$20$74
);

var S: String;

begin
  for S in middleSpaceBug do WriteLn(S);
end.
