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
  else if (weTabelaPesquisa = 'VENDEDORES') or (weTabelaPesquisa = 'VENDEDORES_PDV') then
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
    end
  //PISVENDA
  else if weTabelaPesquisa = 'PISVENDA' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODSIT';
      //NOME
      weGrid.Columns[2].FieldName := 'DESCR';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //PISCOMPRA
  else if weTabelaPesquisa = 'PISCOMPRA' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODSIT';
      //NOME
      weGrid.Columns[2].FieldName := 'DESCR';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //COFINSVENDA
  else if weTabelaPesquisa = 'COFINSVENDA' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODSIT';
      //NOME
      weGrid.Columns[2].FieldName := 'DESCR';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //COFINSCOMPRA
  else if weTabelaPesquisa = 'COFINSCOMPRA' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODSIT';
      //NOME
      weGrid.Columns[2].FieldName := 'DESCR';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //IPIVENDA
  else if weTabelaPesquisa = 'IPIVENDA' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODSIT';
      //NOME
      weGrid.Columns[2].FieldName := 'DESCR';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //IPICOMPRA
  else if weTabelaPesquisa = 'IPICOMPRA' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODSIT';
      //NOME
      weGrid.Columns[2].FieldName := 'DESCR';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //GRUPOS
  else if weTabelaPesquisa = 'GRUPOS' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODGRU';
      //NOME
      weGrid.Columns[2].FieldName := 'NOMEGRU';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //GRADE1
  else if weTabelaPesquisa = 'GRADE1' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'IDGRADE';
      //NOME
      weGrid.Columns[2].FieldName := 'DESCRGRADE';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //GRADE2
  else if weTabelaPesquisa = 'GRADE2' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'IDGRADE';
      //NOME
      weGrid.Columns[2].FieldName := 'DESCRGRADE';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //CLIENTES1
  else if weTabelaPesquisa = 'CLIENTES1' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODCLI';
      //NOME
      weGrid.Columns[2].FieldName := 'NOME';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //CLIENTES2
  else if weTabelaPesquisa = 'CLIENTES2' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODCLI';
      //NOME
      weGrid.Columns[2].FieldName := 'NOME';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //CLIENTES3
  else if weTabelaPesquisa = 'CLIENTES3' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODCLI';
      //NOME
      weGrid.Columns[2].FieldName := 'NOME';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //CFOP SAÍDA
  else if weTabelaPesquisa = 'CFOPSAIDA' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODCFOP';
      //NOME
      weGrid.Columns[2].FieldName := 'NATUREZA';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //CFOP ENTRADA
  else if weTabelaPesquisa = 'CFOPENTRADA' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODCFOP';
      //NOME
      weGrid.Columns[2].FieldName := 'NATUREZA';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //CFOP NFCE
  else if weTabelaPesquisa = 'CFOPNFCE' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODCFOP';
      //NOME
      weGrid.Columns[2].FieldName := 'NATUREZA';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //PRODUTO PDV
  else if weTabelaPesquisa = 'PRODUTOS_PDV' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODPRO';
      //NOME
      weGrid.Columns[2].FieldName := 'DESCR';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //CLIENTE PDV
  else if weTabelaPesquisa = 'CLIENTES_PDV' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODCLI';
      //NOME
      weGrid.Columns[2].FieldName := 'NOME';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
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
//  else if wTabelaDePesquisa.ToUpper = 'VENDEDORES' then
  else if (wTabelaDePesquisa = 'VENDEDORES') or (wTabelaDePesquisa = 'VENDEDORESPDV') then
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
  end
  //PISVENDA
  else if wTabelaDePesquisa.ToUpper = 'PISVENDA' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getStPis)
            .AddParam('NOMEBANCO', uniMainModule.nomebanco)
            .AddParam('ID', '')
            .AddParam('CODSIT', '')
            .AddParam('DESCR', filtro)
            .AddParam('ATIVO', '')
            .timeOut(12000)
            .Get;
  end
  //PISCOMPRA
  else if wTabelaDePesquisa.ToUpper = 'PISCOMPRA' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getStPis)
            .AddParam('NOMEBANCO', uniMainModule.nomebanco)
            .AddParam('ID', '')
            .AddParam('CODSIT', '')
            .AddParam('DESCR', filtro)
            .AddParam('ATIVO', '')
            .timeOut(12000)
            .Get;
  end
  //COFINSVENDA
  else if wTabelaDePesquisa.ToUpper = 'COFINSVENDA' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getStCofins)
            .AddParam('NOMEBANCO', uniMainModule.nomebanco)
            .AddParam('ID', '')
            .AddParam('CODSIT', '')
            .AddParam('DESCR', filtro)
            .AddParam('ATIVO', '')
            .timeOut(12000)
            .Get;
  end
  //COFINSCOMPRA
  else if wTabelaDePesquisa.ToUpper = 'COFINSCOMPRA' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getStCofins)
            .AddParam('NOMEBANCO', uniMainModule.nomebanco)
            .AddParam('ID', '')
            .AddParam('CODSIT', '')
            .AddParam('DESCR', filtro)
            .AddParam('ATIVO', '')
            .timeOut(12000)
            .Get;
  end
  //IPIVENDA
  else if wTabelaDePesquisa.ToUpper = 'IPIVENDA' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getStIpi)
            .AddParam('NOMEBANCO', uniMainModule.nomebanco)
            .AddParam('ID', '')
            .AddParam('CODSIT', '')
            .AddParam('DESCR', filtro)
            .AddParam('ATIVO', '')
            .timeOut(12000)
            .Get;
  end
  //IPICOMPRA
  else if wTabelaDePesquisa.ToUpper = 'IPICOMPRA' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getStIpi)
            .AddParam('NOMEBANCO', uniMainModule.nomebanco)
            .AddParam('ID', '')
            .AddParam('CODSIT', '')
            .AddParam('DESCR', filtro)
            .AddParam('ATIVO', '')
            .timeOut(12000)
            .Get;
  end
  //GRUPOS
  else if wTabelaDePesquisa.ToUpper = 'GRUPOS' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getGrupo)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('id', '')
            .AddParam('codGru', '')
            .AddParam('nomeGru', filtro)
            .AddParam('ativo', '')
            .timeOut(12000)
            .Get;
  end
  //GRADE1
  else if wTabelaDePesquisa.ToUpper = 'GRADE1' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getGrade1)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('id', '')
            .AddParam('idgrade', '')
//            .AddParam('nomeGru', filtro)
            .AddParam('ativo', '')
            .timeOut(12000)
            .Get;
  end
  //GRADE2
  else if wTabelaDePesquisa.ToUpper = 'GRADE2' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getGrade2)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('id', '')
            .AddParam('idgrade', '')
//            .AddParam('nomeGru', filtro)
            .AddParam('ativo', '')
            .timeOut(12000)
            .Get;
  end
  //CLIENTES1
  else if wTabelaDePesquisa.ToUpper = 'CLIENTES1' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getCliente)
            .AddParam('NOMEBANCO', uniMainModule.nomebanco)
            .AddParam('ID', '')
            .AddParam('CODCLI', '')
            .AddParam('NOME', filtro)
            .AddParam('ATIVO', '')
            .timeOut(12000)
            .Get;
  end
  //CLIENTES2
  else if wTabelaDePesquisa.ToUpper = 'CLIENTES2' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getCliente)
            .AddParam('NOMEBANCO', uniMainModule.nomebanco)
            .AddParam('ID', '')
            .AddParam('CODCLI', '')
            .AddParam('NOME', filtro)
            .AddParam('ATIVO', '')
            .timeOut(12000)
            .Get;
  end
  //CLIENTES3
  else if wTabelaDePesquisa.ToUpper = 'CLIENTES3' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getCliente)
            .AddParam('NOMEBANCO', uniMainModule.nomebanco)
            .AddParam('ID', '')
            .AddParam('CODCLI', '')
            .AddParam('NOME', filtro)
            .AddParam('ATIVO', '')
            .timeOut(12000)
            .Get;
  end
  //CFOP SAÍDA
  else if wTabelaDePesquisa.ToUpper = 'CFOPSAIDA' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getCfop)
            .AddParam('NOMEBANCO', uniMainModule.nomebanco)
            .AddParam('ID', '')
            .AddParam('CODCFOP', '')
            .AddParam('NATUREZA', filtro)
            .AddParam('ATIVO', '')
            .timeOut(12000)
            .Get;
  end
  //CFOP ENTRADA
  else if wTabelaDePesquisa.ToUpper = 'CFOPENTRADA' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getCfop)
            .AddParam('NOMEBANCO', uniMainModule.nomebanco)
            .AddParam('ID', '')
            .AddParam('CODCFOP', '')
            .AddParam('NATUREZA', filtro)
            .AddParam('ATIVO', '')
            .timeOut(12000)
            .Get;
  end
  //CFOP NFCE
  else if wTabelaDePesquisa.ToUpper = 'CFOPNFCE' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getCfop)
            .AddParam('NOMEBANCO', uniMainModule.nomebanco)
            .AddParam('ID', '')
            .AddParam('CODCFOP', '')
            .AddParam('NATUREZA', filtro)
            .AddParam('ATIVO', '')
            .timeOut(12000)
            .Get;
  end
  //PRODUTO_PDV
  else if wTabelaDePesquisa.ToUpper = 'PRODUTOS_PDV' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getProduto)
            .AddParam('nomebanco', uniMainModule.nomebanco)
            .AddParam('id', '')
            .AddParam('codpro', '')
            .AddParam('descr', filtro)
//            .AddParam('ATIVO', '')
            .timeOut(12000)
            .Get;
  end
  //CLIENTE_PDV
  else if wTabelaDePesquisa.ToUpper = 'CLIENTES_PDV' then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getCliente)
            .AddParam('NOMEBANCO', uniMainModule.nomebanco)
            .AddParam('ID', '')
            .AddParam('CODCLI', '')
            .AddParam('NOME', filtro)
            .AddParam('ATIVO', '')
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
      else if (wTabelaDePesquisa.ToUpper = 'VENDEDORES') OR (wTabelaDePesquisa.ToUpper = 'VENDEDORESPDV') then
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
      end
      //PISVENDA
      else if wTabelaDePesquisa.ToUpper = 'PISVENDA' then
      begin
        atualizaNomeColunaGrid(gridTela,'PISVENDA');
      end
      //PISCOMPRA
      else if wTabelaDePesquisa.ToUpper = 'PISCOMPRA' then
      begin
        atualizaNomeColunaGrid(gridTela,'PISCOMPRA');
      end
      //COFINSVENDA
      else if wTabelaDePesquisa.ToUpper = 'COFINSVENDA' then
      begin
        atualizaNomeColunaGrid(gridTela,'COFINSVENDA');
      end
      //COFINSCOMPRA
      else if wTabelaDePesquisa.ToUpper = 'COFINSCOMPRA' then
      begin
        atualizaNomeColunaGrid(gridTela,'COFINSCOMPRA');
      end
      //IPIVENDA
      else if wTabelaDePesquisa.ToUpper = 'IPIVENDA' then
      begin
        atualizaNomeColunaGrid(gridTela,'IPIVENDA');
      end
      //IPICOMPRA
      else if wTabelaDePesquisa.ToUpper = 'IPICOMPRA' then
      begin
        atualizaNomeColunaGrid(gridTela,'IPICOMPRA');
      end
      //GRUPOS
      else if wTabelaDePesquisa.ToUpper = 'GRUPOS' then
      begin
        atualizaNomeColunaGrid(gridTela,'GRUPOS');
      end
      //GRADE1
      else if wTabelaDePesquisa.ToUpper = 'GRADE1' then
      begin
        atualizaNomeColunaGrid(gridTela,'GRADE1');
      end
      //GRADE2
      else if wTabelaDePesquisa.ToUpper = 'GRADE2' then
      begin
        atualizaNomeColunaGrid(gridTela,'GRADE2');
      end
      //CLIENTES1
      else if wTabelaDePesquisa.ToUpper = 'CLIENTES1' then
      begin
        atualizaNomeColunaGrid(gridTela,'CLIENTES1');
      end
      //CLIENTES2
      else if wTabelaDePesquisa.ToUpper = 'CLIENTES2' then
      begin
        atualizaNomeColunaGrid(gridTela,'CLIENTES2');
      end
      //CLIENTES1
      else if wTabelaDePesquisa.ToUpper = 'CLIENTES3' then
      begin
        atualizaNomeColunaGrid(gridTela,'CLIENTES3');
      end
      //CFOP SAÍDA
      else if wTabelaDePesquisa.ToUpper = 'CFOPSAIDA' then
      begin
        atualizaNomeColunaGrid(gridTela,'CFOPSAIDA');
      end
      //CFOP ENTRADA
      else if wTabelaDePesquisa.ToUpper = 'CFOPENTRADA' then
      begin
        atualizaNomeColunaGrid(gridTela,'CFOPENTRADA');
      end
      //CFOP NFCE
      else if wTabelaDePesquisa.ToUpper = 'CFOPNFCE' then
      begin
        atualizaNomeColunaGrid(gridTela,'CFOPNFCE');
      end
      //PRODUTO_PDV
      else if wTabelaDePesquisa.ToUpper = 'PRODUTOS_PDV' then
      begin
        atualizaNomeColunaGrid(gridTela,'PRODUTOS_PDV');
      end
      //CLIENTE_PDV
      else if wTabelaDePesquisa.ToUpper = 'CLIENTES_PDV' then
      begin
        atualizaNomeColunaGrid(gridTela,'CLIENTES_PDV');
      end

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
