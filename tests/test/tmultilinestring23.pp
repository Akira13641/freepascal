program tmultilinestring23;

{$mode ObjFPC}{$H+}
{$modeswitch MultiLineStrings}
{$MultiLineStringTrimLeft 5}
{$modeswitch PrefixedAttributes}

uses RTTI;

type
  TMultiLineAttribute = class(TCustomAttribute)
  private
    FString: String;
  public
    constructor Create(const S: String);
    property StringValue: String read FString;
  end;

  constructor TMultiLineAttribute.Create(const S: String);
  begin
    FString := S;
  end;

type
  [TMultiLineAttribute(
    `This is my
     pretty cool
     multi-line string
     attribute!`
  )]
  [TMultiLineAttribute(
    `This is my
     even cooler
     multi-line string
     attribute!`
  )]
  TMyClass = class
  end;

var
  C: TMyClass;
  A: TMultiLineAttribute;

begin
  C := TMyClass.Create();
  with TRTTIType.Create(TypeInfo(C)) do begin
    for TCustomAttribute(A) in GetAttributes() do
      WriteLn(A.StringValue);
    Free();
  end;
  C.Free();
end.
