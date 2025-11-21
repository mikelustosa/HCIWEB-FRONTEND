unit ufraCadCartoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniTimer, URGLayoutUnigui, UniSFiGrowl, Data.DB,
  Datasnap.DBClient, uniGUIBaseClasses, UniSFSweetAlert, UniFSToggle,
  UniSFComboBox, uniPanel, uniLabel, uniButton, uniBitBtn, UniSFButton,
  UniSFBitBtn, uniEdit, UniSFLabel, uniBasicGrid, uniDBGrid, uniPageControl,
  uniScrollBox, uniImage, system.json, RESTREQUEST4D.request;

type
  TfraCadCartoes = class(TUniFrame)
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
    compcodCar: TUniEdit;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniPanel3: TUniPanel;
    compnome: TUniEdit;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniPanel15: TUniPanel;
    UniContainerPanel16: TUniContainerPanel;
    UniLabel15: TUniLabel;
    compcategoria: TUniSFComboBox;
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
    UniPanel1: TUniPanel;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel2: TUniLabel;
    comptipoCar: TUniSFComboBox;
    UniPanel4: TUniPanel;
    UniPanel5: TUniPanel;
    compCodccc: TUniEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel3: TUniLabel;
    UniPanel6: TUniPanel;
    compDESCRCCC: TUniEdit;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel4: TUniLabel;
    UniPanel7: TUniPanel;
    UniPanel8: TUniPanel;
    compcodban: TUniEdit;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel5: TUniLabel;
    UniPanel9: TUniPanel;
    compNOMEBANCO: TUniEdit;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniPanel10: TUniPanel;
    UniPanel11: TUniPanel;
    compdataBoa: TUniEdit;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel7: TUniLabel;
    UniPanel12: TUniPanel;
    UniContainerPanel7: TUniContainerPanel;
    UniLabel8: TUniLabel;
    comprede: TUniSFComboBox;
    UniPanel13: TUniPanel;
    UniContainerPanel8: TUniContainerPanel;
    UniLabel9: TUniLabel;
    compbandeira: TUniSFComboBox;
    UniPanel14: TUniPanel;
    compcnpjCredenciada: TUniEdit;
    UniContainerPanel11: TUniContainerPanel;
    UniLabel11: TUniLabel;
    UniPanel16: TUniPanel;
    btnListaCentroDeCusto: TUniSFButton;
    btnListaBancos: TUniSFButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameReady(Sender: TObject);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSTelaiconeAtivoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure edPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure compativoToggled(const Value: Boolean);
    procedure btnListaCentroDeCustoClick(Sender: TObject);
    procedure btnListaBancosClick(Sender: TObject);
  private
    alterando :boolean;
    id        :string;
    idBanco   :string;
    idCentroDeCusto :string;
    ativo     :string;
    procedure listar(pDado :string = '');
    procedure carregaDados;
    procedure retornar;
    procedure limpaCampos;
    procedure callBackCentroDeCusto1(Sender: TComponent; AResult: Integer);
    procedure callBackBancos(Sender: TComponent; AResult: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, uUtils, uConstantes, ufrmListaCentroDeCusto, ufrmListaBancos;

procedure TfraCadCartoes.btnCancelarClick(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  pgcTela.ActivePageIndex := 0;
end;

procedure TfraCadCartoes.retornar;
begin
  pgcTela.ActivePageIndex := 0;
  listar;
end;

procedure TfraCadCartoes.limpaCampos;
begin
  alterando := false;
  ativo := 'S';
  limpaCookiesEditRecursivo(self);
  PreencherCamposDoForm(Self, ativo, nil, nil, 'NOVO REGISTRO');
end;

procedure TfraCadCartoes.callBackCentroDeCusto1(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaCentroDeCusto.ModalResult = mrOk then
  begin
    idCentroDeCusto   := frmListaCentroDeCusto.idCentroDeCusto;
    compcodCcc.text   := idCentroDeCusto;
    compDESCRCCC.Text := frmListaCentroDeCusto.nomeCentroDeCusto;
    alertaM.info('Centro de custo selecionado: <b>' + frmListaCentroDeCusto.nomeCentroDeCusto + '</b>');
  end;
end;

procedure TfraCadCartoes.callBackBancos(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaBancos.ModalResult = mrOk then
  begin
    idBanco             := frmListaBancos.id;
    compcodban.text     := idBanco;
    compNOMEBANCO.Text  := frmListaBancos.nome;
    alertaM.info('Banco selecionado: <b>' + frmListaBancos.nome + '</b>');
  end;
end;

procedure TfraCadCartoes.btnListaBancosClick(Sender: TObject);
begin
  frmListaBancos.showModal(callBackBancos);
end;

procedure TfraCadCartoes.btnListaCentroDeCustoClick(Sender: TObject);
begin
  frmListaCentroDeCusto.showModal(callBackCentroDeCusto1);
end;

procedure TfraCadCartoes.btnNovoClick(Sender: TObject);
begin
  limpaCampos;
  pgcTela.ActivePageIndex := 1;
end;

procedure TfraCadCartoes.btnSalvarClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
begin
  try
    jsonBody := TJSONObject.Create;

    jsonBody.AddPair('empresa', '1');
    jsonBody.AddPair('codCar', compcodCar.Text);
    jsonBody.AddPair('nome', compnome.Text);
    jsonBody.AddPair('tipoCar', comptipoCar.Text);
    jsonBody.AddPair('codCcc', compCodccc.Text);
    jsonBody.AddPair('codCcd', '');//Necessário manipular aqui?
    jsonBody.AddPair('rede', comprede.Text);
    jsonBody.AddPair('codBan', compcodBan.Text);
    jsonBody.AddPair('dataBoa', compdataBoa.Text);
    jsonBody.AddPair('cnpjCredenciada', compcnpjCredenciada.text);
    jsonBody.AddPair('categoria', compcategoria.text);
    jsonBody.AddPair('bandeira', compbandeira.text);
    jsonBody.AddPair('nomeBanco', compnomeBanco.text);
    jsonBody.AddPair('ativo', ativo);

    if alterando then
    begin
      resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(putCartao)
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
                .Resource(postCartao)
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

procedure TfraCadCartoes.carregaDados;
var
  resp1         :IResponse;
  jsonResp      :TJSONObject;
begin
  alterando := true;
  id        := gridTela.Columns[0].Field.AsString;

  resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getCartao)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('id', id)
            .AddParam('codCar', '')
            .AddParam('nome', '')
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

procedure TfraCadCartoes.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Editar', 'editar', 'dc3545');
end;

procedure TfraCadCartoes.CDSTelaiconeAtivoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTela.FieldByName('ativo').AsString, Text, DisplayText);
end;

procedure TfraCadCartoes.compativoToggled(const Value: Boolean);
begin
  if value then
    ativo := 'S' else
    ativo := 'N';
end;

procedure TfraCadCartoes.edPesquisarKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    listar(edPesquisar.Text);
end;

procedure TfraCadCartoes.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    pgcTela.ActivePageIndex := 1;
    carregaDados;
  end;
end;

procedure TfraCadCartoes.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfraCadCartoes.listar(pDado :string = '');
var
  resp1       :IResponse;
  body        :string;
  jsonResp    :TJSONObject;
  jsonTemp    :string;
begin

  pgcTela.ActivePageIndex := 0;

  resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getCartao)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('id', '')
            .AddParam('codCar', '')
            .AddParam('nome', pDado)
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

procedure TfraCadCartoes.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
  ConfigurarAlignComboBoxes(self, 10);
  listar;
end;

procedure TfraCadCartoes.UniFrameReady(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  RG1.Start;
end;

end.
