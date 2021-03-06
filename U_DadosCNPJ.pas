unit U_DadosCNPJ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, system.JSON;

type
  TF_DadosCNPJ = class(TForm)
    Panel1: TPanel;
    btnSelecionar: TSpeedButton;
    btnFechar: TSpeedButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edt_CNPJ: TEdit;
    edt_NomeFantasia: TEdit;
    edt_Situacao: TEdit;
    edt_Porte: TEdit;
    edt_DataSituacao: TEdit;
    Label7: TLabel;
    edt_Nome: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_DadosCNPJ: TF_DadosCNPJ;

implementation

{$R *.dfm}

uses U_Principal, U_RemoveCaracterEspecial, U_ValidaCPF_CNPJ;

procedure TF_DadosCNPJ.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TF_DadosCNPJ.btnSelecionarClick(Sender: TObject);
var
  jsonObject , j_Ativ_Princ, j_Ativ_Secun : TJsonObject;
  jsonArray, jsonArray_sec  : TJSONArray;
begin
  if MessageDlg('Deseja carregar os dados do CNPJ para seu cadastro?'  , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     try

         F_Principal.RESTClient1.BaseURL := 'http://www.receitaws.com.br/v1/cnpj/' + FormataCNPJ(F_Principal.edt_CNPJ.Text);
         F_Principal.RESTRequest1.Execute;

         jsonObject    := TJsonObject.ParseJSONValue(F_Principal.RESTResponse1.Content) as TJsonObject;  //JSON Principal
         jsonArray     := jsonObject.GetValue('atividade_principal')        as TJSONArray;   // monta o array da Atividade Principal
         jsonArray_sec := jsonObject.GetValue('atividades_secundarias')     as TJSONArray;   // monta o array das Atividades Secundárias


         j_Ativ_Princ := jsonObject.ParseJSONValue(jsonArray.Items[0].ToJSON)     as TJSONObject; // Carrega os ITENS da Atividade Principal
         j_Ativ_Secun := jsonObject.ParseJSONValue(jsonArray_sec.Items[0].ToJSON) as TJSONObject; // Carrega os itens das Atividades Secundárias


         F_Principal.VT_Principal.Open;
         //F_Principal.VT_Principal.Insert;
         // carrega valores dos arrays
         F_Principal.VT_Principal.FieldByName('AtivPrinc_text').AsString           :=   StringReplace(j_Ativ_Princ.Values['text'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('AtivPrinc_code').AsString           :=   StringReplace(j_Ativ_Princ.Values['code'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('AtivSecun_text').AsString           :=   StringReplace(j_Ativ_Secun.Values['text'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('AtivSecun_code').AsString           :=   StringReplace(j_Ativ_Secun.Values['code'].ToString,'"','',[rfReplaceAll]);

         //carrega valores dos campos
         F_Principal.VT_Principal.FieldByName('data_situacao').AsString            :=   FormataData(jsonObject.Values['data_situacao'].ToString);
         F_Principal.VT_Principal.FieldByName('complemento').AsString              :=   StringReplace(jsonObject.Values['complemento'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('tipo').AsString                     :=   StringReplace(jsonObject.Values['tipo'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('nome').AsString                     :=   StringReplace(jsonObject.Values['nome'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('uf').AsString                       :=   StringReplace(jsonObject.Values['uf'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('telefone').AsString                 :=   StringReplace(jsonObject.Values['telefone'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('situacao').AsString                 :=   StringReplace(jsonObject.Values['situacao'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('bairro').AsString                   :=   StringReplace(jsonObject.Values['bairro'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('logradouro').AsString               :=   StringReplace(jsonObject.Values['logradouro'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('numero').AsString                   :=   StringReplace(jsonObject.Values['numero'].ToString,'"','',[rfReplaceAll]);;
         F_Principal.VT_Principal.FieldByName('cep').AsString                      :=   StringReplace(jsonObject.Values['cep'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('municipio').AsString                :=   StringReplace(jsonObject.Values['municipio'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('porte').AsString                    :=   StringReplace(jsonObject.Values['porte'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('abertura').AsString                 :=   StringReplace(jsonObject.Values['abertura'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('natureza_juridica').AsString        :=   StringReplace(jsonObject.Values['natureza_juridica'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('fantasia').AsString                 :=   StringReplace(jsonObject.Values['fantasia'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('cnpj').AsString                     :=   StringReplace(jsonObject.Values['cnpj'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('ultima_atualizacao').AsString       :=   StringReplace(jsonObject.Values['ultima_atualizacao'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('efr').AsString                      :=   StringReplace(jsonObject.Values['efr'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('motivo_situacao').AsString          :=   StringReplace(jsonObject.Values['motivo_situacao'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('situacao_especial').AsString        :=   StringReplace(jsonObject.Values['situacao_especial'].ToString,'"','',[rfReplaceAll]);
         F_Principal.VT_Principal.FieldByName('data_situacao_especial').AsString   :=   StringReplace(jsonObject.Values['data_situacao_especial'].ToString,'"','',[rfReplaceAll]);

         F_DadosCNPJ.Close;

     //VT_Principal.Post;

     finally
        jsonObject.Free;
        j_Ativ_Princ.Free;
        j_Ativ_Secun.Free;
     end;
  end;
end;

procedure TF_DadosCNPJ.FormShow(Sender: TObject);
var
  jsonObject , j_Ativ_Princ, j_Ativ_Secun : TJsonObject;
  jsonArray, jsonArray_sec  : TJSONArray;
begin
  try
     F_Principal.RESTClient1.BaseURL := 'http://www.receitaws.com.br/v1/cnpj/' + FormataCNPJ(F_Principal.edt_CNPJ.Text);
     F_Principal.RESTRequest1.Execute;

     jsonObject    := TJsonObject.ParseJSONValue(F_Principal.RESTResponse1.Content) as TJsonObject;  //JSON Principal
     jsonArray     := jsonObject.GetValue('atividade_principal')                    as TJSONArray;   // monta o array da Atividade Principal
     jsonArray_sec := jsonObject.GetValue('atividades_secundarias')                 as TJSONArray;   // monta o array das Atividades Secundárias


     j_Ativ_Princ  := jsonObject.ParseJSONValue(jsonArray.Items[0].ToJSON)     as TJSONObject; // Carrega os ITENS da Atividade Principal
     j_Ativ_Secun  := jsonObject.ParseJSONValue(jsonArray_sec.Items[0].ToJSON) as TJSONObject; // Carrega os itens das Atividades Secundárias

     edt_CNPJ.Text         := StringReplace(StringReplace(jsonObject.Values['cnpj'].ToString,'"','',[rfReplaceAll]),'\','',[rfReplaceAll]);
     edt_Porte.Text        := StringReplace(jsonObject.Values['porte'].ToString,'"','',[rfReplaceAll]);
     edt_Nome.Text         := StringReplace(jsonObject.Values['nome'].ToString,'"','',[rfReplaceAll]);
     edt_NomeFantasia.Text := StringReplace(jsonObject.Values['fantasia'].ToString,'"','',[rfReplaceAll]);
     edt_Situacao.Text     := StringReplace(jsonObject.Values['situacao'].ToString,'"','',[rfReplaceAll]);
     edt_DataSituacao.Text := FormataData(jsonObject.Values['data_situacao'].ToString);

  finally
     jsonObject.Free;
     j_Ativ_Princ.Free;
     j_Ativ_Secun.Free;
  end;
end;

end.
