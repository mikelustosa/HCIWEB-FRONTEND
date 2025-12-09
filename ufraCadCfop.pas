unit ufraCadCfop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniCheckBox, uniRadioButton, UniFSToggle,
  uniPanel, uniEdit, UniSFLabel, uniBasicGrid, uniDBGrid, uniPageControl,
  uniScrollBox, uniTimer, URGLayoutUnigui, uniImage, uniButton, uniBitBtn,
  UniSFButton, UniSFBitBtn, uniLabel, uniGUIBaseClasses, Data.DB,
  Datasnap.DBClient, UniSFiGrowl, UniSFSweetAlert, UniSFComboBox;

type
  TfraCadCfop = class(TUniFrame)
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
    RG1: TRGLayoutUnigui;
    scrFundo: TUniScrollBox;
    pgcTela: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    gridTela: TUniDBGrid;
    cpPesquisa: TUniContainerPanel;
    UniContainerPanel22: TUniContainerPanel;
    lblFiltro: TUniSFLabel;
    UniContainerPanel23: TUniContainerPanel;
    UniSFLabel2: TUniSFLabel;
    edPesquisar: TUniEdit;
    UniContainerPanel24: TUniContainerPanel;
    UniSFLabel1: TUniSFLabel;
    UniContainerPanel26: TUniContainerPanel;
    UniSFBitBtn1: TUniSFBitBtn;
    tabNovo: TUniTabSheet;
    UniContainerPanel12: TUniContainerPanel;
    compTitulo: TUniLabel;
    pn1: TUniPanel;
    sBoxFundoRegistro: TUniScrollBox;
    UniPanel2: TUniPanel;
    compCODCFOP: TUniEdit;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniPanel3: TUniPanel;
    compNATUREZA: TUniEdit;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniPanel4: TUniPanel;
    UniPanel28: TUniPanel;
    compCFOPD: TUniEdit;
    UniContainerPanel34: TUniContainerPanel;
    UniLabel28: TUniLabel;
    UniPanel5: TUniPanel;
    compCFOPF: TUniEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel3: TUniLabel;
    UniPanel41: TUniPanel;
    UniContainerPanel40: TUniContainerPanel;
    UniLabel33: TUniLabel;
    UniPanel7: TUniPanel;
    UniPanel8: TUniPanel;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel4: TUniLabel;
    UniPanel10: TUniPanel;
    compSTR_CFOPSTDENTRO: TUniEdit;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel5: TUniLabel;
    UniPanel11: TUniPanel;
    compSTR_CFOPSTFORA: TUniEdit;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniPanel13: TUniPanel;
    UniPanel15: TUniPanel;
    UniContainerPanel8: TUniContainerPanel;
    UniLabel7: TUniLabel;
    compGERAPISV: TUniFSToggle;
    cpMenuRodape: TUniContainerPanel;
    btnSalvar: TUniSFBitBtn;
    btnCancelar: TUniSFBitBtn;
    compativo: TUniFSToggle;
    DSTela: TDataSource;
    UniPanel9: TUniPanel;
    UniContainerPanel13: TUniContainerPanel;
    UniLabel9: TUniLabel;
    UniPanel14: TUniPanel;
    UniContainerPanel14: TUniContainerPanel;
    UniLabel11: TUniLabel;
    UniPanel16: TUniPanel;
    UniContainerPanel15: TUniContainerPanel;
    UniLabel12: TUniLabel;
    compGERAPISC: TUniFSToggle;
    UniPanel6: TUniPanel;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel8: TUniLabel;
    UniPanel12: TUniPanel;
    compSTPISV: TUniEdit;
    UniContainerPanel7: TUniContainerPanel;
    UniLabel13: TUniLabel;
    btnClassificacao: TUniSFBitBtn;
    UniPanel17: TUniPanel;
    UniContainerPanel11: TUniContainerPanel;
    UniLabel14: TUniLabel;
    UniPanel18: TUniPanel;
    compSTPISC: TUniEdit;
    UniContainerPanel16: TUniContainerPanel;
    UniLabel15: TUniLabel;
    UniSFBitBtn2: TUniSFBitBtn;
    UniPanel19: TUniPanel;
    UniPanel20: TUniPanel;
    UniContainerPanel17: TUniContainerPanel;
    UniLabel16: TUniLabel;
    compGERACOFINSV: TUniFSToggle;
    UniPanel21: TUniPanel;
    UniContainerPanel18: TUniContainerPanel;
    UniLabel17: TUniLabel;
    UniPanel22: TUniPanel;
    compSTCOFINSV: TUniEdit;
    UniContainerPanel19: TUniContainerPanel;
    UniLabel18: TUniLabel;
    UniSFBitBtn3: TUniSFBitBtn;
    UniPanel23: TUniPanel;
    UniContainerPanel20: TUniContainerPanel;
    UniLabel19: TUniLabel;
    compGERACOFINSC: TUniFSToggle;
    UniPanel24: TUniPanel;
    UniContainerPanel21: TUniContainerPanel;
    UniLabel20: TUniLabel;
    UniPanel25: TUniPanel;
    compSTCOFINSC: TUniEdit;
    UniContainerPanel25: TUniContainerPanel;
    UniLabel21: TUniLabel;
    UniSFBitBtn4: TUniSFBitBtn;
    UniPanel26: TUniPanel;
    UniPanel27: TUniPanel;
    UniContainerPanel28: TUniContainerPanel;
    UniLabel22: TUniLabel;
    compGERAIPIV: TUniFSToggle;
    UniPanel29: TUniPanel;
    UniContainerPanel29: TUniContainerPanel;
    UniLabel23: TUniLabel;
    compGERAIPIC: TUniFSToggle;
    compIMPFATURA: TUniFSToggle;
    compGERAMV: TUniFSToggle;
    UniPanel30: TUniPanel;
    UniPanel31: TUniPanel;
    UniContainerPanel30: TUniContainerPanel;
    UniLabel24: TUniLabel;
    UniPanel32: TUniPanel;
    UniContainerPanel31: TUniContainerPanel;
    UniLabel25: TUniLabel;
    compaa: TUniPanel;
    compSTIPIV: TUniEdit;
    UniContainerPanel32: TUniContainerPanel;
    UniLabel26: TUniLabel;
    UniSFBitBtn5: TUniSFBitBtn;
    UniPanel34: TUniPanel;
    UniContainerPanel33: TUniContainerPanel;
    UniLabel27: TUniLabel;
    compaaa: TUniPanel;
    compSTIPIC: TUniEdit;
    UniContainerPanel35: TUniContainerPanel;
    UniLabel29: TUniLabel;
    UniSFBitBtn6: TUniSFBitBtn;
    compFINNFE: TUniSFComboBox;
    compINDPRES: TUniSFComboBox;
    procedure UniFrameReady(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure compativoToggled(const Value: Boolean);
    procedure edPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSTelaiconeAtivoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btnClassificacaoClick(Sender: TObject);
    procedure UniSFBitBtn2Click(Sender: TObject);
    procedure UniSFBitBtn3Click(Sender: TObject);
    procedure UniSFBitBtn4Click(Sender: TObject);
    procedure UniSFBitBtn5Click(Sender: TObject);
    procedure UniSFBitBtn6Click(Sender: TObject);
  private
    { Private declarations }
    alterando :boolean;
    id        :string;
    ativo     :string;
    procedure limpaCampos;
    procedure listar(pDado :string = '');
    procedure retornar;
    procedure carregaDados;
    procedure callBackStPisVenda(Sender: TComponent;
      AResult: Integer);
    procedure callBackStPisCompra(Sender: TComponent;
      AResult: Integer);
    procedure callBackStCofinsVenda(Sender: TComponent;
      AResult: Integer);
    procedure callBackStCofinsCompra(Sender: TComponent;
      AResult: Integer);
    procedure callBackStIpiVenda(Sender: TComponent;
      AResult: Integer);
    procedure callBackStIpiCompra(Sender: TComponent;
      AResult: Integer);
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uUtils, uConstantes, RESTRequest4D.Request, System.JSON, MainModule,
  ufrmListaGlobal;

procedure TfraCadCfop.callBackStIpiCompra(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compSTIPIC.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    alertaM.info('Situação selecionada: <b>' + frmListaGlobal.CDSTela.FieldByName('descr').AsString + '</b>');
  end;
end;

procedure TfraCadCfop.callBackStIpiVenda(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compSTIPIV.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    alertaM.info('Situação selecionada: <b>' + frmListaGlobal.CDSTela.FieldByName('descr').AsString + '</b>');
  end;
end;

procedure TfraCadCfop.callBackStCofinsCompra(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compSTCOFINSC.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    alertaM.info('Situação selecionada: <b>' + frmListaGlobal.CDSTela.FieldByName('descr').AsString + '</b>');
  end;
end;

procedure TfraCadCfop.callBackStCofinsVenda(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compSTCOFINSV.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    alertaM.info('Situação selecionada: <b>' + frmListaGlobal.CDSTela.FieldByName('descr').AsString + '</b>');
  end;
end;

procedure TfraCadCfop.callBackStPisCompra(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compSTPISC.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    alertaM.info('Situação selecionada: <b>' + frmListaGlobal.CDSTela.FieldByName('descr').AsString + '</b>');
  end;
end;

procedure TfraCadCfop.callBackStPisVenda(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compSTPISV.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    alertaM.info('Situação selecionada: <b>' + frmListaGlobal.CDSTela.FieldByName('descr').AsString + '</b>');
  end;
end;

procedure TfraCadCfop.limpaCampos;
begin
  alterando := false;
  limpaCookiesEditRecursivo(self);
  PreencherCamposDoForm(Self, ativo, nil, nil, 'NOVO REGISTRO');
end;

procedure TfraCadCfop.listar(pDado :string = '');
var
  resp1     :IResponse;
  jsonResp  :TJSONObject;
  ehNumero  :Boolean;
  i         :Integer;
  req       :IRequest;
begin
  pgcTela.ActivePageIndex := 0;
  //Verifica se o valor é numérico
  ehNumero := TryStrToInt(pDado, i);

  //Aqui sim: usamos IRequest até o Get
  req := TRequest.New.BaseURL(baseurlCadastros)
                   .resource(getCfop)
                   .AddParam('NOMEBANCO', uniMainModule.nomebanco);

  if pDado <> '' then
  begin
    if ehNumero then
    begin
      req.AddParam('ID', pDado);
      req.AddParam('CODCFOP', pDado);
    end else
      req.AddParam('NATUREZA', pDado);
  end;

  req.timeOut(12000);
  resp1 := req.Get; //Aqui muda de IRequest IResponse

  if resp1.StatusCode = 200 then
  begin
    try
      jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
      JsonToDataset(CDSTela, jsonResp.getValue('Result').toJson);
    finally
      jsonResp.Free;
    end;
  end;
end;

procedure TfraCadCfop.retornar;
begin
  pgcTela.ActivePageIndex := 0;
  listar;
end;

procedure TfraCadCfop.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
  ConfigurarAlignComboBoxes(self, 10);
  listar;
end;

procedure TfraCadCfop.UniFrameReady(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  //MarcarTodosCheckBox(self);
  rg1.Start;
//  rg2.Start;
//  rg3.Start;
//  rg4.Start;
//  rg5.Start;
//  rg6.Start;
//  rg7.Start;
//  rg8.Start;
//  rg9.Start;
end;

procedure TfraCadCfop.UniSFBitBtn2Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'PISCOMPRA';
  frmListaGlobal.lblDescricao.Caption := 'PIS COMPAR';
  frmListaGlobal.showModal(callBackStPisCompra);
end;

procedure TfraCadCfop.UniSFBitBtn3Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'COFINSVENDA';
  frmListaGlobal.lblDescricao.Caption := 'COFINS VENDA';
  frmListaGlobal.showModal(callBackStCofinsVenda);
end;

procedure TfraCadCfop.UniSFBitBtn4Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'COFINSCOMPRA';
  frmListaGlobal.lblDescricao.Caption := 'COFINS COMPRA';
  frmListaGlobal.showModal(callBackStCofinsCompra);
end;

procedure TfraCadCfop.UniSFBitBtn5Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'IPIVENDA';
  frmListaGlobal.lblDescricao.Caption := 'IPI VENDA';
  frmListaGlobal.showModal(callBackStIpiVenda);
end;

procedure TfraCadCfop.UniSFBitBtn6Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'IPICOMPRA';
  frmListaGlobal.lblDescricao.Caption := 'IPI COMPRA';
  frmListaGlobal.showModal(callBackStIpiCompra);
end;

procedure TfraCadCfop.btnCancelarClick(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  DefinirTodasAbasNaPrimeiraPagina(self);
end;

procedure TfraCadCfop.btnClassificacaoClick(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'PISVENDA';
  frmListaGlobal.lblDescricao.Caption := 'PIS VENDA';
  frmListaGlobal.showModal(callBackStPisVenda);
end;

procedure TfraCadCfop.btnNovoClick(Sender: TObject);
begin
  limpaCampos;
  pgcTela.ActivePageIndex := 1;
end;

procedure TfraCadCfop.btnSalvarClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
begin
  try
    jsonBody := TJSONObject.Create;
    jsonBody.AddPair('CODCFOP', compCODCFOP.Text);
    jsonBody.AddPair('CFOPD', compCFOPD.Text);
    jsonBody.AddPair('CFOPF', compCFOPF.Text);
    jsonBody.AddPair('NATUREZA', compNATUREZA.Text);

    if compGERAPISV.Toggled then
      jsonBody.AddPair('GERAPISV', 'T')
    else
      jsonBody.AddPair('GERAPISV', 'F');

    if compGERACOFINSV.Toggled then
      jsonBody.AddPair('GERACOFINSV', 'T')
    else
      jsonBody.AddPair('GERACOFINSV', 'F');

    if compGERAPISC.Toggled then
      jsonBody.AddPair('GERAPISC', 'T')
    else
      jsonBody.AddPair('GERAPISC', 'F');

    if compGERACOFINSC.Toggled then
      jsonBody.AddPair('GERACOFINSC', 'T')
    else
      jsonBody.AddPair('GERACOFINSC', 'F');

    if compGERAIPIV.Toggled then
      jsonBody.AddPair('GERAIPIV', 'T')
    else
      jsonBody.AddPair('GERAIPIV', 'F');

    if compGERAIPIC.Toggled then
      jsonBody.AddPair('GERAIPIC', 'T')
    else
      jsonBody.AddPair('GERAIPIC', 'F');

    jsonBody.AddPair('STPISV', compSTPISV.Text);
    jsonBody.AddPair('STPISC', compSTPISC.Text);
    jsonBody.AddPair('STCOFINSV', compSTCOFINSV.Text);
    jsonBody.AddPair('STCOFINSC', compSTCOFINSC.Text);
    jsonBody.AddPair('STIPIV', compSTIPIV.Text);
    jsonBody.AddPair('STIPIC', compSTIPIC.Text);
    jsonBody.AddPair('FINNFE', compFINNFE.Text);
    jsonBody.AddPair('INDPRES', compINDPRES.Text);

    if compGERAMV.Toggled then
      jsonBody.AddPair('GERAMV', 'T')
    else
      jsonBody.AddPair('GERAMV', 'F');

    if compIMPFATURA.Toggled then
      jsonBody.AddPair('IMPFATURA', 'T')
    else
      jsonBody.AddPair('IMPFATURA', 'F');

    jsonBody.AddPair('STR_CFOPSTDENTRO', compSTR_CFOPSTDENTRO.Text);
    jsonBody.AddPair('STR_CFOPSTFORA', compSTR_CFOPSTFORA.Text);
    jsonBody.AddPair('ATIVO', ativo);

    if alterando then
    begin
      resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(putCfop)
                .AddParam('NOMEBANCO', uniMainModule.nomebanco)
                .AddParam('ID', id)
                .AddBody(jsonBody.ToString)
                .Timeout(12000)
                .Put;
    end else
      begin
        resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(postCfop)
                .AddParam('NOMEBANCO', uniMainModule.nomebanco)
                .AddBody(jsonBody.ToString)
                .Timeout(12000)
                .Post;
      end;

    if resp1.StatusCode = 200 then
      begin
        if alterando then
          begin
            alerta.Info('Cadastro alterado com sucesso!');
          end
        else
          begin
            alerta.Info('Cadastro incluido com sucesso!');
          end;
        retornar;
      end
    else
      begin
        alerta.Info(resp1.StatusCode.ToString + ' ' + resp1.Content)
      end;
  finally
    jsonBody.Free;
  end;
end;

procedure TfraCadCfop.compativoToggled(const Value: Boolean);
begin
  if value then
    ativo := 'S' else
    ativo := 'N';
end;

procedure TfraCadCfop.edPesquisarKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    listar(edPesquisar.Text);
end;

procedure TfraCadCfop.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    pgcTela.ActivePageIndex := 1;
    carregaDados;
  end;
end;

procedure TfraCadCfop.carregaDados;
var
  resp1         :IResponse;
  jsonResp      :TJSONObject;
begin
  alterando := true;
  id        := gridTela.Columns[0].Field.AsString;

  resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .resource(getCfop)
                .AddParam('NOMEBANCO', uniMainModule.nomebanco)
                .AddParam('ID', id)
                .AddParam('CODCFOP', '')
                .AddParam('NATUREZA', '')
                .AddParam('ATIVO', '')
                .timeOut(12000)
                .Get;

  if resp1.StatusCode = 200 then
  begin
    jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
    JsonToDataset(CDSDados, jsonResp.GetValue('Result').ToString);

    PreencherCamposDoForm(Self, ativo, nil, CDSDados, 'ALTERA REGISTRO');
    jsonResp.free;
  end;
end;

procedure TfraCadCfop.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Editar', 'editar', 'dc3545');
end;

procedure TfraCadCfop.CDSTelaiconeAtivoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTela.FieldByName('ativo').AsString, Text, DisplayText);
end;

procedure TfraCadCfop.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

end.
