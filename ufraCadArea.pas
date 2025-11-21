unit ufraCadArea;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniTimer, URGLayoutUnigui, UniSFiGrowl, Data.DB,
  Datasnap.DBClient, uniGUIBaseClasses, UniSFSweetAlert, UniFSToggle, uniPanel,
  uniLabel, uniButton, uniBitBtn, UniSFButton, UniSFBitBtn, uniEdit, UniSFLabel,
  uniBasicGrid, uniDBGrid, uniPageControl, uniScrollBox, uniImage, system.json, RESTREQUEST4D.request,
  UniSFComboBox;

type
  TfraCadArea = class(TUniFrame)
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
    compArea: TUniEdit;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniPanel3: TUniPanel;
    compMunicipio: TUniEdit;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel1: TUniLabel;
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
    UniPanel4: TUniPanel;
    UniContainerPanel7: TUniContainerPanel;
    UniLabel9: TUniLabel;
    compUF: TUniSFComboBox;
    procedure compativoToggled(const Value: Boolean);
    procedure edPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure btnSalvarClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameReady(Sender: TObject);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSTelaiconeAtivoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure imgFundoResize(Sender: TUniControl; OldWidth, OldHeight: Integer);
  private
    alterando :boolean;
    id        :string;
    ativo     :string;
    procedure listar(pDado :string = '');
    procedure limpaCampos;
    procedure carregaDados;
    procedure retornar;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uUtils, uConstantes, MainModule;



{ TfraCadArea }

procedure TfraCadArea.btnCancelarClick(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  pgcTela.ActivePageIndex := 0;
end;

procedure TfraCadArea.btnNovoClick(Sender: TObject);
begin
  limpaCampos;
  pgcTela.ActivePageIndex := 1;
end;

procedure TfraCadArea.btnSalvarClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
begin
  try
    jsonBody := TJSONObject.Create;

    jsonBody.AddPair('area', compArea.Text);
    jsonBody.AddPair('municipio', compMunicipio.Text);
    jsonBody.AddPair('uf', compUF.text);
    jsonBody.AddPair('ativo', ativo);

    if alterando then
    begin
      resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(putArea)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddParam('id', id)
                .AddBody(jsonBody.ToString)
                .Timeout(12000)
                .Put;

      alerta.Info('Cadastro alterado com sucesso!');
    end else
      begin
        resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(postArea)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddParam('id', id)
                .AddBody(jsonBody.ToString)
                .Timeout(12000)
                .Post;

        alerta.Info('Cadastro incluido com sucesso!');
      end;

    retornar;

  finally
    jsonBody.Free;
  end;
end;

procedure TfraCadArea.carregaDados;
begin
  alterando            := true;
  id                   := gridTela.Columns[0].Field.AsString;
  PreencherCamposDoForm(Self, ativo, gridTela, nil, 'ALTERA REGISTRO');
end;

procedure TfraCadArea.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Editar', 'editar', 'dc3545');
end;

procedure TfraCadArea.CDSTelaiconeAtivoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTela.FieldByName('ativo').AsString, Text, DisplayText);
end;

procedure TfraCadArea.compativoToggled(const Value: Boolean);
begin
  if value then
    ativo := 'S' else
    ativo := 'N';
end;

procedure TfraCadArea.edPesquisarKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    listar(edPesquisar.Text)
end;

procedure TfraCadArea.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    pgcTela.ActivePageIndex := 1;
    carregaDados;
  end;
end;

procedure TfraCadArea.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfraCadArea.imgFundoResize(Sender: TUniControl; OldWidth,
  OldHeight: Integer);
begin
  AjustarColunasGrid(gridTela, 1, 6, 1, 2, 3, 5, 6);
end;

procedure TfraCadArea.limpaCampos;
begin
  alterando := false;
  ativo := 'S';
  limpaCookiesEditRecursivo(self);
  PreencherCamposDoForm(Self, ativo, nil, nil, 'NOVO REGISTRO');
end;

procedure TfraCadArea.listar(pDado :string = '');
var
  resp1       :IResponse;
  body        :string;
  jsonResp    :TJSONObject;
  jsonTemp    :string;
begin

  pgcTela.ActivePageIndex := 0;

  resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getArea)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('id', '')
            .AddParam('area', pDado)
            .AddParam('municipio', '')
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

procedure TfraCadArea.retornar;
begin
  pgcTela.ActivePageIndex := 0;
  listar;
end;

procedure TfraCadArea.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
  ConfigurarAlignComboBoxes(self, 10);
  listar;
end;

procedure TfraCadArea.UniFrameReady(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  RG1.Start;
end;

end.
