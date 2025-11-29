unit ufraCadVendedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniTimer, URGLayoutUnigui, UniSFiGrowl, Data.DB,
  Datasnap.DBClient, uniGUIBaseClasses, UniSFSweetAlert, UniFSToggle, uniPanel,
  uniLabel, uniButton, uniBitBtn, UniSFButton, UniSFBitBtn, uniEdit, UniSFLabel,
  uniBasicGrid, uniDBGrid, uniPageControl, uniScrollBox, uniImage, uniCheckBox,
  uniRadioButton;

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
    compCODVEND: TUniEdit;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniPanel3: TUniPanel;
    compNOMEVEND: TUniEdit;
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
    UniPanel1: TUniPanel;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel2: TUniLabel;
    compGERENTEVENDA: TUniFSToggle;
    UniPanel34: TUniPanel;
    UniContainerPanel33: TUniContainerPanel;
    UniLabel26: TUniLabel;
    tipoVend: TUniRadioButton;
    tipoGer: TUniRadioButton;
    UniPanel4: TUniPanel;
    UniPanel28: TUniPanel;
    compCOMVEND: TUniEdit;
    UniContainerPanel34: TUniContainerPanel;
    UniLabel28: TUniLabel;
    UniPanel5: TUniPanel;
    compCOMISSAOGERENTE: TUniEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel3: TUniLabel;
    UniPanel6: TUniPanel;
    compNOMEMP: TUniEdit;
    UniContainerPanel3: TUniContainerPanel;
    UniPanel41: TUniPanel;
    compEMPRESA: TUniEdit;
    UniContainerPanel40: TUniContainerPanel;
    UniLabel33: TUniLabel;
    UniSFBitBtn2: TUniSFBitBtn;
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
    UniSFBitBtn3: TUniSFBitBtn;
    UniPanel12: TUniPanel;
    compNOMEGERENTERESPON: TUniEdit;
    UniContainerPanel7: TUniContainerPanel;
    UniPanel13: TUniPanel;
    UniPanel15: TUniPanel;
    UniContainerPanel8: TUniContainerPanel;
    UniLabel7: TUniLabel;
    compNESSECSF: TUniFSToggle;
    compSENHAFATURA: TUniEdit;
    UniPanel17: TUniPanel;
    UniContainerPanel11: TUniContainerPanel;
    UniLabel8: TUniLabel;
    compSENHAFVENDATU: TUniEdit;
    chkMostraSenha: TUniCheckBox;
    procedure UniFrameReady(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure edPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSTelaiconeAtivoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure UniSFBitBtn2Click(Sender: TObject);
    procedure UniSFBitBtn3Click(Sender: TObject);
    procedure chkMostraSenhaClick(Sender: TObject);
    procedure tipoVendClick(Sender: TObject);
    procedure tipoGerClick(Sender: TObject);
  private
    { Private declarations }
    alterando :boolean;
    id        :string;
//    codReg    :string;
    ativo     :string;
//    indFinal  :string;
    wTipoVend : string;

    procedure limpaCampos;
    procedure listar(pDado :string = '');
    procedure retornar;
    procedure carregaDados;
    procedure callBackEmpresas(Sender: TComponent;
      AResult: Integer);
    procedure callBackGerentes(Sender: TComponent;
      AResult: Integer);
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uConstantes,uUtils, RESTRequest4D.Response.Intf, System.JSON, RESTRequest4D.Request,
  MainModule, ufrmListaGlobal;


procedure TfraCadVendedores.callBackGerentes(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compGERENTERESPON.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    compNOMEGERENTERESPON.Text  := frmListaGlobal.CDSTela.FieldByName('nomeVend').AsString;
    alertaM.info('Gerente selecionado selecionada: <b>' + frmListaGlobal.CDSTela.FieldByName('nomeVend').AsString + '</b>');
  end;
end;

procedure TfraCadVendedores.callBackEmpresas(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compEMPRESA.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;// idClassificacao;
    compNOMEMP.Text  := frmListaGlobal.CDSTela.FieldByName('nomEmp').AsString;//frmListaClassificacoes.nome;
    alertaM.info('Empresa selecionada: <b>' + frmListaGlobal.CDSTela.FieldByName('nomEmp').AsString + '</b>');
  end;
end;

procedure TfraCadVendedores.chkMostraSenhaClick(Sender: TObject);
begin
  // Força de Venda
  if chkMostraSenha.Checked then
    compSENHAFVENDATU.PasswordChar := #0
  else
    compSENHAFVENDATU.PasswordChar := char('*');
  // **

end;

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

procedure TfraCadVendedores.UniSFBitBtn2Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'EMPRESAS';
  frmListaGlobal.lblDescricao.Caption := 'EMPRESAS';
  frmListaGlobal.showModal(callBackEmpresas);
end;

procedure TfraCadVendedores.UniSFBitBtn3Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'GERENTES';
  frmListaGlobal.lblDescricao.Caption := 'GERENTES';
  frmListaGlobal.showModal(callBackGerentes);
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

    jsonBody.AddPair('CODVEND', compCODVEND.TEXT);
    jsonBody.AddPair('NOMEVEND', compNOMEVEND.text);
    jsonBody.AddPair('COMVEND', compCOMVEND.text);
    jsonBody.AddPair('COMVENDMO', compCOMVENDMO.text);

    jsonBody.AddPair('DALT', '');
    jsonBody.AddPair('EMAIL', compEMAIL.text);

    if compGERENTEVENDA.Toggled then
      jsonBody.AddPair('GERENTEVENDA', 'T')
    else
      jsonBody.AddPair('GERENTEVENDA', 'F');

    jsonBody.AddPair('COMISSAOGERENTE', compCOMISSAOGERENTE.text);
    jsonBody.AddPair('GERENTERESPON', compGERENTERESPON.text);

    jsonBody.AddPair('TIPO', '');//compTIPO.text);
    jsonBody.AddPair('EMPRESA', compEMPRESA.text);
//    jsonBody.AddPair('FDV', '');//, compFDV);
//    jsonBody.AddPair('ULTDTHORA', '');//, compULTDTHORA.text);
    jsonBody.AddPair('SENHAFVENDATU', compSENHAFVENDATU.text);//, compSENHAFVENDATU.text);
    jsonBody.AddPair('SENHAFVENDANT', '');//, compSENHAFVENDANT.text);
//    jsonBody.AddPair('NPEDEMITIDO', '');//, compNPEDEMITIDO.text);
    jsonBody.AddPair('SENHAFATURA', compSENHAFATURA.text);//, compSENHAFATURA.text);

    if compNESSECSF.Toggled then
      jsonBody.AddPair('NESSECSF', '1')//sim
    else
      jsonBody.AddPair('NESSECSF', '0');//não

//    jsonBody.AddPair('DATAATUALIZACAO', '');//, compDATAATUALIZACAO.text);
//    jsonBody.AddPair('ULTIMASINCRONIZACAOSELLENTT', '');//, compULTIMASINCRONIZACAOSELLENTT.text);
//    jsonBody.AddPair('VENDEDORSELLENTT', '');//, compVENDEDORSELLENTT.text);

//    jsonBody.AddPair('IDSELLENT', '');//, compIDSELLENT.text);

//    jsonBody.AddPair('TIPOSELLENT', '');//, compTIPOSELLENT.text);
//    jsonBody.AddPair('VENDEDORSELLENTTATIVO', '');//, compVENDEDORSELLENTTATIVO.text);
//    jsonBody.AddPair('METAVENDEDORSELLENTT', '');//, compMETAVENDEDORSELLENTT.text);
//    jsonBody.AddPair('COMISSAOVENDEDORSELLENTT', '');//, compCOMISSAOVENDEDORSELLENTT.text);
    jsonBody.AddPair('ATIVO', ativo);

    if alterando then
    begin
      resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(putVendedor)
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
                .Resource(postVendedor)
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
                   .resource(getVendedor)
                   .AddParam('NOMEBANCO', uniMainModule.nomebanco);

  if pDado <> '' then
  begin
    if ehNumero then
    begin
      req.AddParam('ID', pDado);
      req.AddParam('CODVEND', pDado);
    end else
      req.AddParam('NOMEVEND', pDado);
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

procedure TfraCadVendedores.tipoGerClick(Sender: TObject);
begin
  wTipoVend := '1';
end;

procedure TfraCadVendedores.tipoVendClick(Sender: TObject);
begin
  wTipoVend := '0';
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
                .AddParam('NOMEBANCO', uniMainModule.nomebanco)
                .AddParam('ID', id)
                .AddParam('CODVEND', '')
                .AddParam('NOMEVEND', '')
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


procedure TfraCadVendedores.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Editar', 'editar', 'dc3545');
end;

procedure TfraCadVendedores.CDSTelaiconeAtivoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTela.FieldByName('ativo').AsString, Text, DisplayText);
end;

end.
