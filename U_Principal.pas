unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, system.JSON, Data.DB, REST.Types,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Vcl.StdCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, MaskUtils,
  Vcl.Mask, Vcl.DBCtrls, System.Math;

type
  TF_Principal = class(TForm)
    grd_Principal: TDBGrid;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    VT_Principal: TFDMemTable;
    DS_Principal: TDataSource;
    VT_Principalatividade_principal: TWideStringField;
    VT_Principaldata_situacao: TWideStringField;
    VT_Principalcomplemento: TWideStringField;
    VT_Principaltipo: TWideStringField;
    VT_Principalnome: TWideStringField;
    VT_Principaluf: TWideStringField;
    VT_Principaltelefone: TWideStringField;
    VT_Principalatividades_secundarias: TWideStringField;
    VT_Principalsituacao: TWideStringField;
    VT_Principalbairro: TWideStringField;
    VT_Principallogradouro: TWideStringField;
    VT_Principalnumero: TWideStringField;
    VT_Principalcep: TWideStringField;
    VT_Principalmunicipio: TWideStringField;
    VT_Principalporte: TWideStringField;
    VT_Principalabertura: TWideStringField;
    VT_Principalnatureza_juridica: TWideStringField;
    VT_Principalfantasia: TWideStringField;
    VT_Principalcnpj: TWideStringField;
    VT_Principalultima_atualizacao: TWideStringField;
    VT_Principalstatus: TWideStringField;
    VT_Principalemail: TWideStringField;
    VT_Principalefr: TWideStringField;
    VT_Principalmotivo_situacao: TWideStringField;
    VT_Principalsituacao_especial: TWideStringField;
    VT_Principaldata_situacao_especial: TWideStringField;
    VT_Principalcapital_social: TWideStringField;
    VT_Principalqsa: TWideStringField;
    VT_Principalextra: TWideStringField;
    VT_Principalbilling: TWideStringField;
    pnl_Principal: TPanel;
    grb_Endere?o: TGroupBox;
    VT_PrincipalAtivPrinc_text: TStringField;
    VT_PrincipalAtivPrinc_code: TStringField;
    VT_PrincipalAtivSecun_text: TStringField;
    VT_PrincipalAtivSecun_code: TStringField;
    lbl_Complemento: TLabel;
    lbl_UF: TLabel;
    lbl_Telefone: TLabel;
    lbl_Bairro: TLabel;
    lbl_Logradouro: TLabel;
    lbl_Numero: TLabel;
    lbl_CEP: TLabel;
    lbl_Municipio: TLabel;
    edt_Complemento: TDBEdit;
    edt_UF: TDBEdit;
    edt_Telefone: TDBEdit;
    edt_Bairro: TDBEdit;
    edt_Logradouro: TDBEdit;
    edt_Numero: TDBEdit;
    edt_CEP: TDBEdit;
    edt_Municipio: TDBEdit;
    grb_AtividadesSecundarias: TGroupBox;
    lbl_AtivSecun_Code: TLabel;
    lbl_AtivSecun_Text: TLabel;
    edt_AtivSecun_Code: TDBEdit;
    edt_AtivSecun_Text: TDBEdit;
    grb_AtividadePrincipal: TGroupBox;
    lbl_AtivPrinc_Code: TLabel;
    lbl_AtivPrinc_Text: TLabel;
    edt_AtivPrinc_code: TDBEdit;
    edt_AtivPrinc_text: TDBEdit;
    GroupBox1: TGroupBox;
    lbl_CNPJ: TLabel;
    edt_CNPJ: TDBEdit;
    lbl_NomeFantasia: TLabel;
    edt_Fantasia: TDBEdit;
    lbl_Tipo: TLabel;
    lbl_Situacao: TLabel;
    lbl_Porte: TLabel;
    edt_Tipo: TDBEdit;
    edt_Situacao: TDBEdit;
    edt_Porte: TDBEdit;
    lbl_Status: TLabel;
    edt_Status: TDBEdit;
    lbl_DataSituacao: TLabel;
    edt_DataSituacao: TDBEdit;
    lbl_NaturezaJuridica: TLabel;
    edt_NaturezaJuridica: TDBEdit;
    lbl_Email: TLabel;
    edt_Email: TDBEdit;
    lbl_UltimaAtualizacao: TLabel;
    edt_UltimaAtualizacao: TDBEdit;
    pnl_Botoes: TPanel;
    btn_Novo: TButton;
    btn_Gravar: TButton;
    btn_Excluir: TButton;
    DBNavigator1: TDBNavigator;
    btn_ValidaCNPJ: TSpeedButton;
    btn_Cancelar: TButton;
    lbl_Nome: TLabel;
    edt_Nome: TDBEdit;
    procedure btn_NovoClick(Sender: TObject);
    procedure btn_GravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_CNPJExit(Sender: TObject);
    procedure btn_ValidaCNPJClick(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure HabilitaControles;
  public
    { Public declarations }
  end;


var
  F_Principal: TF_Principal;

implementation

{$R *.dfm}

uses U_ValidaCPF_CNPJ, U_RemoveCaracterEspecial, U_DadosCNPJ;



procedure TF_Principal.HabilitaControles;
begin
  btn_Novo.Enabled      := not(DS_Principal.DataSet.State in [dsInsert, dsEdit]);
  btn_Gravar.Enabled    :=    (DS_Principal.DataSet.State in [dsInsert, dsEdit]);
  btn_Cancelar.Enabled  :=    (DS_Principal.DataSet.State in [dsInsert, dsEdit]);
  btn_Excluir.Enabled   :=    (DS_Principal.DataSet.State in [dsBrowse]);
  grd_Principal.Enabled := not(DS_Principal.DataSet.State in [dsInsert, dsEdit]);
end;


procedure TF_Principal.btn_NovoClick(Sender: TObject);
begin
  if MessageDlg('Deseja inserir um novo Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
   DS_Principal.DataSet.Insert;

   edt_CNPJ.SetFocus;
   HabilitaControles;

  end;


end;

procedure TF_Principal.btn_CancelarClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente Cancelar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DS_Principal.DataSet.Cancel;
    HabilitaControles;
  end;

end;

procedure TF_Principal.btn_ExcluirClick(Sender: TObject);
begin
  if VT_Principal.IsEmpty then
  MessageDlg('N?o existem registros para serem excluidos, verifique!', mtWarning, [mbOK], 0)

  else
  begin
     if MessageDlg('Deseja realmente Excluir o Registro?'  , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       DS_Principal.DataSet.Delete;
      HabilitaControles;
     end;
  end;

end;

procedure TF_Principal.btn_GravarClick(Sender: TObject);
begin
  if MessageDlg('Deseja Gravar o Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DS_Principal.DataSet.Post;
    HabilitaControles;
  end;

end;

procedure TF_Principal.edt_CNPJExit(Sender: TObject);
var
  Validador : TValidaCPF_CNPJ;
begin
   if edt_CNPJ.Text <> '  .   .   /    -  ' then
   begin
     if  Validador.isCNPJ(FormataCNPJ(edt_CNPJ.Text)) = False then
     Begin
       ShowMessage('O CNPJ: ' + edt_CNPJ.Text + ' ? inv?lido, verifique');
       edt_CNPJ.SetFocus;
     End;
   end;


end;


procedure TF_Principal.FormShow(Sender: TObject);
begin
  VT_Principal.Open;
  HabilitaControles;
end;

procedure TF_Principal.btn_ValidaCNPJClick(Sender: TObject);
var
  Validador : TValidaCPF_CNPJ;

begin
  if edt_CNPJ.Text <> '  .   .   /    -  ' then
  begin
      if  Validador.isCNPJ(FormataCNPJ(edt_CNPJ.Text)) = False then
      Begin
          ShowMessage('O CNPJ: ' + edt_CNPJ.Text + ' ? inv?lido, verifique');
          edt_CNPJ.SetFocus;
      End

      else
      if MessageDlg('Deseja verificar o CNPJ: ' + edt_CNPJ.Text + ' na Receita?'  , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
         F_DadosCNPJ := TF_DadosCNPJ.Create(self);
         F_DadosCNPJ.Show;
         if (DS_Principal.DataSet.State in [dsInsert, dsEdit]) then
         begin
           HabilitaControles;
         end;

      end;
  end
  else
  MessageDlg('N?o ? poss?vel fazer uma busca com o campo do CNPJ vazio!', mtWarning, [mbOK], 0);

end;

end.
