unit ufrmListaGlobal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, Datasnap.DBClient, uniButton, uniBitBtn,
  UniSFButton, UniSFBitBtn, uniLabel, uniEdit, UniSFLabel, uniPanel,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid;

type
  TfrmListaGlobal = class(TUniForm)
    gridTela: TUniDBGrid;
    cpIdentificarPaciente: TUniContainerPanel;
    UniContainerPanel22: TUniContainerPanel;
    lblFiltro: TUniSFLabel;
    UniContainerPanel23: TUniContainerPanel;
    UniSFLabel2: TUniSFLabel;
    edPesquisar: TUniEdit;
    cpMenuTopo: TUniContainerPanel;
    lblDescricao: TUniLabel;
    btnFechar: TUniSFBitBtn;
    UniContainerPanel27: TUniContainerPanel;
    CDSTela: TClientDataSet;
    CDSTelabotaoEditar: TAggregateField;
    CDSTelaiconeAtivo: TAggregateField;
    DSTela: TDataSource;
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniFormShow(Sender: TObject);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure gridTelaDblClick(Sender: TObject);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure btnFecharClick(Sender: TObject);
    procedure edPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure CDSTelaiconeAtivoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
    canClose  :boolean;
    procedure listaGlobal(filtro: string = '');
    procedure atualizaNomeColunaGrid(weGrid:tUniDbGrid;weTabelaPesquisa:string);
  public
    { Public declarations }
    wTabelaDePesquisa : string;
  end;

function frmListaGlobal: TfrmListaGlobal;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, RESTRequest4D.Response.Intf, System.JSON,
  RESTRequest4D.Request, uConstantes, uUtils;

procedure TfrmListaGlobal.atualizaNomeColunaGrid(weGrid:tUniDbGrid;weTabelaPesquisa:string);
begin
  //CLASSIFICAÇÕES
  if weTabelaPesquisa = 'CLASSIFICACOES' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'codClf';
      //NOME
      weGrid.Columns[2].FieldName := 'descrClf';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ativo';
    end
  //ATIVIDADES
  else if weTabelaPesquisa = 'ATIVIDADES' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'codAtv';
      //NOME
      weGrid.Columns[2].FieldName := 'descrAt';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ativo';
    end
  //VENDEDORERS
  else if weTabelaPesquisa = 'VENDEDORES' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODVEND';
      //NOME
      weGrid.Columns[2].FieldName := 'NOMEVEND';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //REGIÕES
  else if weTabelaPesquisa = 'REGIOES' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'IDCODREG';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODREG';
      //NOME
      weGrid.Columns[2].FieldName := 'DESCRREG';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //EMPRESAS
  else if weTabelaPesquisa = 'EMPRESAS' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODEMP';
      //NOME
      weGrid.Columns[2].FieldName := 'NOMEMP';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //GERENTES
  else if weTabelaPesquisa = 'GERENTES' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODVEND';
      //NOME
      weGrid.Columns[2].FieldName := 'NOMEVEND';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end;

end;

procedure TfrmListaGlobal.btnFecharClick(Sender: TObject);
begin
  canClose := false;
  close;
end;

procedure TfrmListaGlobal.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Selecionar', 'editar', 'dc3545');
end;

procedure TfrmListaGlobal.CDSTelaiconeAtivoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTela.FieldByName('ativo').AsString, Text, DisplayText);
end;

procedure TfrmListaGlobal.edPesquisarKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    listaGlobal(trim(edPesquisar.Text));
end;

procedure TfrmListaGlobal.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    canClose := true;
    frmListaGlobal.close;
  end;

end;

procedure TfrmListaGlobal.gridTelaDblClick(Sender: TObject);
begin
  canClose := true;
  frmListaGlobal.close;
end;

procedure TfrmListaGlobal.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfrmListaGlobal.listaGlobal(filtro: string);
var
  resp1       :IResponse;
  body        :string;
  jsonResp    :TJSONObject;
begin
  //CLASSIFICAÇÕES
  if wTabelaDePesquisa.ToUpper = 'CLASSIFICACOES' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getClassificacao)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('id', '')
            .AddParam('codClf', '')
            .AddParam('descrClf', filtro)
            .AddParam('ativo', '')
            .timeOut(12000)
            .Get;
  end
  //ATIVIDADES
  else if wTabelaDePesquisa.ToUpper = 'ATIVIDADES' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getAtividade)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('id', '')
            .AddParam('codAtv', '')
            .AddParam('descrAt', filtro)
            .AddParam('ativo', '')
            .timeOut(12000)
            .Get;
  end
  //VENDEDORES
  else if wTabelaDePesquisa.ToUpper = 'VENDEDORES' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getVendedor)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('ID', '')
            .AddParam('CODVEND', '')
            .AddParam('NOMEVEND', filtro)
            .AddParam('ATIVO', '')
            .timeOut(12000)
            .Get;
  end
  //REGIÕES
  else if wTabelaDePesquisa.ToUpper = 'REGIOES' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getRegiao)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('idCodReg', '')
            .AddParam('codReg', '')
            .AddParam('descrReg', filtro)
            .AddParam('ativo', '')
            .timeOut(12000)
            .Get;
  end
  //EMPRESAS
  else if wTabelaDePesquisa.ToUpper = 'EMPRESAS' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getEmpresa)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('empresa', filtro)
            .AddParam('ID', '')
//            .AddParam('descrReg', filtro)
            .AddParam('ATIVO', '')
            .timeOut(12000)
            .Get;
  end
  //GERENTES
  else if wTabelaDePesquisa.ToUpper = 'GERENTES' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getVendedor)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('ID', '')
            .AddParam('CODVEND', '')
            .AddParam('NOMEVEND', filtro)
            .AddParam('ATIVO', '')
            .AddParam('SOGERENTEVENDA', 'T')
            .timeOut(12000)
            .Get;
  end;


  if resp1.StatusCode = 200 then
  begin
    try
      jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
      JsonToDataset(CDSTela, jsonResp.getValue('Result').toJson);
      //CLASSIFICAÇÕES
      if wTabelaDePesquisa.ToUpper = 'CLASSIFICACOES' then
      begin
        atualizaNomeColunaGrid(gridTela,'CLASSIFICACOES');
      end
      //ATIVIDADES
      else if wTabelaDePesquisa.ToUpper = 'ATIVIDADES' then
      begin
        atualizaNomeColunaGrid(gridTela,'ATIVIDADES');
      end
      //VENDEDORES
      else if wTabelaDePesquisa.ToUpper = 'VENDEDORES' then
      begin
        atualizaNomeColunaGrid(gridTela,'VENDEDORES');
      end
      //REGIÕES
      else if wTabelaDePesquisa.ToUpper = 'REGIOES' then
      begin
        atualizaNomeColunaGrid(gridTela,'REGIOES');
      end
      //EMPRESAS
      else if wTabelaDePesquisa.ToUpper = 'EMPRESAS' then
      begin
        atualizaNomeColunaGrid(gridTela,'EMPRESAS');
      end
      //GERENTES
      else if wTabelaDePesquisa.ToUpper = 'GERENTES' then
      begin
        atualizaNomeColunaGrid(gridTela,'GERENTES');
      end;

    finally
      jsonResp.Free;
    end;
  end;
end;

procedure TfrmListaGlobal.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if canClose then
    modalResult := mrOk;
end;

procedure TfrmListaGlobal.UniFormShow(Sender: TObject);
begin
  frmListaGlobal.Top := 5;
  frmListaGlobal.Height := uniMainModule.screenHeigth - 10;
  frmListaGlobal.Width  := uniMainModule.screenWidth  - 15;
  frmListaGlobal.Left   := 7;
  listaGlobal;
end;

function frmListaGlobal: TfrmListaGlobal;
begin
  Result := TfrmListaGlobal(UniMainModule.GetFormInstance(TfrmListaGlobal));
end;

end.
