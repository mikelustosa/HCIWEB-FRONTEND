unit ufraCadCfop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniCheckBox, uniRadioButton, UniFSToggle,
  uniPanel, uniEdit, UniSFLabel, uniBasicGrid, uniDBGrid, uniPageControl,
  uniScrollBox, uniTimer, URGLayoutUnigui, uniImage, uniButton, uniBitBtn,
  UniSFButton, UniSFBitBtn, uniLabel, uniGUIBaseClasses, Data.DB,
  Datasnap.DBClient, UniSFiGrowl, UniSFSweetAlert;

type
  TfraCadCfop = class(TUniFrame)
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
    compCODVEND: TUniEdit;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniPanel3: TUniPanel;
    compNOMEVEND: TUniEdit;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniPanel1: TUniPanel;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel2: TUniLabel;
    compGERENTEVENDA: TUniFSToggle;
    UniPanel4: TUniPanel;
    UniPanel28: TUniPanel;
    compCOMVEND: TUniEdit;
    UniContainerPanel34: TUniContainerPanel;
    UniLabel28: TUniLabel;
    UniPanel5: TUniPanel;
    compCOMISSAOGERENTE: TUniEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel3: TUniLabel;
    UniPanel41: TUniPanel;
    compEMPRESA: TUniEdit;
    UniContainerPanel40: TUniContainerPanel;
    UniLabel33: TUniLabel;
    UniPanel7: TUniPanel;
    UniPanel8: TUniPanel;
    compCOMVENDMO: TUniEdit;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel4: TUniLabel;
    UniPanel10: TUniPanel;
    compEMAIL: TUniEdit;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel5: TUniLabel;
    UniPanel11: TUniPanel;
    compGERENTERESPON: TUniEdit;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniPanel13: TUniPanel;
    UniPanel15: TUniPanel;
    UniContainerPanel8: TUniContainerPanel;
    UniLabel7: TUniLabel;
    compNESSECSF: TUniFSToggle;
    cpMenuRodape: TUniContainerPanel;
    btnSalvar: TUniSFBitBtn;
    btnCancelar: TUniSFBitBtn;
    compativo: TUniFSToggle;
    DSTela: TDataSource;
    UniPanel9: TUniPanel;
    UniEdit1: TUniEdit;
    UniContainerPanel13: TUniContainerPanel;
    UniLabel9: TUniLabel;
    UniPanel14: TUniPanel;
    UniEdit2: TUniEdit;
    UniContainerPanel14: TUniContainerPanel;
    UniLabel11: TUniLabel;
    UniPanel16: TUniPanel;
    UniContainerPanel15: TUniContainerPanel;
    UniLabel12: TUniLabel;
    UniFSToggle1: TUniFSToggle;
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
    ativo     :string;
    procedure limpaCampos;
    procedure listar(pDado :string = '');
    procedure retornar;
    procedure carregaDados;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uUtils, uConstantes, RESTRequest4D.Request, System.JSON, MainModule;

procedure TfraCadCfop.limpaCampos;
begin
  alterando := false;
  limpaCookiesEditRecursivo(self);
  PreencherCamposDoForm(Self, ativo, nil, nil, 'NOVO REGISTRO');
end;

procedure TfraCadCfop.listar(pDado :string = '');
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
                   .resource(getCfop)
                   .AddParam('NOMEBANCO', uniMainModule.nomebanco);

  if pDado <> '' then
  begin
    if ehNumero then
    begin
      req.AddParam('ID', pDado);
      req.AddParam('CODCFOP', pDado);
    end else
      req.AddParam('NATUREZA', pDado);
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

procedure TfraCadCfop.retornar;
begin
  pgcTela.ActivePageIndex := 0;
  listar;
end;

procedure TfraCadCfop.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
  ConfigurarAlignComboBoxes(self, 10);
  listar;
end;

procedure TfraCadCfop.UniFrameReady(Sender: TObject);
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

procedure TfraCadCfop.btnCancelarClick(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  DefinirTodasAbasNaPrimeiraPagina(self);
end;

procedure TfraCadCfop.btnNovoClick(Sender: TObject);
begin
  limpaCampos;
  pgcTela.ActivePageIndex := 1;
end;

procedure TfraCadCfop.btnSalvarClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
begin
  try
    jsonBody := TJSONObject.Create;

//    jsonBody.AddPair('codCli', compcodCli.Text);
//    jsonBody.AddPair('nome', compnome.Text);
//    jsonBody.AddPair('nomeF', compnomeF.Text);
//    jsonBody.AddPair('classif', '');
//
//    jsonBody.AddPair('endereco', compendereco.Text);
//    jsonBody.AddPair('numero', compnumero.Text);
//    jsonBody.AddPair('complemento', compcomplemento.Text);
//    jsonBody.AddPair('bairro', compbairro.Text);
//    jsonBody.AddPair('cidade', compcidade.Text);
//    jsonBody.AddPair('pais', compPais.Text);
//    jsonBody.AddPair('codPais', compcodPais.Text);
//    jsonBody.AddPair('cep', compcep.Text);
//    jsonBody.AddPair('estado', compestado.Text);
//    jsonBody.AddPair('contato', '');
//    jsonBody.AddPair('telefone', comptelefone.Text);
//    jsonBody.AddPair('telefone2', comptelefone2.Text);
//    jsonBody.AddPair('fax', compfax.Text);
//    jsonBody.AddPair('celular', compcelular.Text);
//    jsonBody.AddPair('ie', compie.Text);
//    jsonBody.AddPair('indIeDest', compindIeDest.Text);
//    jsonBody.AddPair('codReg', compCodReg.Text);
////    jsonBody.AddPair('codReg', codReg);
//
//    jsonBody.AddPair('suframa', ''); //não é mais necessário
//
//    jsonBody.AddPair('homePage', comphomePage.Text);
//    jsonBody.AddPair('im', '');
//    jsonBody.AddPair('dNasc', '');
//    jsonBody.AddPair('ultComp', '');
//    jsonBody.AddPair('dAlt', dateToStr(date));
//    jsonBody.AddPair('limite', '');
//    jsonBody.AddPair('codVend', compCodVend.text);
//    jsonBody.AddPair('ativ', compAtiv.text);
//    jsonBody.AddPair('cliDesde', '');
//    jsonBody.AddPair('pervis', '');
//    jsonBody.AddPair('temSub', '');
//    jsonBody.AddPair('area', compArea.Text);
//    jsonBody.AddPair('simplesNac', '');
//    jsonBody.AddPair('contato1', '');
//    jsonBody.AddPair('contato2', '');
//    jsonBody.AddPair('contato3', '');
//    jsonBody.AddPair('cargo1', '');
//    jsonBody.AddPair('cargo2', '');
//    jsonBody.AddPair('cargo3', '');
//    jsonBody.AddPair('departamento1', '');
//    jsonBody.AddPair('departamento2', '');
//    jsonBody.AddPair('departamento3', '');
//    jsonBody.AddPair('telefone11', '');
//    jsonBody.AddPair('telefone22', '');
//    jsonBody.AddPair('telefone33', '');
//    jsonBody.AddPair('celular1', '');
//    jsonBody.AddPair('celular2', '');
//    jsonBody.AddPair('celular3', '');
//    jsonBody.AddPair('email', '');
//    jsonBody.AddPair('emailNfe', compemailNfe.Text);
//    jsonBody.AddPair('emailCom', compemailCom.Text);
//
//    jsonBody.AddPair('foto', '');
//    jsonBody.AddPair('email1', '');
//    jsonBody.AddPair('email2', '');
//    jsonBody.AddPair('email3', '');
//    jsonBody.AddPair('cgcCpf', compcgcCpf.Text);
//    jsonBody.AddPair('cgcCpf1', '');
//    jsonBody.AddPair('cgcCpf2', '');
//    jsonBody.AddPair('cgcCpf3', '');
//    jsonBody.AddPair('autXml1', '');
//    jsonBody.AddPair('autXml2', '');
//    jsonBody.AddPair('autXml3', '');
//    jsonBody.AddPair('pfj', comppfj.Text);
//    jsonBody.AddPair('pfj1', '');
//    jsonBody.AddPair('pfj2', '');
//    jsonBody.AddPair('pfj3', '');
//    jsonBody.AddPair('indFinal', '');
//    jsonBody.AddPair('emailFin', compemailFin.Text);
//    jsonBody.AddPair('codEmpCadastro', '');
//    jsonBody.AddPair('indicacao', '');

    jsonBody.AddPair('ativo', ativo);

    if alterando then
    begin
      resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(putCliente)
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
                .Resource(postCliente)
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

procedure TfraCadCfop.compativoToggled(const Value: Boolean);
begin
  if value then
    ativo := 'S' else
    ativo := 'N';
end;

procedure TfraCadCfop.edPesquisarKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    listar(edPesquisar.Text);
end;

procedure TfraCadCfop.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    pgcTela.ActivePageIndex := 1;
    carregaDados;
  end;
end;

procedure TfraCadCfop.carregaDados;
var
  resp1         :IResponse;
  jsonResp      :TJSONObject;
begin
  alterando := true;
  id        := gridTela.Columns[0].Field.AsString;

  resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .resource(getCfop)
                .AddParam('NOMEBANCO', uniMainModule.nomebanco)
                .AddParam('ID', id)
                .AddParam('CODCFOP', '')
                .AddParam('NATUREZA', '')
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

procedure TfraCadCfop.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Editar', 'editar', 'dc3545');
end;

procedure TfraCadCfop.CDSTelaiconeAtivoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTela.FieldByName('ativo').AsString, Text, DisplayText);
end;

procedure TfraCadCfop.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

end.
