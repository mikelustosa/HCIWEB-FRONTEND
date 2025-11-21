unit ufraCadCondPag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniTimer, URGLayoutUnigui, UniSFiGrowl, Data.DB,
  Datasnap.DBClient, uniGUIBaseClasses, UniSFSweetAlert, UniFSToggle,
  UniSFComboBox, uniPanel, uniLabel, uniButton, uniBitBtn, UniSFButton,
  UniSFBitBtn, uniEdit, UniSFLabel, uniBasicGrid, uniDBGrid, uniPageControl,
  uniScrollBox, uniImage, system.json, RESTREQUEST4D.request, uniCheckBox;

type
  TfraCadCondPag = class(TUniFrame)
    imgFundo: TUniImage;
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
    compcodPag: TUniEdit;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniPanel3: TUniPanel;
    compdescrPg: TUniEdit;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniPanel1: TUniPanel;
    UniContainerPanel1: TUniContainerPanel;
    cpMenuRodape: TUniContainerPanel;
    btnSalvar: TUniSFBitBtn;
    btnCancelar: TUniSFBitBtn;
    compativo: TUniFSToggle;
    cpMenuTopo: TUniContainerPanel;
    lblDescricao: TUniLabel;
    btnNovo: TUniSFBitBtn;
    UniContainerPanel27: TUniContainerPanel;
    btnFechar: TUniSFBitBtn;
    alerta: TUniSFSweetAlert;
    DSTela: TDataSource;
    CDSTela: TClientDataSet;
    CDSTelabotaoEditar: TAggregateField;
    CDSTelaiconeAtivo: TAggregateField;
    alertaM: TUniSFiGrowl;
    RG1: TRGLayoutUnigui;
    CDSDados: TClientDataSet;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    UniSFLabel12: TUniSFLabel;
    UniPanel4: TUniPanel;
    compcodCcv: TUniEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniPanel5: TUniPanel;
    compdescrCCV: TUniEdit;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniPanel6: TUniPanel;
    compcodCcc: TUniEdit;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel3: TUniLabel;
    UniPanel7: TUniPanel;
    compdescrCCC: TUniEdit;
    UniContainerPanel5: TUniContainerPanel;
    UniPanel8: TUniPanel;
    UniPanel9: TUniPanel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniPanel18: TUniPanel;
    UniContainerPanel19: TUniContainerPanel;
    UniLabel18: TUniLabel;
    compcodPagNfe: TUniSFComboBox;
    UniPanel10: TUniPanel;
    compdesconto: TUniEdit;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniPanel11: TUniPanel;
    compnumParc: TUniEdit;
    UniContainerPanel7: TUniContainerPanel;
    UniLabel7: TUniLabel;
    UniPanel12: TUniPanel;
    compcodBan: TUniEdit;
    UniContainerPanel8: TUniContainerPanel;
    UniLabel8: TUniLabel;
    UniPanel13: TUniPanel;
    UniContainerPanel11: TUniContainerPanel;
    UniSFLabel3: TUniSFLabel;
    UniPanel14: TUniPanel;
    UniPanel49: TUniPanel;
    UniContainerPanel53: TUniContainerPanel;
    UniLabel44: TUniLabel;
    UniScrollBox2: TUniScrollBox;
    UniContainerPanel54: TUniContainerPanel;
    UniPanel15: TUniPanel;
    compparc01: TUniEdit;
    UniContainerPanel13: TUniContainerPanel;
    UniLabel9: TUniLabel;
    UniPanel16: TUniPanel;
    compparc02: TUniEdit;
    UniContainerPanel14: TUniContainerPanel;
    UniLabel11: TUniLabel;
    UniPanel17: TUniPanel;
    compparc03: TUniEdit;
    UniContainerPanel15: TUniContainerPanel;
    UniLabel12: TUniLabel;
    UniPanel19: TUniPanel;
    compparc04: TUniEdit;
    UniContainerPanel16: TUniContainerPanel;
    UniLabel13: TUniLabel;
    UniPanel20: TUniPanel;
    compparc05: TUniEdit;
    UniContainerPanel17: TUniContainerPanel;
    UniLabel14: TUniLabel;
    UniPanel21: TUniPanel;
    compparc06: TUniEdit;
    UniContainerPanel18: TUniContainerPanel;
    UniLabel15: TUniLabel;
    UniPanel22: TUniPanel;
    compparc07: TUniEdit;
    UniContainerPanel20: TUniContainerPanel;
    UniLabel16: TUniLabel;
    UniPanel23: TUniPanel;
    compparc08: TUniEdit;
    UniContainerPanel21: TUniContainerPanel;
    UniLabel17: TUniLabel;
    UniPanel24: TUniPanel;
    compparc09: TUniEdit;
    UniContainerPanel25: TUniContainerPanel;
    UniLabel19: TUniLabel;
    UniPanel25: TUniPanel;
    compparc10: TUniEdit;
    UniContainerPanel28: TUniContainerPanel;
    UniLabel20: TUniLabel;
    UniPanel26: TUniPanel;
    compparc11: TUniEdit;
    UniContainerPanel29: TUniContainerPanel;
    UniLabel21: TUniLabel;
    UniPanel27: TUniPanel;
    compparc12: TUniEdit;
    UniContainerPanel30: TUniContainerPanel;
    UniLabel22: TUniLabel;
    UniContainerPanel31: TUniContainerPanel;
    UniPanel28: TUniPanel;
    compparc13: TUniEdit;
    UniContainerPanel32: TUniContainerPanel;
    UniLabel23: TUniLabel;
    UniPanel29: TUniPanel;
    compparc14: TUniEdit;
    UniContainerPanel33: TUniContainerPanel;
    UniLabel24: TUniLabel;
    UniPanel30: TUniPanel;
    compparc15: TUniEdit;
    UniContainerPanel34: TUniContainerPanel;
    UniLabel25: TUniLabel;
    UniPanel31: TUniPanel;
    compparc16: TUniEdit;
    UniContainerPanel35: TUniContainerPanel;
    UniLabel26: TUniLabel;
    UniPanel32: TUniPanel;
    compparc17: TUniEdit;
    UniContainerPanel36: TUniContainerPanel;
    UniLabel27: TUniLabel;
    UniPanel33: TUniPanel;
    compparc18: TUniEdit;
    UniContainerPanel37: TUniContainerPanel;
    UniLabel28: TUniLabel;
    UniPanel34: TUniPanel;
    compparc19: TUniEdit;
    UniContainerPanel38: TUniContainerPanel;
    UniLabel29: TUniLabel;
    UniPanel35: TUniPanel;
    compparc20: TUniEdit;
    UniContainerPanel39: TUniContainerPanel;
    UniLabel30: TUniLabel;
    UniPanel36: TUniPanel;
    compparc21: TUniEdit;
    UniContainerPanel40: TUniContainerPanel;
    UniLabel31: TUniLabel;
    UniPanel37: TUniPanel;
    compparc22: TUniEdit;
    UniContainerPanel41: TUniContainerPanel;
    UniLabel32: TUniLabel;
    UniPanel38: TUniPanel;
    compparc23: TUniEdit;
    UniContainerPanel42: TUniContainerPanel;
    UniLabel33: TUniLabel;
    UniPanel39: TUniPanel;
    compparc24: TUniEdit;
    UniContainerPanel43: TUniContainerPanel;
    UniLabel34: TUniLabel;
    UniPanel40: TUniPanel;
    UniContainerPanel44: TUniContainerPanel;
    UniLabel35: TUniLabel;
    UniScrollBox1: TUniScrollBox;
    UniContainerPanel45: TUniContainerPanel;
    UniPanel41: TUniPanel;
    compporc01: TUniEdit;
    UniContainerPanel46: TUniContainerPanel;
    UniLabel36: TUniLabel;
    UniPanel42: TUniPanel;
    compporc02: TUniEdit;
    UniContainerPanel47: TUniContainerPanel;
    UniLabel37: TUniLabel;
    UniPanel43: TUniPanel;
    compporc03: TUniEdit;
    UniContainerPanel48: TUniContainerPanel;
    UniLabel38: TUniLabel;
    UniPanel44: TUniPanel;
    compporc04: TUniEdit;
    UniContainerPanel49: TUniContainerPanel;
    UniLabel39: TUniLabel;
    UniPanel45: TUniPanel;
    compporc05: TUniEdit;
    UniContainerPanel50: TUniContainerPanel;
    UniLabel40: TUniLabel;
    UniPanel46: TUniPanel;
    compporc06: TUniEdit;
    UniContainerPanel51: TUniContainerPanel;
    UniLabel41: TUniLabel;
    UniPanel47: TUniPanel;
    compporc07: TUniEdit;
    UniContainerPanel52: TUniContainerPanel;
    UniLabel42: TUniLabel;
    UniPanel48: TUniPanel;
    compporc08: TUniEdit;
    UniContainerPanel55: TUniContainerPanel;
    UniLabel43: TUniLabel;
    UniPanel50: TUniPanel;
    compporc09: TUniEdit;
    UniContainerPanel56: TUniContainerPanel;
    UniLabel45: TUniLabel;
    UniPanel51: TUniPanel;
    compporc10: TUniEdit;
    UniContainerPanel57: TUniContainerPanel;
    UniLabel46: TUniLabel;
    UniPanel52: TUniPanel;
    compporc11: TUniEdit;
    UniContainerPanel58: TUniContainerPanel;
    UniLabel47: TUniLabel;
    UniPanel53: TUniPanel;
    compporc12: TUniEdit;
    UniContainerPanel59: TUniContainerPanel;
    UniLabel48: TUniLabel;
    UniContainerPanel60: TUniContainerPanel;
    UniPanel54: TUniPanel;
    compporc13: TUniEdit;
    UniContainerPanel61: TUniContainerPanel;
    UniLabel49: TUniLabel;
    UniPanel55: TUniPanel;
    compporc14: TUniEdit;
    UniContainerPanel62: TUniContainerPanel;
    UniLabel50: TUniLabel;
    UniPanel56: TUniPanel;
    compporc15: TUniEdit;
    UniContainerPanel63: TUniContainerPanel;
    UniLabel51: TUniLabel;
    UniPanel57: TUniPanel;
    compporc16: TUniEdit;
    UniContainerPanel64: TUniContainerPanel;
    UniLabel52: TUniLabel;
    UniPanel58: TUniPanel;
    compporc17: TUniEdit;
    UniContainerPanel65: TUniContainerPanel;
    UniLabel53: TUniLabel;
    UniPanel59: TUniPanel;
    compporc18: TUniEdit;
    UniContainerPanel66: TUniContainerPanel;
    UniLabel54: TUniLabel;
    UniPanel60: TUniPanel;
    compporc19: TUniEdit;
    UniContainerPanel67: TUniContainerPanel;
    UniLabel55: TUniLabel;
    UniPanel61: TUniPanel;
    compporc20: TUniEdit;
    UniContainerPanel68: TUniContainerPanel;
    UniLabel56: TUniLabel;
    UniPanel62: TUniPanel;
    compporc21: TUniEdit;
    UniContainerPanel69: TUniContainerPanel;
    UniLabel57: TUniLabel;
    UniPanel63: TUniPanel;
    compporc22: TUniEdit;
    UniContainerPanel70: TUniContainerPanel;
    UniLabel58: TUniLabel;
    UniPanel64: TUniPanel;
    compporc23: TUniEdit;
    UniContainerPanel71: TUniContainerPanel;
    UniLabel59: TUniLabel;
    UniPanel65: TUniPanel;
    compporc24: TUniEdit;
    UniContainerPanel72: TUniContainerPanel;
    UniLabel60: TUniLabel;
    pnRodape: TUniPanel;
    btnListaCentroDeCusto: TUniSFButton;
    btnListaCentroDeCusto2: TUniSFButton;
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure edPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameReady(Sender: TObject);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSTelaiconeAtivoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure compativoToggled(const Value: Boolean);
    procedure btnListaCentroDeCustoClick(Sender: TObject);
    procedure btnListaCentroDeCusto2Click(Sender: TObject);
  private
    alterando :boolean;
    id        :string;
    idCentroDeCusto :string;
    ativo     :string;
    procedure listar(pDado :string = '');
    procedure carregaDados;
    procedure retornar;
    procedure limpaCampos;
    procedure callBackCentroDeCusto1(Sender: TComponent; AResult: Integer);
    procedure callBackCentroDeCusto2(Sender: TComponent; AResult: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, uUtils, uConstantes, ufrmListaCentroDeCusto;

procedure TfraCadCondPag.listar(pDado :string = '');
var
  resp1       :IResponse;
  body        :string;
  jsonResp    :TJSONObject;
  jsonTemp    :string;
begin

  pgcTela.ActivePageIndex := 0;

  resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getCondPag)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('id', '')
            .AddParam('codPag', '')
            .AddParam('descrPg', pDado)
            .timeOut(12000)
            .Get;

  if resp1.StatusCode = 200 then
  begin
    try
      jsonResp := TJSONObject.ParseJSONValue(resp1.content) as TJSONObject;
      JsonToDataset(CDSTela, jsonResp.getValue('Result').toJson);
    finally
      jsonResp.Free;
    end;
  end;

end;

procedure TfraCadCondPag.retornar;
begin
  pgcTela.ActivePageIndex := 0;
  listar;
end;

procedure TfraCadCondPag.btnCancelarClick(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  pgcTela.ActivePageIndex := 0;
end;

procedure TfraCadCondPag.limpaCampos;
begin
  alterando := false;
  ativo := 'S';
  limpaCookiesEditRecursivo(self);
  PreencherCamposDoForm(Self, ativo, nil, nil, 'NOVO REGISTRO');
end;

procedure TfraCadCondPag.callBackCentroDeCusto1(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaCentroDeCusto.ModalResult = mrOk then
  begin
    idCentroDeCusto := frmListaCentroDeCusto.idCentroDeCusto;
    compcodCcv.text := idCentroDeCusto;
    compdescrCCV.Text := frmListaCentroDeCusto.nomeCentroDeCusto;
    alertaM.info('Centro de custo venda selecionado: <b>' + frmListaCentroDeCusto.nomeCentroDeCusto + '</b>');
  end;
end;

procedure TfraCadCondPag.callBackCentroDeCusto2(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaCentroDeCusto.ModalResult = mrOk then
  begin
    idCentroDeCusto := frmListaCentroDeCusto.idCentroDeCusto;
    compcodCcc.text := idCentroDeCusto;
    compdescrCCC.Text := frmListaCentroDeCusto.nomeCentroDeCusto;
    alertaM.info('Centro de custo compra selecionado: <b>' + frmListaCentroDeCusto.nomeCentroDeCusto + '</b>');
  end;
end;

procedure TfraCadCondPag.btnListaCentroDeCusto2Click(Sender: TObject);
begin
  frmListaCentroDeCusto.showModal(callBackCentroDeCusto2);
end;

procedure TfraCadCondPag.btnListaCentroDeCustoClick(Sender: TObject);
begin
  frmListaCentroDeCusto.showModal(callBackCentroDeCusto1);
end;

procedure TfraCadCondPag.btnNovoClick(Sender: TObject);
begin
  limpaCampos;
  pgcTela.ActivePageIndex := 1;
end;

procedure TfraCadCondPag.btnSalvarClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
begin
  try
    jsonBody := TJSONObject.Create;

    jsonBody.AddPair('codPag', compcodPag.Text);
    jsonBody.AddPair('descrPg', compdescrPg.Text);
    jsonBody.AddPair('desconto', compdesconto.Text);
    jsonBody.AddPair('descPg', compdesconto.Text);

    jsonBody.AddPair('codPagNfe', copy(compcodPagNfe.Text, 0, 3));
    jsonBody.AddPair('codBan', compcodBan.Text);
    jsonBody.AddPair('codCcv', compcodCcv.Text);
    jsonBody.AddPair('codCcc', compcodCcc.Text);
    jsonBody.AddPair('parc01', compparc01.Text);
    jsonBody.AddPair('parc02', compparc02.Text);
    jsonBody.AddPair('parc03', compparc03.Text);
    jsonBody.AddPair('parc04', compparc04.Text);
    jsonBody.AddPair('parc05', compparc05.Text);
    jsonBody.AddPair('parc06', compparc06.Text);
    jsonBody.AddPair('parc07', compparc07.Text);
    jsonBody.AddPair('parc08', compparc08.Text);
    jsonBody.AddPair('parc09', compparc09.Text);
    jsonBody.AddPair('parc10', compparc10.Text);
    jsonBody.AddPair('parc11', compparc11.Text);
    jsonBody.AddPair('parc12', compparc12.Text);
    jsonBody.AddPair('parc13', compparc13.Text);
    jsonBody.AddPair('parc14', compparc14.Text);
    jsonBody.AddPair('parc15', compparc15.Text);
    jsonBody.AddPair('parc16', compparc16.Text);
    jsonBody.AddPair('parc17', compparc17.Text);
    jsonBody.AddPair('parc18', compparc18.Text);
    jsonBody.AddPair('parc19', compparc19.Text);
    jsonBody.AddPair('parc20', compparc20.Text);
    jsonBody.AddPair('parc21', compparc21.Text);
    jsonBody.AddPair('parc22', compparc22.Text);
    jsonBody.AddPair('parc23', compparc23.Text);
    jsonBody.AddPair('parc24', compparc24.Text);
    jsonBody.AddPair('porc01', compporc01.Text);
    jsonBody.AddPair('porc02', compporc02.Text);
    jsonBody.AddPair('porc03', compporc03.Text);
    jsonBody.AddPair('porc04', compporc04.Text);
    jsonBody.AddPair('porc05', compporc05.Text);
    jsonBody.AddPair('porc06', compporc06.Text);
    jsonBody.AddPair('porc07', compporc07.Text);
    jsonBody.AddPair('porc08', compporc08.Text);
    jsonBody.AddPair('porc09', compporc09.Text);
    jsonBody.AddPair('porc10', compporc10.Text);
    jsonBody.AddPair('porc11', compporc11.Text);
    jsonBody.AddPair('porc12', compporc12.Text);
    jsonBody.AddPair('porc13', compporc13.Text);
    jsonBody.AddPair('porc14', compporc14.Text);
    jsonBody.AddPair('porc15', compporc15.Text);
    jsonBody.AddPair('porc16', compporc16.Text);
    jsonBody.AddPair('porc17', compporc17.Text);
    jsonBody.AddPair('porc18', compporc18.Text);
    jsonBody.AddPair('porc19', compporc19.Text);
    jsonBody.AddPair('porc20', compporc20.Text);
    jsonBody.AddPair('porc21', compporc21.Text);
    jsonBody.AddPair('porc22', compporc22.Text);
    jsonBody.AddPair('porc23', compporc23.Text);
    jsonBody.AddPair('porc24', compporc24.Text);
    jsonBody.AddPair('numParc',compnumParc.Text);
    jsonBody.AddPair('ativo', ativo);

    if alterando then
    begin
      resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(putCondPag)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddParam('id', id)
                .AddBody(jsonBody.ToString)
                .Timeout(12000)
                .Put;

      if resp1.StatusCode = 200 then
        alerta.Info('Cadastro alterado com sucesso!') else
        alerta.Info(resp1.StatusCode.ToString + ' ' + resp1.Content)
    end else
      begin
        resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(postCondPag)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddBody(jsonBody.ToString)
                .Timeout(12000)
                .Post;

        if resp1.StatusCode = 200 then
          alerta.Info('Cadastro incluido com sucesso!') else
          alerta.Info(resp1.StatusCode.ToString + ' ' + resp1.Content)
      end;

    retornar;

  finally
    jsonBody.Free;
  end;
end;

procedure TfraCadCondPag.carregaDados;
var
  resp1         :IResponse;
  jsonResp      :TJSONObject;
begin
  alterando := true;
  id        := gridTela.Columns[0].Field.AsString;

  resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getCondPag)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('id', id)
            .AddParam('codPag', '')
            .AddParam('descrPg', '')
            .timeOut(12000)
            .Get;

  if resp1.StatusCode = 200 then
  begin
    jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
    JsonToDataset(CDSDados, jsonResp.GetValue('Result').ToString);

    //Tratar campos dos comboBoxs.....
    PreencherCamposDoForm(Self, ativo, nil, CDSDados, 'ALTERA REGISTRO');
    jsonResp.free;
  end;
end;

procedure TfraCadCondPag.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
 if DisplayText then
    text := colocaBotaoNoGrid('Editar', 'editar', 'dc3545');
end;

procedure TfraCadCondPag.CDSTelaiconeAtivoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTela.FieldByName('ativo').AsString, Text, DisplayText);
end;

procedure TfraCadCondPag.compativoToggled(const Value: Boolean);
begin
  if value then
    ativo := 'S' else
    ativo := 'N';
end;

procedure TfraCadCondPag.edPesquisarKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    listar(edPesquisar.Text);
end;

procedure TfraCadCondPag.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    pgcTela.ActivePageIndex := 1;
    carregaDados;
  end;
end;

procedure TfraCadCondPag.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfraCadCondPag.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
  ConfigurarAlignComboBoxes(self, 10);
  listar;
end;

procedure TfraCadCondPag.UniFrameReady(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  RG1.Start;
end;

end.
