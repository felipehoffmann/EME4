unit EME4.Metodos;

interface

uses
  IBX.IBQuery;

function FormatarCEP(ACEP: String): String;
function FormatarTelefone(ANumero: String): String;
function FormatarCNAE(ACNAE: string): string;
function RetornarNumeros(S: string): String;
function ValidarCNPJ(ACNPJ: string): Boolean;

procedure CampoKeyDown(Sender: TObject; var Key: Word);

function CriarQuery: TIBQuery;

implementation

uses
  Vcl.Forms,
  System.MaskUtils,
  System.RegularExpressions,
  System.SysUtils,
  Winapi.Messages,
  Winapi.Windows,
  EME4.DM;

function FormatarCEP(ACEP: String): String;
begin
  Result := RetornarNumeros(ACEP);
  if not Result.IsEmpty then
    Result := FormatMaskText('99999\-999;0;_', Result);
end;

function FormatarTelefone(ANumero: String): String;
begin
  Result := TRegEx.Replace(RetornarNumeros(ANumero), '^\(?([0-9]{2})\)?[-]?([0-9]{4,5})[-]?([0-9]{4})', '$1-$2-$3');
end;

function FormatarCNAE(ACNAE: string): string;
begin
  Result := RetornarNumeros(ACNAE);
  if not Result.IsEmpty then
    Result := FormatMaskText('9999\-9\/99;0;_', Result);
end;

function RetornarNumeros(S: string): String;
var
  I: Integer;
begin
  Result := '' ;
  for I := 1 to Length(S) do
    if CharInSet(S[I], ['0'..'9']) then
      Result := Result + S[I];
end;

function ValidarCNPJ(ACNPJ: string): Boolean;
var
   vCalc: String;
   vSoma: Integer;
   vDigito: Integer;
   vIguais: Boolean;
   i: Integer;
begin
  Result := False;

  ACNPJ := RetornarNumeros(ACNPJ);
  if ACNPJ.IsEmpty then
    Exit;

  if Length(ACNPJ) <> 14 then
    Exit;

  // Impede CNPJ com todos os dígitos repetidos
  vIguais := True;
  for i := 1 to Length(ACNPJ) do
  begin
    if (i>1) then
      vIguais := vIguais and (ACNPJ[i] = ACNPJ[i-1]);

    if not vIguais then
      Break;
  end;

  if vIguais then
    Exit;

  try
    vCalc := Copy(ACNPJ,1,Length(ACNPJ)-2);
    vSoma := 0;

    for i := 1 to 4 do
      vSoma := vSoma + StrToInt(vCalc[i]) * (6 - i);

    for i := 1 to 8 do
      vSoma := vSoma + StrToInt(vCalc[i + 4]) * (10 - i);

    vDigito := 11 - vSoma mod 11;
    if vDigito in [10,11] then
      vCalc := vCalc + '0'
    else
      vCalc := vCalc + vDigito.ToString;

    vSoma := 0;
    for i := 1 to 5 do
      vSoma := vSoma + StrToInt(vCalc[i]) * (7 - i);

    for i := 1 to 8 do
      vSoma := vSoma + StrToInt(vCalc[i + 5]) * (10 - i);

    vDigito := 11 - vSoma mod 11;
    if vDigito in [10,11] then
      vCalc := vCalc + '0'
    else
      vCalc := vCalc +  vDigito.ToString;

    Result := ACNPJ = vCalc;
  except
    Result := False;
  end;
end;

procedure CampoKeyDown(Sender: TObject; var Key: Word);
begin
  if Ord(Key) = VK_RETURN then
  begin
    Key := VK_CLEAR;
    Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0)
  end
  else if Ord(Key) = VK_UP then
  begin
    Key := VK_CLEAR;
    Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);
  end
end;

function CriarQuery: TIBQuery;
begin
  Result := TIBQuery.Create(nil);
  Result.Database := DM.Transacao.DefaultDatabase;
  Result.Transaction := DM.Transacao;
end;

end.
