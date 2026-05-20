unit ufraOperacaoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniDateTimePicker, UniSFLabel, uniRadioButton,
  UniSFComboBox, uniEdit, uniPanel, UniFSToggle, uniBasicGrid, uniDBGrid,
  uniPageControl, uniScrollBox, uniTimer, URGLayoutUnigui, uniImage, uniButton,
  uniBitBtn, UniSFButton, UniSFBitBtn, uniLabel, uniGUIBaseClasses, Data.DB,
  Datasnap.DBClient, UniSFiGrowl, UniSFSweetAlert, System.JSON, uniGroupBox,
  uniMemo;

type
  TfraOperacaoContas = class(TUniFrame)
    alerta: TUniSFSweetAlert;
    alertaM: TUniSFiGrowl;
    CDSDados: TClientDataSet;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    CDSTela: TClientDataSet;
    CDSTelabotaoEditar: TAggregateField;
    CDSTelaiconeAtivo: TAggregateField;
    cpMenuTopo: TUniContainerPanel;
    lblDescricao: TUniLabel;
    btnNovo: TUniSFBitBtn;
    UniContainerPanel27: TUniContainerPanel;
    btnFechar: TUniSFBitBtn;
    imgFundo: TUniImage;
    rg1: TRGLayoutUnigui;
    rg2: TRGLayoutUnigui;
    rg3: TRGLayoutUnigui;
    rg4: TRGLayoutUnigui;
    rg5: TRGLayoutUnigui;
    rg6: TRGLayoutUnigui;
    rg7: TRGLayoutUnigui;
    scrFundo: TUniScrollBox;
    pgcTela: TUniPageControl;
    tsListagem: TUniTabSheet;
    gridTela: TUniDBGrid;
    cpPesquisa: TUniContainerPanel;
    tsDetalhe: TUniTabSheet;
    cpMenuRodape: TUniContainerPanel;
    btnSalvar: TUniSFBitBtn;
    btCancelar: TUniSFBitBtn;
    UniContainerPanel61: TUniContainerPanel;
    UniSFLabel3: TUniSFLabel;
    UniContainerPanel62: TUniContainerPanel;
    UniSFLabel4: TUniSFLabel;
    UniContainerPanel63: TUniContainerPanel;
    UniSFLabel5: TUniSFLabel;
    compDATA1: TUniContainerPanel;
    UniSFLabel6: TUniSFLabel;
    UniContainerPanel65: TUniContainerPanel;
    UniSFLabel7: TUniSFLabel;
    UniContainerPanel66: TUniContainerPanel;
    UniSFLabel8: TUniSFLabel;
    compCBLIMITEREGISTROS: TUniSFComboBox;
    UniContainerPanel22: TUniContainerPanel;
    UniContainerPanel67: TUniContainerPanel;
    UniSFLabel9: TUniSFLabel;
    UniContainerPanel68: TUniContainerPanel;
    UniSFLabel10: TUniSFLabel;
    UniEdit4: TUniEdit;
    UniContainerPanel69: TUniContainerPanel;
    UniSFLabel11: TUniSFLabel;
    UniContainerPanel70: TUniContainerPanel;
    UniSFBitBtn3: TUniSFBitBtn;
    UniContainerPanel71: TUniContainerPanel;
    UniSFLabel12: TUniSFLabel;
    UniContainerPanel72: TUniContainerPanel;
    UniSFLabel13: TUniSFLabel;
    UniSFComboBox1: TUniSFComboBox;
    UniContainerPanel73: TUniContainerPanel;
    UniSFLabel14: TUniSFLabel;
    UniContainerPanel74: TUniContainerPanel;
    UniSFLabel15: TUniSFLabel;
    UniSFComboBox2: TUniSFComboBox;
    UniContainerPanel75: TUniContainerPanel;
    UniSFLabel16: TUniSFLabel;
    UniContainerPanel76: TUniContainerPanel;
    UniSFLabel17: TUniSFLabel;
    UniSFComboBox3: TUniSFComboBox;
    compVALORNUM1: TUniEdit;
    UniContainerPanel23: TUniContainerPanel;
    UniSFLabel1: TUniSFLabel;
    compVALORNUM2: TUniEdit;
    UniDateTimePicker1: TUniDateTimePicker;
    UniContainerPanel24: TUniContainerPanel;
    UniSFLabel2: TUniSFLabel;
    compDATA2: TUniDateTimePicker;
    UniContainerPanel26: TUniContainerPanel;
    UniSFLabel18: TUniSFLabel;
    UniContainerPanel64: TUniContainerPanel;
    UniSFBitBtn1: TUniSFBitBtn;
    DSTela: TDataSource;
    UniContainerPanel12: TUniContainerPanel;
    compTitulo: TUniLabel;
    pgcDetalhe: TUniPageControl;
    tsDadosDaConta: TUniTabSheet;
    tsObservacoes: TUniTabSheet;
    tsRemessaBancaria: TUniTabSheet;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel3: TUniLabel;
    PnlDadosConta: TUniPanel;
    scrDetalhe: TUniScrollBox;
    UniPanel6: TUniPanel;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel6: TUniLabel;
    compDREF: TUniDateTimePicker;
    UniPanel5: TUniPanel;
    UniEdit1: TUniEdit;
    UniPanel7: TUniPanel;
    UniEdit2: TUniEdit;
    UniPanel26: TUniPanel;
    UniPanel3: TUniPanel;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel4: TUniLabel;
    compDIADESPP: TUniDateTimePicker;
    UniPanel4: TUniPanel;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel5: TUniLabel;
    compDIADESPR: TUniDateTimePicker;
    UniPanel9: TUniPanel;
    UniContainerPanel7: TUniContainerPanel;
    compVALORPaa: TUniLabel;
    UniPanel10: TUniPanel;
    UniContainerPanel8: TUniContainerPanel;
    compVALORRdfdf: TUniLabel;
    compVALORR: TUniEdit;
    compVALORP: TUniEdit;
    UniPanel2: TUniPanel;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel9: TUniLabel;
    compNUMDOC: TUniEdit;
    UniPanel8: TUniPanel;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel10: TUniLabel;
    compNUMDOC2: TUniEdit;
    UniPanel11: TUniPanel;
    UniContainerPanel11: TUniContainerPanel;
    UniLabel11: TUniLabel;
    compAGENCIA: TUniEdit;
    UniPanel12: TUniPanel;
    UniContainerPanel13: TUniContainerPanel;
    UniLabel12: TUniLabel;
    compREPASSE: TUniEdit;
    UniPanel13: TUniPanel;
    UniPanel42: TUniPanel;
    compDESCRPR: TUniEdit;
    UniContainerPanel41: TUniContainerPanel;
    UniPanel41: TUniPanel;
    compCODPR: TUniEdit;
    UniContainerPanel40: TUniContainerPanel;
    UniLabel33: TUniLabel;
    UniSFBitBtn2: TUniSFBitBtn;
    UniPanel14: TUniPanel;
    compCODCC: TUniEdit;
    UniContainerPanel14: TUniContainerPanel;
    UniLabel13: TUniLabel;
    UniSFBitBtn4: TUniSFBitBtn;
    UniPanel15: TUniPanel;
    compDESCR: TUniEdit;
    UniContainerPanel15: TUniContainerPanel;
    UniPanel16: TUniPanel;
    compNOMECLI: TUniEdit;
    UniContainerPanel16: TUniContainerPanel;
    UniPanel17: TUniPanel;
    compCODCLI: TUniEdit;
    UniContainerPanel17: TUniContainerPanel;
    UniLabel14: TUniLabel;
    UniSFBitBtn5: TUniSFBitBtn;
    UniPanel18: TUniPanel;
    compNOME: TUniEdit;
    UniContainerPanel18: TUniContainerPanel;
    UniPanel19: TUniPanel;
    compCODBAN: TUniEdit;
    UniContainerPanel19: TUniContainerPanel;
    UniLabel15: TUniLabel;
    UniSFBitBtn6: TUniSFBitBtn;
    UniPanel20: TUniPanel;
    UniPanel21: TUniPanel;
    UniPanel23: TUniPanel;
    UniContainerPanel21: TUniContainerPanel;
    UniLabel16: TUniLabel;
    compDESCRMV: TUniEdit;
    UniPanel22: TUniPanel;
    UniContainerPanel20: TUniContainerPanel;
    UniLabel17: TUniLabel;
    compOBS: TUniEdit;
    UniContainerPanel25: TUniContainerPanel;
    btBaixar: TUniSFBitBtn;
    btVoltar: TUniSFBitBtn;
    btSaldoBancario: TUniSFBitBtn;
    btRepeteValor: TUniSFBitBtn;
    btMudaEmpresa: TUniSFBitBtn;
    btCheque: TUniSFBitBtn;
    btRecibo: TUniSFBitBtn;
    btConcilia: TUniSFBitBtn;
    UniPanel24: TUniPanel;
    compDEBCRED: TUniEdit;
    UniContainerPanel29: TUniContainerPanel;
    pnlObservacoes: TUniPanel;
    scrObservacoes: TUniScrollBox;
    UniPanel53: TUniPanel;
    UniContainerPanel50: TUniContainerPanel;
    UniContainerPanel51: TUniContainerPanel;
    UniSFBitBtn11: TUniSFBitBtn;
    UniSFBitBtn12: TUniSFBitBtn;
    UniSFBitBtn13: TUniSFBitBtn;
    UniSFBitBtn14: TUniSFBitBtn;
    UniSFBitBtn15: TUniSFBitBtn;
    UniSFBitBtn16: TUniSFBitBtn;
    UniSFBitBtn17: TUniSFBitBtn;
    UniSFBitBtn18: TUniSFBitBtn;
    UniMemo1: TUniMemo;
    pnlRemessaBancaria: TUniPanel;
    scrRemessaBancaria: TUniScrollBox;
    UniContainerPanel30: TUniContainerPanel;
    UniSFBitBtn7: TUniSFBitBtn;
    UniSFBitBtn8: TUniSFBitBtn;
    UniSFBitBtn9: TUniSFBitBtn;
    UniSFBitBtn10: TUniSFBitBtn;
    UniSFBitBtn19: TUniSFBitBtn;
    UniSFBitBtn20: TUniSFBitBtn;
    UniSFBitBtn21: TUniSFBitBtn;
    UniSFBitBtn22: TUniSFBitBtn;
    UniPanel1: TUniPanel;
    UniContainerPanel28: TUniContainerPanel;
    UniLabel7: TUniLabel;
    UniDateTimePicker2: TUniDateTimePicker;
    UniPanel25: TUniPanel;
    UniPanel27: TUniPanel;
    UniContainerPanel31: TUniContainerPanel;
    UniLabel8: TUniLabel;
    comppfj: TUniSFComboBox;
    UniPanel28: TUniPanel;
    UniContainerPanel32: TUniContainerPanel;
    UniLabel18: TUniLabel;
    UniEdit3: TUniEdit;
    UniPanel29: TUniPanel;
    UniPanel30: TUniPanel;
    UniContainerPanel33: TUniContainerPanel;
    UniLabel19: TUniLabel;
    UniSFComboBox4: TUniSFComboBox;
    UniPanel31: TUniPanel;
    UniContainerPanel34: TUniContainerPanel;
    UniLabel20: TUniLabel;
    UniDateTimePicker3: TUniDateTimePicker;
    UniPanel32: TUniPanel;
    UniPanel33: TUniPanel;
    UniContainerPanel35: TUniContainerPanel;
    UniLabel21: TUniLabel;
    UniEdit5: TUniEdit;
    UniPanel34: TUniPanel;
    UniContainerPanel36: TUniContainerPanel;
    UniLabel22: TUniLabel;
    UniEdit6: TUniEdit;
    UniPanel35: TUniPanel;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameReady(Sender: TObject);
    procedure UniSFBitBtn1Click(Sender: TObject);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSTelaiconeAtivoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure gridTelaDblClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btVoltarClick(Sender: TObject);
  private
    { Private declarations }
    function pesquisaMovContas(out weJson:TJSONObject; weId,weCodPro,weDescr :string): boolean;
    function hConta(weId, weCodEmp: string; wejRet: TJSONObject): boolean;
    procedure hDados(weId, weEmpresa, weOperacao:string);

  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uUtils, uConstantes, RESTRequest4D.Request, MainModule;

function TfraOperacaoContas.hConta(weId, weCodEmp: string; wejRet: TJSONObject): boolean;
var
  resp1       : IResponse;
  jsonBody    : TJSONObject;
  wJsonResult : TJSONObject;
begin
  result := false;
  // Validações
  if weId.Trim.IsEmpty or weCodEmp.Trim.IsEmpty then
  begin
    wejRet.AddPair('Erro', 'Parâmetros inválidos');
    Exit;
  end;
  try
    jsonBody := TJSONObject.Create;
    try
      jsonBody.AddPair('empresa',weCodEmp);
      jsonBody.AddPair('id',weId);
      resp1 := TRequest
               .New
               .BaseURL(baseUrlCadastros)
               .Resource(getConta)
               .AddParam('nomeBanco', uniMainModule.nomeBanco)
               .AddBody(jsonBody.ToString)
               .TimeOut(15000)
               .get;
      if (resp1 <> nil) and (resp1.StatusCode = 200) then
      begin
        wJsonResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
        if wJsonResult <> nil then
        begin
          wejRet.AddPair('Result',TJSONObject.ParseJSONValue(wJsonResult.GetValue('Result').ToString));
//          wejRet.AddPair('Result',(wJsonResult.GetValue('Result') as TJSONArray).Clone.ToString);
//          wejRet.AddPair('Result',wJsonResult.Clone as TJSONValue);
//          wejRet.AddPair('Result',wJsonResult.GetValue('Result') as TJSONArray).Clone.ToString;
//          weJret := TJSONObject.ParseJSONValue((wJsonResult.GetValue('Result') as TJSONArray).Items[0].ToString)  as TJSONObject;
          FreeAndNil(wJsonResult);
        end;
      end;
      result := true;
    except on e:exception do
      begin
        alerta.Error('Erro: '+e.Message);
        wejRet.AddPair('Erro','getConta. Erro: '+e.Message);
      end;

    end;
  finally
    FreeAndNil(jsonBody);
  end;
end;

procedure TfraOperacaoContas.btCancelarClick(Sender: TObject);
begin
  pgcTela.ActivePage := tsListagem;
end;

procedure TfraOperacaoContas.btnSalvarClick(Sender: TObject);
begin
  pgcTela.ActivePage := tsListagem;
end;

procedure TfraOperacaoContas.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Editar', 'editar', 'dc3545');
end;

procedure TfraOperacaoContas.CDSTelaiconeAtivoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTela.FieldByName('ativo').AsString, Text, DisplayText);
end;

procedure TfraOperacaoContas.gridTelaCellClick(Column: TUniDBGridColumn);
begin
//  if column.Field = CDSTelabotaoEditar then
//  begin
//    pgcTela.ActivePageIndex := 1;
//    carregaDados;
//  end;
end;

procedure TfraOperacaoContas.hDados(weId, weEmpresa, weOperacao:string);
var
wjRet: TJSONObject;
begin
  try
    wjRet := TJSONObject.Create;
//    if weOperacao.ToUpper = 'CONSULTAR' then
//    begin
      if hConta(CDSTela.FieldByName('id').AsString, CDSTela.FieldByName('empresa').AsString, wjRet) then
      begin
        compDIADESPP.DateTime := strtodate((wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('diaDespP'));
        compDIADESPR.DateTime := strtodate((wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('diaDespR'));
        compDREF.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('dRef');
        compVALORR.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('valorR');
        compVALORP.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('valorP');
        compNUMDOC.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('numDoc');
        compNUMDOC2.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('numDoc2');
        compAGENCIA.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('agencia');
        compREPASSE.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('repasse');
        compCODPR.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('codPr');
        compDESCRPR.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('descrPr');
        compCODCC.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('codCc');
        compDESCR.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('descr');
        compDEBCRED.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('debCred');
        compCODBAN.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('codBan');
        compNOME.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('nome');
        compCODCLI.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('codCli');
        compNOMECLI.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('nomeCli');
        compDESCRMV.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('descrMv');
        compOBS.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('obs');

        pgcTela.ActivePage := tsDetalhe;
      end;
//    end;
//    alerta.Success(wjRet.ToString);
  //  carregaDados;

  finally
    FreeAndNil(wjRet);
  end;
end;

procedure TfraOperacaoContas.gridTelaDblClick(Sender: TObject);
//var
//wjRet: TJSONObject;
begin
  hDados(CDSTela.FieldByName('id').AsString, CDSTela.FieldByName('empresa').AsString,'CONSULTAR');
//  try
//    wjRet := TJSONObject.Create;
//    pgcTela.ActivePage := tsDetalhe;
//    if hConta(CDSTela.FieldByName('id').AsString, CDSTela.FieldByName('empresa').AsString, wjRet) then
//    begin
//      compDIADESPP.DateTime := strtodate((wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('diaDespP'));
//      compDIADESPR.DateTime := strtodate((wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('diaDespR'));
//      compDREF.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('dRef');
//      compVALORR.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('valorR');
//      compVALORP.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('valorP');
//      compNUMDOC.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('numDoc');
//      compNUMDOC2.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('numDoc2');
//      compAGENCIA.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('agencia');
//      compREPASSE.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('repasse');
//      compCODPR.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('codPr');
//      compDESCRPR.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('descrPr');
//      compCODCC.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('codCc');
//      compDESCR.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('descr');
//      compCODBAN.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('codBan');
//      compNOME.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('nome');
//      compCODCLI.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('codCli');
//      compNOMECLI.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('nomeCli');
//      compDESCRMV.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('descrMv');
//      compOBS.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('obs');
//
//      pgcTela.ActivePage := tsDetalhe;
//    end;
////    alerta.Success(wjRet.ToString);
//  //  carregaDados;
//
//  finally
//    FreeAndNil(wjRet);
//  end;
end;

procedure TfraOperacaoContas.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin

//  alerta.Success(Column.FieldName);
// Cor do texto (adicional)
  if Column.FieldName = 'DEBCRED' then
  begin
    if Column.Field.AsString = 'C' then
      Attribs.Font.Color := clGreen
    else
      Attribs.Font.Color := clRed;
  end;

//  // Verifica se o campo da coluna atual é 'Status'
//  if Column.FieldName = 'DEBCRED' then
//  begin
//    // Verifica se o valor do campo é 'Aprovado'
//    if Column.Field.AsString = 'C' then
//    begin
//      Attribs.Font.Color := clGreen; // Texto em verde para aprovado
//    end
//    else
//    begin
//      Attribs.Font.Color := clRed;   // Texto em vermelho para outros status
//    end;
//  end;
//  SetGridColor(Sender, Attribs);

//  if CDSTela.FieldByName('DEBCRED').AsString = 'C' then
//    gridTela.At Font.Color := clGreen;
//
//  if CDSTela.FieldByName('DEBCRED').AsString = 'D' then
//    gridTela.Font.Color := clRed;
end;

function TfraOperacaoContas.pesquisaMovContas(out weJson:TJSONObject; weId,weCodPro,weDescr :string): boolean;
//var
//  resp1     :IResponse;
//  wAItemTmp :TJSONArray;
//  wJItemTmp :TJSONObject;
begin
//  try
////    FreeAndNil(weJson);
//    weJson := TJSONObject.Create;
//    result := false;
//
//    resp1 := TRequest.New.BaseURL(baseurlCadastros)
//           .resource(getMovContas)
//           .AddParam('nomeBanco', uniMainModule.nomebanco)
//           .AddParam('id', weId)
//           .AddParam('codpro', weCodPro)
//           .AddParam('descr', weDescr)
//           .AddParam('empresa', vvcodemp)
//           .timeOut(12000)
//           .Get;
//
////    resp1 := req.Get;
//
//    if resp1.StatusCode = 200 then
//    begin
//      FreeAndNil(weJson);
//      weJson := TJSONObject.Create;
//      wJItemTmp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
//      wAItemTmp := wJItemTmp.GetValue('Result') as TJSONArray;
//      weJson := wAItemTmp.Items[0] as TJSONObject;
//
//      result := true;
//    end;
//  finally
//
//  end;
end;


procedure TfraOperacaoContas.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
  ConfigurarAlignComboBoxes(self, 10);
//  listar;
end;

procedure TfraOperacaoContas.UniFrameReady(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
//  rg1.Start;
//  rg2.Start;
//  rg3.Start;
//  rg4.Start;
//  rg5.Start;
//  rg6.Start;
//  rg7.Start;
//  rg8.Start;
//  rg9.Start;
  scrFundo.Align := alClient;
  pgcTela.Align := alClient;
  pgcDetalhe.Align := alClient;
  PnlDadosConta.Align := alClient;
  scrDetalhe.Align := alClient;
  scrObservacoes.Align := alClient;
  scrRemessaBancaria.Align := alClient;
end;

procedure TfraOperacaoContas.UniSFBitBtn1Click(Sender: TObject);
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
    try
      resp1 := TRequest.New.BaseURL(baseurlCadastros)
             .resource(getMovContas)
             .AddParam('nomeBanco', uniMainModule.nomebanco)
             .AddBody(jsonBody)
             .timeOut(12000)
             .Get;

      if resp1.StatusCode = 200 then
      begin
        jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
        JsonToDataset(CDSTela, jsonResp.GetValue('Result').ToString);
      end
      else
      begin
        alerta.Warning(resp1.Content);
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

procedure TfraOperacaoContas.btVoltarClick(Sender: TObject);
begin
  pgcTela.ActivePage := tsListagem;
end;

end.
