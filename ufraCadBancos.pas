unit ufraCadBancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniTimer, URGLayoutUnigui, UniSFiGrowl, Data.DB,
  Datasnap.DBClient, uniGUIBaseClasses, UniSFSweetAlert, UniFSToggle, uniPanel,
  uniLabel, uniButton, uniBitBtn, UniSFButton, UniSFBitBtn, uniEdit, UniSFLabel,
  uniBasicGrid, uniDBGrid, uniPageControl, uniScrollBox, uniImage, system.json, RESTREQUEST4D.request,
  UniSFComboBox;

type
  TfraCadBancos = class(TUniFrame)
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
    compcodBan: TUniEdit;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniPanel3: TUniPanel;
    compnome: TUniEdit;
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
    UniPanel1: TUniPanel;
    compconta: TUniEdit;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniPanel4: TUniPanel;
    compagencia: TUniEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel3: TUniLabel;
    UniPanel5: TUniPanel;
    compdigitoAgencia: TUniEdit;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel4: TUniLabel;
    UniPanel6: TUniPanel;
    compcontaBan: TUniEdit;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel5: TUniLabel;
    UniPanel7: TUniPanel;
    compdigitoContaBan: TUniEdit;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniPanel8: TUniPanel;
    compnossonumero: TUniEdit;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel7: TUniLabel;
    UniPanel18: TUniPanel;
    UniContainerPanel19: TUniContainerPanel;
    UniLabel18: TUniLabel;
    compbancoremessa: TUniSFComboBox;
    UniPanel16: TUniPanel;
    comptelefone: TUniEdit;
    UniContainerPanel17: TUniContainerPanel;
    UniLabel16: TUniLabel;
    UniPanel9: TUniPanel;
    compcontato: TUniEdit;
    UniContainerPanel7: TUniContainerPanel;
    UniLabel8: TUniLabel;
    UniPanel10: TUniPanel;
    compempresa: TUniEdit;
    UniContainerPanel8: TUniContainerPanel;
    UniLabel9: TUniLabel;
    UniPanel13: TUniPanel;
    compsaldo: TUniEdit;
    UniContainerPanel14: TUniContainerPanel;
    UniLabel13: TUniLabel;
    UniPanel14: TUniPanel;
    compsaldoC: TUniEdit;
    UniContainerPanel15: TUniContainerPanel;
    UniLabel14: TUniLabel;
    UniPanel15: TUniPanel;
    UniContainerPanel16: TUniContainerPanel;
    UniLabel15: TUniLabel;
    compedtremessa: TUniSFComboBox;
    UniPanel11: TUniPanel;
    compcarteira: TUniEdit;
    UniContainerPanel11: TUniContainerPanel;
    UniLabel11: TUniLabel;
    UniPanel12: TUniPanel;
    UniContainerPanel13: TUniContainerPanel;
    UniLabel12: TUniLabel;
    compcnab: TUniSFComboBox;
    UniPanel17: TUniPanel;
    UniContainerPanel18: TUniContainerPanel;
    UniLabel17: TUniLabel;
    compemitebol: TUniSFComboBox;
    CDSDados: TClientDataSet;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameReady(Sender: TObject);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSTelaiconeAtivoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure edPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure compativoToggled(const Value: Boolean);
  private
    alterando :boolean;
    id        :string;
    ativo     :string;
    procedure carregaDados;
    procedure listar(pDado :string = '');
    procedure limpaCampos;
    procedure retornar;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, uConstantes, uUtils;

procedure TfraCadBancos.limpaCampos;
begin
  alterando := false;
  ativo := 'S';
  limpaCookiesEditRecursivo(self);
  PreencherCamposDoForm(Self, ativo, nil, nil, 'NOVO REGISTRO');
end;

procedure TfraCadBancos.btnCancelarClick(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  pgcTela.ActivePageIndex := 0;
end;

procedure TfraCadBancos.btnNovoClick(Sender: TObject);
begin
  limpaCampos;
  pgcTela.ActivePageIndex := 1;
end;

procedure TfraCadBancos.retornar;
begin
  pgcTela.ActivePageIndex := 0;
  listar;
end;

procedure TfraCadBancos.btnSalvarClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
begin
  try
    jsonBody := TJSONObject.Create;

    jsonBody.AddPair('empresa', compempresa.Text);
    jsonBody.AddPair('codBan', compcodBan.Text);
    jsonBody.AddPair('conta', compconta.Text);
    jsonBody.AddPair('nome', compnome.Text);
    jsonBody.AddPair('telefone', comptelefone.Text);
    jsonBody.AddPair('contato', compcontato.Text);
    jsonBody.AddPair('agencia', compagencia.Text);
    jsonBody.AddPair('digitoAgencia', compdigitoAgencia.Text);
    jsonBody.AddPair('contaBan', compcontaBan.Text);
    jsonBody.AddPair('digitoContaBan', compdigitoContaBan.Text);
    jsonBody.AddPair('nomeMae', '');
    jsonBody.AddPair('saldo', compsaldo.Text);
    jsonBody.AddPair('saldoC', compsaldoC.Text);
    jsonBody.AddPair('contacontabil', '');
    jsonBody.AddPair('contacontabild', '');
    jsonBody.AddPair('geraremessa', 'S');
    jsonBody.AddPair('bancoremessa', compbancoremessa.Text);
    jsonBody.AddPair('nossonumero', compnossonumero.Text);
    jsonBody.AddPair('carteira', compcarteira.Text);
    jsonBody.AddPair('cnab', compcnab.Text);
    jsonBody.AddPair('emitebol', compemitebol.Text);
    jsonBody.AddPair('edtremessa', compedtremessa.Text);
    //jsonBody.AddPair('strconf', '');//Necessário Manipular aqui?
    jsonBody.AddPair('ativo', ativo);

    if alterando then
    begin
      resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(putBanco)
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
                .Resource(postBanco)
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

procedure TfraCadBancos.carregaDados;
var
  resp1         :IResponse;
  jsonResp      :TJSONObject;
begin
  alterando := true;
  id        := gridTela.Columns[0].Field.AsString;

  resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getBanco)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('id', id)
            .AddParam('codBan', '')
            .AddParam('nome', '')
            .timeOut(12000)
            .Get;

  if resp1.StatusCode = 200 then
  begin
    jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
    JsonToDataset(CDSDados, jsonResp.GetValue('Result').ToString);

    //Tratar campos dos comboBoxs.....
    PreencherCamposDoForm(Self, ativo, nil, CDSDados, 'ALTERA REGISTRO');
    jsonResp.free;
  end;
end;

procedure TfraCadBancos.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Editar', 'editar', 'dc3545');
end;

procedure TfraCadBancos.CDSTelaiconeAtivoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTela.FieldByName('ativo').AsString, Text, DisplayText);
end;

procedure TfraCadBancos.compativoToggled(const Value: Boolean);
begin
  if value then
    ativo := 'S' else
    ativo := 'N';
end;

procedure TfraCadBancos.edPesquisarKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    listar(edPesquisar.Text);
end;

procedure TfraCadBancos.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    pgcTela.ActivePageIndex := 1;
    carregaDados;
  end;
end;

procedure TfraCadBancos.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfraCadBancos.listar(pDado :string = '');
var
  resp1       :IResponse;
  body        :string;
  jsonResp    :TJSONObject;
  jsonTemp    :string;
begin

  pgcTela.ActivePageIndex := 0;

  resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getBanco)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('id', '')
            .AddParam('codBan', '')
            .AddParam('nome', pDado)
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

procedure TfraCadBancos.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
  ConfigurarAlignComboBoxes(self, 10);
  listar;
end;

procedure TfraCadBancos.UniFrameReady(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  RG1.Start;
end;

end.
