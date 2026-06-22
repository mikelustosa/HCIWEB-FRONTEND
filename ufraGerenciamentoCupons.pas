unit ufraGerenciamentoCupons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniScrollBox, uniLabel,
  uniBasicGrid, uniDBGrid, uniButton, uniBitBtn, UniSFButton, UniSFBitBtn,
  uniPanel, uniEdit, uniDateTimePicker, UniSFLabel, UniSFiGrowl,
  UniSFSweetAlert, Data.DB, Datasnap.DBClient, UniSFComboBox, System.StrUtils;

type
  TfraGerenciamentoCupons = class(TUniFrame)
    UniScrollBox1: TUniScrollBox;
    gridTela: TUniDBGrid;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniDBGrid1: TUniDBGrid;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniDBGrid2: TUniDBGrid;
    cpPesquisa: TUniContainerPanel;
    UniContainerPanel21: TUniContainerPanel;
    UniSFLabel5: TUniSFLabel;
    UniContainerPanel25: TUniContainerPanel;
    UniSFLabel6: TUniSFLabel;
    compDT_DATA: TUniDateTimePicker;
    UniContainerPanel31: TUniContainerPanel;
    UniSFLabel11: TUniSFLabel;
    UniContainerPanel32: TUniContainerPanel;
    UniSFLabel12: TUniSFLabel;
    compNCFE: TUniEdit;
    UniContainerPanel17: TUniContainerPanel;
    UniSFLabel1: TUniSFLabel;
    UniContainerPanel18: TUniContainerPanel;
    UniSFLabel2: TUniSFLabel;
    compINT_CAIXA: TUniEdit;
    UniContainerPanel22: TUniContainerPanel;
    UniSFLabel3: TUniSFLabel;
    UniContainerPanel23: TUniContainerPanel;
    UniSFLabel4: TUniSFLabel;
    compINCR: TUniEdit;
    DSTelaCupom: TDataSource;
    CDSTelaCupom: TClientDataSet;
    CDSTelaCupombotaoEditar: TAggregateField;
    CDSTelaCupomiconeAtivo: TAggregateField;
    alerta: TUniSFSweetAlert;
    alertaM: TUniSFiGrowl;
    UniContainerPanel3: TUniContainerPanel;
    UniContainerPanel4: TUniContainerPanel;
    UniSFLabel7: TUniSFLabel;
    UniContainerPanel5: TUniContainerPanel;
    UniSFLabel8: TUniSFLabel;
    UniContainerPanel6: TUniContainerPanel;
    UniSFLabel9: TUniSFLabel;
    UniContainerPanel7: TUniContainerPanel;
    UniSFLabel10: TUniSFLabel;
    compCHNFCE: TUniEdit;
    UniContainerPanel10: TUniContainerPanel;
    UniSFLabel15: TUniSFLabel;
    UniContainerPanel11: TUniContainerPanel;
    UniSFLabel16: TUniSFLabel;
    compCPF: TUniEdit;
    UniPanel2: TUniPanel;
    UniSFBitBtn2: TUniSFBitBtn;
    UniPanel19: TUniPanel;
    btnPesquisar: TUniSFBitBtn;
    compSTATUS: TUniSFComboBox;
    DSTelaCupomP: TDataSource;
    CDSTelaCupomP: TClientDataSet;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    DSTelaContas: TDataSource;
    CDSTelaContas: TClientDataSet;
    AggregateField3: TAggregateField;
    AggregateField4: TAggregateField;
    CDSTelaCupomgerouEstoque: TAggregateField;
    procedure CDSTelaCupombotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure UniFrameReady(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure UniDBGrid1DrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure AggregateField1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSTelaCupometoqueGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSTelaCupomgerouEstoqueGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure UniDBGrid2DrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure CDSTelaCupomiconeAtivoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
    procedure hGetMovCupom;

  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uConstantes, uUtils, RESTRequest4D.Response.Intf, System.JSON,
  RESTRequest4D.Request, MainModule;


procedure TfraGerenciamentoCupons.hGetMovCupom;
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
    jsonBody.AddPair('dt_Cupom',datetostr(compDT_DATA.DateTime));
    jsonBody.AddPair('incr',compINCR.Text);
    jsonBody.AddPair('ncfe',compNCFE.Text);
    jsonBody.AddPair('int_Caixa',compINT_CAIXA.Text);
    jsonBody.AddPair('status',compSTATUS.Text);
    jsonBody.AddPair('cpf',compCPF.Text);
    jsonBody.AddPair('chNfce',compCHNFCE.Text);

    try
      resp1 := TRequest.New.BaseURL(baseurlCadastros)
             .resource(getMovCupom)
             .AddParam('nomeBanco', uniMainModule.nomebanco)
             .AddBody(jsonBody)
             .timeOut(12000)
             .Get;

      jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
      if resp1.StatusCode = 200 then
      begin
        JsonToDataset(CDSTelaCupom, jsonResp.GetValue('Result').ToString);
      end
      else
      begin
        CDSTelaCupom.EmptyDataSet;
        alertam.Warning(jsonResp.GetValue('Result').Value);
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

procedure TfraGerenciamentoCupons.AggregateField1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Detalhe', 'editar', 'dc3545');
end;

procedure TfraGerenciamentoCupons.btnPesquisarClick(Sender: TObject);
begin
  hGetMovCupom;
end;

procedure TfraGerenciamentoCupons.CDSTelaCupombotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Detalhe', 'editar', 'dc3545');
end;

procedure TfraGerenciamentoCupons.CDSTelaCupometoqueGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTelaCupom.FieldByName('estoque').AsString, Text, DisplayText);
end;

procedure TfraGerenciamentoCupons.CDSTelaCupomgerouEstoqueGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin

//  if DisplayText then
//    text := colocaBotaoNoGrid('Detalhe', 'editar', 'dc3545');
//  if DisplayText then
//    text := '<span style="cursos:pointer"> <button type="button" class="btn btn-outline-dark btn-sm btn-block"><i class="fa fa-solid fa-bar-chart"></i>&nbspLiberado</button></span>';
//  if CDSTelaCupom.FieldByName('gerouEstoque').AsString = '1' then
//  begin
//    if DisplayText then
//      text := '<span style="cursos:pointer"> <button type="button" class="btn btn-outline-dark btn-sm btn-block"><i class="fa fa-solid fa-bar-chart"></i>&nbspLiberado</button></span>';
//  end;

//  ExibeIconeAtivo(CDSTelaCupom.FieldByName('gerouEstoque').AsString, Text, DisplayText);
end;

procedure TfraGerenciamentoCupons.CDSTelaCupomiconeAtivoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
//  if CDSTelaCupom.FieldByName('gerouEstoque').AsString = '1' then
//  begin
//    if DisplayText then
//      text := '<span style="cursos:pointer"> <button type="button" class="btn btn-outline-dark btn-sm btn-block"><i class="fa fa-solid fa-bar-chart"></i>&nbspLiberado</button></span>';
//  end;
  ExibeIconeAtivo(CDSTelaCupom.FieldByName('iconeAtivo').AsString, Text, DisplayText);
//if pStatusCode = 200 then
//  begin
//    case AnsiIndexStr(CDSTelaCupom.FieldByName('gerouEstoque').asstring, ['', '0', '1', '2']) of
//      0:  if DisplayText then text := '<span style="cursos:pointer"> <button type="button" class="btn btn-outline-dark btn-sm btn-block"><i class="fa fa-solid fa-bar-chart"></i>&nbspAguardando</button></span>';
//      1:  if DisplayText then text := '<span style="cursos:pointer"> <button type="button" class="btn btn-outline-dark btn-sm btn-block"><i class="fa fa-solid fa-bar-chart"></i>&nbspLiberado</button></span>';
//      2:  if DisplayText then text := '<span style="cursos:pointer"> <button type="button" class="btn btn-outline-dark btn-sm btn-block"><i class="fa fa-solid fa-bar-chart"></i>&nbspPendência</button></span>';
//      3:  if DisplayText then text := '<span style="cursos:pointer"> <button type="button" class="btn btn-outline-dark btn-sm btn-block"><i class="fa fa-solid fa-bar-chart"></i>&nbspEm análise</button></span>';
//    end;
//  end;
end;

procedure TfraGerenciamentoCupons.gridTelaCellClick(Column: TUniDBGridColumn);
var
  resp1     :IResponse;
  jBody : TJSONObject;
  jsonResp : TJSONObject;
begin
  try
    if CDSTelaCupomP.Active then
      CDSTelaCupomP.EmptyDataSet;

    if CDSTelaContas.Active then
      CDSTelaContas.EmptyDataSet;

    jBody := nil;
    jsonResp := nil;
    //editar
//    if column.Field = CDSTelaCupombotaoEditar then
//    begin
      jBody := TJSONObject.Create;
      jBody.AddPair('id_Cupom', CDSTelaCupom.FieldByName('incr').AsString);
      jBody.AddPair('empresa', vvcodemp);

      resp1 := TRequest.New.BaseURL(baseurlCadastros)
             .resource(getMovCupomP)
             .AddParam('nomeBanco', uniMainModule.nomebanco)
             .AddBody(jBody)
             .timeOut(12000)
             .Get;
//      sleep(4000);
      if resp1.StatusCode = 200 then
      begin
        jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
        if jsonResp.get('Produtos') <> nil then
          JsonToDataset(CDSTelaCupomP,jsonResp.getValue('Produtos').toJson);
        if jsonResp.get('Contas') <> nil then
          JsonToDataset(CDSTelaContas,jsonResp.getValue('Contas').toJson);
//        alertaM.Success('Sangria excluída com sucesso.');
//        hGetSangria;
      end
      else
      begin
        alertam.Error(resp1.Content);
      end;
//    end
  finally
//    freeAndNil(jBody);
//    freeAndNil(jsonResp);
  end;
end;

procedure TfraGerenciamentoCupons.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfraGerenciamentoCupons.UniDBGrid1DrawColumnCell(Sender: TObject;
  ACol, ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfraGerenciamentoCupons.UniDBGrid2DrawColumnCell(Sender: TObject;
  ACol, ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfraGerenciamentoCupons.UniFrameReady(Sender: TObject);
begin
  hGetMovCupom;
end;

end.
