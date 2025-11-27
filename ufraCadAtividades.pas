unit ufraCadAtividades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniTimer, URGLayoutUnigui, UniSFiGrowl, Data.DB,
  Datasnap.DBClient, uniGUIBaseClasses, UniSFSweetAlert, uniPanel, uniLabel,
  UniFSToggle, uniButton, uniBitBtn, UniSFButton, UniSFBitBtn, uniEdit,
  UniSFLabel, uniBasicGrid, uniDBGrid, uniPageControl, uniScrollBox, uniImage, RESTRequest4D.request,
  system.JSON;

type
  TfraCadAtividades = class(TUniFrame)
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
    tabNovo: TUniTabSheet;
    UniContainerPanel12: TUniContainerPanel;
    compTitulo: TUniLabel;
    pn1: TUniPanel;
    sBoxFundoRegistro: TUniScrollBox;
    UniPanel2: TUniPanel;
    compcodAtv: TUniEdit;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniPanel3: TUniPanel;
    compdescrAt: TUniEdit;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel1: TUniLabel;
    cpMenuRodape: TUniContainerPanel;
    btnSalvar: TUniSFBitBtn;
    btnCancelar: TUniSFBitBtn;
    compativo: TUniFSToggle;
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSTelaiconeAtivoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure UniFrameCreate(Sender: TObject);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure UniFrameReady(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure compativoToggled(const Value: Boolean);
    procedure edPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure imgFundoResize(Sender: TUniControl; OldWidth, OldHeight: Integer);
  private
    alterando :boolean;
    id        :string;
    ativo     :string;
    procedure listar(pDado :string = '');
    procedure carregaDados;
    procedure retornar;
    procedure limpaCampos;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uUtils, MainModule, uConstantes, UniSFCore;


procedure TfraCadAtividades.btnCancelarClick(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  pgcTela.ActivePageIndex := 0;
end;

procedure TfraCadAtividades.limpaCampos;
begin
  alterando := false;
  ativo := 'S';
  limpaCookiesEditRecursivo(self);
  PreencherCamposDoForm(Self, ativo, nil, nil, 'NOVO REGISTRO');
end;

procedure TfraCadAtividades.btnNovoClick(Sender: TObject);
begin
  limpaCampos;
  pgcTela.ActivePageIndex := 1;
end;

procedure TfraCadAtividades.retornar;
begin
  pgcTela.ActivePageIndex := 0;
  listar;
end;

procedure TfraCadAtividades.btnSalvarClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
begin
  try
    jsonBody := TJSONObject.Create;

    jsonBody.AddPair('codAtv', compcodAtv.Text);
    jsonBody.AddPair('descrAt', compdescrAt.Text);
    jsonBody.AddPair('ativo', ativo);

    if alterando then
    begin
      resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(putAtividade)
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
                .Resource(postAtividade)
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

procedure TfraCadAtividades.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Editar', 'editar', 'dc3545');
end;

procedure TfraCadAtividades.CDSTelaiconeAtivoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTela.FieldByName('ativo').AsString, Text, DisplayText);
end;

procedure TfraCadAtividades.carregaDados;
begin
  alterando            := true;
  id                   := gridTela.Columns[0].Field.AsString;
  PreencherCamposDoForm(Self, ativo, gridTela, nil, 'ALTERA REGISTRO');
end;

procedure TfraCadAtividades.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    pgcTela.ActivePageIndex := 1;
    carregaDados;
  end;
end;

procedure TfraCadAtividades.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfraCadAtividades.imgFundoResize(Sender: TUniControl; OldWidth,
  OldHeight: Integer);
begin
  AjustarColunasGrid(gridTela, 2, 5, 1, 2, 4, 5);
end;

procedure TfraCadAtividades.listar(pDado :string = '');
var
  resp1       :IResponse;
  body        :string;
  jsonResp    :TJSONObject;
  jsonTemp    :string;
begin
  pgcTela.ActivePageIndex := 0;

  resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getAtividade)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('id', '')
            .AddParam('codAtiv', '')
            .AddParam('descriAt', pDado)
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

procedure TfraCadAtividades.compativoToggled(const Value: Boolean);
begin
  if value then
    ativo := 'S' else
    ativo := 'N';
end;

procedure TfraCadAtividades.edPesquisarKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    listar(edPesquisar.Text)
end;

procedure TfraCadAtividades.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
  ConfigurarAlignComboBoxes(self, 10);
  listar;
end;

procedure TfraCadAtividades.UniFrameReady(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  RG1.Start;
end;

end.
