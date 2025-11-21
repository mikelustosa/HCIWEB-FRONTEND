unit ufraCadClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniTimer, URGLayoutUnigui, UniSFiGrowl, Data.DB,
  Datasnap.DBClient, uniGUIBaseClasses, UniSFSweetAlert, uniCheckBox,
  Vcl.Imaging.pngimage, UniSFComboBox, uniPanel, uniLabel, UniFSToggle,
  uniButton, uniBitBtn, UniSFButton, UniSFBitBtn, uniEdit, UniSFLabel,
  uniBasicGrid, uniDBGrid, uniPageControl, uniScrollBox, uniImage, RESTRequest4D.request,
  system.JSON, uUtils, uniRadioButton, Vcl.ExtCtrls;

type
  TfraCadClientes = class(TUniFrame)
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
    cpMenuRodape: TUniContainerPanel;
    btnSalvar: TUniSFBitBtn;
    btnCancelar: TUniSFBitBtn;
    compATIVO: TUniFSToggle;
    UniContainerPanel12: TUniContainerPanel;
    compTitulo: TUniLabel;
    pgcTelaDtl: TUniPageControl;
    tab0: TUniTabSheet;
    pn1: TUniPanel;
    sBox1: TUniScrollBox;
    UniPanel13: TUniPanel;
    compclassif: TUniEdit;
    UniContainerPanel11: TUniContainerPanel;
    UniLabel13: TUniLabel;
    btnClassificacao: TUniSFBitBtn;
    UniPanel28: TUniPanel;
    compcodCli: TUniEdit;
    UniContainerPanel34: TUniContainerPanel;
    UniLabel28: TUniLabel;
    UniPanel29: TUniPanel;
    compnome: TUniEdit;
    UniContainerPanel35: TUniContainerPanel;
    UniLabel29: TUniLabel;
    UniPanel30: TUniPanel;
    compnomeF: TUniEdit;
    UniContainerPanel36: TUniContainerPanel;
    UniLabel30: TUniLabel;
    tab1: TUniTabSheet;
    pn2: TUniPanel;
    sBox2: TUniScrollBox;
    tab2: TUniTabSheet;
    pn3: TUniPanel;
    sBox3: TUniScrollBox;
    tab3: TUniTabSheet;
    pn4: TUniPanel;
    sBox4: TUniScrollBox;
    tab4: TUniTabSheet;
    pn5: TUniPanel;
    sBox5: TUniScrollBox;
    tab5: TUniTabSheet;
    pn6: TUniPanel;
    sBox6: TUniScrollBox;
    tab6: TUniTabSheet;
    pn7: TUniPanel;
    sBox7: TUniScrollBox;
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
    rg1: TRGLayoutUnigui;
    rg2: TRGLayoutUnigui;
    rg3: TRGLayoutUnigui;
    rg4: TRGLayoutUnigui;
    rg5: TRGLayoutUnigui;
    rg6: TRGLayoutUnigui;
    rg7: TRGLayoutUnigui;
    CDSDados: TClientDataSet;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    UniPanel1: TUniPanel;
    UniEdit1: TUniEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniPanel2: TUniPanel;
    compdAlt: TUniEdit;
    UniContainerPanel8: TUniContainerPanel;
    UniLabel3: TUniLabel;
    UniPanel3: TUniPanel;
    compbairro: TUniEdit;
    UniContainerPanel15: TUniContainerPanel;
    UniLabel12: TUniLabel;
    UniPanel5: TUniPanel;
    compcep: TUniEdit;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniPanel6: TUniPanel;
    compendereco: TUniEdit;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel4: TUniLabel;
    UniPanel12: TUniPanel;
    compcomplemento: TUniEdit;
    UniContainerPanel14: TUniContainerPanel;
    UniLabel11: TUniLabel;
    UniPanel14: TUniPanel;
    compnumero: TUniEdit;
    UniContainerPanel13: TUniContainerPanel;
    UniLabel14: TUniLabel;
    UniPanel15: TUniPanel;
    UniContainerPanel16: TUniContainerPanel;
    UniLabel15: TUniLabel;
    compestado: TUniSFComboBox;
    UniPanel16: TUniPanel;
    UniContainerPanel17: TUniContainerPanel;
    UniLabel16: TUniLabel;
    compcidade: TUniSFComboBox;
    UniPanel17: TUniPanel;
    compAREA: TUniEdit;
    UniContainerPanel18: TUniContainerPanel;
    UniLabel17: TUniLabel;
    UniPanel18: TUniPanel;
    comptelefone: TUniEdit;
    UniContainerPanel19: TUniContainerPanel;
    UniLabel18: TUniLabel;
    UniPanel19: TUniPanel;
    compcelular: TUniEdit;
    UniContainerPanel20: TUniContainerPanel;
    UniLabel19: TUniLabel;
    UniPanel20: TUniPanel;
    comppais: TUniEdit;
    UniContainerPanel21: TUniContainerPanel;
    UniLabel20: TUniLabel;
    UniPanel21: TUniPanel;
    compcodPais: TUniEdit;
    UniContainerPanel25: TUniContainerPanel;
    UniLabel21: TUniLabel;
    UniSFBitBtn9: TUniSFBitBtn;
    UniPanel4: TUniPanel;
    UniContainerPanel7: TUniContainerPanel;
    UniLabel1: TUniLabel;
    comppfj: TUniSFComboBox;
    UniPanel22: TUniPanel;
    compcgcCpf: TUniEdit;
    UniContainerPanel28: TUniContainerPanel;
    UniLabel9: TUniLabel;
    UniPanel23: TUniPanel;
    compindIeDest: TUniEdit;
    UniContainerPanel29: TUniContainerPanel;
    UniLabel22: TUniLabel;
    UniSFBitBtn10: TUniSFBitBtn;
    UniPanel24: TUniPanel;
    compie: TUniEdit;
    UniContainerPanel30: TUniContainerPanel;
    UniLabel23: TUniLabel;
    UniPanel25: TUniPanel;
    comptelefone2: TUniEdit;
    UniContainerPanel31: TUniContainerPanel;
    UniLabel24: TUniLabel;
    UniPanel26: TUniPanel;
    UniPanel7: TUniPanel;
    compfax: TUniEdit;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniPanel8: TUniPanel;
    UniPanel9: TUniPanel;
    compemailNfe: TUniEdit;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel5: TUniLabel;
    UniPanel10: TUniPanel;
    comphomePage: TUniEdit;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniPanel11: TUniPanel;
    UniPanel27: TUniPanel;
    compemailCom: TUniEdit;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel7: TUniLabel;
    UniPanel31: TUniPanel;
    compemailFin: TUniEdit;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel8: TUniLabel;
    UniPanel32: TUniPanel;
    UniPanel33: TUniPanel;
    UniContainerPanel32: TUniContainerPanel;
    UniLabel25: TUniLabel;
    UniPanel34: TUniPanel;
    UniContainerPanel33: TUniContainerPanel;
    UniLabel26: TUniLabel;
    UniPanel35: TUniPanel;
    compregime1: TUniRadioButton;
    compregime2: TUniRadioButton;
    compconsumidor1: TUniRadioButton;
    compconsumidor2: TUniRadioButton;
    UniPanel36: TUniPanel;
    UniEdit2: TUniEdit;
    UniContainerPanel37: TUniContainerPanel;
    UniLabel27: TUniLabel;
    UniPanel37: TUniPanel;
    UniEdit3: TUniEdit;
    UniContainerPanel38: TUniContainerPanel;
    UniLabel31: TUniLabel;
    UniPanel38: TUniPanel;
    UniEdit4: TUniEdit;
    UniContainerPanel39: TUniContainerPanel;
    UniLabel32: TUniLabel;
    UniPanel39: TUniPanel;
    UniPanel40: TUniPanel;
    UniPanel41: TUniPanel;
    UniEdit5: TUniEdit;
    UniContainerPanel40: TUniContainerPanel;
    UniLabel33: TUniLabel;
    UniSFBitBtn2: TUniSFBitBtn;
    UniPanel42: TUniPanel;
    UniEdit6: TUniEdit;
    UniContainerPanel41: TUniContainerPanel;
    UniPanel43: TUniPanel;
    UniPanel44: TUniPanel;
    UniEdit7: TUniEdit;
    UniContainerPanel42: TUniContainerPanel;
    UniLabel34: TUniLabel;
    UniSFBitBtn3: TUniSFBitBtn;
    UniPanel45: TUniPanel;
    UniEdit8: TUniEdit;
    UniContainerPanel43: TUniContainerPanel;
    UniPanel46: TUniPanel;
    UniPanel47: TUniPanel;
    UniEdit9: TUniEdit;
    UniContainerPanel44: TUniContainerPanel;
    UniLabel35: TUniLabel;
    UniSFBitBtn4: TUniSFBitBtn;
    UniPanel48: TUniPanel;
    UniEdit10: TUniEdit;
    UniContainerPanel45: TUniContainerPanel;
    UniPanel49: TUniPanel;
    UniPanel50: TUniPanel;
    UniEdit11: TUniEdit;
    UniContainerPanel46: TUniContainerPanel;
    UniLabel36: TUniLabel;
    UniPanel51: TUniPanel;
    UniEdit12: TUniEdit;
    UniContainerPanel47: TUniContainerPanel;
    UniContainerPanel48: TUniContainerPanel;
    UniLabel37: TUniLabel;
    UniPanel52: TUniPanel;
    UniPanel53: TUniPanel;
    UniEdit13: TUniEdit;
    UniContainerPanel49: TUniContainerPanel;
    UniLabel38: TUniLabel;
    UniSFBitBtn5: TUniSFBitBtn;
    UniPanel54: TUniPanel;
    UniEdit14: TUniEdit;
    UniContainerPanel50: TUniContainerPanel;
    UniLabel39: TUniLabel;
    UniPanel56: TUniPanel;
    UniPanel57: TUniPanel;
    UniEdit15: TUniEdit;
    UniContainerPanel51: TUniContainerPanel;
    UniLabel40: TUniLabel;
    UniSFBitBtn7: TUniSFBitBtn;
    UniPanel58: TUniPanel;
    UniEdit16: TUniEdit;
    UniContainerPanel52: TUniContainerPanel;
    UniPanel59: TUniPanel;
    UniPanel60: TUniPanel;
    UniEdit17: TUniEdit;
    UniContainerPanel53: TUniContainerPanel;
    UniLabel41: TUniLabel;
    UniSFBitBtn8: TUniSFBitBtn;
    UniPanel61: TUniPanel;
    UniEdit18: TUniEdit;
    UniContainerPanel54: TUniContainerPanel;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameReady(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSTelaiconeAtivoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure compcepExit(Sender: TObject);
    procedure compcepKeyPress(Sender: TObject; var Key: Char);
    procedure btnSalvarClick(Sender: TObject);
    procedure compregime1Click(Sender: TObject);
    procedure compregime2Click(Sender: TObject);
    procedure compconsumidor1Click(Sender: TObject);
    procedure compconsumidor2Click(Sender: TObject);
    procedure compestadoChange(Sender: TObject);
    procedure compcidadeChange(Sender: TObject);
    procedure compenderecoEnter(Sender: TObject);
    procedure compenderecoChange(Sender: TObject);
    procedure compATIVOToggled(const Value: Boolean);
  private
    alterando :boolean;
    id        :string;
    codReg    :string;
    ativo     :string;
    indFinal  :string;

    _endereco: TEndereco;
    procedure limpaCampos;
    procedure listar(pDado :string = '');
    procedure carregaDados;
    procedure preencheDadosCEP(resp: TEndereco);
    procedure PreencherComboMunicipios(const UF: string);
    procedure retornar;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uConstantes, MainModule;

procedure TfraCadClientes.limpaCampos;
begin
  alterando := false;
  limpaCookiesEditRecursivo(self);
  PreencherCamposDoForm(Self, ativo, nil, nil, 'NOVO REGISTRO');
end;

procedure TfraCadClientes.btnCancelarClick(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  DefinirTodasAbasNaPrimeiraPagina(self);
end;

procedure TfraCadClientes.listar(pDado :string = '');
var
  resp1     :IResponse;
  jsonResp  :TJSONObject;
  ehNumero  :Boolean;
  i         :Integer;
  req       :IRequest;
begin
  pgcTela.ActivePageIndex := 0;

//  resp1 := TRequest.New.BaseURL(baseurlCadastros)
//            .resource(getCliente)
//            .AddParam('nomeBanco', uniMainModule.nomebanco)
//            .AddParam('id', pDado)
//            .AddParam('codCli', pDado)
//            .AddParam('nome', pDado)
//            .timeOut(12000)
//            .Get;

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

procedure TfraCadClientes.btnNovoClick(Sender: TObject);
begin
  limpaCampos;
  pgcTela.ActivePageIndex := 1;
end;

procedure TfraCadClientes.btnSalvarClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
begin
  try
    jsonBody := TJSONObject.Create;

    jsonBody.AddPair('codCli', compcodCli.Text);
    jsonBody.AddPair('nome', compnome.Text);
    jsonBody.AddPair('nomeF', compnomeF.Text);
    jsonBody.AddPair('classif', '');

    jsonBody.AddPair('endereco', compendereco.Text);
    jsonBody.AddPair('numero', compnumero.Text);
    jsonBody.AddPair('complemento', compcomplemento.Text);
    jsonBody.AddPair('bairro', compbairro.Text);
    jsonBody.AddPair('cidade', compcidade.Text);
    jsonBody.AddPair('pais', compPais.Text);
    jsonBody.AddPair('codPais', compcodPais.Text);
    jsonBody.AddPair('cep', compcep.Text);
    jsonBody.AddPair('estado', compestado.Text);
    jsonBody.AddPair('contato', '');
    jsonBody.AddPair('telefone', comptelefone.Text);
    jsonBody.AddPair('telefone2', comptelefone2.Text);
    jsonBody.AddPair('fax', compfax.Text);
    jsonBody.AddPair('celular', compcelular.Text);
    jsonBody.AddPair('ie', compie.Text);
    jsonBody.AddPair('indIeDest', compindIeDest.Text);
    jsonBody.AddPair('codReg', codReg);

    jsonBody.AddPair('suframa', ''); //não é mais necessário

    jsonBody.AddPair('homePage', comphomePage.Text);
    jsonBody.AddPair('im', '');
    jsonBody.AddPair('dNasc', '');
    jsonBody.AddPair('ultComp', '');
    jsonBody.AddPair('dAlt', dateToStr(date));
    jsonBody.AddPair('limite', '');
    jsonBody.AddPair('codVend', '');
    jsonBody.AddPair('ativ', '');
    jsonBody.AddPair('cliDesde', '');
    jsonBody.AddPair('pervis', '');
    jsonBody.AddPair('temSub', '');
    jsonBody.AddPair('area', compArea.Text);
    jsonBody.AddPair('simplesNac', '');
    jsonBody.AddPair('contato1', '');
    jsonBody.AddPair('contato2', '');
    jsonBody.AddPair('contato3', '');
    jsonBody.AddPair('cargo1', '');
    jsonBody.AddPair('cargo2', '');
    jsonBody.AddPair('cargo3', '');
    jsonBody.AddPair('departamento1', '');
    jsonBody.AddPair('departamento2', '');
    jsonBody.AddPair('departamento3', '');
    jsonBody.AddPair('telefone11', '');
    jsonBody.AddPair('telefone22', '');
    jsonBody.AddPair('telefone33', '');
    jsonBody.AddPair('celular1', '');
    jsonBody.AddPair('celular2', '');
    jsonBody.AddPair('celular3', '');
    jsonBody.AddPair('email', '');
    jsonBody.AddPair('emailNfe', compemailNfe.Text);
    jsonBody.AddPair('emailCom', compemailCom.Text);

    jsonBody.AddPair('foto', '');
    jsonBody.AddPair('email1', '');
    jsonBody.AddPair('email2', '');
    jsonBody.AddPair('email3', '');
    jsonBody.AddPair('cgcCpf', compcgcCpf.Text);
    jsonBody.AddPair('cgcCpf1', '');
    jsonBody.AddPair('cgcCpf2', '');
    jsonBody.AddPair('cgcCpf3', '');
    jsonBody.AddPair('autXml1', '');
    jsonBody.AddPair('autXml2', '');
    jsonBody.AddPair('autXml3', '');
    jsonBody.AddPair('pfj', comppfj.Text);
    jsonBody.AddPair('pfj1', '');
    jsonBody.AddPair('pfj2', '');
    jsonBody.AddPair('pfj3', '');
    jsonBody.AddPair('indFinal', '');
    jsonBody.AddPair('emailFin', compemailFin.Text);
    jsonBody.AddPair('codEmpCadastro', '');
    jsonBody.AddPair('indicacao', '');

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

      if resp1.StatusCode = 200 then
        alerta.Info('Cadastro alterado com sucesso!') else
        alerta.Info(resp1.StatusCode.ToString + ' ' + resp1.Content)
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

        if resp1.StatusCode = 200 then
          alerta.Info('Cadastro incluido com sucesso!') else
          alerta.Info(resp1.StatusCode.ToString + ' ' + resp1.Content)
      end;

    retornar;

  finally
    jsonBody.Free;
  end;
end;

procedure TfraCadClientes.retornar;
begin
  pgcTela.ActivePageIndex := 0;
  listar;
end;

procedure TfraCadClientes.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Editar', 'editar', 'dc3545');
end;

procedure TfraCadClientes.CDSTelaiconeAtivoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTela.FieldByName('ativo').AsString, Text, DisplayText);
end;

procedure TfraCadClientes.compATIVOToggled(const Value: Boolean);
begin
  if value then
    ativo := 'S' else
    ativo := 'N';
end;

procedure TfraCadClientes.compcepExit(Sender: TObject);
begin
  try
    preencheDadosCEP(buscaCEP(compcep.text));
    compendereco.WebFocus;
  except
  end;
end;

procedure TfraCadClientes.compcepKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  try
    preencheDadosCEP(buscaCEP(compcep.text));
    compendereco.WebFocus;
  except
  end;
end;

procedure TfraCadClientes.compcidadeChange(Sender: TObject);
var
  IDSelecionado: Integer;
begin
  if compcidade.ItemIndex >= 0 then
  begin
    IDSelecionado := Integer(compcidade.Items.Objects[compcidade.ItemIndex]);
    compAREA.Text := IDSelecionado.ToString;
  end;
end;

procedure TfraCadClientes.preencheDadosCEP(resp: TEndereco);
begin
  _endereco := resp;
  compendereco.Text := _endereco.Logradouro;
  compbairro.Text   := _endereco.Bairro;
  compAREA.Text     := _endereco.Ibge;
  compestado.SetPositionFromValue(_endereco.UF);
  compcidade.SetPositionFromValue(_endereco.Localidade);
end;

procedure TfraCadClientes.carregaDados;
var
  resp1         :IResponse;
  jsonResp      :TJSONObject;
begin
  alterando := true;
  id        := gridTela.Columns[0].Field.AsString;

  resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .resource(getCliente)
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

procedure TfraCadClientes.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    pgcTela.ActivePageIndex := 1;
    carregaDados;
  end;
end;

procedure TfraCadClientes.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfraCadClientes.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
  ConfigurarAlignComboBoxes(self, 10);
  listar;
end;

procedure TfraCadClientes.UniFrameReady(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  //MarcarTodosCheckBox(self);
  rg1.Start;
  rg2.Start;
//  rg3.Start;
//  rg4.Start;
//  rg5.Start;
//  rg6.Start;
//  rg7.Start;
//  rg8.Start;
//  rg9.Start;
end;

procedure TfraCadClientes.compregime1Click(Sender: TObject);
begin
  codReg := 'S';
end;

procedure TfraCadClientes.compregime2Click(Sender: TObject);
begin
  codReg := 'N';
end;

procedure TfraCadClientes.compconsumidor1Click(Sender: TObject);
begin
  indFinal := '0';
end;

procedure TfraCadClientes.compconsumidor2Click(Sender: TObject);
begin
  indFinal := '1';
end;

procedure TfraCadClientes.compenderecoChange(Sender: TObject);
begin
  preencheDadosCEP(buscaCEP(compcep.text));
end;

procedure TfraCadClientes.compenderecoEnter(Sender: TObject);
begin
  try
    preencheDadosCEP(buscaCEP(compcep.text));
  except
  end;
end;

procedure TfraCadClientes.compestadoChange(Sender: TObject);
begin
  PreencherComboMunicipios(compestado.Text);
end;

procedure TfraCadClientes.PreencherComboMunicipios(const UF: string);
var
  Municipios: TArray<TMunicipio>;
  i: Integer;
begin
  compcidade.Items.Clear;
  compAREA.Clear;

  Municipios := buscaMunicipios(UF);

  for i := 0 to High(Municipios) do
  begin
    //compcidade.Items.Add(Municipios[i].NOMEMUNICIPIO);
    compcidade.Items.AddObject(
      Municipios[i].NOMEMUNICIPIO,                       // texto visível no ComboBox
      TObject(StrToIntDef(Municipios[i].ID, 0))          // ID armazenado internamente
    );
  end;

  compcidade.LoadData;
end;

end.
