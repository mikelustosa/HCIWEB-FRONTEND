unit ufraCadProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Data.DB, uniRadioButton, UniSFComboBox, uniPanel,
  UniFSToggle, uniEdit, UniSFLabel, uniBasicGrid, uniDBGrid, uniPageControl,
  uniScrollBox, uniTimer, URGLayoutUnigui, uniImage, uniButton, uniBitBtn,
  UniSFButton, UniSFBitBtn, uniLabel, uniGUIBaseClasses, Datasnap.DBClient,
  UniSFiGrowl, UniSFSweetAlert;

type
  TfraCadProdutos = class(TUniFrame)
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
    cpMenuRodape: TUniContainerPanel;
    btnSalvar: TUniSFBitBtn;
    btnCancelar: TUniSFBitBtn;
    compATIVO: TUniFSToggle;
    UniContainerPanel12: TUniContainerPanel;
    compTitulo: TUniLabel;
    pgcTelaDtl: TUniPageControl;
    tab0: TUniTabSheet;
    pn1: TUniPanel;
    sBox1: TUniScrollBox;
    UniPanel13: TUniPanel;
    compDESCR: TUniEdit;
    UniContainerPanel11: TUniContainerPanel;
    UniLabel13: TUniLabel;
    UniPanel28: TUniPanel;
    compCODPRO: TUniEdit;
    UniContainerPanel34: TUniContainerPanel;
    UniLabel28: TUniLabel;
    UniPanel29: TUniPanel;
    compCODPROCONSUMIDOR: TUniEdit;
    UniContainerPanel35: TUniContainerPanel;
    UniLabel29: TUniLabel;
    UniPanel30: TUniPanel;
    UniContainerPanel36: TUniContainerPanel;
    UniLabel30: TUniLabel;
    UniPanel1: TUniPanel;
    compCODFOR: TUniEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniPanel2: TUniPanel;
    compUNIDADE: TUniEdit;
    UniContainerPanel8: TUniContainerPanel;
    UniLabel3: TUniLabel;
    UniPanel3: TUniPanel;
    compCOMPLEMENTAR: TUniEdit;
    UniContainerPanel15: TUniContainerPanel;
    UniLabel12: TUniLabel;
    UniPanel5: TUniPanel;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniPanel6: TUniPanel;
    compMEDIO: TUniEdit;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel4: TUniLabel;
    UniPanel12: TUniPanel;
    compGRADE2: TUniEdit;
    UniContainerPanel14: TUniContainerPanel;
    UniLabel11: TUniLabel;
    UniPanel14: TUniPanel;
    compCEANTRIB: TUniEdit;
    UniContainerPanel13: TUniContainerPanel;
    UniLabel14: TUniLabel;
    UniPanel15: TUniPanel;
    UniContainerPanel16: TUniContainerPanel;
    UniLabel15: TUniLabel;
    compLISFDV: TUniSFComboBox;
    UniPanel4: TUniPanel;
    UniContainerPanel7: TUniContainerPanel;
    UniLabel1: TUniLabel;
    compLISPRE: TUniSFComboBox;
    UniPanel22: TUniPanel;
    compLOCAL: TUniEdit;
    UniContainerPanel28: TUniContainerPanel;
    UniLabel9: TUniLabel;
    UniPanel23: TUniPanel;
    compEAN13: TUniEdit;
    UniContainerPanel29: TUniContainerPanel;
    UniLabel22: TUniLabel;
    UniPanel24: TUniPanel;
    compNGRUPO: TUniEdit;
    UniContainerPanel30: TUniContainerPanel;
    UniLabel23: TUniLabel;
    UniPanel26: TUniPanel;
    tab1: TUniTabSheet;
    pn2: TUniPanel;
    sBox2: TUniScrollBox;
    UniPanel36: TUniPanel;
    compUltComp: TUniEdit;
    UniContainerPanel37: TUniContainerPanel;
    UniLabel27: TUniLabel;
    UniPanel37: TUniPanel;
    compCliDesde: TUniEdit;
    UniContainerPanel38: TUniContainerPanel;
    UniLabel31: TUniLabel;
    UniPanel38: TUniPanel;
    compDNasc: TUniEdit;
    UniContainerPanel39: TUniContainerPanel;
    UniLabel32: TUniLabel;
    UniPanel39: TUniPanel;
    UniPanel40: TUniPanel;
    UniPanel41: TUniPanel;
    compATIV: TUniEdit;
    UniContainerPanel40: TUniContainerPanel;
    UniLabel33: TUniLabel;
    UniSFBitBtn2: TUniSFBitBtn;
    UniPanel42: TUniPanel;
    compDESCRAT: TUniEdit;
    UniContainerPanel41: TUniContainerPanel;
    UniPanel43: TUniPanel;
    UniPanel44: TUniPanel;
    compCodVend: TUniEdit;
    UniContainerPanel42: TUniContainerPanel;
    UniLabel34: TUniLabel;
    btnVendedorers: TUniSFBitBtn;
    UniPanel45: TUniPanel;
    compnomevend: TUniEdit;
    UniContainerPanel43: TUniContainerPanel;
    UniPanel46: TUniPanel;
    UniPanel47: TUniPanel;
    compCodReg: TUniEdit;
    UniContainerPanel44: TUniContainerPanel;
    UniLabel35: TUniLabel;
    UniSFBitBtn4: TUniSFBitBtn;
    UniPanel48: TUniPanel;
    compDescrReg: TUniEdit;
    UniContainerPanel45: TUniContainerPanel;
    UniPanel49: TUniPanel;
    UniPanel50: TUniPanel;
    compLimite: TUniEdit;
    UniContainerPanel46: TUniContainerPanel;
    UniLabel36: TUniLabel;
    UniPanel51: TUniPanel;
    compIndicacao: TUniEdit;
    UniContainerPanel47: TUniContainerPanel;
    UniContainerPanel48: TUniContainerPanel;
    UniLabel37: TUniLabel;
    UniPanel52: TUniPanel;
    UniPanel53: TUniPanel;
    compCodEmpCadastro: TUniEdit;
    UniContainerPanel49: TUniContainerPanel;
    UniLabel38: TUniLabel;
    UniSFBitBtn5: TUniSFBitBtn;
    UniPanel54: TUniPanel;
    UniEdit14: TUniEdit;
    UniContainerPanel50: TUniContainerPanel;
    UniLabel39: TUniLabel;
    UniPanel56: TUniPanel;
    UniPanel57: TUniPanel;
    UniEdit15: TUniEdit;
    UniContainerPanel51: TUniContainerPanel;
    UniLabel40: TUniLabel;
    UniSFBitBtn7: TUniSFBitBtn;
    UniPanel58: TUniPanel;
    UniEdit16: TUniEdit;
    UniContainerPanel52: TUniContainerPanel;
    UniPanel59: TUniPanel;
    UniPanel60: TUniPanel;
    UniEdit17: TUniEdit;
    UniContainerPanel53: TUniContainerPanel;
    UniLabel41: TUniLabel;
    UniSFBitBtn8: TUniSFBitBtn;
    UniPanel61: TUniPanel;
    UniEdit18: TUniEdit;
    UniContainerPanel54: TUniContainerPanel;
    tab2: TUniTabSheet;
    pn3: TUniPanel;
    sBox3: TUniScrollBox;
    UniPanel62: TUniPanel;
    UniEdit1: TUniEdit;
    UniContainerPanel56: TUniContainerPanel;
    UniLabel42: TUniLabel;
    UniPanel63: TUniPanel;
    UniEdit2: TUniEdit;
    UniContainerPanel57: TUniContainerPanel;
    UniLabel43: TUniLabel;
    UniPanel64: TUniPanel;
    UniEdit3: TUniEdit;
    UniContainerPanel58: TUniContainerPanel;
    UniLabel44: TUniLabel;
    UniPanel65: TUniPanel;
    tab3: TUniTabSheet;
    pn4: TUniPanel;
    sBox4: TUniScrollBox;
    tab4: TUniTabSheet;
    pn5: TUniPanel;
    sBox5: TUniScrollBox;
    tab5: TUniTabSheet;
    pn6: TUniPanel;
    sBox6: TUniScrollBox;
    tab6: TUniTabSheet;
    pn7: TUniPanel;
    sBox7: TUniScrollBox;
    UniPanel66: TUniPanel;
    UniContainerPanel59: TUniContainerPanel;
    UniLabel45: TUniLabel;
    UniFSToggle1: TUniFSToggle;
    UniPanel67: TUniPanel;
    UniContainerPanel60: TUniContainerPanel;
    UniLabel46: TUniLabel;
    UniFSToggle2: TUniFSToggle;
    DSTela: TDataSource;
    compFPRODCOMP: TUniSFComboBox;
    UniPanel68: TUniPanel;
    UniContainerPanel61: TUniContainerPanel;
    UniLabel47: TUniLabel;
    UniSFBitBtn3: TUniSFBitBtn;
    UniLabel48: TUniLabel;
    UniPanel69: TUniPanel;
    UniSFBitBtn6: TUniSFBitBtn;
    compFAIXAST: TUniSFComboBox;
    UniPanel70: TUniPanel;
    compNUM: TUniEdit;
    UniContainerPanel62: TUniContainerPanel;
    UniLabel49: TUniLabel;
    UniSFBitBtn11: TUniSFBitBtn;
    UniPanel71: TUniPanel;
    compCOMPROD: TUniEdit;
    UniContainerPanel63: TUniContainerPanel;
    UniLabel50: TUniLabel;
    UniPanel72: TUniPanel;
    compGRADE1: TUniEdit;
    UniContainerPanel64: TUniContainerPanel;
    UniLabel51: TUniLabel;
    UniSFBitBtn12: TUniSFBitBtn;
    UniSFBitBtn9: TUniSFBitBtn;
    UniPanel7: TUniPanel;
    UniPanel8: TUniPanel;
    UniPanel9: TUniPanel;
    compPRECO1: TUniEdit;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniPanel10: TUniPanel;
    compPRECO2: TUniEdit;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel5: TUniLabel;
    UniPanel11: TUniPanel;
    compREAJUSTA2: TUniEdit;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniPanel16: TUniPanel;
    compPRECO3: TUniEdit;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel7: TUniLabel;
    UniPanel17: TUniPanel;
    compREAJUSTA3: TUniEdit;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel8: TUniLabel;
    UniPanel18: TUniPanel;
    UniPanel19: TUniPanel;
    UniContainerPanel17: TUniContainerPanel;
    UniLabel16: TUniLabel;
    compTIPOPROD: TUniSFComboBox;
    UniPanel20: TUniPanel;
    compEANOP: TUniEdit;
    UniContainerPanel18: TUniContainerPanel;
    UniLabel17: TUniLabel;
    UniPanel21: TUniPanel;
    UniPanel25: TUniPanel;
    compPRECO4: TUniEdit;
    UniContainerPanel19: TUniContainerPanel;
    UniLabel18: TUniLabel;
    UniPanel27: TUniPanel;
    compREAJUSTA1: TUniEdit;
    UniContainerPanel20: TUniContainerPanel;
    UniLabel19: TUniLabel;
    UniPanel31: TUniPanel;
    compREAJUSTA4: TUniEdit;
    UniContainerPanel21: TUniContainerPanel;
    UniLabel20: TUniLabel;
    UniPanel32: TUniPanel;
    compPRECO5: TUniEdit;
    UniContainerPanel25: TUniContainerPanel;
    UniLabel21: TUniLabel;
    UniPanel33: TUniPanel;
    compPRECO6: TUniEdit;
    UniContainerPanel31: TUniContainerPanel;
    UniLabel24: TUniLabel;
    UniPanel34: TUniPanel;
    compREAJUSTA5: TUniEdit;
    UniContainerPanel32: TUniContainerPanel;
    UniLabel25: TUniLabel;
    UniPanel35: TUniPanel;
    compREAJUSTA6: TUniEdit;
    UniContainerPanel33: TUniContainerPanel;
    UniLabel26: TUniLabel;
    UniPanel55: TUniPanel;
    UniContainerPanel55: TUniContainerPanel;
    UniSFBitBtn13: TUniSFBitBtn;
    UniPanel73: TUniPanel;
    UniPanel74: TUniPanel;
    UniPanel75: TUniPanel;
    UniContainerPanel65: TUniContainerPanel;
    UniSFBitBtn14: TUniSFBitBtn;
    UniPanel76: TUniPanel;
    UniContainerPanel66: TUniContainerPanel;
    UniSFBitBtn15: TUniSFBitBtn;
    UniPanel77: TUniPanel;
    compDESCRGRADE1: TUniEdit;
    UniContainerPanel67: TUniContainerPanel;
    UniPanel78: TUniPanel;
    compDESCRGRADE2: TUniEdit;
    UniContainerPanel68: TUniContainerPanel;
    UniPanel79: TUniPanel;
    compNOMEGRU: TUniEdit;
    UniContainerPanel69: TUniContainerPanel;
    procedure UniFrameReady(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure edPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSTelaiconeAtivoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure compATIVOToggled(const Value: Boolean);
    procedure UniSFBitBtn6Click(Sender: TObject);
    procedure UniSFBitBtn12Click(Sender: TObject);
    procedure UniSFBitBtn9Click(Sender: TObject);
  private
    { Private declarations }
    alterando :boolean;
    id        :string;
    ativo     :string;
    Procedure carregaDados;
    procedure retornar;
    procedure listar(pDado :string = '');
    procedure limpaCampos;
    procedure callBackGrupos(Sender: TComponent;
      AResult: Integer);
    procedure callBackGrade1(Sender: TComponent;
      AResult: Integer);
    procedure callBackGrade2(Sender: TComponent;
      AResult: Integer);

  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uConstantes, uUtils, RESTRequest4D.Response.Intf, System.JSON,
  RESTRequest4D.Request, MainModule, ufrmListaGlobal;



procedure TfraCadProdutos.callBackGrade2(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compGRADE2.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    compDESCRGRADE2.Text  := frmListaGlobal.CDSTela.FieldByName('descrGrade').AsString;
    alertaM.info('Grade selecionada: <b>' + frmListaGlobal.CDSTela.FieldByName('descrGrade').AsString + '</b>');
  end;
end;

procedure TfraCadProdutos.callBackGrade1(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compGRADE1.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    compDESCRGRADE1.Text  := frmListaGlobal.CDSTela.FieldByName('descrGrade').AsString;
    alertaM.info('Grade selecionada: <b>' + frmListaGlobal.CDSTela.FieldByName('descrGrade').AsString + '</b>');
  end;
end;

procedure TfraCadProdutos.callBackGrupos(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compNGrupo.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    compNOMEGRU.Text  := frmListaGlobal.CDSTela.FieldByName('nomeGru').AsString;
    alertaM.info('Grupo selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nomeGru').AsString + '</b>');
  end;
end;

procedure TfraCadProdutos.carregaDados;
var
  resp1         :IResponse;
  jsonResp      :TJSONObject;
begin
  alterando := true;
  id        := gridTela.Columns[0].Field.AsString;

  resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .resource(getProduto)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddParam('id', id)
                .AddParam('codpro', '')
                .AddParam('descr', '')
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

procedure TfraCadProdutos.retornar;
begin
  pgcTela.ActivePageIndex := 0;
  listar;
end;

procedure TfraCadProdutos.listar(pDado :string = '');
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
                   .resource(getProduto)
                   .AddParam('nomeBanco', uniMainModule.nomebanco);

  if pDado <> '' then
  begin
    if ehNumero then
    begin
      req.AddParam('id', pDado);
      req.AddParam('codpro', pDado);
    end else
      req.AddParam('descr', pDado);
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

procedure TfraCadProdutos.limpaCampos;
begin
  alterando := false;
  limpaCookiesEditRecursivo(self);
  PreencherCamposDoForm(Self, ativo, nil, nil, 'NOVO REGISTRO');
end;

procedure TfraCadProdutos.btnCancelarClick(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  DefinirTodasAbasNaPrimeiraPagina(self);
end;

procedure TfraCadProdutos.btnNovoClick(Sender: TObject);
begin
  limpaCampos;
  pgcTela.ActivePageIndex := 1;
end;

procedure TfraCadProdutos.btnSalvarClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
begin
  try
    jsonBody := TJSONObject.Create;
    jsonBody.AddPair('codpro', compCODPRO.Text);
    jsonBody.AddPair('descr', compDESCR.Text);
    jsonBody.AddPair('unidade', compUNIDADE.Text);
    jsonBody.AddPair('preco1', compPRECO1.Text);
    jsonBody.AddPair('preco2', compPRECO2.Text);
    jsonBody.AddPair('preco3', compPRECO3.Text);
    jsonBody.AddPair('preco4', compPRECO4.Text);
    jsonBody.AddPair('preco5', compPRECO5.Text);
    jsonBody.AddPair('preco6', compPRECO6.Text);
    jsonBody.AddPair('pcusto', '');
    jsonBody.AddPair('medio', compMEDIO.Text);
    jsonBody.AddPair('pesoprod', '');
    jsonBody.AddPair('pesoprodbruto', '');
    jsonBody.AddPair('maximo', '');
    jsonBody.AddPair('minimo', '');
    jsonBody.AddPair('codnum', '');
    jsonBody.AddPair('icm', '');
    jsonBody.AddPair('ipi', '');
    jsonBody.AddPair('ipicmp', '');
    jsonBody.AddPair('fprodcomp', compFPRODCOMP.Text);
    jsonBody.AddPair('fmo', '');
    jsonBody.AddPair('fdgf', '');
    jsonBody.AddPair('imposto', '');
    jsonBody.AddPair('codcli1', '');
    jsonBody.AddPair('codcli2', '');
    jsonBody.AddPair('codcli3', '');
    jsonBody.AddPair('dalt', '');
    jsonBody.AddPair('ngrupo', compNGRUPO.Text);
    jsonBody.AddPair('local', compLOCAL.Text);
    jsonBody.AddPair('markup', '');
    jsonBody.AddPair('q07', '');
    jsonBody.AddPair('q08', '');
    jsonBody.AddPair('q09', '');
    jsonBody.AddPair('q10', '');
    jsonBody.AddPair('q11', '');
    jsonBody.AddPair('q12', '');
    jsonBody.AddPair('codfor', compCODFOR.Text);
    jsonBody.AddPair('obs', '');
    jsonBody.AddPair('icms', '');
    jsonBody.AddPair('reducao', '');
    jsonBody.AddPair('codpal', '');
    jsonBody.AddPair('aliqsg', '');
    jsonBody.AddPair('pisv', '');
    jsonBody.AddPair('pisc', '');
    jsonBody.AddPair('cofinsv', '');
    jsonBody.AddPair('cofinsc', '');
    jsonBody.AddPair('aliqapro', '');
    jsonBody.AddPair('clipi', '');
    jsonBody.AddPair('prodcompl', '');
    jsonBody.AddPair('stpisv', '');
    jsonBody.AddPair('stpisc', '');
    jsonBody.AddPair('stcofinsv', '');
    jsonBody.AddPair('stcofinsc', '');
    jsonBody.AddPair('stipiv', '');
    jsonBody.AddPair('stipic', '');
    jsonBody.AddPair('icmsc', '');
    jsonBody.AddPair('sticmsc', '');
    jsonBody.AddPair('ean13', compEAN13.Text);
    jsonBody.AddPair('pdif', '');
    jsonBody.AddPair('nfce_codcfop', '');
    jsonBody.AddPair('reajusta1', compREAJUSTA1.Text);
    jsonBody.AddPair('reajusta2', compREAJUSTA2.Text);
    jsonBody.AddPair('reajusta3', compREAJUSTA3.Text);
    jsonBody.AddPair('reajusta4', compREAJUSTA4.Text);
    jsonBody.AddPair('reajusta5', compREAJUSTA5.Text);
    jsonBody.AddPair('reajusta6', compREAJUSTA6.Text);
    jsonBody.AddPair('grade1', compGRADE1.Text);
    jsonBody.AddPair('grade2', compGRADE2.Text);
    jsonBody.AddPair('ceantrib', compCEANTRIB.Text);
    jsonBody.AddPair('infadprod', '');
    jsonBody.AddPair('complementar', compCOMPLEMENTAR.Text);
    jsonBody.AddPair('cfopsaida', '');
    jsonBody.AddPair('cfopentrada', '');
    jsonBody.AddPair('flt_ii', '');
    jsonBody.AddPair('demonstra', '');
    jsonBody.AddPair('flt_divisorvolumes', '');
    jsonBody.AddPair('codproconsumidor', compCODPROCONSUMIDOR.Text);
    jsonBody.AddPair('emptemp', '');
    jsonBody.AddPair('fdv', '');
    jsonBody.AddPair('ultdthora', '');
    jsonBody.AddPair('prodfdv', '');
    jsonBody.AddPair('fci', '');
    jsonBody.AddPair('unidadet', '');
    jsonBody.AddPair('valort', '');
    jsonBody.AddPair('lisfdv', compLISFDV.Text);
    jsonBody.AddPair('tipoprod', copy(compTIPOPROD.Text,1,2));
    jsonBody.AddPair('markup3', '');
    jsonBody.AddPair('markup4', '');
    jsonBody.AddPair('markup5', '');
    jsonBody.AddPair('markup6', '');
    jsonBody.AddPair('cprodanp', '');
    jsonBody.AddPair('descanp', '');
    jsonBody.AddPair('ufcons', '');
    jsonBody.AddPair('pglp', '');
    jsonBody.AddPair('dataatualizacao', '');
    jsonBody.AddPair('cbarra', '');
    jsonBody.AddPair('cbarratrib', '');
    jsonBody.AddPair('eanop', compEANOP.Text);
    jsonBody.AddPair('ultimasincronizacaosellentt', '');
    jsonBody.AddPair('produtosellentt', '');
    jsonBody.AddPair('idsellent', '');
    jsonBody.AddPair('produtosellenttativo', '');
    jsonBody.AddPair('idsellentimg', '');
    jsonBody.AddPair('idsellentimgxprod', '');

    jsonBody.AddPair('lispre', compLISPRE.Text);
    jsonBody.AddPair('comprod', compCOMPROD.Text);
    jsonBody.AddPair('faixast', copy(compFAIXAST.Text,1,1));
    jsonBody.AddPair('num', compNUM.Text);

    jsonBody.AddPair('ativo', ativo);

    if alterando then
    begin
      resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(putProduto)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddParam('id', id)
                .AddBody(jsonBody.ToString)
                .Timeout(12000)
                .Put;
    end else
      begin
        resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(postProduto)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
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

procedure TfraCadProdutos.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Editar', 'editar', 'dc3545');
end;

procedure TfraCadProdutos.CDSTelaiconeAtivoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTela.FieldByName('ativo').AsString, Text, DisplayText);
end;

procedure TfraCadProdutos.compATIVOToggled(const Value: Boolean);
begin
  if value then
    ativo := 'S' else
    ativo := 'N';
end;

procedure TfraCadProdutos.edPesquisarKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    listar(edPesquisar.Text);
end;

procedure TfraCadProdutos.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    pgcTela.ActivePageIndex := 1;
    carregaDados;
  end;
end;

procedure TfraCadProdutos.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfraCadProdutos.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
  ConfigurarAlignComboBoxes(self, 10);
  listar;
end;

procedure TfraCadProdutos.UniFrameReady(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  //MarcarTodosCheckBox(self);
  rg1.Start;
  rg2.Start;
//  rg3.Start;
//  rg4.Start;
//  rg5.Start;
//  rg6.Start;
//  rg7.Start;
//  rg8.Start;
//  rg9.Start;
end;

procedure TfraCadProdutos.UniSFBitBtn12Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'GRADE1';
  frmListaGlobal.lblDescricao.Caption := 'GRADE1';
  frmListaGlobal.showModal(callBackGrade1);
end;

procedure TfraCadProdutos.UniSFBitBtn6Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'GRUPOS';
  frmListaGlobal.lblDescricao.Caption := 'GRUPOS';
  frmListaGlobal.showModal(callBackGrupos);
end;

procedure TfraCadProdutos.UniSFBitBtn9Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'GRADE2';
  frmListaGlobal.lblDescricao.Caption := 'GRADE2';
  frmListaGlobal.showModal(callBackGrade2);
end;

end.
