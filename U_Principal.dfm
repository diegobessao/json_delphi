object F_Principal: TF_Principal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Empresas'
  ClientHeight = 657
  ClientWidth = 915
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clNavy
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object grd_Principal: TDBGrid
    Left = 0
    Top = 425
    Width = 915
    Height = 191
    Align = alClient
    DataSource = DS_Principal
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -12
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cnpj'
        ReadOnly = True
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        ReadOnly = True
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo'
        ReadOnly = True
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'situacao'
        ReadOnly = True
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'porte'
        ReadOnly = True
        Width = 320
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        ReadOnly = True
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AtivPrinc_code'
        ReadOnly = True
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AtivPrinc_text'
        ReadOnly = True
        Width = 500
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'atividade_principal'
        ReadOnly = True
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'data_situacao'
        ReadOnly = True
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'complemento'
        ReadOnly = True
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'uf'
        ReadOnly = True
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        ReadOnly = True
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fantasia'
        ReadOnly = True
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'atividades_secundarias'
        ReadOnly = True
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'AtivSecun_code'
        ReadOnly = True
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AtivSecun_text'
        ReadOnly = True
        Width = 446
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bairro'
        ReadOnly = True
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'logradouro'
        ReadOnly = True
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'numero'
        ReadOnly = True
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cep'
        ReadOnly = True
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'municipio'
        ReadOnly = True
        Width = 280
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'abertura'
        ReadOnly = True
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'natureza_juridica'
        ReadOnly = True
        Width = 280
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ultima_atualizacao'
        ReadOnly = True
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        ReadOnly = True
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'efr'
        ReadOnly = True
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'motivo_situacao'
        ReadOnly = True
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'situacao_especial'
        ReadOnly = True
        Width = 320
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_situacao_especial'
        ReadOnly = True
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'capital_social'
        ReadOnly = True
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qsa'
        ReadOnly = True
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'extra'
        ReadOnly = True
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'billing'
        ReadOnly = True
        Visible = False
      end>
  end
  object pnl_Principal: TPanel
    Left = 0
    Top = 0
    Width = 915
    Height = 425
    Align = alTop
    BevelInner = bvRaised
    BevelKind = bkTile
    TabOrder = 1
    object grb_Endereço: TGroupBox
      Left = 2
      Top = 316
      Width = 907
      Height = 103
      Align = alBottom
      Caption = ' Endere'#231'o '
      TabOrder = 0
      object lbl_Complemento: TLabel
        Left = 638
        Top = 24
        Width = 92
        Height = 14
        Caption = 'Complemento:'
      end
      object lbl_UF: TLabel
        Left = 519
        Top = 50
        Width = 21
        Height = 14
        Caption = 'UF:'
      end
      object lbl_Telefone: TLabel
        Left = 259
        Top = 76
        Width = 58
        Height = 14
        Caption = 'Telefone:'
      end
      object lbl_Bairro: TLabel
        Left = 604
        Top = 50
        Width = 42
        Height = 14
        Caption = 'Bairro:'
      end
      object lbl_Logradouro: TLabel
        Left = 14
        Top = 24
        Width = 78
        Height = 14
        Caption = 'Logradouro:'
      end
      object lbl_Numero: TLabel
        Left = 488
        Top = 24
        Width = 54
        Height = 14
        Caption = 'N'#250'mero:'
      end
      object lbl_CEP: TLabel
        Left = 62
        Top = 76
        Width = 30
        Height = 14
        Caption = 'CEP:'
      end
      object lbl_Municipio: TLabel
        Left = 30
        Top = 50
        Width = 62
        Height = 14
        Caption = 'Municipio:'
      end
      object edt_Complemento: TDBEdit
        Left = 732
        Top = 16
        Width = 152
        Height = 22
        DataField = 'complemento'
        DataSource = DS_Principal
        ReadOnly = True
        TabOrder = 2
      end
      object edt_UF: TDBEdit
        Left = 544
        Top = 42
        Width = 48
        Height = 22
        DataField = 'uf'
        DataSource = DS_Principal
        ReadOnly = True
        TabOrder = 4
      end
      object edt_Telefone: TDBEdit
        Left = 321
        Top = 68
        Width = 158
        Height = 22
        DataField = 'telefone'
        DataSource = DS_Principal
        ReadOnly = True
        TabOrder = 7
      end
      object edt_Bairro: TDBEdit
        Left = 648
        Top = 42
        Width = 236
        Height = 22
        DataField = 'bairro'
        DataSource = DS_Principal
        ReadOnly = True
        TabOrder = 5
      end
      object edt_Logradouro: TDBEdit
        Left = 95
        Top = 16
        Width = 384
        Height = 22
        DataField = 'logradouro'
        DataSource = DS_Principal
        ReadOnly = True
        TabOrder = 0
      end
      object edt_Numero: TDBEdit
        Left = 544
        Top = 16
        Width = 85
        Height = 22
        DataField = 'numero'
        DataSource = DS_Principal
        ReadOnly = True
        TabOrder = 1
      end
      object edt_CEP: TDBEdit
        Left = 95
        Top = 68
        Width = 148
        Height = 22
        DataField = 'cep'
        DataSource = DS_Principal
        ReadOnly = True
        TabOrder = 6
      end
      object edt_Municipio: TDBEdit
        Left = 95
        Top = 42
        Width = 384
        Height = 22
        DataField = 'municipio'
        DataSource = DS_Principal
        ReadOnly = True
        TabOrder = 3
      end
    end
    object grb_AtividadesSecundarias: TGroupBox
      Left = 2
      Top = 234
      Width = 907
      Height = 82
      Align = alBottom
      Caption = ' Atividades Secund'#225'rias '
      TabOrder = 1
      object lbl_AtivSecun_Code: TLabel
        Left = 29
        Top = 28
        Width = 49
        Height = 14
        Caption = 'C'#243'digo:'
      end
      object lbl_AtivSecun_Text: TLabel
        Left = 13
        Top = 53
        Width = 65
        Height = 14
        Caption = 'Descri'#231#227'o:'
      end
      object edt_AtivSecun_Code: TDBEdit
        Left = 80
        Top = 20
        Width = 163
        Height = 22
        DataField = 'AtivSecun_code'
        DataSource = DS_Principal
        ReadOnly = True
        TabOrder = 0
      end
      object edt_AtivSecun_Text: TDBEdit
        Left = 80
        Top = 45
        Width = 804
        Height = 22
        DataField = 'AtivSecun_text'
        DataSource = DS_Principal
        ReadOnly = True
        TabOrder = 1
      end
    end
    object grb_AtividadePrincipal: TGroupBox
      Left = 2
      Top = 155
      Width = 907
      Height = 79
      Align = alBottom
      Caption = ' Atividade Principal '
      TabOrder = 2
      object lbl_AtivPrinc_Code: TLabel
        Left = 29
        Top = 26
        Width = 49
        Height = 14
        Caption = 'C'#243'digo:'
      end
      object lbl_AtivPrinc_Text: TLabel
        Left = 13
        Top = 49
        Width = 65
        Height = 14
        Caption = 'Descri'#231#227'o:'
      end
      object edt_AtivPrinc_code: TDBEdit
        Left = 82
        Top = 18
        Width = 161
        Height = 22
        DataField = 'AtivPrinc_code'
        DataSource = DS_Principal
        ReadOnly = True
        TabOrder = 0
      end
      object edt_AtivPrinc_text: TDBEdit
        Left = 82
        Top = 43
        Width = 802
        Height = 22
        DataField = 'AtivPrinc_text'
        DataSource = DS_Principal
        ReadOnly = True
        TabOrder = 1
      end
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 7
      Width = 907
      Height = 148
      Align = alBottom
      Caption = ' Empresarial '
      TabOrder = 3
      object lbl_CNPJ: TLabel
        Left = 24
        Top = 24
        Width = 36
        Height = 14
        Caption = 'CNPJ:'
      end
      object lbl_NomeFantasia: TLabel
        Left = 296
        Top = 24
        Width = 98
        Height = 14
        Caption = 'Nome Fantasia:'
      end
      object lbl_Tipo: TLabel
        Left = 28
        Top = 124
        Width = 31
        Height = 14
        Caption = 'Tipo:'
      end
      object lbl_Situacao: TLabel
        Left = 321
        Top = 124
        Width = 59
        Height = 14
        Caption = 'Situa'#231#227'o:'
      end
      object lbl_Porte: TLabel
        Left = 509
        Top = 49
        Width = 39
        Height = 14
        Caption = 'Porte:'
      end
      object lbl_Status: TLabel
        Left = 14
        Top = 74
        Width = 46
        Height = 14
        Caption = 'Status:'
      end
      object lbl_DataSituacao: TLabel
        Left = 225
        Top = 74
        Width = 93
        Height = 14
        Caption = 'Data Situa'#231#227'o:'
      end
      object lbl_NaturezaJuridica: TLabel
        Left = 467
        Top = 74
        Width = 81
        Height = 14
        Caption = 'Nat. Jur'#237'dica:'
      end
      object lbl_Email: TLabel
        Left = 17
        Top = 99
        Width = 43
        Height = 14
        Caption = 'E-mail:'
      end
      object lbl_UltimaAtualizacao: TLabel
        Left = 539
        Top = 99
        Width = 102
        Height = 14
        Caption = #218'lt. Atualiza'#231#227'o:'
      end
      object btn_ValidaCNPJ: TSpeedButton
        Left = 231
        Top = 9
        Width = 35
        Height = 26
        Hint = 'Clique para o uto reenchimento.'
        Glyph.Data = {
          76060000424D7606000000000000360000002800000014000000140000000100
          20000000000040060000120B0000120B00000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008F979E000F1B31003744
          5100DADCDC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF007A81860001000100462000001C070000141E2700DEE1E200FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00767F890000000000743E0000BB720000BF67
          0000300F00002C384700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00727C89000100
          000076410000A7670000B46D0000FFA400006B34000000092400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF006F798200000000006D3A0000A5650000AC640000F3950000B46D
          0000060000008D95A100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C5C5
          C6009292920082828200A5A4A500F1F2F2009BA0A70007000000683800009D61
          0000A55E0000F1950000BE7500000000000078818D00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00BCBCBE00414141001E1E1D0046474800525355003D3E3D003B3C
          3B0004070C0040120000AA600000A6600000E68D0000BE7B0000070000006E77
          8300FFFFFF00FFFFFF00FFFFFF00FFFFFF00858586000C0B0B006C6C6D00CECF
          D600EDEDEE00F5F4F400E4E4E800B7BAC2004B4B4700796E5A00E59C4B00F794
          0000C182000008010000606C8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADAF
          B00000000000AAA9A800F0F1F900C5BAAC00BBA98100BDAB8100B8A78500D1CB
          C600F2F6FF00F1FAFF0092816B00814700001C10000067728800FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00EEEFF00010100E00908D8800EFEDEB00917B3F00C5A9
          4B00EDDEA500F6EDC500E6D48C00A98A29009F8F7100EEF1FF00383B3C00060C
          15009A9FA900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C8C8C002E2D
          2B00F1F2F90095793200CDA92200FBEA9700F2EABA00F4EFC900F6EEB900FFED
          8800AF870300B2A28500A0A2AD0038383700FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00434340008A91A600CBBDA400B0850000EDD35900DDC9
          7400E1CE8000E2D28600DFCC7D00E0CD7700EBCC4300AE8A1900B8B5B5003436
          3A00B6B6B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00292A2D00A3AA
          C100B1944F00C69D0000DDC24300D8BD5300DCC46300DCC66800DCC46000D4B9
          4D00DBBE3900B68F0800C3B59A005258630088888600FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0024262A00A3A8C100AA8B4B00C69C0000D9BD3700D6BB
          4500D8BD5000D8BD5300D9BD4F00D3B64000D6B82F00B58C0A00C2B398005C62
          6D0086848300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003D3D3B00949B
          AC00BCAA9100B2870000E9D05100D5BB4A00D8BE5100D8BF5200D7BA4B00D5BB
          5100ECCF4900AB841B00B1ABAF0034373D00ADACAC00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00A2A1A1002E312F00DADAE1009D7A3A00D4B54F00F6E8
          A100E8D89000E8D78B00ECDE9B00F6F0A300B5942800B29B79008A8D9B002727
          2700F6F6F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFD003736
          350050545A00E0D8D600B7975900CFBA7400E9E1B900EEE6C600E4D8A700BEA4
          5500B79F7700B9BBC800212426009F9E9E00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00E5E5E500252626004F535800D9D7D900E7D6
          AA00EAD39900E5CE9500E8D49C00E4D7BF00B1B4BC001A1C1D006F6F6E00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00EDEDED0047464500212429007E859200A6A7AC00B0ADA800A0A5B3006067
          7100191A1800908F8F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B9B8B7005757
          580020232B001C212A002B2D310076757400DCDCDB00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        ParentShowHint = False
        ShowHint = True
        OnClick = btn_ValidaCNPJClick
      end
      object lbl_Nome: TLabel
        Left = 15
        Top = 49
        Width = 41
        Height = 14
        Caption = 'Nome:'
      end
      object edt_CNPJ: TDBEdit
        Left = 62
        Top = 16
        Width = 159
        Height = 22
        DataField = 'cnpj'
        DataSource = DS_Principal
        TabOrder = 0
        OnExit = edt_CNPJExit
      end
      object edt_Fantasia: TDBEdit
        Left = 396
        Top = 16
        Width = 488
        Height = 22
        DataField = 'fantasia'
        DataSource = DS_Principal
        TabOrder = 1
      end
      object edt_Tipo: TDBEdit
        Left = 61
        Top = 116
        Width = 121
        Height = 22
        DataField = 'tipo'
        DataSource = DS_Principal
        TabOrder = 9
      end
      object edt_Situacao: TDBEdit
        Left = 382
        Top = 116
        Width = 139
        Height = 22
        DataField = 'situacao'
        DataSource = DS_Principal
        TabOrder = 10
      end
      object edt_Porte: TDBEdit
        Left = 550
        Top = 41
        Width = 334
        Height = 22
        DataField = 'porte'
        DataSource = DS_Principal
        TabOrder = 3
      end
      object edt_Status: TDBEdit
        Left = 62
        Top = 66
        Width = 120
        Height = 22
        DataField = 'status'
        DataSource = DS_Principal
        TabOrder = 4
      end
      object edt_DataSituacao: TDBEdit
        Left = 320
        Top = 66
        Width = 138
        Height = 22
        DataField = 'data_situacao'
        DataSource = DS_Principal
        TabOrder = 5
      end
      object edt_NaturezaJuridica: TDBEdit
        Left = 550
        Top = 66
        Width = 334
        Height = 22
        DataField = 'natureza_juridica'
        DataSource = DS_Principal
        TabOrder = 6
      end
      object edt_Email: TDBEdit
        Left = 62
        Top = 91
        Width = 459
        Height = 22
        DataField = 'email'
        DataSource = DS_Principal
        TabOrder = 7
      end
      object edt_UltimaAtualizacao: TDBEdit
        Left = 643
        Top = 91
        Width = 241
        Height = 22
        DataField = 'ultima_atualizacao'
        DataSource = DS_Principal
        TabOrder = 8
      end
      object edt_Nome: TDBEdit
        Left = 62
        Top = 41
        Width = 396
        Height = 22
        DataField = 'nome'
        DataSource = DS_Principal
        TabOrder = 2
      end
    end
  end
  object pnl_Botoes: TPanel
    Left = 0
    Top = 616
    Width = 915
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelKind = bkTile
    TabOrder = 2
    object btn_Novo: TButton
      Left = 233
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btn_NovoClick
    end
    object btn_Gravar: TButton
      Left = 343
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btn_GravarClick
    end
    object btn_Excluir: TButton
      Left = 556
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btn_ExcluirClick
    end
    object DBNavigator1: TDBNavigator
      Left = 818
      Top = 4
      Width = 68
      Height = 25
      DataSource = DS_Principal
      VisibleButtons = [nbPrior, nbNext]
      TabOrder = 3
    end
    object btn_Cancelar: TButton
      Left = 445
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 4
      OnClick = btn_CancelarClick
    end
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://www.receitaws.com.br/v1/cnpj'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 368
    Top = 504
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 544
    Top = 504
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 456
    Top = 504
  end
  object VT_Principal: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 224
    Top = 504
    object VT_Principalatividade_principal: TWideStringField
      DisplayWidth = 60
      FieldName = 'atividade_principal'
      Visible = False
      Size = 255
    end
    object VT_Principaldata_situacao: TWideStringField
      DisplayLabel = 'Data Situa'#231#227'o'
      FieldName = 'data_situacao'
      EditMask = '!00/00/0000;1;_'
      Size = 50
    end
    object VT_Principalcomplemento: TWideStringField
      DisplayLabel = 'Complemento'
      FieldName = 'complemento'
      Size = 50
    end
    object VT_Principaltipo: TWideStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Size = 255
    end
    object VT_Principalnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 255
    end
    object VT_Principaluf: TWideStringField
      DisplayLabel = 'UF'
      FieldName = 'uf'
      Size = 255
    end
    object VT_Principaltelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Size = 255
    end
    object VT_Principalatividades_secundarias: TWideStringField
      FieldName = 'atividades_secundarias'
      Visible = False
      Size = 255
    end
    object VT_Principalsituacao: TWideStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'situacao'
      Size = 255
    end
    object VT_Principalbairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Size = 255
    end
    object VT_Principallogradouro: TWideStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'logradouro'
      Size = 255
    end
    object VT_Principalnumero: TWideStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'numero'
      Size = 255
    end
    object VT_Principalcep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Size = 255
    end
    object VT_Principalmunicipio: TWideStringField
      DisplayLabel = 'Municipio'
      FieldName = 'municipio'
      Size = 255
    end
    object VT_Principalporte: TWideStringField
      DisplayLabel = 'Porte'
      FieldName = 'porte'
      Size = 255
    end
    object VT_Principalabertura: TWideStringField
      DisplayLabel = 'Abertura'
      FieldName = 'abertura'
      Size = 255
    end
    object VT_Principalnatureza_juridica: TWideStringField
      DisplayLabel = 'Natureza Juridica'
      FieldName = 'natureza_juridica'
      Size = 255
    end
    object VT_Principalfantasia: TWideStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'fantasia'
      Size = 255
    end
    object VT_Principalcnpj: TWideStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj'
      EditMask = '00\.000\.000\/0000\-00;1;_'
      Size = 255
    end
    object VT_Principalultima_atualizacao: TWideStringField
      DisplayLabel = #218'ltima Atualiza'#231#227'o'
      FieldName = 'ultima_atualizacao'
      Size = 255
    end
    object VT_Principalstatus: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
      Size = 255
    end
    object VT_Principalemail: TWideStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'email'
      Size = 255
    end
    object VT_Principalefr: TWideStringField
      DisplayLabel = 'EFR'
      FieldName = 'efr'
      Size = 255
    end
    object VT_Principalmotivo_situacao: TWideStringField
      DisplayLabel = 'Motivo Situa'#231#227'o'
      FieldName = 'motivo_situacao'
      Size = 255
    end
    object VT_Principalsituacao_especial: TWideStringField
      DisplayLabel = 'Situa'#231#227'o Especial'
      FieldName = 'situacao_especial'
      Size = 255
    end
    object VT_Principaldata_situacao_especial: TWideStringField
      DisplayLabel = 'Data Situa'#231#227'o Especial'
      FieldName = 'data_situacao_especial'
      Size = 255
    end
    object VT_Principalcapital_social: TWideStringField
      DisplayLabel = 'Capital Social'
      FieldName = 'capital_social'
      Visible = False
      Size = 255
    end
    object VT_Principalqsa: TWideStringField
      FieldName = 'qsa'
      Visible = False
      Size = 255
    end
    object VT_Principalextra: TWideStringField
      FieldName = 'extra'
      Visible = False
      Size = 255
    end
    object VT_Principalbilling: TWideStringField
      FieldName = 'billing'
      Visible = False
      Size = 255
    end
    object VT_PrincipalAtivPrinc_text: TStringField
      DisplayLabel = 'Atividade Principal'
      FieldName = 'AtivPrinc_text'
      Size = 200
    end
    object VT_PrincipalAtivPrinc_code: TStringField
      DisplayLabel = 'C'#243'd. Atividade Principal'
      FieldName = 'AtivPrinc_code'
      EditMask = '00\.00\-0\-00;1;_'
      Size = 200
    end
    object VT_PrincipalAtivSecun_text: TStringField
      DisplayLabel = 'Atividades Secund'#225'rias'
      FieldName = 'AtivSecun_text'
      Size = 200
    end
    object VT_PrincipalAtivSecun_code: TStringField
      DisplayLabel = 'C'#243'd. Atividade Secund'#225'ria'
      FieldName = 'AtivSecun_code'
      EditMask = '00\.00\-0\-00;1;_'
      Size = 200
    end
  end
  object DS_Principal: TDataSource
    DataSet = VT_Principal
    Left = 144
    Top = 504
  end
end
