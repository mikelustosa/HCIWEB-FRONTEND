unit ufrmListaBancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniBasicGrid, uniDBGrid, Data.DB,
  Datasnap.DBClient, uniEdit, UniSFLabel, uniButton, uniBitBtn, UniSFButton,
  UniSFBitBtn, uniLabel, uniPanel, uniScrollBox, uniGUIBaseClasses, system.JSON,
  RESTRequest4D.request;

type
  TfrmListaBancos = class(TUniForm)
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
    CDSTela: TClientDataSet;
    CDSTelabotaoEditar: TAggregateField;
    CDSTelaiconeAtivo: TAggregateField;
    DSTela: TDataSource;
    gridTela: TUniDBGrid;
    procedure btnFecharClick(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniFormShow(Sender: TObject);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure gridTelaDblClick(Sender: TObject);
  private
    canClose  :boolean;
    procedure listaBancos(filtro: string = '');
  public
    id :string;
    nome :string;
  end;

function frmListaBancos: TfrmListaBancos;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uUtils, uConstantes;

function frmListaBancos: TfrmListaBancos;
begin
  Result := TfrmListaBancos(UniMainModule.GetFormInstance(TfrmListaBancos));
end;

procedure TfrmListaBancos.btnFecharClick(Sender: TObject);
begin
  canClose := false;
  close;
end;

procedure TfrmListaBancos.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Selecionar', 'editar', 'dc3545');
end;

procedure TfrmListaBancos.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    id   := CDSTela.FieldByName('ID').AsString;
    nome := CDSTela.FieldByName('NOME').AsString;
    canClose := true;
    frmListaBancos.close;
  end;
end;

procedure TfrmListaBancos.gridTelaDblClick(Sender: TObject);
begin
  id   := CDSTela.FieldByName('ID').AsString;
  nome := CDSTela.FieldByName('NOME').AsString;
  canClose := true;
  frmListaBancos.close;
end;

procedure TfrmListaBancos.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfrmListaBancos.listaBancos(filtro: string);
var
  resp1       :IResponse;
  body        :string;
  jsonResp    :TJSONObject;
begin

  resp1 := TRequest.New.BaseURL(baseurlCadastros)
          .resource(getBanco)
          .AddParam('nomeBanco', uniMainModule.nomebanco)
          .AddParam('id', '')
          .AddParam('codBan', '')
          .AddParam('nome', filtro)
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

procedure TfrmListaBancos.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if canClose then
    modalResult := mrOk;
end;

procedure TfrmListaBancos.UniFormShow(Sender: TObject);
begin
  frmListaBancos.Top := 5;
  frmListaBancos.Height := uniMainModule.screenHeigth - 10;
  frmListaBancos.Width  := uniMainModule.screenWidth  - 15;
  frmListaBancos.Left   := 7;
  listaBancos;
end;

end.
