unit ufraCadIcmsInterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniFSToggle, UniSFComboBox, uniPanel, uniEdit,
  UniSFLabel, uniBasicGrid, uniDBGrid, uniPageControl, uniScrollBox, uniTimer,
  URGLayoutUnigui, uniImage, uniButton, uniBitBtn, UniSFButton, UniSFBitBtn,
  uniLabel, uniGUIBaseClasses, Data.DB, Datasnap.DBClient, UniSFiGrowl,
  UniSFSweetAlert;

type
  TfraCadIcmsInterno = class(TUniFrame)
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
    compUF: TUniEdit;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniPanel3: TUniPanel;
    compIE: TUniEdit;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniPanel4: TUniPanel;
    UniPanel28: TUniPanel;
    compALIQ: TUniEdit;
    UniContainerPanel34: TUniContainerPanel;
    UniLabel28: TUniLabel;
    UniPanel5: TUniPanel;
    compALIQSP: TUniEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel3: TUniLabel;
    UniPanel7: TUniPanel;
    UniPanel10: TUniPanel;
    compCODRECICMSST: TUniEdit;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel5: TUniLabel;
    UniPanel11: TUniPanel;
    compPFCPUFDEST: TUniEdit;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniPanel13: TUniPanel;
    cpMenuRodape: TUniContainerPanel;
    btnSalvar: TUniSFBitBtn;
    btnCancelar: TUniSFBitBtn;
    compativo: TUniFSToggle;
    DSTela: TDataSource;
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
  private
    { Private declarations }
    alterando :boolean;
    id        :string;
    codReg    :string;
    ativo     :string;
    indFinal  :string;
    procedure carregaDados;
    procedure retornar;
    procedure listar(pDado :string = '');
    procedure limpaCampos;

  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uUtils, uConstantes, RESTRequest4D.Request, System.JSON, MainModule;

procedure TfraCadIcmsInterno.carregaDados;
var
  resp1         :IResponse;
  jsonResp      :TJSONObject;
begin
  alterando := true;
  id        := gridTela.Columns[0].Field.AsString;

  resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .resource(getIcmsInt)
                .AddParam('NOMEBANCO', uniMainModule.nomebanco)
                .AddParam('ID', id)
                .AddParam('UF', '')
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

procedure TfraCadIcmsInterno.retornar;
begin
  pgcTela.ActivePageIndex := 0;
  listar;
end;

procedure TfraCadIcmsInterno.listar(pDado :string = '');
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
                   .resource(getIcmsInt)
                   .AddParam('NOMEBANCO', uniMainModule.nomebanco);

  if pDado <> '' then
  begin
    if ehNumero then
    begin
      req.AddParam('ID', pDado);
//      req.AddParam('codCli', pDado);
    end else
      req.AddParam('UF', pDado);
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

procedure TfraCadIcmsInterno.limpaCampos;
begin
  alterando := false;
  limpaCookiesEditRecursivo(self);
  PreencherCamposDoForm(Self, ativo, nil, nil, 'NOVO REGISTRO');
end;

procedure TfraCadIcmsInterno.btnCancelarClick(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  DefinirTodasAbasNaPrimeiraPagina(self);
end;

procedure TfraCadIcmsInterno.btnNovoClick(Sender: TObject);
begin
  limpaCampos;
  pgcTela.ActivePageIndex := 1;
end;

procedure TfraCadIcmsInterno.btnSalvarClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
begin
  try
    jsonBody := TJSONObject.Create;

    jsonBody.AddPair('UF', compUF.Text);
    jsonBody.AddPair('ALIQ', compALIQ.Text);
    jsonBody.AddPair('IE', compIE.Text);
    jsonBody.AddPair('ALIQSP', compALIQSP.Text);

    jsonBody.AddPair('CODRECICMSST', compCODRECICMSST.Text);
    jsonBody.AddPair('PFCPUFDEST', compPFCPUFDEST.Text);

    jsonBody.AddPair('ATIVO', ativo);

    if alterando then
    begin
      resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(putIcmsInt)
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
                .Resource(postIcmsInt)
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

procedure TfraCadIcmsInterno.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Editar', 'editar', 'dc3545');
end;

procedure TfraCadIcmsInterno.CDSTelaiconeAtivoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTela.FieldByName('ativo').AsString, Text, DisplayText);
end;

procedure TfraCadIcmsInterno.compativoToggled(const Value: Boolean);
begin
  if value then
    ativo := 'S' else
    ativo := 'N';
end;

procedure TfraCadIcmsInterno.edPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    listar(edPesquisar.Text);
end;

procedure TfraCadIcmsInterno.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    pgcTela.ActivePageIndex := 1;
    carregaDados;
  end;
end;

procedure TfraCadIcmsInterno.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfraCadIcmsInterno.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
  ConfigurarAlignComboBoxes(self, 10);
  listar;
end;

procedure TfraCadIcmsInterno.UniFrameReady(Sender: TObject);
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

end.
