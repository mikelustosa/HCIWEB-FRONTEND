unit ufraCnpjConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniRadioButton, uniTimer, URGLayoutUnigui,
  uniEdit, uniScrollBox, uniPanel, uniImage, uniLabel, uniButton, uniBitBtn,
  UniSFButton, UniSFBitBtn, uniGUIBaseClasses, Data.DB, Datasnap.DBClient,
  UniSFiGrowl, UniSFSweetAlert, RESTRequest4D.request,
  system.JSON;


type
  TfraCnpjConfig = class(TUniFrame)
    alerta: TUniSFSweetAlert;
    alertaM: TUniSFiGrowl;
    CDSTela: TClientDataSet;
    CDSTelabotaoEditar: TAggregateField;
    CDSTelaiconeAtivo: TAggregateField;
    cpMenuRodape: TUniContainerPanel;
    btnSalvar: TUniSFBitBtn;
    btnCancelar: TUniSFBitBtn;
    cpMenuTopo: TUniContainerPanel;
    lblDescricao: TUniLabel;
    btnNovo: TUniSFBitBtn;
    UniContainerPanel27: TUniContainerPanel;
    btnFechar: TUniSFBitBtn;
    imgFundo: TUniImage;
    pn1: TUniPanel;
    sBoxFundoRegistro: TUniScrollBox;
    UniPanel2: TUniPanel;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel10: TUniLabel;
    compMASCARATELEFONE: TUniEdit;
    UniPanel65: TUniPanel;
    RG1: TRGLayoutUnigui;
    scrFundo: TUniScrollBox;
    UniContainerPanel12: TUniContainerPanel;
    compTitulo: TUniLabel;
    UniPanel33: TUniPanel;
    UniContainerPanel32: TUniContainerPanel;
    UniLabel25: TUniLabel;
    compALTERAFANTASIASIM: TUniRadioButton;
    compALTERAFANTASIANAO: TUniRadioButton;
    UniPanel1: TUniPanel;
    UniPanel3: TUniPanel;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    compALTERAEMAILCNPJJASIM: TUniRadioButton;
    compALTERAEMAILCNPJJANAO: TUniRadioButton;
    UniPanel5: TUniPanel;
    UniLabel2: TUniLabel;
    UniPanel7: TUniPanel;
    UniPanel8: TUniPanel;
    UniPanel9: TUniPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel4: TUniLabel;
    compTOKENCNPJJA: TUniEdit;
    CDSDados: TClientDataSet;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    DSTela: TDataSource;
    UniLabel5: TUniLabel;
    procedure btnSalvarClick(Sender: TObject);
    procedure UniFrameReady(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure compALTERAFANTASIASIMClick(Sender: TObject);
    procedure compALTERAFANTASIANAOClick(Sender: TObject);
    procedure compALTERAEMAILCNPJJASIMClick(Sender: TObject);
    procedure compALTERAEMAILCNPJJANAOClick(Sender: TObject);
  private
    { Private declarations }
    id : string;
    ativo     :string;
    wAlteraEmailCnpjJa : string;
    wAlteraFantasia : string;
    procedure carregaDados;

  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uConstantes, MainModule, uUtils;



procedure TfraCnpjConfig.btnSalvarClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
begin
  try
    jsonBody := TJSONObject.Create;

    jsonBody.AddPair('tokenCnpjJa', compTOKENCNPJJA.Text);
    jsonBody.AddPair('alteraFantasia', wAlteraFantasia);
    jsonBody.AddPair('alteraEmailCnpjJa', wAlteraEmailCnpjJa);
    jsonBody.AddPair('mascaraTelefone', compMASCARATELEFONE.Text);

    resp1 := TRequest
              .New
              .BaseURL(baseurlCadastros)
              .Resource(putCnpjConfig)
              .AddParam('nomeBanco', uniMainModule.nomebanco)
              .AddParam('id', id)
              .AddBody(jsonBody.ToString)
              .Timeout(12000)
              .Put;

      alerta.Info('Cadastro alterado com sucesso!');
  finally
    jsonBody.Free;
  end;
end;


procedure TfraCnpjConfig.carregaDados;
var
  resp1         :IResponse;
  jsonResp      :TJSONObject;
begin
  id        := vvcodemp;

  resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .resource(getCnpjConfig)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddParam('id', id)
                .timeOut(12000)
                .Get;

  if resp1.StatusCode = 200 then
  begin
    jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
    JsonToDataset(CDSDados, jsonResp.GetValue('Result').ToString);

    PreencherCamposDoForm(Self, ativo, nil, CDSDados, 'ALTERA REGISTRO');
    if CDSDados.FieldByName('alteraEmailCnpjJa').AsString = '1' then
      begin
        compALTERAEMAILCNPJJASIM.Checked := true;
        compALTERAEMAILCNPJJANAO.Checked := false;
      end
    else
      begin
        compALTERAEMAILCNPJJASIM.Checked := false;
        compALTERAEMAILCNPJJANAO.Checked := true;
      end;

    if CDSDados.FieldByName('alteraFantasia').AsString = '1' then
      begin
        compALTERAFANTASIASIM.Checked := true;
        compALTERAFANTASIANAO.Checked := false;
      end
    else
      begin
        compALTERAFANTASIASIM.Checked := false;
        compALTERAFANTASIANAO.Checked := true;
      end;
    jsonResp.free;
  end;
end;

procedure TfraCnpjConfig.compALTERAEMAILCNPJJANAOClick(Sender: TObject);
begin
  wAlteraEmailCnpjJa := '0';
end;

procedure TfraCnpjConfig.compALTERAEMAILCNPJJASIMClick(Sender: TObject);
begin
  wAlteraEmailCnpjJa := '1';
end;

procedure TfraCnpjConfig.compALTERAFANTASIANAOClick(Sender: TObject);
begin
  wAlteraFantasia := '0';
end;

procedure TfraCnpjConfig.compALTERAFANTASIASIMClick(Sender: TObject);
begin
  wAlteraFantasia := '1';
end;

procedure TfraCnpjConfig.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
  ConfigurarAlignComboBoxes(self, 10);
end;

procedure TfraCnpjConfig.UniFrameReady(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  rg1.Start;
  carregaDados;
end;

end.
