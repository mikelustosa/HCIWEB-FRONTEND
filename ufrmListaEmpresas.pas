unit ufrmListaEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniBasicGrid, uniDBGrid, uniEdit, UniSFLabel,
  uniButton, uniBitBtn, UniSFButton, UniSFBitBtn, uniLabel, uniGUIBaseClasses,
  uniPanel, uniTimer, URGLayoutUnigui, uniScrollBox, system.JSON, Data.DB,
  Datasnap.DBClient, RESTRequest4D.request;

type
  TfrmListaEmpresas = class(TUniForm)
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
    procedure btnFecharClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridTelaDblClick(Sender: TObject);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
  private
    canClose  :boolean;
  public
    idEmpresa :string;
  end;

function frmListaEmpresas: TfrmListaEmpresas;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Main, uUtils, uConstantes;

function frmListaEmpresas: TfrmListaEmpresas;
begin
  Result := TfrmListaEmpresas(UniMainModule.GetFormInstance(TfrmListaEmpresas));
end;

procedure TfrmListaEmpresas.btnFecharClick(Sender: TObject);
begin
  canClose := false;
  close;
end;

procedure TfrmListaEmpresas.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Selecionar', 'editar', 'dc3545');
end;

procedure TfrmListaEmpresas.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    idEmpresa := CDSTela.FieldByName('id').AsString;
    canClose := true;
    frmListaEmpresas.close;
  end;
end;

procedure TfrmListaEmpresas.gridTelaDblClick(Sender: TObject);
begin
  idEmpresa := CDSTela.FieldByName('id').AsString;
  canClose := true;
  frmListaEmpresas.close;
end;

procedure TfrmListaEmpresas.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfrmListaEmpresas.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if canClose then
    modalResult := mrOk;
end;

procedure TfrmListaEmpresas.UniFormShow(Sender: TObject);
var
  resp1       :IResponse;
  body        :string;
  jsonResp    :TJSONObject;
begin
  frmListaEmpresas.Top := 5;
  frmListaEmpresas.Height := uniMainModule.screenHeigth - 10;
  frmListaEmpresas.Width  := uniMainModule.screenWidth  - 15;
  frmListaEmpresas.Left   := 7;

  resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getEmpresa)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('empresa', '')
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

end.
