unit ufraCadVendedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniTimer, URGLayoutUnigui, UniSFiGrowl, Data.DB,
  Datasnap.DBClient, uniGUIBaseClasses, UniSFSweetAlert, UniFSToggle, uniPanel,
  uniLabel, uniButton, uniBitBtn, UniSFButton, UniSFBitBtn, uniEdit, UniSFLabel,
  uniBasicGrid, uniDBGrid, uniPageControl, uniScrollBox, uniImage;

type
  TfraCadVendedores = class(TUniFrame)
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
  private
    { Private declarations }
    alterando :boolean;
    id        :string;
//    codReg    :string;
    ativo     :string;
//    indFinal  :string;
    procedure limpaCampos;
    procedure listar(pDado :string = '');
    procedure retornar;
    procedure carregaDados;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uConstantes,uUtils, RESTRequest4D.Response.Intf, System.JSON, RESTRequest4D.Request,
  MainModule;



procedure TfraCadVendedores.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
  ConfigurarAlignComboBoxes(self, 10);
  listar;
end;

procedure TfraCadVendedores.UniFrameReady(Sender: TObject);
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

procedure TfraCadVendedores.btnCancelarClick(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  DefinirTodasAbasNaPrimeiraPagina(self);
end;

procedure TfraCadVendedores.btnNovoClick(Sender: TObject);
begin
  limpaCampos;
  pgcTela.ActivePageIndex := 1;
end;

procedure TfraCadVendedores.btnSalvarClick(Sender: TObject);
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
//
//    jsonBody.AddPair('suframa', '');
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

procedure TfraCadVendedores.compativoToggled(const Value: Boolean);
begin
  if value then
    ativo := 'S' else
    ativo := 'N';
end;

procedure TfraCadVendedores.edPesquisarKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    listar(edPesquisar.Text);
end;

procedure TfraCadVendedores.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    pgcTela.ActivePageIndex := 1;
    carregaDados;
  end;
end;

procedure TfraCadVendedores.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfraCadVendedores.limpaCampos;
begin
  alterando := false;
  limpaCookiesEditRecursivo(self);
  PreencherCamposDoForm(Self, ativo, nil, nil, 'NOVO REGISTRO');
end;

procedure TfraCadVendedores.listar(pDado :string = '');
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
                   .resource(getCliente)
                   .AddParam('nomeBanco', uniMainModule.nomebanco);

  if pDado <> '' then
  begin
    if ehNumero then
    begin
      req.AddParam('id', pDado);
      req.AddParam('codCli', pDado);
    end else
      req.AddParam('nome', pDado);
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

procedure TfraCadVendedores.retornar;
begin
  pgcTela.ActivePageIndex := 0;
  listar;
end;

procedure TfraCadVendedores.carregaDados;
var
  resp1         :IResponse;
  jsonResp      :TJSONObject;
begin
  alterando := true;
  id        := gridTela.Columns[0].Field.AsString;

  resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .resource(getVendedor)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddParam('id', id)
                .AddParam('codCli', '')
                .AddParam('nome', '')
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


end.
