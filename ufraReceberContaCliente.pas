unit ufraReceberContaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniBasicGrid, uniDBGrid, UniFSToggle,
  uniButton, uniBitBtn, UniSFButton, UniSFBitBtn, UniSFComboBox,
  uniDateTimePicker, uniEdit, UniSFLabel, uniPanel, uniGUIBaseClasses,
  uniScrollBox, uniTimer, URGLayoutUnigui, Data.DB, Datasnap.DBClient,
  UniSFiGrowl, UniSFSweetAlert, uniPageControl;

type
  TfraReceberContaCliente = class(TUniFrame)
    alerta: TUniSFSweetAlert;
    alertaM: TUniSFiGrowl;
    CDSDados: TClientDataSet;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    CDSTela: TClientDataSet;
    CDSTelabotaoEditar: TAggregateField;
    CDSTelaiconeAtivo: TAggregateField;
    rg1: TRGLayoutUnigui;
    rg2: TRGLayoutUnigui;
    rg3: TRGLayoutUnigui;
    rg4: TRGLayoutUnigui;
    rg5: TRGLayoutUnigui;
    rg6: TRGLayoutUnigui;
    rg7: TRGLayoutUnigui;
    scrFundo: TUniScrollBox;
    UniPanel18: TUniPanel;
    cpPesquisa: TUniContainerPanel;
    UniContainerPanel21: TUniContainerPanel;
    UniSFLabel5: TUniSFLabel;
    UniContainerPanel25: TUniContainerPanel;
    UniSFLabel6: TUniSFLabel;
    compDIADESPP: TUniDateTimePicker;
    UniContainerPanel31: TUniContainerPanel;
    UniSFLabel11: TUniSFLabel;
    UniContainerPanel32: TUniContainerPanel;
    UniSFLabel12: TUniSFLabel;
    UniPanel19: TUniPanel;
    btnPesquisar: TUniSFBitBtn;
    cpMenuRodape: TUniContainerPanel;
    btnFecharCaixa: TUniSFBitBtn;
    btnCancelar: TUniSFBitBtn;
    UniScrollBox1: TUniScrollBox;
    UniPanel20: TUniPanel;
    UniScrollBox2: TUniScrollBox;
    gridTela: TUniDBGrid;
    pnlDadosRecebimento: TUniPanel;
    UniPanel1: TUniPanel;
    compVALORPREVISTO: TUniEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniPanel2: TUniPanel;
    compVALORREAL: TUniEdit;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel3: TUniLabel;
    UniPanel3: TUniPanel;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel4: TUniLabel;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniPageControl1: TUniPageControl;
    tsAReceber: TUniTabSheet;
    tsCancelarRecebimentos: TUniTabSheet;
    UniContainerPanel17: TUniContainerPanel;
    UniSFLabel1: TUniSFLabel;
    UniContainerPanel18: TUniContainerPanel;
    UniSFLabel2: TUniSFLabel;
    UniContainerPanel22: TUniContainerPanel;
    UniSFLabel3: TUniSFLabel;
    UniContainerPanel23: TUniContainerPanel;
    UniSFLabel4: TUniSFLabel;
    compNUMDOC: TUniEdit;
    compNOME: TUniEdit;
    compVALORP: TUniEdit;
    UniPanel10: TUniPanel;
    btnAdicionarConta: TUniSFBitBtn;
    compTIPOPAGAMENTO: TUniSFComboBox;
    DSTela: TDataSource;
    tsAdicionarConta: TUniTabSheet;
    UniPanel4: TUniPanel;
    UniContainerPanel14: TUniContainerPanel;
    UniSFBitBtn3: TUniSFBitBtn;
    UniSFBitBtn4: TUniSFBitBtn;
    UniScrollBox3: TUniScrollBox;
    UniPanel8: TUniPanel;
    UniPanel9: TUniPanel;
    compVALORP_ADC: TUniEdit;
    UniContainerPanel15: TUniContainerPanel;
    UniLabel5: TUniLabel;
    UniPanel11: TUniPanel;
    UniContainerPanel16: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniPanel7: TUniPanel;
    UniContainerPanel20: TUniContainerPanel;
    UniLabel8: TUniLabel;
    UniPanel13: TUniPanel;
    compNUMDOC_ADC: TUniEdit;
    UniContainerPanel24: TUniContainerPanel;
    UniLabel9: TUniLabel;
    UniPanel26: TUniPanel;
    UniPanel23: TUniPanel;
    compCODCC: TUniEdit;
    UniContainerPanel29: TUniContainerPanel;
    UniLabel22: TUniLabel;
    UniSFBitBtn10: TUniSFBitBtn;
    UniPanel14: TUniPanel;
    compCODBAN: TUniEdit;
    UniContainerPanel26: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniSFBitBtn5: TUniSFBitBtn;
    UniPanel15: TUniPanel;
    UniPanel16: TUniPanel;
    UniPanel21: TUniPanel;
    compCODCLI: TUniEdit;
    UniContainerPanel27: TUniContainerPanel;
    UniLabel11: TUniLabel;
    UniSFBitBtn6: TUniSFBitBtn;
    UniPanel12: TUniPanel;
    compDESCRCC: TUniEdit;
    UniContainerPanel19: TUniContainerPanel;
    UniPanel17: TUniPanel;
    compDESCRBAN: TUniEdit;
    UniContainerPanel28: TUniContainerPanel;
    UniPanel22: TUniPanel;
    compNOMCLI: TUniEdit;
    UniContainerPanel30: TUniContainerPanel;
    UniContainerPanel5: TUniContainerPanel;
    UniSFBitBtn2: TUniSFBitBtn;
    UNITEXT: TUniPanel;
    UniEdit1: TUniEdit;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel7: TUniLabel;
    UniPanel6: TUniPanel;
    compDESCRMV: TUniEdit;
    compDIADESPP_ADC: TUniDateTimePicker;
    compDIADESPR_ADC: TUniDateTimePicker;
    procedure UniFrameReady(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure btnAdicionarContaClick(Sender: TObject);
    procedure UniSFBitBtn6Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniSFBitBtn5Click(Sender: TObject);
    procedure UniSFBitBtn10Click(Sender: TObject);
  private
    { Private declarations }
    procedure callBackCliente(Sender: TComponent;
      AResult: Integer);
    procedure callBackBanco(Sender: TComponent;
      AResult: Integer);
  public
    { Public declarations }
  end;

implementation

uses
  RESTRequest4D.Response.Intf, System.JSON, uConstantes, RESTRequest4D.Request,
  MainModule, uUtils, ufrmListaGlobal;

{$R *.dfm}


procedure TfraReceberContaCliente.callBackBanco(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compDESCRBAN.Text     := frmListaGlobal.CDSTela.FieldByName('nome').AsString;
    compCODBAN.Text     := frmListaGlobal.CDSTela.FieldByName('codBan').AsString;
    alertaM.info('Banco selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TfraReceberContaCliente.callBackCliente(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compNOMCLI.Text     := frmListaGlobal.CDSTela.FieldByName('nome').AsString;
    compCODCLI.Text     := frmListaGlobal.CDSTela.FieldByName('codCli').AsString;
    alertaM.info('Cliente selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TfraReceberContaCliente.btnAdicionarContaClick(Sender: TObject);
begin
  UniPageControl1.ActivePage := tsAdicionarConta;
  compVALORP_ADC.Text := FormatFloatHci(0,JParGer.GetValue<integer>('DECPRECO'));
  compDIADESPP_ADC.DateTime := now;
  compDIADESPR_ADC.DateTime := now;
  compNUMDOC.Text := '';
  compCODCC.Text := '';
  compDESCRCC.Text := '';
  compCODBAN.Text := '';
  compDESCRBAN.Text := '';
  compCODCLI.Text := '';
  compNOMCLI.Text := '';
  compDESCRMV.Text := '';

end;

procedure TfraReceberContaCliente.btnPesquisarClick(Sender: TObject);

var
  resp1     :IResponse;
  jsonBody : TJSONObject;
  jsonResp : TJSONObject;
begin
  jsonBody := nil;
  jsonResp := nil;
  try
    jsonBody := TJSONObject.Create;
    jsonBody.AddPair('empresa',vvcodemp);
    jsonBody.AddPair('nomCli',trim(compNOME.Text));
    jsonBody.AddPair('diaDespP',compDIADESPP.Text);
    jsonBody.AddPair('valorP',compVALORP.Text);
    jsonBody.AddPair('numDoc',compNUMDOC.Text);

    try
      resp1 := TRequest.New.BaseURL(baseurlCadastros)
             .resource(getMovContas)
             .AddParam('nomeBanco', uniMainModule.nomebanco)
             .AddBody(jsonBody)
             .timeOut(12000)
             .Get;

      jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
      if resp1.StatusCode = 200 then
      begin
        JsonToDataset(CDSTela, jsonResp.GetValue('Result').ToString);
      end
      else
      begin
        alerta.Warning(jsonResp.GetValue('Result').Value);
      end;
    except on e: exception do
      begin
        alerta.Error('Erro: '+e.Message);
      end;
    end;
  finally
//    FreeAndNil(jsonBody);
//    FreeAndNil(jsonResp);
  end;
end;

procedure TfraReceberContaCliente.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Detalhe', 'editar', 'dc3545');
end;

procedure TfraReceberContaCliente.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    compVALORPREVISTO.Text := CDSTela.FieldByName('valorP').AsString;
    compVALORREAL.Text := CDSTela.FieldByName('valorR').AsString;
    LocalizarItemPorCodigoNoComboBox(CDSTela.FieldByName('tPag').AsInteger,compTIPOPAGAMENTO);

//function LocalizarItemPorCodigoNoComboBox(Codigo: Integer;weCbGrupo:tUniSfComboBox): Integer;
  end;
end;

procedure TfraReceberContaCliente.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
end;

procedure TfraReceberContaCliente.UniFrameReady(Sender: TObject);
begin
  UniPageControl1.ActivePage := tsAReceber;
  compDIADESPP.DateTime := now -30;
  btnPesquisar.Click;
end;

procedure TfraReceberContaCliente.UniSFBitBtn10Click(Sender: TObject);
begin
asdfa  frmListaGlobal.wTabelaDePesquisa := 'BANCOS_PDV_UTILITARIO';
  frmListaGlobal.lblDescricao.Caption := 'BANCOS';
  frmListaGlobal.showModal(callBackBanco);

end;

procedure TfraReceberContaCliente.UniSFBitBtn5Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'BANCOS_PDV_UTILITARIO';
  frmListaGlobal.lblDescricao.Caption := 'BANCOS';
  frmListaGlobal.showModal(callBackBanco);
end;

procedure TfraReceberContaCliente.UniSFBitBtn6Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CLIENTES_PDV_UTILITARIO';
  frmListaGlobal.lblDescricao.Caption := 'CLIENTES';
  frmListaGlobal.showModal(callBackCliente);
end;

end.
