unit ufraCadGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Data.DB, UniFSToggle, UniSFComboBox, uniPanel,
  uniEdit, UniSFLabel, uniBasicGrid, uniDBGrid, uniPageControl, uniScrollBox,
  uniTimer, URGLayoutUnigui, uniImage, uniButton, uniBitBtn, UniSFButton,
  UniSFBitBtn, uniLabel, uniGUIBaseClasses, Datasnap.DBClient, UniSFiGrowl,
  UniSFSweetAlert;

type
  TfraCadGrade = class(TUniFrame)
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
    compIDGRADE: TUniEdit;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniPanel3: TUniPanel;
    compDESCRGRADE: TUniEdit;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniPanel19: TUniPanel;
    cpMenuRodape: TUniContainerPanel;
    btnSalvar: TUniSFBitBtn;
    btnCancelar: TUniSFBitBtn;
    compativo: TUniFSToggle;
    DSTela: TDataSource;
    UniPanel6: TUniPanel;
    compCOD1: TUniEdit;
    UniPanel7: TUniPanel;
    compDESCR1: TUniEdit;
    UniPanel8: TUniPanel;
    compCOD13: TUniEdit;
    UniPanel9: TUniPanel;
    compDESCR13: TUniEdit;
    UniPanel10: TUniPanel;
    UniPanel11: TUniPanel;
    compCOD2: TUniEdit;
    UniPanel12: TUniPanel;
    compDESCR2: TUniEdit;
    UniPanel13: TUniPanel;
    compCOD14: TUniEdit;
    UniPanel14: TUniPanel;
    compDESCR14: TUniEdit;
    UniPanel15: TUniPanel;
    UniPanel16: TUniPanel;
    compCOD3: TUniEdit;
    UniPanel17: TUniPanel;
    compDESCR3: TUniEdit;
    UniPanel18: TUniPanel;
    compCOD15: TUniEdit;
    UniPanel20: TUniPanel;
    compDESCR15: TUniEdit;
    UniPanel21: TUniPanel;
    UniPanel22: TUniPanel;
    compCOD4: TUniEdit;
    UniPanel23: TUniPanel;
    compDESCR4: TUniEdit;
    UniPanel24: TUniPanel;
    compCOD16: TUniEdit;
    UniPanel25: TUniPanel;
    compDESCR16: TUniEdit;
    UniPanel26: TUniPanel;
    UniPanel27: TUniPanel;
    compCOD5: TUniEdit;
    UniPanel28: TUniPanel;
    compDESCR5: TUniEdit;
    UniPanel29: TUniPanel;
    compCOD17: TUniEdit;
    UniPanel30: TUniPanel;
    compDESCR17: TUniEdit;
    UniPanel31: TUniPanel;
    UniPanel32: TUniPanel;
    compCOD6: TUniEdit;
    UniPanel33: TUniPanel;
    compDESCR6: TUniEdit;
    UniPanel34: TUniPanel;
    compCOD18: TUniEdit;
    UniPanel35: TUniPanel;
    compDESCR18: TUniEdit;
    UniPanel36: TUniPanel;
    UniPanel37: TUniPanel;
    compCOD7: TUniEdit;
    UniPanel38: TUniPanel;
    compDESCR7: TUniEdit;
    UniPanel39: TUniPanel;
    compCOD19: TUniEdit;
    UniPanel40: TUniPanel;
    compDESCR19: TUniEdit;
    UniPanel41: TUniPanel;
    UniPanel42: TUniPanel;
    compCOD8: TUniEdit;
    UniPanel43: TUniPanel;
    compDESCR8: TUniEdit;
    UniPanel44: TUniPanel;
    compCOD20: TUniEdit;
    UniPanel45: TUniPanel;
    compDESCR20: TUniEdit;
    UniPanel46: TUniPanel;
    UniPanel47: TUniPanel;
    compCOD9: TUniEdit;
    UniPanel48: TUniPanel;
    compDESCR9: TUniEdit;
    UniPanel49: TUniPanel;
    compCOD21: TUniEdit;
    UniPanel50: TUniPanel;
    compDESCR21: TUniEdit;
    UniPanel51: TUniPanel;
    UniPanel52: TUniPanel;
    compCOD10: TUniEdit;
    UniPanel53: TUniPanel;
    compDESCR10: TUniEdit;
    UniPanel54: TUniPanel;
    compCOD22: TUniEdit;
    UniPanel55: TUniPanel;
    compDESCR22: TUniEdit;
    UniPanel56: TUniPanel;
    UniPanel57: TUniPanel;
    compCOD11: TUniEdit;
    UniPanel58: TUniPanel;
    compDESCR11: TUniEdit;
    UniPanel59: TUniPanel;
    compCOD23: TUniEdit;
    UniPanel60: TUniPanel;
    compDESCR23: TUniEdit;
    UniPanel61: TUniPanel;
    UniPanel62: TUniPanel;
    compCOD12: TUniEdit;
    UniPanel63: TUniPanel;
    compDESCR12: TUniEdit;
    UniPanel64: TUniPanel;
    compCOD24: TUniEdit;
    UniPanel65: TUniPanel;
    compDESCR24: TUniEdit;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel4: TUniLabel;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel5: TUniLabel;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel7: TUniLabel;
    UniPanel1: TUniPanel;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniPanel4: TUniPanel;
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
    procedure carregaDados;
    procedure retornar;
    procedure listar(pDado :string = '');
    procedure limpaCampos;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uConstantes, uUtils, MainModule, System.JSON, RESTRequest4D.Request;
procedure TfraCadGrade.carregaDados;
var
  resp1         :IResponse;
  jsonResp      :TJSONObject;
begin
  alterando := true;
  id        := gridTela.Columns[0].Field.AsString;

  resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .resource(getGrade1)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddParam('id', id)
                .AddParam('idgrade', '')
//                .AddParam('nome', '')
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

procedure TfraCadGrade.retornar;
begin
  pgcTela.ActivePageIndex := 0;
  listar;
end;

procedure TfraCadGrade.listar(pDado :string = '');
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
                   .resource(getGrade1)
                   .AddParam('nomeBanco', uniMainModule.nomebanco);

  if pDado <> '' then
  begin
    if ehNumero then
    begin
      req.AddParam('id', pDado);
      req.AddParam('idgrade', pDado);
    end else
//      req.AddParam('nome', pDado);
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

procedure TfraCadGrade.limpaCampos;
begin
  alterando := false;
  limpaCookiesEditRecursivo(self);
  PreencherCamposDoForm(Self, ativo, nil, nil, 'NOVO REGISTRO');


end;

procedure TfraCadGrade.btnCancelarClick(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  DefinirTodasAbasNaPrimeiraPagina(self);
end;

procedure TfraCadGrade.btnNovoClick(Sender: TObject);
begin
  limpaCampos;
  pgcTela.ActivePageIndex := 1;
  compCOD1.Text := '1';
  compCOD2.Text := '2';
  compCOD3.Text := '3';
  compCOD4.Text := '4';
  compCOD5.Text := '5';
  compCOD6.Text := '6';
  compCOD7.Text := '7';
  compCOD8.Text := '8';
  compCOD9.Text := '9';
  compCOD10.Text := '10';
  compCOD11.Text := '11';
  compCOD12.Text := '12';
  compCOD13.Text := '13';
  compCOD14.Text := '14';
  compCOD15.Text := '15';
  compCOD16.Text := '16';
  compCOD17.Text := '17';
  compCOD18.Text := '18';
  compCOD19.Text := '19';
  compCOD20.Text := '20';
  compCOD21.Text := '21';
  compCOD22.Text := '22';
  compCOD23.Text := '23';
  compCOD24.Text := '24';
end;

procedure TfraCadGrade.btnSalvarClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
begin
  try
    jsonBody := TJSONObject.Create;

    jsonBody.AddPair('idgrade', compidgrade.Text);
    jsonBody.AddPair('descrgrade', compdescrgrade.Text);
    jsonBody.AddPair('cod1', compcod1.Text);
    jsonBody.AddPair('descr1', compdescr1.Text);
    jsonBody.AddPair('cod2', compcod2.Text);
    jsonBody.AddPair('descr2', compdescr2.Text);
    jsonBody.AddPair('cod3', compcod3.Text);
    jsonBody.AddPair('descr3', compdescr3.Text);
    jsonBody.AddPair('cod4', compcod4.Text);
    jsonBody.AddPair('descr4', compdescr4.Text);
    jsonBody.AddPair('cod5', compcod5.Text);
    jsonBody.AddPair('descr5', compdescr5.Text);
    jsonBody.AddPair('cod6', compcod6.Text);
    jsonBody.AddPair('descr6', compdescr6.Text);
    jsonBody.AddPair('cod7', compcod7.Text);
    jsonBody.AddPair('descr7', compdescr7.Text);
    jsonBody.AddPair('cod8', compcod8.Text);
    jsonBody.AddPair('descr8', compdescr8.Text);
    jsonBody.AddPair('cod9', compcod9.Text);
    jsonBody.AddPair('descr9', compdescr9.Text);
    jsonBody.AddPair('cod10', compcod10.Text);
    jsonBody.AddPair('descr10', compdescr10.Text);
    jsonBody.AddPair('cod11', compcod11.Text);
    jsonBody.AddPair('descr11', compdescr11.Text);
    jsonBody.AddPair('cod12', compcod12.Text);
    jsonBody.AddPair('descr12', compdescr12.Text);
    jsonBody.AddPair('cod13', compcod13.Text);
    jsonBody.AddPair('descr13', compdescr13.Text);
    jsonBody.AddPair('cod14', compcod14.Text);
    jsonBody.AddPair('descr14', compdescr14.Text);
    jsonBody.AddPair('cod15', compcod15.Text);
    jsonBody.AddPair('descr15', compdescr15.Text);
    jsonBody.AddPair('cod16', compcod16.Text);
    jsonBody.AddPair('descr16', compdescr16.Text);
    jsonBody.AddPair('cod17', compcod17.Text);
    jsonBody.AddPair('descr17', compdescr17.Text);
    jsonBody.AddPair('cod18', compcod18.Text);
    jsonBody.AddPair('descr18', compdescr18.Text);
    jsonBody.AddPair('cod19', compcod19.Text);
    jsonBody.AddPair('descr19', compdescr19.Text);
    jsonBody.AddPair('cod20', compcod20.Text);
    jsonBody.AddPair('descr20', compdescr20.Text);
    jsonBody.AddPair('cod21', compcod21.Text);
    jsonBody.AddPair('descr21', compdescr21.Text);
    jsonBody.AddPair('cod22', compcod22.Text);
    jsonBody.AddPair('descr22', compdescr22.Text);
    jsonBody.AddPair('cod23', compcod23.Text);
    jsonBody.AddPair('descr23', compdescr23.Text);
    jsonBody.AddPair('cod24', compcod24.Text);
    jsonBody.AddPair('descr24', compdescr24.Text);

    jsonBody.AddPair('ativo', ativo);

    if alterando then
    begin
      resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(putGrade1)
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
                .Resource(postGrade1)
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

procedure TfraCadGrade.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Editar', 'editar', 'dc3545');
end;

procedure TfraCadGrade.CDSTelaiconeAtivoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTela.FieldByName('ativo').AsString, Text, DisplayText);
end;

procedure TfraCadGrade.compativoToggled(const Value: Boolean);
begin
  if value then
    ativo := 'S' else
    ativo := 'N';
end;

procedure TfraCadGrade.edPesquisarKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    listar(edPesquisar.Text);
end;

procedure TfraCadGrade.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    pgcTela.ActivePageIndex := 1;
    carregaDados;
  end;
end;

procedure TfraCadGrade.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfraCadGrade.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
  ConfigurarAlignComboBoxes(self, 10);
  listar;
end;

procedure TfraCadGrade.UniFrameReady(Sender: TObject);
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
