unit U_ValidaCPF_CNPJ;

interface
uses
  System.SysUtils,StrUtils;
type
    TValidaCPF_CNPJ = class
    public
      function ValidarCPF(numCPF: string): boolean;
      function isCNPJ(CNPJ: string) :boolean;
    end;
implementation

{ TValidaCPF_CNPJ }


function TValidaCPF_CNPJ.isCNPJ(CNPJ: string): boolean;
var   dig13, dig14: string;
    sm, i, r, peso: integer;
begin
// length - retorna o tamanho da string do CNPJ (CNPJ é um número formado por 14 dígitos)
  if ((CNPJ = '00000000000000') or (CNPJ = '11111111111111') or
      (CNPJ = '22222222222222') or (CNPJ = '33333333333333') or
      (CNPJ = '44444444444444') or (CNPJ = '55555555555555') or
      (CNPJ = '66666666666666') or (CNPJ = '77777777777777') or
      (CNPJ = '88888888888888') or (CNPJ = '99999999999999') or
      (length(CNPJ) <> 14))
     then begin
            isCNPJ := false;
            exit;
          end;

// "try" - protege o código para eventuais erros de conversão de tipo através da função "StrToInt"
  try
{ *-- Cálculo do 1o. Digito Verificador --* }
    sm := 0;
    peso := 2;
    for i := 12 downto 1 do
    begin
// StrToInt converte o i-ésimo caractere do CNPJ em um número
      sm := sm + (StrToInt(CNPJ[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig13 := '0'
    else str((11-r):1, dig13); // converte um número no respectivo caractere numérico

{ *-- Cálculo do 2o. Digito Verificador --* }
    sm := 0;
    peso := 2;
    for i := 13 downto 1 do
    begin
      sm := sm + (StrToInt(CNPJ[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig14 := '0'
    else str((11-r):1, dig14);

{ Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig13 = CNPJ[13]) and (dig14 = CNPJ[14]))
       then isCNPJ := true
    else isCNPJ := false;
  except
    isCNPJ := false
  end;
end;

function TValidaCPF_CNPJ.ValidarCPF(numCPF: string): boolean;
var
   cpf: string;
   x, total, dg1, dg2: Integer;
   ret: boolean;
begin
  ret := True;
  for x := 1 to Length(numCPF) do
     if not (numCPF[x] in ['0'..'9', '-', '.', ' ']) then
        ret := False;
  if ret then
   begin
     ret := True;
     cpf := '';
     for x := 1 to Length(numCPF) do
        if numCPF[x] in ['0'..'9'] then
           cpf := cpf + numCPF[x];
     if Length(cpf) <> 11 then
        ret := False;
     if ret then
      begin
        //1° dígito
        total := 0;
        for x := 1 to 9 do
         total := total + (StrToInt(cpf[x]) * x);
        dg1 := total mod 11;
        if dg1 = 10 then
           dg1 := 0;
        //2° dígito
        total := 0;
        for x := 1 to 8 do
           total := total + (StrToInt(cpf[x + 1]) * (x));
        total := total + (dg1 * 9);
        dg2 := total mod 11;
        if dg2 = 10 then
           dg2 := 0;
        //Validação final
      if (dg1 = StrToInt(cpf[10])) and (dg2 = StrToInt(cpf[11])) then
        ret := True
      else
        ret := False;
        //Inválidos
      case AnsiIndexStr(cpf,['00000000000','11111111111','22222222222','33333333333','44444444444',
       '55555555555','66666666666','77777777777','88888888888','99999999999']) of
         0..9: ret := False;
         end;
      end
     else
    begin
        //Se não informado deixa passar
        if cpf = '' then
           ret := True;
    end;
   end;
  result := ret;
end;

end.  (*
interface

type
  TfrmCadClientes = class(TForm)


var
  frmCadClientes: TfrmCadClientes;

implementation
      *)
