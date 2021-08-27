program P_JSON;

uses
  Vcl.Forms,
  U_Principal in 'U_Principal.pas' {F_Principal},
  U_ValidaCPF_CNPJ in 'U_ValidaCPF_CNPJ.pas',
  U_RemoveCaracterEspecial in 'U_RemoveCaracterEspecial.pas',
  U_DadosCNPJ in 'U_DadosCNPJ.pas' {F_DadosCNPJ};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_Principal, F_Principal);
  Application.CreateForm(TF_DadosCNPJ, F_DadosCNPJ);
  Application.Run;
end.
