unit ufrmListaGlobal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, Datasnap.DBClient, uniButton, uniBitBtn,
  UniSFButton, UniSFBitBtn, uniLabel, uniEdit, UniSFLabel, uniPanel,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid, uniMultiItem, uniComboBox;

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
    UniContainerPanel1: TUniContainerPanel;
    UniSFLabel1: TUniSFLabel;
    UniContainerPanel2: TUniContainerPanel;
    compCbPesq: TUniComboBox;
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
    procedure listaGlobal(filtro: string = ''; cbOpcao: string = '');
    procedure atualizaNomeColunaGrid(weGrid:tUniDbGrid;weTabelaPesquisa:string);
    function retornaOpcao(weJCampo: string = ''; weCbCampo: string = ''; weFiltro: string = ''):string;
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

Function TfrmListaGlobal.retornaOpcao(weJCampo,weCbCampo,weFiltro:string):string;
begin
  try
    if weCbCampo.ToUpper = weJCampo.ToUpper then
      result := weFiltro
    else
      result := '';
  finally
  end;
end;

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
  else if (weTabelaPesquisa = 'VENDEDOR')
    or (weTabelaPesquisa = 'VENDEDORES')
    or (weTabelaPesquisa = 'VENDEDORES_PDV')
    or (weTabelaPesquisa = 'VENDEDORES_PDV_CONFIGURACOES')then
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
      weGrid.Columns[2].FieldName := 'DESCR';
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
  else if (weTabelaPesquisa = 'PISVENDA')
  or (weTabelaPesquisa = 'PISCOMPRA') then
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
  else if (weTabelaPesquisa = 'COFINSVENDA')
    or (weTabelaPesquisa = 'COFINSCOMPRA') then
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
  else if (weTabelaPesquisa = 'IPIVENDA')
    or (weTabelaPesquisa = 'IPICOMPRA') then
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
  else if (weTabelaPesquisa = 'GRADE1')
    or (weTabelaPesquisa = 'GRADE2') then
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
  //CLIENTES
  else if (weTabelaPesquisa = 'CLIENTE')
    or (weTabelaPesquisa = 'CLIENTES1')
    or (weTabelaPesquisa = 'CLIENTES2')
    or (weTabelaPesquisa = 'CLIENTES3')
    or (weTabelaPesquisa = 'CLIENTES_PDV')
    or (wTabelaDePesquisa = 'CLIENTES_TROCA_COD_CLI_INI')
    or (wTabelaDePesquisa = 'CLIENTES_TROCA_COD_CLI_FIN')
    or (wTabelaDePesquisa = 'CLIENTES_CONTA')
    or (wTabelaDePesquisa = 'CLIENTES_PDV_UTILITARIO') then
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
  else if (weTabelaPesquisa = 'CFOP')
    or (weTabelaPesquisa = 'CFOPENTRADA')
    or (weTabelaPesquisa = 'CFOPENTRADA')
    or (weTabelaPesquisa = 'CFOPNFCE') then
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
  //CCUSTO PDV
  else if (weTabelaPesquisa = 'CCUSTO')
   or (weTabelaPesquisa = 'CCUSTO_PDV')
   or (weTabelaPesquisa = 'CCUSTO_PDV_UTILITARIO')
   or (weTabelaPesquisa = 'CCUSTO_PDV_CONFIGURACOES')then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODCC';
      //NOME
      weGrid.Columns[2].FieldName := 'DESCR';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //CONDPAG_PDV
  else if weTabelaPesquisa = 'CONDPAG_PDV' then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODPAG';
      //NOME
      weGrid.Columns[2].FieldName := 'DESCRPG';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //DEPARTAMENTOS
  else if (weTabelaPesquisa = 'DEPARTAMENTO')
  or (weTabelaPesquisa = 'DEPARTAMENTOS') then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODPR';
      //NOME
      weGrid.Columns[2].FieldName := 'DESCRPR';
      //ATIVO
      weGrid.Columns[3].FieldName := 'ATIVO';
    end
  //BANCOS
  else if (weTabelaPesquisa = 'BANCO')
   or (weTabelaPesquisa = 'BANCOS')
   or (weTabelaPesquisa = 'BANCOS_PDV_UTILITARIO') then
    begin
      //ID
      weGrid.Columns[0].FieldName := 'ID';
      //CÓDIGO
      weGrid.Columns[1].FieldName := 'CODBAN';
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
    listaGlobal(trim(edPesquisar.Text), compCbPesq.Text);
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

procedure TfrmListaGlobal.listaGlobal(filtro, cbOpcao: string);
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
            .AddParam('id', retornaOpcao('id',cbOpcao,filtro))
            .AddParam('codClf', retornaOpcao('Código',cbOpcao,filtro))
            .AddParam('descrClf', retornaOpcao('Nome',cbOpcao,filtro))
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
            .AddParam('id', retornaOpcao('id',cbOpcao,filtro))
            .AddParam('codAtv', retornaOpcao('Código',cbOpcao,filtro))
            .AddParam('descrAt', retornaOpcao('Nome',cbOpcao,filtro))
            .AddParam('ativo', '')
            .timeOut(12000)
            .Get;
  end
  //VENDEDORES
  else if (wTabelaDePesquisa = 'VENDEDOR')
  or (wTabelaDePesquisa = 'VENDEDORES')
  or (wTabelaDePesquisa = 'VENDEDORESPDV')
  or (wTabelaDePesquisa = 'VENDEDORES_PDV_CONFIGURACOES') then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getVendedor)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('ID', retornaOpcao('id',cbOpcao,filtro))
            .AddParam('CODVEND', retornaOpcao('Código',cbOpcao,filtro))
            .AddParam('NOMEVEND', retornaOpcao('Nome',cbOpcao,filtro))
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
            .AddParam('idCodReg', retornaOpcao('id',cbOpcao,filtro))
            .AddParam('codReg', retornaOpcao('Código',cbOpcao,filtro))
            .AddParam('descr', retornaOpcao('Nome',cbOpcao,filtro))
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
            .AddParam('empresa', retornaOpcao('Nome',cbOpcao,filtro))
            .AddParam('ID', retornaOpcao('id',cbOpcao,filtro))
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
            .AddParam('ID', retornaOpcao('id',cbOpcao,filtro))
            .AddParam('CODVEND', retornaOpcao('Código',cbOpcao,filtro))
            .AddParam('NOMEVEND', retornaOpcao('Nome',cbOpcao,filtro))
            .AddParam('ATIVO', '')
            .AddParam('SOGERENTEVENDA', 'T')
            .timeOut(12000)
            .Get;
  end
  //PISVENDA
  else if (wTabelaDePesquisa.ToUpper = 'PISVENDA')
  or (wTabelaDePesquisa.ToUpper = 'PISCOMPRA') then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getStPis)
            .AddParam('NOMEBANCO', uniMainModule.nomebanco)
            .AddParam('ID', retornaOpcao('id',cbOpcao,filtro))
            .AddParam('CODSIT', retornaOpcao('Código',cbOpcao,filtro))
            .AddParam('DESCR', retornaOpcao('Nome',cbOpcao,filtro))
            .AddParam('ATIVO', '')
            .timeOut(12000)
            .Get;

  end
  //COFINSVENDA
  else if (wTabelaDePesquisa.ToUpper = 'COFINSVENDA')
  or (wTabelaDePesquisa.ToUpper = 'COFINSCOMPRA') then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getStCofins)
            .AddParam('NOMEBANCO', uniMainModule.nomebanco)
            .AddParam('ID', retornaOpcao('id',cbOpcao,filtro))
            .AddParam('CODSIT', retornaOpcao('Código',cbOpcao,filtro))
            .AddParam('DESCR', retornaOpcao('Nome',cbOpcao,filtro))
            .AddParam('ATIVO', '')
            .timeOut(12000)
            .Get;

  end
  //IPIVENDA
  else if (wTabelaDePesquisa.ToUpper = 'IPIVENDA')
  or (wTabelaDePesquisa.ToUpper = 'IPICOMPRA') then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getStIpi)
            .AddParam('NOMEBANCO', uniMainModule.nomebanco)
            .AddParam('ID', retornaOpcao('id',cbOpcao,filtro))
            .AddParam('CODSIT', retornaOpcao('Código',cbOpcao,filtro))
            .AddParam('DESCR', retornaOpcao('Nome',cbOpcao,filtro))
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
            .AddParam('id', retornaOpcao('id',cbOpcao,filtro))
            .AddParam('codGru', retornaOpcao('Código',cbOpcao,filtro))
            .AddParam('nomeGru', retornaOpcao('Nome',cbOpcao,filtro))
            .AddParam('ativo', '')
            .timeOut(12000)
            .Get;
  end
  //GRADE1
  else if (wTabelaDePesquisa.ToUpper = 'GRADE1')
  or (wTabelaDePesquisa.ToUpper = 'GRADE2') then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getGrade1)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('id', retornaOpcao('id',cbOpcao,filtro))
            .AddParam('idgrade', retornaOpcao('Código',cbOpcao,filtro))
//            .AddParam('nomeGru', filtro)
            .AddParam('ativo', '')
            .timeOut(12000)
            .Get;
  end
  //CLIENTES
  else if (wTabelaDePesquisa.ToUpper = 'CLIENTE')
  or (wTabelaDePesquisa.ToUpper = 'CLIENTES1')
  or (wTabelaDePesquisa.ToUpper = 'CLIENTES2')
  or (wTabelaDePesquisa.ToUpper = 'CLIENTES3')
  or (wTabelaDePesquisa.ToUpper = 'CLIENTES_PDV')
  or (wTabelaDePesquisa.ToUpper = 'CLIENTES_TROCA_COD_CLI_INI')
  or (wTabelaDePesquisa.ToUpper = 'CLIENTES_TROCA_COD_CLI_FIN')
  or (wTabelaDePesquisa.ToUpper = 'CLIENTES_CONTA')
  or (wTabelaDePesquisa.ToUpper = 'CLIENTES_PDV_UTILITARIO') then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getCliente)
            .AddParam('NOMEBANCO', uniMainModule.nomebanco)
            .AddParam('ID', retornaOpcao('id',cbOpcao,filtro))
            .AddParam('CODCLI', retornaOpcao('Código',cbOpcao,filtro))
            .AddParam('NOME', retornaOpcao('Nome',cbOpcao,filtro))
            .AddParam('ATIVO', '')
            .timeOut(12000)
            .Get;
  end
  //CFOP SAÍDA
  else if (wTabelaDePesquisa.ToUpper = 'CFOP')
  or (wTabelaDePesquisa.ToUpper = 'CFOPSCFOPENTRADAAIDA')
  or (wTabelaDePesquisa.ToUpper = 'CFOPSCFOPENTRADAAIDA')
  or (wTabelaDePesquisa.ToUpper = 'CFOPNFCE') then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getCfop)
            .AddParam('NOMEBANCO', uniMainModule.nomebanco)
            .AddParam('ID', retornaOpcao('id',cbOpcao,filtro))
            .AddParam('CODCFOP', retornaOpcao('Código',cbOpcao,filtro))
            .AddParam('NATUREZA', retornaOpcao('Nome',cbOpcao,filtro))
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
            .AddParam('id', retornaOpcao('id',cbOpcao,filtro))
            .AddParam('codpro', retornaOpcao('Código',cbOpcao,filtro))
            .AddParam('descr', retornaOpcao('Nome',cbOpcao,filtro))
            .AddParam('empresa', vvcodemp)
//            .AddParam('ATIVO', '')
            .timeOut(12000)
            .Get;
  end
  //CCUSTO_PDV
  else if (wTabelaDePesquisa.ToUpper = 'CCUSTO')
    or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L1')
    or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L2')
    or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L3')
    or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L4')
    or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L5')
    or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L6')
    or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L7')
    or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L8')
    or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L9')
    or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L10')
    or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L11')
    or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L12')
    or (wTabelaDePesquisa.ToUpper = 'CCUSTO_CONTA')
    or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_UTILITARIO')
    or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_CONFIGURACOES') then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getCentroCusto)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('id', retornaOpcao('id',cbOpcao,filtro))
            .AddParam('codCc', retornaOpcao('Código',cbOpcao,filtro))
            .AddParam('descr', retornaOpcao('Nome',cbOpcao,filtro))
            .AddParam('ativo', '')
            .timeOut(12000)
            .Get;
  end
  //CONDPAG_PDV
  else if (wTabelaDePesquisa.ToUpper = 'CONDPAG_PDV') then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getCondPag)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('id', retornaOpcao('id',cbOpcao,filtro))
            .AddParam('codPag', retornaOpcao('Código',cbOpcao,filtro))
            .AddParam('descrPg', retornaOpcao('Nome',cbOpcao,filtro))
            .AddParam('ativo', '')
            .timeOut(12000)
            .Get;
  end
  //DEPARTAMENTOS
  else if (wTabelaDePesquisa.ToUpper = 'DEPARTAMENTO')
  or (wTabelaDePesquisa.ToUpper = 'DEPARTAMENTOS') then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getDepartamento)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('id', retornaOpcao('id',cbOpcao,filtro))
            .AddParam('codPr', retornaOpcao('Código',cbOpcao,filtro))
            .AddParam('descrPr', retornaOpcao('Nome',cbOpcao,filtro))
            .AddParam('ativo', '')
            .timeOut(12000)
            .Get;
  end
  //BANCOS
  else if (wTabelaDePesquisa.ToUpper = 'BANCO')
  or (wTabelaDePesquisa.ToUpper = 'BANCOS')
  or (wTabelaDePesquisa.ToUpper = 'BANCOS_PDV_UTILITARIO') then
  begin
    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getBanco)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('id', retornaOpcao('id',cbOpcao,filtro))
            .AddParam('codBan', retornaOpcao('Código',cbOpcao,filtro))
            .AddParam('nome', retornaOpcao('Nome',cbOpcao,filtro))
            .AddParam('empresa', vvcodemp)
            .AddParam('ativo', '')
            .timeOut(12000)
            .Get;
  end;

  //------------------------------------------------------------------
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
      else if (wTabelaDePesquisa.ToUpper = 'VENDEDOR')
      or (wTabelaDePesquisa.ToUpper = 'VENDEDORES')
      or (wTabelaDePesquisa.ToUpper = 'VENDEDORESPDV')
      or (wTabelaDePesquisa.ToUpper = 'VENDEDORES_PDV_CONFIGURACOES') then
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
      //CLIENTES
      else if wTabelaDePesquisa.ToUpper = 'CLIENTE' then
      begin
        atualizaNomeColunaGrid(gridTela,'CLIENTE');
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
      //CFOP
      else if wTabelaDePesquisa.ToUpper = 'CFOP' then
      begin
        atualizaNomeColunaGrid(gridTela,'CFOP');
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
      else if (wTabelaDePesquisa.ToUpper = 'CLIENTES_PDV')
      or (wTabelaDePesquisa.ToUpper = 'CLIENTES_PDV_UTILITARIO') then
      begin
        atualizaNomeColunaGrid(gridTela,'CLIENTES_PDV');
      end
      //CCUSTO_PDV
      else if (wTabelaDePesquisa.ToUpper = 'CCUSTO')
        or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L1')
        or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L2')
        or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L3')
        or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L4')
        or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L5')
        or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L6')
        or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L7')
        or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L8')
        or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L9')
        or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L10')
        or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L11')
        or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L12')
        or (wTabelaDePesquisa.ToUpper = 'CCUSTO_CONTA')
        or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_UTILITARIO')
        or (wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_CONFIGURACOES') then
      begin
        atualizaNomeColunaGrid(gridTela,'CCUSTO_PDV');
      end
      //CONDPAG_PDV
      else if (wTabelaDePesquisa.ToUpper = 'CONDPAG_PDV') then
      begin
        atualizaNomeColunaGrid(gridTela,'CONDPAG_PDV');
      end
      //CLIENTES_TROCA_COD_CLI_INI
      else if wTabelaDePesquisa.ToUpper = 'CLIENTES_TROCA_COD_CLI_INI' then
      begin
        atualizaNomeColunaGrid(gridTela,'CLIENTES_TROCA_COD_CLI_INI');
      end
      //CLIENTES_TROCA_COD_CLI_FIN
      else if wTabelaDePesquisa.ToUpper = 'CLIENTES_TROCA_COD_CLI_FIN' then
      begin
        atualizaNomeColunaGrid(gridTela,'CLIENTES_TROCA_COD_CLI_FIN');
      end
      //CLIENTES_CONTA
      else if wTabelaDePesquisa.ToUpper = 'CLIENTES_CONTA' then
      begin
        atualizaNomeColunaGrid(gridTela,'CLIENTES_CONTA');
      end
      //DEPARTAMENTOS
      else if (wTabelaDePesquisa.ToUpper = 'DEPARTAMENTO')
      or (wTabelaDePesquisa.ToUpper = 'DEPARTAMENTOS') then
      begin
        atualizaNomeColunaGrid(gridTela,'DEPARTAMENTOS');
      end
      //BANCOS
      else if (wTabelaDePesquisa.ToUpper = 'BANCO')
      or (wTabelaDePesquisa.ToUpper = 'BANCOS')
      or (wTabelaDePesquisa.ToUpper = 'BANCOS_PDV_UTILITARIO') then
      begin
        atualizaNomeColunaGrid(gridTela,'BANCO');
      end
    finally
      jsonResp.Free;
    end;
  end
  else
  begin
    CDSTela.EmptyDataSet;
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
