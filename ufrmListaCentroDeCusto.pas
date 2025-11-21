unit ufrmListaCentroDeCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, Datasnap.DBClient, uniBasicGrid,
  uniDBGrid, uniEdit, UniSFLabel, uniButton, uniBitBtn, UniSFButton,
  UniSFBitBtn, uniLabel, uniPanel, uniScrollBox, uniGUIBaseClasses, system.JSON,
  RESTRequest4D.request;

type
  TfrmListaCentroDeCusto = class(TUniForm)
    UniPanel1: TUniPanel;
    UniScrollBox1: TUniScrollBox;
    cpMenuTopo: TUniContainerPanel;
    lblDescricao: TUniLabel;
    btnFechar: TUniSFBitBtn;
    UniContainerPanel27: TUniContainerPanel;
    cpIdentificarPaciente: TUniContainerPanel;
    UniContainerPanel22: TUniContainerPanel;
    lblFiltro: TUniSFLabel;
    UniContainerPanel23: TUniContainerPanel;
    UniSFLabel2: TUniSFLabel;
    edPesquisar: TUniEdit;
    gridTela: TUniDBGrid;
    CDSTela: TClientDataSet;
    CDSTelabotaoEditar: TAggregateField;
    CDSTelaiconeAtivo: TAggregateField;
    DSTela: TDataSource;
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniFormShow(Sender: TObject);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure gridTelaDblClick(Sender: TObject);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure btnFecharClick(Sender: TObject);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure edPesquisarKeyPress(Sender: TObject; var Key: Char);
  private
    canClose  :boolean;
    procedure listaCentroDeCusto(filtro: string = '');
  public
    idCentroDeCusto :string;
    nomeCentroDeCusto :string;
  end;

function frmListaCentroDeCusto: TfrmListaCentroDeCusto;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uConstantes, uUtils;

function frmListaCentroDeCusto: TfrmListaCentroDeCusto;
begin
  Result := TfrmListaCentroDeCusto(UniMainModule.GetFormInstance(TfrmListaCentroDeCusto));
end;

procedure TfrmListaCentroDeCusto.btnFecharClick(Sender: TObject);
begin
  canClose := false;
  close;
end;

procedure TfrmListaCentroDeCusto.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Selecionar', 'editar', 'dc3545');
end;

procedure TfrmListaCentroDeCusto.edPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    listaCentroDeCusto(edPesquisar.Text);
end;

procedure TfrmListaCentroDeCusto.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    idCentroDeCusto   := CDSTela.FieldByName('id').AsString;
    nomeCentroDeCusto := CDSTela.FieldByName('descr').AsString;
    canClose := true;
    frmListaCentroDeCusto.close;
  end;
end;

procedure TfrmListaCentroDeCusto.gridTelaDblClick(Sender: TObject);
begin
  idCentroDeCusto   := CDSTela.FieldByName('id').AsString;
  nomeCentroDeCusto := CDSTela.FieldByName('descr').AsString;
  canClose := true;
  frmListaCentroDeCusto.close;
end;

procedure TfrmListaCentroDeCusto.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfrmListaCentroDeCusto.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if canClose then
    modalResult := mrOk;
end;

procedure TfrmListaCentroDeCusto.listaCentroDeCusto(filtro: string = '');
var
  resp1       :IResponse;
  body        :string;
  jsonResp    :TJSONObject;
begin

  resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getCentroCusto)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('id', '')
            .AddParam('codCc', '')
            .AddParam('descr', filtro)
            .timeOut(12000)
            .Get;

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

procedure TfrmListaCentroDeCusto.UniFormShow(Sender: TObject);
begin
  frmListaCentroDeCusto.Top := 5;
  frmListaCentroDeCusto.Height := uniMainModule.screenHeigth - 10;
  frmListaCentroDeCusto.Width  := uniMainModule.screenWidth  - 15;
  frmListaCentroDeCusto.Left   := 7;
  listaCentroDeCusto;
end;

end.
