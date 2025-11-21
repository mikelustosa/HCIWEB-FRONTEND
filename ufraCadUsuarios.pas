unit ufraCadUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, UniSFSweetAlert, UniFSToggle,
  uniImage, UniSFComboBox, uniEdit, uniBasicGrid, uniDBGrid, uniPanel,
  uniPageControl, uniScrollBox, uniButton, uniBitBtn, UniSFButton, UniSFBitBtn,
  uniLabel, uUtils, Data.DB, Datasnap.DBClient, system.JSON, uniTimer,
  UniSFLabel, uniHTMLFrame, uniCheckBox, UniSFiGrowl, URGLayoutUnigui;

type
  TfraCadUsuarios = class(TUniFrame)
    scrFundo: TUniScrollBox;
    alerta: TUniSFSweetAlert;
    DSTela: TDataSource;
    CDSTela: TClientDataSet;
    CDSTelabotaoEditar: TAggregateField;
    cpMenuTopo: TUniContainerPanel;
    lblDescricao: TUniLabel;
    btnNovo: TUniSFBitBtn;
    pgcTela: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    tabNovo: TUniTabSheet;
    cpMenuRodape: TUniContainerPanel;
    btnSalvar: TUniSFBitBtn;
    btnCancelar: TUniSFBitBtn;
    tgAtivo: TUniFSToggle;
    UniContainerPanel12: TUniContainerPanel;
    lblTipoManipulacao: TUniLabel;
    pn1: TUniPanel;
    sBoxFundoRegistro: TUniScrollBox;
    gridTela: TUniDBGrid;
    CDSTelaiconeAtivo: TAggregateField;
    cpPesquisa: TUniContainerPanel;
    UniContainerPanel22: TUniContainerPanel;
    lblFiltro: TUniSFLabel;
    UniContainerPanel23: TUniContainerPanel;
    UniContainerPanel24: TUniContainerPanel;
    UniSFLabel1: TUniSFLabel;
    UniContainerPanel26: TUniContainerPanel;
    UniSFBitBtn1: TUniSFBitBtn;
    UniSFLabel2: TUniSFLabel;
    UniContainerPanel27: TUniContainerPanel;
    edPesquisar: TUniEdit;
    UniPanel4: TUniPanel;
    htmlPermissoes: TUniHTMLFrame;
    UniPanel1: TUniPanel;
    edConfirmaSenha: TUniEdit;
    UniContainerPanel15: TUniContainerPanel;
    UniLabel12: TUniLabel;
    UniPanel2: TUniPanel;
    edUsuario: TUniEdit;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniPanel3: TUniPanel;
    edEmail: TUniEdit;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniPanel6: TUniPanel;
    edSenha: TUniEdit;
    UniContainerPanel14: TUniContainerPanel;
    UniLabel3: TUniLabel;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniPanel5: TUniPanel;
    edTelefone: TUniEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel4: TUniLabel;
    UniPanel7: TUniPanel;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel5: TUniLabel;
    chkPermiteAltDescProd: TUniCheckBox;
    chkBloqos: TUniCheckBox;
    alertaM: TUniSFiGrowl;
    imgFundo: TUniImage;
    btnFechar: TUniSFBitBtn;
    RGLayoutUnigui1: TRGLayoutUnigui;
    procedure UniFrameCreate(Sender: TObject);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure btnSalvarClick(Sender: TObject);
    procedure UniFrameReady(Sender: TObject);
    procedure btnSalvarAClick(Sender: TObject);
    procedure CDSTelaiconeAtivoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure edTelefoneKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure htmlPermissoesAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure tgAtivoToggled(const Value: Boolean);
    procedure chkBloqosChange(Sender: TObject);
    procedure chkPermiteAltDescProdChange(Sender: TObject);
    procedure edPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure imgFundoResize(Sender: TUniControl; OldWidth,
      OldHeight: Integer);
    procedure btnFecharClick(Sender: TObject);
  private
    alterando   :boolean;
    id          :string;

    cadcli      :array[0..2] of string;
    cadcli_i    :string;
    cadcli_a    :string;
    cadcli_e    :string;

    cadpro      :array[0..2] of string;
    cadpro_i    :string;
    cadpro_a    :string;
    cadpro_e    :string;

    opeest      :array[0..2] of string;
    opeest_i    :string;
    opeest_a    :string;
    opeest_e    :string;

    opecon      :array[0..2] of string;
    opecon_i    :string;
    opecon_a    :string;
    opecon_e    :string;

    cadpedven   :array[0..2] of string;
    cadpedven_i :string;
    cadpedven_a :string;
    cadpedven_e :string;

    cadpedcom   :array[0..2] of string;
    cadpedcom_i :string;
    cadpedcom_a :string;
    cadpedcom_e :string;

    opeoser     :array[0..2] of string;
    opeoser_i   :string;
    opeoser_a   :string;
    opeoser_e   :string;

    ger         :array[0..2] of string;
    ger_i       :string;
    ger_a       :string;
    ger_e       :string;

    empope      :string;

    mudaempValor  :string;
    mudaemp       :string;

    senhaespValor :string;
    senhaesp      :string;

    cadtabsupValor :string;
    cadtabsup      :string;

    botsaldoValor :string;
    botsaldo      :string;

    pedvenf4Valor :string;
    pedvenf4      :string;

    pedvenf7Valor :string;
    pedvenf7      :string;

    pedcomf4Valor  :string;
    pedcomf4       :string;

    pedcomf7Valor  :string;
    pedcomf7       :string;

    osf4Valor   :string;
    osf4        :string;

    osf7Valor   :string;
    osf7        :string;

    arvoreValor :string;
    arvore      :string;

    mostexValor :string;
    mostex      :string;

    ajustaimagemValor :string;
    ajustaimagem      :string;

    permitealtdescrValor  :string;
    permitealtdescr       :string;

    bloqosValor           :string;
    bloqos                :string;

    podexcelValor       :string;
    podexcel            :string;

    margemesquerdaValor :string;
    margemesquerda      :string;

    habcodpedValor      :string;
    habcodped           :string;

    podeverlucrValor    :string;
    podeverlucr         :string;

    podebaixarValor     :string;
    podebaixar          :string;

    edtcodbanValor      :string;
    edtcodban           :string;

    temfdvValor         :string;
    temfdv              :string; //Acesso ao botao sincroniza importação?

    versaldobancarioValor :string;
    versaldobancario      :string;
    ativo                 :string;

    procedure carregaDados;
    procedure retornar;
    procedure listar(pDado :string = '');
    procedure limpaCampos;
    procedure retornaHTMLPermissoesNovo();
    procedure retornaHTMLPermissoesAltera();
    procedure callBackMudaEmpresa(Sender: TComponent; AResult: Integer);
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Main, RESTRequest4D.request, MainModule, UniSFCore, uConstantes,
  System.StrUtils, ufrmListaEmpresas;

procedure TfraCadUsuarios.btnSalvarAClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
  arrEmpresas :TJSONArray;
  objEmpresa  :TJSONObject;
begin
  try
    jsonBody := TJSONObject.Create;

    // Cria o array de empresas
    arrEmpresas := TJSONArray.Create;

    // Cria um objeto para uma empresa
    objEmpresa := TJSONObject.Create;
    objEmpresa.AddPair('cod_empresa', '1');
    objEmpresa.AddPair('cod_perfil', '1');

    // Adiciona o objeto ao array
    arrEmpresas.AddElement(objEmpresa);

    // Monta o JSON principal
    jsonBody.AddPair('usuario', edUsuario.Text);
    jsonBody.AddPair('senha', edSenha.Text);
    jsonBody.AddPair('email', edEmail.Text);
    jsonBody.AddPair('empresas', arrEmpresas); // Passa o array como JSON, não string
    jsonBody.AddPair('ativo', TJSONNumber.Create(toggleParaInt(tgAtivo)));


    resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(getUsuario)
                .AddParam('nomeBanco', 'desenvolvimento')
                .AddParam('cod_usuario', id)
                .AddBody(jsonBody.ToString)
                .Timeout(12000)
                .Put;

    //limpaCookiesEdits;
    alerta.Info(resp1.Content);
    retornar;

  finally
    jsonBody.Free;
  end;

end;

procedure TfraCadUsuarios.btnSalvarClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
begin
  if ((edSenha.Text = '') or (edConfirmaSenha.Text = '')) or ((edSenha.Text <> edConfirmaSenha.Text)) then
  begin
    alerta.Error('Campos senha e confirme a senha não conferem ou não podem ser vazias.');
    exit;
  end;

  if empope = '' then
  begin
    alerta.Error('Escolha uma empresa de operação.');
    exit;
  end;

  try
    jsonBody := TJSONObject.Create;

    // Monta o JSON principal
    jsonBody.AddPair('usuario', edUsuario.Text);
    jsonBody.AddPair('senha', edSenha.Text);
    jsonBody.AddPair('email', edEmail.Text);
    jsonBody.AddPair('telefone', edTelefone.Text);
    jsonBody.AddPair('geral',  ger[0] + ger[1] + ger[2]);
    jsonBody.AddPair('cadcli', cadcli[0] + cadcli[1] + cadcli[2]);
    jsonBody.AddPair('cadpro', cadpro[0] + cadpro[1] + cadpro[2]);
    jsonBody.AddPair('opeest', opeest[0] + opeest[1] + opeest[2]);
    jsonBody.AddPair('opecon', opecon[0] + opecon[1] + opecon[2]);
    jsonBody.AddPair('pedven', cadpedven[0] + cadpedven[1] + cadpedven[2]);
    jsonBody.AddPair('pedcom', cadpedcom[0] + cadpedcom[1] + cadpedcom[2]);
    jsonBody.AddPair('operos', opeoser[0] + opeoser[1] + opeoser[2]);
    jsonBody.AddPair('empope', empope);
    jsonBody.AddPair('mudaemp', mudaempValor);
    jsonBody.AddPair('senhaesp', senhaespValor);
    jsonBody.AddPair('cadtabsup', cadtabsupValor);
    jsonBody.AddPair('botsaldo', botsaldoValor);
    jsonBody.AddPair('pedvenf7', pedvenf7Valor);
    jsonBody.AddPair('pedvenf4', pedvenf4Valor);
    jsonBody.AddPair('pedcomf7', pedcomf7Valor);
    jsonBody.AddPair('pedcomf4', pedcomf4Valor);
    jsonBody.AddPair('osf7', osf7Valor);
    jsonBody.AddPair('osf4', osf4Valor);
    jsonBody.AddPair('arvore', arvoreValor);
    jsonBody.AddPair('mostex', mostexValor);
    jsonBody.AddPair('ajustaimagem', ajustaimagemValor);
    jsonBody.AddPair('permitealtdescr', permitealtdescrValor);
    jsonBody.AddPair('bloqos', bloqosValor);
    jsonBody.AddPair('podexcel', podexcelValor);
    jsonBody.AddPair('margemesquerda', margemesquerda);
    jsonBody.AddPair('habcodped', habcodpedValor);
    jsonBody.AddPair('podeverlucr', podeverlucrValor);
    jsonBody.AddPair('podebaixar', podebaixarValor);
    jsonBody.AddPair('edtcodban', edtcodbanValor);
    jsonBody.AddPair('temfdv', temfdvValor);
    jsonBody.AddPair('versaldobancario', versaldobancarioValor);
    jsonBody.AddPair('ativo', ativo);

    if alterando then
    begin
    resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(putUsuario)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddParam('id', id)
                .AddBody(jsonBody.ToString)
                .Timeout(12000)
                .Put;

      alerta.Info('Cadastro alterado com sucesso!');
    end else
      begin
        resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(postUsuario)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddParam('id', id)
                .AddBody(jsonBody.ToString)
                .Timeout(12000)
                .Post;

        alerta.Info('Cadastro incluido com sucesso!');
      end;

    retornar;

  finally
    jsonBody.Free;
  end;
end;

procedure TfraCadUsuarios.btnCancelarClick(Sender: TObject);
begin
//  alerta.QuestionBasic('Deseja voltar sem salvar?',
//  procedure(const ButtonClicked: TAButton)
//  begin
//    if ButtonClicked = abConfirm then
//    begin
//      limpaCookiesEdits;
//      pgcTela.ActivePageIndex := 0;
//    end;
//  end);

  //limpaCookiesEditRecursivo(self);
  pgcTela.ActivePageIndex := 0;
end;

procedure TfraCadUsuarios.btnFecharClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente fechar esta aba?', mtConfirmation, mbYesNo) = mrYes then
    FecharAbaAtualComSeguranca(frmPrincipal.pagePrincipal);
end;

procedure TfraCadUsuarios.btnNovoClick(Sender: TObject);
begin
  limpaCampos;
  pgcTela.ActivePageIndex := 1;
  //Posiciona o scroll para o inicio
  uniSession.AddJS('scrollParaInicio("htmlPermissoes-innerCt")');
end;

procedure TfraCadUsuarios.callBackMudaEmpresa(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaEmpresas.ModalResult = mrOk then
  begin
    empope := frmListaEmpresas.idEmpresa;
    UniSession.AddJS(Format('mudarempresa("%s");', [empope]));
    alertaM.info('Empresa selecionada: <b>' + empope + '</b>');
  end;
end;

procedure TfraCadUsuarios.carregaDados;
begin
  alterando            := true;
  id                   := gridTela.Columns[0].Field.AsString;
  edUsuario.Text       := gridTela.Columns[1].Field.AsString;
  edEmail.Text         := gridTela.Columns[3].Field.AsString;
  edTelefone.text      := gridTela.Columns[4].Field.AsString;
  edSenha.Text         := gridTela.Columns[2].Field.AsString;
  edConfirmaSenha.Text := gridTela.Columns[2].Field.AsString;

  edUsuario.WebFocus;
  lblTipoManipulacao.Caption := 'ALTERA REGISTRO';

  {$REGION 'inicio do tratamentos do retorno das permissões'}
  ger[0]   := copy(UPPERCASE(gridTela.Columns[5].Field.AsString), 1, 1);
  ger[1]   := copy(UPPERCASE(gridTela.Columns[5].Field.AsString), 2, 1);
  ger[2]   := copy(UPPERCASE(gridTela.Columns[5].Field.AsString), 3, 1);

  ger_i       := ifThen(ger[0] = 'S', 'checked', '');
  ger_a       := ifThen(ger[1] = 'S', 'checked', '');
  ger_e       := ifThen(ger[2] = 'S', 'checked', '');

  cadcli[0]   := copy(UPPERCASE(gridTela.Columns[6].Field.AsString), 1, 1);
  cadcli[1]   := copy(UPPERCASE(gridTela.Columns[6].Field.AsString), 2, 1);
  cadcli[2]   := copy(UPPERCASE(gridTela.Columns[6].Field.AsString), 3, 1);

  cadcli_i    := ifThen(cadcli[0] = 'S', 'checked', '');
  cadcli_a    := ifThen(cadcli[1] = 'S', 'checked', '');
  cadcli_e    := ifThen(cadcli[2] = 'S', 'checked', '');

  cadpro[0]   := copy(UPPERCASE(gridTela.Columns[7].Field.AsString), 1, 1);
  cadpro[1]   := copy(UPPERCASE(gridTela.Columns[7].Field.AsString), 2, 1);
  cadpro[2]   := copy(UPPERCASE(gridTela.Columns[7].Field.AsString), 3, 1);

  cadpro_i    := ifThen(cadpro[0] = 'S', 'checked', '');
  cadpro_a    := ifThen(cadpro[1] = 'S', 'checked', '');
  cadpro_e    := ifThen(cadpro[2] = 'S', 'checked', '');

  opeest[0]   := copy(UPPERCASE(gridTela.Columns[8].Field.AsString), 1, 1);
  opeest[1]   := copy(UPPERCASE(gridTela.Columns[8].Field.AsString), 2, 1);
  opeest[2]   := copy(UPPERCASE(gridTela.Columns[8].Field.AsString), 3, 1);

  opeest_i    := ifThen(opeest[0] = 'S', 'checked', '');
  opeest_a    := ifThen(opeest[1] = 'S', 'checked', '');
  opeest_e    := ifThen(opeest[2] = 'S', 'checked', '');


  opecon[0]   := copy(UPPERCASE(gridTela.Columns[9].Field.AsString), 1, 1);
  opecon[1]   := copy(UPPERCASE(gridTela.Columns[9].Field.AsString), 2, 1);
  opecon[2]   := copy(UPPERCASE(gridTela.Columns[9].Field.AsString), 3, 1);

  opecon_i    := ifThen(opecon[0] = 'S', 'checked', '');
  opecon_a    := ifThen(opecon[1] = 'S', 'checked', '');
  opecon_e    := ifThen(opecon[2] = 'S', 'checked', '');


  cadpedven[0] := copy(UPPERCASE(gridTela.Columns[10].Field.AsString), 1, 1);
  cadpedven[1] := copy(UPPERCASE(gridTela.Columns[10].Field.AsString), 2, 1);
  cadpedven[2] := copy(UPPERCASE(gridTela.Columns[10].Field.AsString), 3, 1);

  cadpedven_i  := ifThen(cadpedven[0] = 'S', 'checked', '');
  cadpedven_a  := ifThen(cadpedven[1] = 'S', 'checked', '');
  cadpedven_e  := ifThen(cadpedven[2] = 'S', 'checked', '');


  cadpedcom[0] := copy(UPPERCASE(gridTela.Columns[11].Field.AsString), 1, 1);
  cadpedcom[1] := copy(UPPERCASE(gridTela.Columns[11].Field.AsString), 2, 1);
  cadpedcom[2] := copy(UPPERCASE(gridTela.Columns[11].Field.AsString), 3, 1);

  cadpedcom_i := ifThen(cadpedcom[0] = 'S', 'checked', '');
  cadpedcom_a := ifThen(cadpedcom[1] = 'S', 'checked', '');
  cadpedcom_e := ifThen(cadpedcom[2] = 'S', 'checked', '');


  opeoser[0] := copy(UPPERCASE(gridTela.Columns[12].Field.AsString), 1, 1);
  opeoser[1] := copy(UPPERCASE(gridTela.Columns[12].Field.AsString), 2, 1);
  opeoser[2] := copy(UPPERCASE(gridTela.Columns[12].Field.AsString), 3, 1);

  opeoser_i   := ifThen(opeoser[0] = 'S', 'checked', '');
  opeoser_a   := ifThen(opeoser[1] = 'S', 'checked', '');
  opeoser_e   := ifThen(opeoser[2] = 'S', 'checked', '');


  empope      := UPPERCASE(gridTela.Columns[13].Field.AsString);

  mudaempValor  := UPPERCASE(gridTela.Columns[14].Field.AsString);
  mudaemp       := ifThen(mudaempValor = 'S', 'checked', '');

  senhaespValor := UPPERCASE(gridTela.Columns[15].Field.AsString);
  senhaesp      := ifThen(senhaespValor = 'S', 'checked', '');

  cadtabsupValor := UPPERCASE(gridTela.Columns[16].Field.AsString);
  cadtabsup      := ifThen(cadtabsupValor = 'S', 'checked', '');

  botsaldoValor := UPPERCASE(gridTela.Columns[17].Field.AsString);
  botsaldo      := ifThen(botsaldoValor = 'S', 'checked', '');

  pedvenf7Valor := UPPERCASE(gridTela.Columns[18].Field.AsString);
  pedvenf7      := ifThen(pedvenf7Valor = 'S', 'checked', '');

  pedvenf4Valor := UPPERCASE(gridTela.Columns[19].Field.AsString);
  pedvenf4      := ifThen(pedvenf4Valor = 'S', 'checked', '');

  pedcomf7Valor := UPPERCASE(gridTela.Columns[20].Field.AsString);
  pedcomf7      := ifThen(pedcomf7Valor = 'S', 'checked', '');

  pedcomf4Valor := UPPERCASE(gridTela.Columns[21].Field.AsString);
  pedcomf4      := ifThen(pedcomf4Valor = 'S', 'checked', '');

  osf7Valor := UPPERCASE(gridTela.Columns[22].Field.AsString);
  osf7      := ifThen(osf7Valor = 'S', 'checked', '');

  osf4Valor := UPPERCASE(gridTela.Columns[23].Field.AsString);
  osf4      := ifThen(osf4Valor = 'S', 'checked', '');

  arvoreValor := UPPERCASE(gridTela.Columns[24].Field.AsString);
  arvore      := ifThen(arvoreValor = 'S', 'checked', '');

  mostexValor := UPPERCASE(gridTela.Columns[25].Field.AsString);
  mostex      := ifThen(mostexValor = 'S', 'checked', '');

  ajustaimagemValor := UPPERCASE(gridTela.Columns[26].Field.AsString);
  ajustaimagem      := ifThen(ajustaimagemValor = 'S', 'checked', '');

  permitealtdescrValor          := UPPERCASE(gridTela.Columns[27].Field.AsString);
  permitealtdescr               := ifThen(permitealtdescrValor = 'S', 'checked', '');
  chkPermiteAltDescProd.Checked := retornaBoleano(gridTela.Columns[27].Field.AsString);

  bloqosValor       := UPPERCASE(gridTela.Columns[28].Field.AsString);
  bloqos            := ifThen(bloqosValor = 'S', 'checked', '');
  chkBloqos.Checked := retornaBoleano(gridTela.Columns[28].Field.AsString);

  podexcelValor := UPPERCASE(gridTela.Columns[29].Field.AsString);
  podexcel      := ifThen(podexcelValor = 'S', 'checked', '');

  margemesquerda := UPPERCASE(gridTela.Columns[30].Field.AsString);

  habcodpedValor := UPPERCASE(gridTela.Columns[31].Field.AsString);
  habcodped      := ifThen(habcodpedValor = 'S', 'checked', '');

  podeverlucrValor := UPPERCASE(gridTela.Columns[32].Field.AsString);
  podeverlucr      := ifThen(podeverlucrValor = 'S', 'checked', '');

  podebaixarValor := UPPERCASE(gridTela.Columns[33].Field.AsString);
  podebaixar      := ifThen(podebaixarValor = 'S', 'checked', '');

  edtcodbanValor := UPPERCASE(gridTela.Columns[34].Field.AsString);
  edtcodban      := ifThen(edtcodbanValor = 'S', 'checked', '');

  temfdvValor := UPPERCASE(gridTela.Columns[35].Field.AsString);
  temfdv      := ifThen(temfdvValor = 'S', 'checked', '');

  versaldobancarioValor := UPPERCASE(gridTela.Columns[36].Field.AsString);
  versaldobancario      := ifThen(versaldobancarioValor = 'S', 'checked', '');

  tgAtivo.Toggled      := retornaBoleano(gridTela.Columns[37].Field.AsString);
  {$ENDREGION 'inicio do tratamentos do retorno das permissões'}

  retornaHTMLPermissoesAltera;

  //Posiciona o scroll para o inicio
  uniSession.AddJS('scrollParaInicio("htmlPermissoes-innerCt")');
end;

procedure TfraCadUsuarios.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Editar', 'editar', 'dc3545');
end;

procedure TfraCadUsuarios.CDSTelaiconeAtivoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTela.FieldByName('ativo').AsString, Text, DisplayText);
end;

procedure TfraCadUsuarios.chkPermiteAltDescProdChange(Sender: TObject);
begin
  if chkPermiteAltDescProd.Checked then
    permitealtdescrValor := 'S' else
    permitealtdescrValor := 'N';
end;

procedure TfraCadUsuarios.edPesquisarKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    listar(edPesquisar.Text)
end;

procedure TfraCadUsuarios.edTelefoneKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if length(edTelefone.text) >= 10 then
    UniSession.AddJS('aplicarMascaraTelefone("edTelefone-inputEl")') else
   if length(edTelefone.text) <= 6 then
    UniSession.AddJS('removerMascaraTelefone("edTelefone-inputEl")')
end;

procedure TfraCadUsuarios.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    pgcTela.ActivePageIndex := 1;
    carregaDados;
  end;
end;


procedure TfraCadUsuarios.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfraCadUsuarios.htmlPermissoesAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
var
  mMenuEvento :TStringList;
begin
  try
      mMenuEvento := TStringList.Create;
      mMenuEvento.Delimiter :=':';
      mMenuEvento.DelimitedText := EventName;

      if mMenuEvento[0] = 'mudarempresa' then
      begin
        frmListaEmpresas.showModal(callBackMudaEmpresa);
      end else
        if mMenuEvento[0] = 'permissao' then
        begin
          //Rotina necessária para alterar entre S ou N ao clicar nos checkboxs das permissões

          //cadcli_i
          if mMenuEvento[1] = 'cadcli_i' then
          begin
            if cadcli[0] = 'S' then
            begin
              cadcli[0] := 'N';
            end else
              begin
                cadcli[0] := 'S';
              end;
          end else
            if mMenuEvento[1] = 'cadcli_a' then
            begin
              if cadcli[1] = 'S' then
              begin
                cadcli[1] := 'N';
              end else
                begin
                  cadcli[1] := 'S';
                end;
            end else
              if mMenuEvento[1] = 'cadcli_e' then
              begin
                if cadcli[2] = 'S' then
                begin
                  cadcli[2] := 'N';
                end else
                  begin
                    cadcli[2] := 'S';
                  end;
              end;

          //cadpro
          if mMenuEvento[1] = 'cadpro_i' then
          begin
            if cadpro[0] = 'S' then
            begin
              cadpro[0] := 'N';
            end else
              begin
                cadpro[0] := 'S';
              end;
          end else
            if mMenuEvento[1] = 'cadpro_a' then
            begin
              if cadpro[1] = 'S' then
              begin
                cadpro[1] := 'N';
              end else
                begin
                  cadpro[1] := 'S';
                end;
            end else
              if mMenuEvento[1] = 'cadpro_e' then
              begin
                if cadpro[2] = 'S' then
                begin
                  cadpro[2] := 'N';
                end else
                  begin
                    cadpro[2] := 'S';
                  end;
              end;

          //opeest
          if mMenuEvento[1] = 'opeest_i' then
          begin
            if opeest[0] = 'S' then
            begin
              opeest[0] := 'N';
            end else
              begin
                opeest[0] := 'S';
              end;
          end else
            if mMenuEvento[1] = 'opeest_a' then
            begin
              if opeest[1] = 'S' then
              begin
                opeest[1] := 'N';
              end else
                begin
                  opeest[1] := 'S';
                end;
            end else
              if mMenuEvento[1] = 'opeest_e' then
              begin
                if opeest[2] = 'S' then
                begin
                  opeest[2] := 'N';
                end else
                  begin
                    opeest[2] := 'S';
                  end;
              end;

          //opecon
          if mMenuEvento[1] = 'opecon_i' then
          begin
            if opecon[0] = 'S' then
            begin
              opecon[0] := 'N';
            end else
              begin
                opecon[0] := 'S';
              end;
          end else
            if mMenuEvento[1] = 'opecon_a' then
            begin
              if opecon[1] = 'S' then
              begin
                opecon[1] := 'N';
              end else
                begin
                  opecon[1] := 'S';
                end;
            end else
              if mMenuEvento[1] = 'opecon_e' then
              begin
                if opecon[2] = 'S' then
                begin
                  opecon[2] := 'N';
                end else
                  begin
                    opecon[2] := 'S';
                  end;
              end;

          //cadpedven
          if mMenuEvento[1] = 'cadpedven_i' then
          begin
            if cadpedven[0] = 'S' then
            begin
              cadpedven[0] := 'N';
            end else
              begin
                cadpedven[0] := 'S';
              end;
          end else
            if mMenuEvento[1] = 'cadpedven_a' then
            begin
              if cadpedven[1] = 'S' then
              begin
                cadpedven[1] := 'N';
              end else
                begin
                  cadpedven[1] := 'S';
                end;
            end else
              if mMenuEvento[1] = 'cadpedven_e' then
              begin
                if cadpedven[2] = 'S' then
                begin
                  cadpedven[2] := 'N';
                end else
                  begin
                    cadpedven[2] := 'S';
                  end;
              end;

          //cadpedcom
          if mMenuEvento[1] = 'cadpedcom_i' then
          begin
            if cadpedcom[0] = 'S' then
            begin
              cadpedcom[0] := 'N';
            end else
              begin
                cadpedcom[0] := 'S';
              end;
          end else
            if mMenuEvento[1] = 'cadpedcom_a' then
            begin
              if cadpedcom[1] = 'S' then
              begin
                cadpedcom[1] := 'N';
              end else
                begin
                  cadpedcom[1] := 'S';
                end;
            end else
              if mMenuEvento[1] = 'cadpedcom_e' then
              begin
                if cadpedcom[2] = 'S' then
                begin
                  cadpedcom[2] := 'N';
                end else
                  begin
                    cadpedcom[2] := 'S';
                  end;
              end;

          //opeoser
          if mMenuEvento[1] = 'opeoser_i' then
          begin
            if opeoser[0] = 'S' then
            begin
              opeoser[0] := 'N';
            end else
              begin
                opeoser[0] := 'S';
              end;
          end else
            if mMenuEvento[1] = 'opeoser_a' then
            begin
              if opeoser[1] = 'S' then
              begin
                opeoser[1] := 'N';
              end else
                begin
                  opeoser[1] := 'S';
                end;
            end else
              if mMenuEvento[1] = 'opeoser_e' then
              begin
                if opeoser[2] = 'S' then
                begin
                  opeoser[2] := 'N';
                end else
                  begin
                    opeoser[2] := 'S';
                  end;
              end;

          //ger
          if mMenuEvento[1] = 'ger_i' then
          begin
            if ger[0] = 'S' then
            begin
              ger[0] := 'N';
            end else
              begin
                ger[0] := 'S';
              end;
          end else
            if mMenuEvento[1] = 'ger_a' then
            begin
              if ger[1] = 'S' then
              begin
                ger[1] := 'N';
              end else
                begin
                  ger[1] := 'S';
                end;
            end else
              if mMenuEvento[1] = 'ger_e' then
              begin
                if ger[2] = 'S' then
                begin
                  ger[2] := 'N';
                end else
                  begin
                    ger[2] := 'S';
                  end;
              end;


          //mudaemp
          if mMenuEvento[1] = 'mudaemp' then
          begin
            if mudaempValor = 'S' then
            begin
              mudaempValor := 'N';
            end else
              begin
                mudaempValor := 'S';
              end;
          end;

          //senhaesp
          if mMenuEvento[1] = 'senhaesp' then
          begin
            if senhaespValor = 'S' then
            begin
              senhaespValor := 'N';
            end else
              begin
                senhaespValor := 'S';
              end;
          end;

          //botsaldo
          if mMenuEvento[1] = 'botsaldo' then
          begin
            if botsaldoValor = 'S' then
            begin
              botsaldoValor := 'N';
            end else
              begin
                botsaldoValor := 'S';
              end;
          end;

          //cadtabsup
          if mMenuEvento[1] = 'cadtabsup' then
          begin
            if cadtabsupValor = 'S' then
            begin
              cadtabsupValor := 'N';
            end else
              begin
                cadtabsupValor := 'S';
              end;
          end;

          //pedvenf4
          if mMenuEvento[1] = 'pedvenf4' then
          begin
            if pedvenf4Valor = 'S' then
            begin
              pedvenf4Valor := 'N';
            end else
              begin
                pedvenf4Valor := 'S';
              end;
          end;

          //pedvenf7
          if mMenuEvento[1] = 'pedvenf7' then
          begin
            if pedvenf7Valor = 'S' then
            begin
              pedvenf7Valor := 'N';
            end else
              begin
                pedvenf7Valor := 'S';
              end;
          end;

          //pedcomf4
          if mMenuEvento[1] = 'pedcomf4' then
          begin
            if pedcomf4Valor = 'S' then
            begin
              pedcomf4Valor := 'N';
            end else
              begin
                pedcomf4Valor := 'S';
              end;
          end;

          //pedcomf7
          if mMenuEvento[1] = 'pedcomf7' then
          begin
            if pedcomf7Valor = 'S' then
            begin
              pedcomf7Valor := 'N';
            end else
              begin
                pedcomf7Valor := 'S';
              end;
          end;

          //osf4
          if mMenuEvento[1] = 'osf4' then
          begin
            if osf4Valor = 'S' then
            begin
              osf4Valor := 'N';
            end else
              begin
                osf4Valor := 'S';
              end;
          end;

          //osf7
          if mMenuEvento[1] = 'osf7' then
          begin
            if osf7Valor = 'S' then
            begin
              osf7Valor := 'N';
            end else
              begin
                osf7Valor := 'S';
              end;
          end;

          //arvore
          if mMenuEvento[1] = 'arvore' then
          begin
            if arvoreValor = 'S' then
            begin
              arvoreValor := 'N';
            end else
              begin
                arvoreValor := 'S';
              end;
          end;

          //mostex
          if mMenuEvento[1] = 'mostex' then
          begin
            if mostexValor = 'S' then
            begin
              mostexValor := 'N';
            end else
              begin
                mostexValor := 'S';
              end;
          end;

          //ajustaimagem
          if mMenuEvento[1] = 'ajustaimagem' then
          begin
            if ajustaimagemValor = 'S' then
            begin
              ajustaimagemValor := 'N';
            end else
              begin
                ajustaimagemValor := 'S';
              end;
          end;

          //permitealtdescr
          if mMenuEvento[1] = 'permitealtdescr' then
          begin
            if permitealtdescrValor = 'S' then
            begin
              permitealtdescrValor := 'N';
            end else
              begin
                permitealtdescrValor := 'S';
              end;
          end;

          //bloqos
          if mMenuEvento[1] = 'bloqos' then
          begin
            if bloqosValor = 'S' then
            begin
              bloqosValor := 'N';
            end else
              begin
                bloqosValor := 'S';
              end;
          end;

          //podexcel
          if mMenuEvento[1] = 'podexcel' then
          begin
            if podexcelValor = 'S' then
            begin
              podexcelValor := 'N';
            end else
              begin
                podexcelValor := 'S';
              end;
          end;

          //habcodped
          if mMenuEvento[1] = 'habcodped' then
          begin
            if habcodpedValor = 'S' then
            begin
              habcodpedValor := 'N';
            end else
              begin
                habcodpedValor := 'S';
              end;
          end;

          //podeverlucr
          if mMenuEvento[1] = 'podeverlucr' then
          begin
            if podeverlucrValor = 'S' then
            begin
              podeverlucrValor := 'N';
            end else
              begin
                podeverlucrValor := 'S';
              end;
          end;

          //podebaixar
          if mMenuEvento[1] = 'podebaixar' then
          begin
            if podebaixarValor = 'S' then
            begin
              podebaixarValor := 'N';
            end else
              begin
                podebaixarValor := 'S';
              end;
          end;

          //edtcodban
          if mMenuEvento[1] = 'edtcodban' then
          begin
            if edtcodbanValor = 'S' then
            begin
              edtcodbanValor := 'N';
            end else
              begin
                edtcodbanValor := 'S';
              end;
          end;

          //temfdv
          if mMenuEvento[1] = 'temfdv' then
          begin
            if temfdvValor = 'S' then
            begin
              temfdvValor := 'N';
            end else
              begin
                temfdvValor := 'S';
              end;
          end;

          //versaldobancario
          if mMenuEvento[1] = 'versaldobancario' then
          begin
            if versaldobancarioValor = 'S' then
            begin
              versaldobancarioValor := 'N';
            end else
              begin
                versaldobancarioValor := 'S';
              end;
          end;



        end else
          if mMenuEvento[0] = 'permissaoamargemesquerda' then
          begin
            margemesquerda := mMenuEvento[1];
          end;

  finally
    mMenuEvento.Free;
  end;
end;

procedure TfraCadUsuarios.retornaHTMLPermissoesAltera;
var
  html  :string;
begin
  html :=

  '<!doctype html>'+
  '<html lang="pt-BR">'+
  '<head>'+
  '<meta charset="utf-8" />'+
  '<meta name="viewport" content="width=device-width, initial-scale=1" />'+
  '<title>Tela de Cadastro – Especial / Outros</title>'+

  '<style>'+
    ':root{'+
      '--bg: #f4f4f6;'+
      '--panel: #ffffff;'+
      '--border: #c9c9c9;'+
      '--border-dark: #b3b3b3;'+
      '--title-red: #cc2020;'+
      '--header-green: #98c37f;'+
      '--label: #2b2b2b;'+
      '--muted:#777;'+
      '--link: #2c6bcf;'+
      '--row-alt: #fafafa;'+
      '--card-gap:#eeeeee;'+
    '}'+

    'body{ margin:0; background: var(--bg); color:#222; font: 14px/1.35 "Segoe UI", Roboto, Arial, sans-serif; }'+
    '.wrap{ max-width: 860px; margin: 20px auto; padding: 12px; }'+
    '.card{'+
      'background: var(--panel);'+
      'border: 1px solid var(--border);'+
      'border-radius: 6px;'+
      'box-shadow: 0 1px 1px rgba(0,0,0,.04);'+
      'overflow: hidden;'+
    '}'+

    '.section-title{'+
      'text-align:center; font-weight:700; font-size: 13px; color: var(--title-red);'+
      'padding: 5px 8px 8px; border-bottom: 1px solid var(--border);'+
      'font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;'+
    '}'+

    '/* Tabela desktop */'+
    '.table-wrap{ overflow:auto; }'+
    'table.perms{ width:100%; border-collapse: collapse; min-width: 640px; }'+
    'table.perms td, table.perms th{ border:1px solid var(--border); padding:8px 10px; vertical-align:middle; }'+
    'thead.grid-head{ background: linear-gradient(#cbe6b7, #a8d28e); color:#1a3d15; font-weight:700; }'+
    '.grid-head th{ text-align:center; border-color: var(--border-dark); }'+
    '.left-col{ width:60%; color:var(--label); background:#fff; }'+
    '.perms tr:nth-child(even) td.left-col{ background: var(--row-alt); }'+

    '/* Checkbox moderno */'+
    '.chk{ position:relative; display:inline-grid; place-items:center; width:20px; height:20px; }'+
    '.chk input{'+
      'appearance:none; -webkit-appearance:none;'+
      'width:100%; height:100%; margin:0; border:2px solid #bdbdbd; border-radius:4px; background:#fff;'+
      'cursor:pointer; transition: background .2s ease, border-color .2s ease, box-shadow .2s ease, transform .06s ease;'+
    '}'+
    '.chk input:hover{ border-color:#0d6efd; box-shadow:0 0 6px rgba(13,110,253,.35); }'+
    '.chk input:active{ transform:scale(.96); }'+
    '.chk input:checked{ background:#0d6efd; border-color:#0d6efd; }'+
    '.chk input:checked::after{'+
      'content:"✓"; color:#fff; font-weight:800; font-size:14px; line-height:1; position:absolute; transform:translateY(-1px);'+
    '}'+
    '.chk input:focus-visible{ outline:none; box-shadow:0 0 0 3px rgba(13,110,253,.25); }'+

    '.inline-input{ display:flex; align-items:center; gap:6px; min-width:180px; }'+
    '.inline-input input[type="number"]{'+
      'width:56px; padding:6px 6px; border:1px solid var(--border-dark); border-radius:3px; background:#fff;'+
    '}'+
    '.btn-icon{'+
      'display:inline-flex; align-items:center; justify-content:center; width:28px; height:28px;'+
      'border:1px solid var(--border-dark); border-radius:4px; background: linear-gradient(#f6f6f6,#e9e9e9); cursor:pointer;'+
    '}'+
    '.btn-icon svg{ width:16px; height:16px }'+
    '.btn-icon:active{ transform: translateY(1px); }'+

    '.inline-actions a{ color:var(--link); text-decoration:underline; margin-right:10px; white-space:nowrap; }'+
    '.muted{ color:var(--muted); }'+

    '/* ======= MODO MOBILE (empilha e rotula) ======= */'+
    '@media (max-width: 640px){'+
      '.wrap{ padding: 8px; }'+
      '.section-title{ font-size: 18px; }'+

      '/* some o thead e transforme linhas em "cards" */'+
      'table.perms{ min-width:0; }'+
      'table.perms thead{ display:none; }'+

      'table.perms, table.perms tbody, table.perms tr, table.perms td{ display:block; width:100%; }'+
      'table.perms tr{'+
        'border:1px solid var(--border);'+
        'border-radius:8px;'+
        'margin: 10px 0;'+
        'overflow:hidden;'+
        'box-shadow: 0 1px 1px rgba(0,0,0,.03);'+
        'background:#fff;'+
      '}'+
      'table.perms td{'+
        'border:none;'+
        'border-bottom:1px solid var(--card-gap);'+
        'padding:10px 12px;'+
        'display:flex; align-items:center; justify-content:space-between; gap:12px;'+
      '}'+
      'table.perms td:last-child{ border-bottom:none; }'+

      '/* primeira célula (Localização) ocupa linha inteira e fica destacada */'+
      'table.perms td.left-col{'+
        'background:#f9fafb; font-weight:700; color:#1f2937;'+
      '}'+

      '/* rótulos automáticos para as colunas 2, 3 e 4 */'+
      'table.perms td:nth-child(2)::before{ content:"Inclusão"; color:#000000; font-size:12px; }'+
      'table.perms td:nth-child(3)::before{ content:"Alteração"; color:#000000; font-size:12px; }'+
      'table.perms td:nth-child(4)::before{ content:"Exclusão"; color:#000000; font-size:12px; }'+

      '/* colunas que possuem colspan (inputs/observações) viram bloco cheio */'+
      'table.perms td[colspan]{'+
        'display:block; padding:12px;'+
      '}'+

      '/* aumentar área de toque do checkbox */'+
      '.chk{ width:24px; height:24px; }'+
      '.chk input:checked::after{ font-size:16px; }'+

      '/* ajustar linhas com atalhos [F4][F7] */'+
      '.inline-actions a{ display:inline-block; margin-right:8px; }'+
    '}'+
  '</style>'+
  '</head>'+
  '<body>'+
    '<div class="wrap">'+
      '<div class="card">'+
        '<div class="section-title">ESPECIAL</div>'+

        '<div class="table-wrap">'+
          '<table class="perms" aria-label="Permissões - Especial">'+
            '<thead class="grid-head">'+
              '<tr style="color: black">'+
                '<th class="left-col" style="text-align:left;">Localização</th>'+
                '<th>Inclusão</th>'+
                '<th>Alteração</th>'+
                '<th>Exclusão</th>'+
              '</tr>'+
            '</thead>'+
            '<tbody>'+
              //Atribuindo as permissões retornadas no endpoint.
              '<tr>'+
                '<td class="left-col"><strong>Cadastro de clientes:</strong></td>'+
                '<td><label class="chk"><input id="cadcli_i" type="checkbox" '+cadcli_i+' onclick="selectButton(this)"></label></td>'+
                '<td><label class="chk"><input id="cadcli_a" type="checkbox" '+cadcli_a+' onclick="selectButton(this)"></label></td>'+
                '<td><label class="chk"><input id="cadcli_e" type="checkbox" '+cadcli_e+' onclick="selectButton(this)"></label></td>'+
              '</tr>'+
              '<tr>'+
                '<td class="left-col"><strong>Cadastro de produtos:</strong></td>'+
                '<td><label class="chk"><input id="cadpro_i" type="checkbox" '+cadpro_i+' onclick="selectButton(this)"></label></td>'+
                '<td><label class="chk"><input id="cadpro_a" type="checkbox" '+cadpro_a+' onclick="selectButton(this)"></label></td>'+
                '<td><label class="chk"><input id="cadpro_e" type="checkbox" '+cadpro_e+' onclick="selectButton(this)"></label></td>'+
              '</tr>'+
              '<tr>'+
                '<td class="left-col"><strong>Operação Estoque:</strong></td>'+
                '<td><label class="chk"><input id="opeest_i" type="checkbox" '+opeest_i+' onclick="selectButton(this)"></label></td>'+
                '<td><label class="chk"><input id="opeest_a" type="checkbox" '+opeest_a+' onclick="selectButton(this)"></label></td>'+
                '<td><label class="chk"><input id="opeest_e" type="checkbox" '+opeest_e+' onclick="selectButton(this)"></label></td>'+
              '</tr>'+
              '<tr>'+
                '<td class="left-col"><strong>Operação contas:</strong></td>'+
                '<td><label class="chk"><input id="opecon_i" type="checkbox" '+opecon_i+' onclick="selectButton(this)"></label></td>'+
                '<td><label class="chk"><input id="opecon_a" type="checkbox" '+opecon_a+' onclick="selectButton(this)"></label></td>'+
                '<td><label class="chk"><input id="opecon_e" type="checkbox" '+opecon_e+' onclick="selectButton(this)"></label></td>'+
              '</tr>'+
              '<tr>'+
                '<td class="left-col"><strong>Pedido de Vendas:</strong></td>'+
                '<td><label class="chk"><input id="cadpedven_i" type="checkbox" '+cadpedven_i+' onclick="selectButton(this)"></label></td>'+
                '<td><label class="chk"><input id="cadpedven_a" type="checkbox" '+cadpedven_a+' onclick="selectButton(this)"></label></td>'+
                '<td><label class="chk"><input id="cadpedven_e" type="checkbox" '+cadpedven_e+' onclick="selectButton(this)"></label></td>'+
              '</tr>'+
              '<tr>'+
                '<td class="left-col"><strong>Pedido de Compras:</strong></td>'+
                '<td><label class="chk"><input id="cadpedcom_i" type="checkbox" '+cadpedcom_i+' onclick="selectButton(this)"></label></td>'+
                '<td><label class="chk"><input id="cadpedcom_a" type="checkbox" '+cadpedcom_a+' onclick="selectButton(this)"></label></td>'+
                '<td><label class="chk"><input id="cadpedcom_e" type="checkbox" '+cadpedcom_e+' onclick="selectButton(this)"></label></td>'+
              '</tr>'+
              '<tr>'+
                '<td class="left-col"><strong>Ordem de serviço:</strong></td>'+
                '<td><label class="chk"><input id="opeoser_i" type="checkbox" '+opeoser_i+' onclick="selectButton(this)"></label></td>'+
                '<td><label class="chk"><input id="opeoser_a" type="checkbox" '+opeoser_a+' onclick="selectButton(this)"></label></td>'+
                '<td><label class="chk"><input id="opeoser_e" type="checkbox" '+opeoser_e+' onclick="selectButton(this)"></label></td>'+
              '</tr>'+
              '<tr>'+
                '<td class="left-col"><strong>Outros cadastros:</strong></td>'+
                '<td><label class="chk"><input id="ger_i" type="checkbox" '+ger_i+' onclick="selectButton(this)"></label></td>'+
                '<td><label class="chk"><input id="ger_a" type="checkbox" '+ger_a+' onclick="selectButton(this)"></label></td>'+
                '<td><label class="chk"><input id="ger_e" type="checkbox" '+ger_e+' onclick="selectButton(this)"></label></td>'+
              '</tr>'+
            '</tbody>'+
          '</table>'+
        '</div>'+

        '<div class="section-title" style="margin-top:8px;">OUTROS</div>'+

        '<div class="table-wrap">'+
          '<table class="perms" aria-label="Permissões - Outros">'+
            '<tbody>'+
              '<tr>'+
                '<td class="left-col"><strong>Empresa de Operação:</strong></td>'+
                '<td colspan="3">'+
                  '<div class="inline-input">'+
                    '<input id="inputmudarempresa" type="number" value="'+empope+'" aria-label="Empresa" readonly>'+
                    '<button id="mudarempresa" type="button" class="btn-icon" title="Buscar empresa" aria-label="Buscar" onclick="selectButton(this)">'+
                      '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">'+
                        '<circle cx="11" cy="11" r="7"></circle>'+
                        '<line x1="21" y1="21" x2="16.65" y2="16.65"></line>'+
                      '</svg>'+
                    '</button>'+
                  '</div>'+
                '</td>'+
              '</tr>'+
              '<tr>'+
                '<td class="left-col"><strong>Mudar Empresa:</strong></td>'+
                '<td><label class="chk"><input id="mudaemp" type="checkbox" '+mudaemp+' onclick="selectButton(this)"></label></td>'+
                '<td></td><td></td>'+
              '</tr>'+
              '<tr>'+
                '<td class="left-col"><strong>Senha especial:</strong></td>'+
                '<td><label class="chk"><input id="senhaesp" type="checkbox" '+senhaesp+' onclick="selectButton(this)"></label></td>'+
                '<td></td><td></td>'+
              '</tr>'+
              '<tr>'+
          '<td class="left-col"><strong>Habilita botão saldo bancário no contas</strong></td>'+
                '<td><label class="chk"><input id="botsaldo" type="checkbox" '+botsaldo+' onclick="selectButton(this)"></label></td>'+
                '<td></td><td></td>'+
              '</tr>'+
              '<tr>'+
                '<td class="left-col"><strong>Visualização das tabelas do supervisor:</strong></td>'+
                '<td><label class="chk"><input id="cadtabsup" type="checkbox" '+cadtabsup+' onclick="selectButton(this)"></label></td>'+
                '<td></td><td></td>'+
              '</tr>'+
              '<tr>'+
                '<td class="left-col"><strong>Pedido de vendas:</strong></td>'+
                '<td><label class="chk"><input id="pedvenf4" type="checkbox" '+pedvenf4+' onclick="selectButton(this)"></label>&nbsp;[F4]</td>'+
                '<td><label class="chk"><input id="pedvenf7" type="checkbox" '+pedvenf7+' onclick="selectButton(this)"></label>&nbsp;[F7]</td>'+
                '<td></td>'+
              '</tr>'+
              '<tr>'+
                '<td class="left-col"><strong>Pedido de compras:</strong></td>'+
                '<td><label class="chk"><input id="pedcomf4" type="checkbox" '+pedcomf4+' onclick="selectButton(this)"></label>&nbsp;[F4]</td>'+
                '<td><label class="chk"><input id="pedcomf7" type="checkbox" '+pedcomf7+' onclick="selectButton(this)"></label>&nbsp;[F7]</td>'+
                '<td></td>'+
              '</tr>'+
              '<tr>'+
                '<td class="left-col"><strong>Ordem de serviço:</strong></td>'+
                '<td><label class="chk"><input id="osf4" type="checkbox" '+osf4+' onclick="selectButton(this)"></label>&nbsp;[F4]</td>'+
                '<td><label class="chk"><input id="osf7" type="checkbox" '+osf7+' onclick="selectButton(this)"></label>&nbsp;[F7]</td>'+
                '<td></td>'+
              '</tr>'+
              '<tr>'+
                '<td class="left-col"><strong>Pode acessar botão excel na pesquisa?</strong></td>'+
                '<td><label class="chk"><input id="mostex" type="checkbox" '+mostex+' onclick="selectButton(this)"></label></td>'+
                '<td></td><td></td>'+
              '</tr>'+
              '<tr>'+
                '<td class="left-col"><strong>Margem esquerda para impressora:</strong></td>'+
                '<td colspan="3">'+
                  '<div class="inline-input">'+
                    '<input id="margemesquerda" type="number" value="'+margemesquerda+'" aria-label="marquesEsquerdaParaImpressora" onclick="selectButton(this)" onchange="selectButton(this)">'+
                  '</div>'+
                '</td>'+
              '</tr>'+
              '<tr>'+
                '<td class="left-col"><strong>Alterar número de pedido na inclusão:</strong></td>'+
                '<td><label class="chk"><input id="habcodped" type="checkbox" '+habcodped+' onclick="selectButton(this)"></label></td>'+
                '<td></td><td></td>'+
              '</tr>'+
              '<tr>'+
                '<td class="left-col"><strong>Pode ver informação de lucro no PV:</strong></td>'+
                '<td><label class="chk"><input id="podeverlucr" type="checkbox" '+podeverlucr+' onclick="selectButton(this)"></label></td>'+
                '<td></td><td></td>'+
              '</tr>'+
              '<tr>'+
                '<td class="left-col"><strong>Pode baixar contas:</strong></td>'+
                '<td><label class="chk"><input id="podebaixar" type="checkbox" '+podebaixar+' onclick="selectButton(this)"></label></td>'+
                '<td></td><td></td>'+
              '</tr>'+
              '<tr>'+
                '<td class="left-col"><strong>Pode editar código do banco de venda:</strong></td>'+
                '<td><label class="chk"><input id="edtcodban" type="checkbox" '+edtcodban+' onclick="selectButton(this)"></label></td>'+
                '<td></td><td></td>'+
              '</tr>'+
              '<tr>'+
                '<td class="left-col"><strong>Pode acessar botão "sincroniza importação":</strong></td>'+
                '<td><label class="chk"><input id="temfdv" type="checkbox" '+temfdv+' onclick="selectButton(this)"></label></td>'+
                '<td></td><td></td>'+
              '</tr>'+
              '<tr>'+
                '<td class="left-col"><strong>Visualizar saldo bancário na pesquisa e contas:</strong></td>'+
                '<td><label class="chk"><input id="versaldobancario" type="checkbox" '+versaldobancario+' onclick="selectButton(this)"></label></td>'+
                '<td></td><td></td>'+
              '</tr>'+
            '</tbody>'+
          '</table>'+
        '</div>'+

      '</div>'+
    '</div>'+

      '<script> '+
      'function selectButton(el) { '+
        'switch (el.id) { '+
          'case "mudarempresa": '+
            'top.ajaxRequest(fraCadUsuarios.htmlPermissoes, "mudarempresa:" + el.id, []); '+
            'break; '+

          'case "cadcli_i": '+
          'case "cadcli_a": '+
          'case "cadcli_e": '+

          'case "cadpro_i": '+
          'case "cadpro_a": '+
          'case "cadpro_e": '+

          'case "opeest_i": '+
          'case "opeest_a": '+
          'case "opeest_e": '+

          'case "opecon_i": '+
          'case "opecon_a": '+
          'case "opecon_e": '+

          'case "cadpedven_i": '+
          'case "cadpedven_a": '+
          'case "cadpedven_e": '+

          'case "cadpedcom_i": '+
          'case "cadpedcom_a": '+
          'case "cadpedcom_e": '+

          'case "opeoser_i": '+
          'case "opeoser_a": '+
          'case "opeoser_e": '+

          'case "ger_i": '+
          'case "ger_a": '+
          'case "ger_e": '+

          'case "empope": '+

          'case "mudaemp": '+

          'case "senhaesp": '+

          'case "cadtabsup": '+

          'case "botsaldo": '+

          'case "pedvenf4": '+
          'case "pedvenf7": '+

          'case "pedcomf4": '+
          'case "pedcomf7": '+

          'case "osf4": '+
          'case "osf7": '+

          'case "arvore": '+

          'case "mostex": '+

          'case "permitealtdescr": '+

          'case "bloqos": '+

          'case "podexcel": '+

          'case "ajustaimagem": '+

          'case "habcodped": '+

          'case "podeverlucr": '+

          'case "podebaixar": '+

          'case "edtcodban": '+

          'case "temfdv": '+

          'case "versaldobancario": '+

            'top.ajaxRequest(fraCadUsuarios.htmlPermissoes, "permissao:" + el.id, []); '+
            'break; '+

          'case "margemesquerda": '+

           'top.ajaxRequest(fraCadUsuarios.htmlPermissoes, "permissaoamargemesquerda:" + el.value, []); '+
            'break; '+

          'default: '+
            'console.log("Nenhuma ação definida para: " + el.id); '+
        '} '+
      '} '+
      '</script> '+

      '<script> '+
        'window.onload = function() { '+
          'window.scrollTo(0, 0); '+
        '}; '+
      '</script> '+

  '</body>'+
  '</html>';


  htmlPermissoes.html.text := html;
end;

procedure TfraCadUsuarios.retornaHTMLPermissoesNovo;
var
  html  :string;
begin
  cadcli[0]     := 'S';
  cadcli[1]     := 'S';
  cadcli[2]     := 'S';
  cadcli_i			:= 'checked';
  cadcli_a      := 'checked';
  cadcli_e      := 'checked';

  cadpro[0]     := 'S';
  cadpro[1]     := 'S';
  cadpro[2]     := 'S';
  cadpro_i      := 'checked';
  cadpro_a      := 'checked';
  cadpro_e      := 'checked';

  opeest[0]     := 'S';
  opeest[1]     := 'S';
  opeest[2]     := 'S';
  opeest_i      := 'checked';
  opeest_a      := 'checked';
  opeest_e      := 'checked';

  opecon[0]     := 'S';
  opecon[1]     := 'S';
  opecon[2]     := 'S';
  opecon_i      := 'checked';
  opecon_a      := 'checked';
  opecon_e      := 'checked';

  cadpedven[0]  := 'S';
  cadpedven[1]  := 'S';
  cadpedven[2]  := 'S';
  cadpedven_i   := 'checked';
  cadpedven_a   := 'checked';
  cadpedven_e   := 'checked';

  cadpedcom[0]  := 'S';
  cadpedcom[1]  := 'S';
  cadpedcom[2]  := 'S';
  cadpedcom_i   := 'checked';
  cadpedcom_a   := 'checked';
  cadpedcom_e   := 'checked';

  opeoser[0]    := 'S';
  opeoser[1]    := 'S';
  opeoser[2]    := 'S';
  opeoser_i     := 'checked';
  opeoser_a     := 'checked';
  opeoser_e     := 'checked';

  ger[0]        := 'S';
  ger[1]        := 'S';
  ger[2]        := 'S';
  ger_i         := 'checked';
  ger_a         := 'checked';
  ger_e         := 'checked';

  mudaempValor      := 'S';
  mudaemp           := 'checked';

  senhaespValor     := 'S';
  senhaesp          := 'checked';

  botsaldoValor     := 'S';
  botsaldo          := 'checked';

  cadtabsupValor    := 'S';
  cadtabsup         := 'checked';

  pedvenf4Valor     := 'S';
  pedvenf4          := 'checked';

  pedvenf7Valor     := 'S';
  pedvenf7          := 'checked';

  pedcomf4Valor     := 'S';
  pedcomf4          := 'checked';

  pedcomf7Valor     := 'S';
  pedcomf7          := 'checked';

  osf4Valor         := 'S';
  osf4              := 'checked';

  osf7Valor         := 'S';
  osf7              := 'checked';

  mostexValor       := 'S';
  mostex            := 'checked';

  margemesquerda    := '1';

  habcodpedValor    := 'S';
  habcodped         := 'checked';

  podeverlucrValor  := 'S';
  podeverlucr       := 'checked';

  podebaixarValor   := 'S';
  podebaixar        := 'checked';

  edtcodbanValor    := 'S';
  edtcodban         := 'checked';

  temfdvValor       := 'S';
  temfdv            := 'checked';

  versaldobancarioValor   := 'S';
  versaldobancario  := 'checked';

  html :=

    '<!doctype html>'+
    '<html lang="pt-BR">'+
    '<head>'+
    '<meta charset="utf-8" />'+
    '<meta name="viewport" content="width=device-width, initial-scale=1" />'+
    '<title>Tela de Cadastro – Especial / Outros</title>'+

    '<style>'+
      ':root{'+
        '--bg: #f4f4f6;'+
        '--panel: #ffffff;'+
        '--border: #c9c9c9;'+
        '--border-dark: #b3b3b3;'+
        '--title-red: #cc2020;'+
        '--header-green: #98c37f;'+
        '--label: #2b2b2b;'+
        '--muted:#777;'+
        '--link: #2c6bcf;'+
        '--row-alt: #fafafa;'+
        '--card-gap:#eeeeee;'+
      '}'+

      'body{ margin:0; background: var(--bg); color:#222; font: 14px/1.35 "Segoe UI", Roboto, Arial, sans-serif; }'+
      '.wrap{ max-width: 860px; margin: 20px auto; padding: 12px; }'+
      '.card{'+
        'background: var(--panel);'+
        'border: 1px solid var(--border);'+
        'border-radius: 6px;'+
        'box-shadow: 0 1px 1px rgba(0,0,0,.04);'+
        'overflow: hidden;'+
      '}'+

      '.section-title{'+
        'text-align:center; font-weight:700; font-size: 13px; color: var(--title-red);'+
        'padding: 5px 8px 8px; border-bottom: 1px solid var(--border);'+
        'font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;'+
      '}'+

      '/* Tabela desktop */'+
      '.table-wrap{ overflow:auto; }'+
      'table.perms{ width:100%; border-collapse: collapse; min-width: 640px; }'+
      'table.perms td, table.perms th{ border:1px solid var(--border); padding:8px 10px; vertical-align:middle; }'+
      'thead.grid-head{ background: linear-gradient(#cbe6b7, #a8d28e); color:#1a3d15; font-weight:700; }'+
      '.grid-head th{ text-align:center; border-color: var(--border-dark); }'+
      '.left-col{ width:60%; color:var(--label); background:#fff; }'+
      '.perms tr:nth-child(even) td.left-col{ background: var(--row-alt); }'+

      '/* Checkbox moderno */'+
      '.chk{ position:relative; display:inline-grid; place-items:center; width:20px; height:20px; }'+
      '.chk input{'+
        'appearance:none; -webkit-appearance:none;'+
        'width:100%; height:100%; margin:0; border:2px solid #bdbdbd; border-radius:4px; background:#fff;'+
        'cursor:pointer; transition: background .2s ease, border-color .2s ease, box-shadow .2s ease, transform .06s ease;'+
      '}'+
      '.chk input:hover{ border-color:#0d6efd; box-shadow:0 0 6px rgba(13,110,253,.35); }'+
      '.chk input:active{ transform:scale(.96); }'+
      '.chk input:checked{ background:#0d6efd; border-color:#0d6efd; }'+
      '.chk input:checked::after{'+
        'content:"✓"; color:#fff; font-weight:800; font-size:14px; line-height:1; position:absolute; transform:translateY(-1px);'+
      '}'+
      '.chk input:focus-visible{ outline:none; box-shadow:0 0 0 3px rgba(13,110,253,.25); }'+

      '.inline-input{ display:flex; align-items:center; gap:6px; min-width:180px; }'+
      '.inline-input input[type="number"]{'+
        'width:56px; padding:6px 6px; border:1px solid var(--border-dark); border-radius:3px; background:#fff;'+
      '}'+
      '.btn-icon{'+
        'display:inline-flex; align-items:center; justify-content:center; width:28px; height:28px;'+
        'border:1px solid var(--border-dark); border-radius:4px; background: linear-gradient(#f6f6f6,#e9e9e9); cursor:pointer;'+
      '}'+
      '.btn-icon svg{ width:16px; height:16px }'+
      '.btn-icon:active{ transform: translateY(1px); }'+

      '.inline-actions a{ color:var(--link); text-decoration:underline; margin-right:10px; white-space:nowrap; }'+
      '.muted{ color:var(--muted); }'+

      '/* ======= MODO MOBILE (empilha e rotula) ======= */'+
      '@media (max-width: 640px){'+
        '.wrap{ padding: 8px; }'+
        '.section-title{ font-size: 18px; }'+

        '/* some o thead e transforme linhas em "cards" */'+
        'table.perms{ min-width:0; }'+
        'table.perms thead{ display:none; }'+

        'table.perms, table.perms tbody, table.perms tr, table.perms td{ display:block; width:100%; }'+
        'table.perms tr{'+
          'border:1px solid var(--border);'+
          'border-radius:8px;'+
          'margin: 10px 0;'+
          'overflow:hidden;'+
          'box-shadow: 0 1px 1px rgba(0,0,0,.03);'+
          'background:#fff;'+
        '}'+
        'table.perms td{'+
          'border:none;'+
          'border-bottom:1px solid var(--card-gap);'+
          'padding:10px 12px;'+
          'display:flex; align-items:center; justify-content:space-between; gap:12px;'+
        '}'+
        'table.perms td:last-child{ border-bottom:none; }'+

        '/* primeira célula (Localização) ocupa linha inteira e fica destacada */'+
        'table.perms td.left-col{'+
          'background:#f9fafb; font-weight:700; color:#1f2937;'+
        '}'+

        '/* rótulos automáticos para as colunas 2, 3 e 4 */'+
        'table.perms td:nth-child(2)::before{ content:"Inclusão"; color:#000000; font-size:12px; }'+
        'table.perms td:nth-child(3)::before{ content:"Alteração"; color:#000000; font-size:12px; }'+
        'table.perms td:nth-child(4)::before{ content:"Exclusão"; color:#000000; font-size:12px; }'+

        '/* colunas que possuem colspan (inputs/observações) viram bloco cheio */'+
        'table.perms td[colspan]{'+
          'display:block; padding:12px;'+
        '}'+

        '/* aumentar área de toque do checkbox */'+
        '.chk{ width:24px; height:24px; }'+
        '.chk input:checked::after{ font-size:16px; }'+

        '/* ajustar linhas com atalhos [F4][F7] */'+
        '.inline-actions a{ display:inline-block; margin-right:8px; }'+
      '}'+
    '</style>'+
    '</head>'+
    '<body>'+
      '<div class="wrap">'+
        '<div class="card">'+
          '<div class="section-title">ESPECIAL</div>'+

          '<div class="table-wrap">'+
            '<table class="perms" aria-label="Permissões - Especial">'+
              '<thead class="grid-head">'+
                '<tr style="color: black">'+
                  '<th class="left-col" style="text-align:left;">Localização</th>'+
                  '<th>Inclusão</th>'+
                  '<th>Alteração</th>'+
                  '<th>Exclusão</th>'+
                '</tr>'+
              '</thead>'+
              '<tbody>'+
                //Atribuindo as permissões retornadas no endpoint.
                '<tr>'+
                  '<td class="left-col"><strong>Cadastro de clientes:</strong></td>'+
                  '<td><label class="chk"><input id="cadcli_i" type="checkbox" '+cadcli_i+' onclick="selectButton(this)"></label></td>'+
                  '<td><label class="chk"><input id="cadcli_a" type="checkbox" '+cadcli_a+' onclick="selectButton(this)"></label></td>'+
                  '<td><label class="chk"><input id="cadcli_e" type="checkbox" '+cadcli_e+' onclick="selectButton(this)"></label></td>'+
                '</tr>'+
                '<tr>'+
                  '<td class="left-col"><strong>Cadastro de produtos:</strong></td>'+
                  '<td><label class="chk"><input id="cadpro_i" type="checkbox" '+cadpro_i+' onclick="selectButton(this)"></label></td>'+
                  '<td><label class="chk"><input id="cadpro_a" type="checkbox" '+cadpro_a+' onclick="selectButton(this)"></label></td>'+
                  '<td><label class="chk"><input id="cadpro_e" type="checkbox" '+cadpro_e+' onclick="selectButton(this)"></label></td>'+
                '</tr>'+
                '<tr>'+
                  '<td class="left-col"><strong>Operação Estoque:</strong></td>'+
                  '<td><label class="chk"><input id="opeest_i" type="checkbox" '+opeest_i+' onclick="selectButton(this)"></label></td>'+
                  '<td><label class="chk"><input id="opeest_a" type="checkbox" '+opeest_a+' onclick="selectButton(this)"></label></td>'+
                  '<td><label class="chk"><input id="opeest_e" type="checkbox" '+opeest_e+' onclick="selectButton(this)"></label></td>'+
                '</tr>'+
                '<tr>'+
                  '<td class="left-col"><strong>Operação contas:</strong></td>'+
                  '<td><label class="chk"><input id="opecon_i" type="checkbox" '+opecon_i+' onclick="selectButton(this)"></label></td>'+
                  '<td><label class="chk"><input id="opecon_a" type="checkbox" '+opecon_a+' onclick="selectButton(this)"></label></td>'+
                  '<td><label class="chk"><input id="opecon_e" type="checkbox" '+opecon_e+' onclick="selectButton(this)"></label></td>'+
                '</tr>'+
                '<tr>'+
                  '<td class="left-col"><strong>Pedido de Vendas:</strong></td>'+
                  '<td><label class="chk"><input id="cadpedven_i" type="checkbox" '+cadpedven_i+' onclick="selectButton(this)"></label></td>'+
                  '<td><label class="chk"><input id="cadpedven_a" type="checkbox" '+cadpedven_a+' onclick="selectButton(this)"></label></td>'+
                  '<td><label class="chk"><input id="cadpedven_e" type="checkbox" '+cadpedven_e+' onclick="selectButton(this)"></label></td>'+
                '</tr>'+
                '<tr>'+
                  '<td class="left-col"><strong>Pedido de Compras:</strong></td>'+
                  '<td><label class="chk"><input id="cadpedcom_i" type="checkbox" '+cadpedcom_i+' onclick="selectButton(this)"></label></td>'+
                  '<td><label class="chk"><input id="cadpedcom_a" type="checkbox" '+cadpedcom_a+' onclick="selectButton(this)"></label></td>'+
                  '<td><label class="chk"><input id="cadpedcom_e" type="checkbox" '+cadpedcom_e+' onclick="selectButton(this)"></label></td>'+
                '</tr>'+
                '<tr>'+
                  '<td class="left-col"><strong>Ordem de serviço:</strong></td>'+
                  '<td><label class="chk"><input id="opeoser_i" type="checkbox" '+opeoser_i+' onclick="selectButton(this)"></label></td>'+
                  '<td><label class="chk"><input id="opeoser_a" type="checkbox" '+opeoser_a+' onclick="selectButton(this)"></label></td>'+
                  '<td><label class="chk"><input id="opeoser_e" type="checkbox" '+opeoser_e+' onclick="selectButton(this)"></label></td>'+
                '</tr>'+
                '<tr>'+
                  '<td class="left-col"><strong>Outros cadastros:</strong></td>'+
                  '<td><label class="chk"><input id="ger_i" type="checkbox" '+ger_i+' onclick="selectButton(this)"></label></td>'+
                  '<td><label class="chk"><input id="ger_a" type="checkbox" '+ger_a+' onclick="selectButton(this)"></label></td>'+
                  '<td><label class="chk"><input id="ger_e" type="checkbox" '+ger_e+' onclick="selectButton(this)"></label></td>'+
                '</tr>'+
              '</tbody>'+
            '</table>'+
          '</div>'+

          '<div class="section-title" style="margin-top:8px;">OUTROS</div>'+

          '<div class="table-wrap">'+
            '<table class="perms" aria-label="Permissões - Outros">'+
              '<tbody>'+
                '<tr>'+
                  '<td class="left-col"><strong>Empresa de Operação:</strong></td>'+
                  '<td colspan="3">'+
                    '<div class="inline-input">'+
                      '<input id="inputmudarempresa" type="number" value="'+empope+'" aria-label="Empresa" readonly>'+
                      '<button id="mudarempresa" type="button" class="btn-icon" title="Buscar empresa" aria-label="Buscar" onclick="selectButton(this)">'+
                        '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">'+
                          '<circle cx="11" cy="11" r="7"></circle>'+
                          '<line x1="21" y1="21" x2="16.65" y2="16.65"></line>'+
                        '</svg>'+
                      '</button>'+
                    '</div>'+
                  '</td>'+
                '</tr>'+
                '<tr>'+
                  '<td class="left-col"><strong>Mudar Empresa:</strong></td>'+
                  '<td><label class="chk"><input id="mudaemp" type="checkbox" '+mudaemp+' onclick="selectButton(this)"></label></td>'+
                  '<td></td><td></td>'+
                '</tr>'+
                '<tr>'+
                  '<td class="left-col"><strong>Senha especial:</strong></td>'+
                  '<td><label class="chk"><input id="senhaesp" type="checkbox" '+senhaesp+' onclick="selectButton(this)"></label></td>'+
                  '<td></td><td></td>'+
                '</tr>'+
                '<tr>'+
            '<td class="left-col"><strong>Habilita botão saldo bancário no contas</strong></td>'+
                  '<td><label class="chk"><input id="botsaldo" type="checkbox" '+botsaldo+' onclick="selectButton(this)"></label></td>'+
                  '<td></td><td></td>'+
                '</tr>'+
                '<tr>'+
                  '<td class="left-col"><strong>Visualização das tabelas do supervisor:</strong></td>'+
                  '<td><label class="chk"><input id="cadtabsup" type="checkbox" '+cadtabsup+' onclick="selectButton(this)"></label></td>'+
                  '<td></td><td></td>'+
                '</tr>'+
                '<tr>'+
                  '<td class="left-col"><strong>Pedido de vendas:</strong></td>'+
                  '<td><label class="chk"><input id="pedvenf4" type="checkbox" '+pedvenf4+' onclick="selectButton(this)"></label>&nbsp;[F4]</td>'+
                  '<td><label class="chk"><input id="pedvenf7" type="checkbox" '+pedvenf7+' onclick="selectButton(this)"></label>&nbsp;[F7]</td>'+
                  '<td></td>'+
                '</tr>'+
                '<tr>'+
                  '<td class="left-col"><strong>Pedido de compras:</strong></td>'+
                  '<td><label class="chk"><input id="pedcomf4" type="checkbox" '+pedcomf4+' onclick="selectButton(this)"></label>&nbsp;[F4]</td>'+
                  '<td><label class="chk"><input id="pedcomf7" type="checkbox" '+pedcomf7+' onclick="selectButton(this)"></label>&nbsp;[F7]</td>'+
                  '<td></td>'+
                '</tr>'+
                '<tr>'+
                  '<td class="left-col"><strong>Ordem de serviço:</strong></td>'+
                  '<td><label class="chk"><input id="osf4" type="checkbox" '+osf4+' onclick="selectButton(this)"></label>&nbsp;[F4]</td>'+
                  '<td><label class="chk"><input id="osf7" type="checkbox" '+osf7+' onclick="selectButton(this)"></label>&nbsp;[F7]</td>'+
                  '<td></td>'+
                '</tr>'+
                '<tr>'+
                  '<td class="left-col"><strong>Pode acessar botão excel na pesquisa?</strong></td>'+
                  '<td><label class="chk"><input id="mostex" type="checkbox" '+mostex+' onclick="selectButton(this)"></label></td>'+
                  '<td></td><td></td>'+
                '</tr>'+
                '<tr>'+
                  '<td class="left-col"><strong>Margem esquerda para impressora:</strong></td>'+
                  '<td colspan="3">'+
                    '<div class="inline-input">'+
                      '<input id="margemesquerda" type="number" value="'+margemesquerda+'" aria-label="marquesEsquerdaParaImpressora" onclick="selectButton(this)" onchange="selectButton(this)">'+
                    '</div>'+
                  '</td>'+
                '</tr>'+
                '<tr>'+
                  '<td class="left-col"><strong>Alterar número de pedido na inclusão:</strong></td>'+
                  '<td><label class="chk"><input id="habcodped" type="checkbox" '+habcodped+' onclick="selectButton(this)"></label></td>'+
                  '<td></td><td></td>'+
                '</tr>'+
                '<tr>'+
                  '<td class="left-col"><strong>Pode ver informação de lucro no PV:</strong></td>'+
                  '<td><label class="chk"><input id="podeverlucr" type="checkbox" '+podeverlucr+' onclick="selectButton(this)"></label></td>'+
                  '<td></td><td></td>'+
                '</tr>'+
                '<tr>'+
                  '<td class="left-col"><strong>Pode baixar contas:</strong></td>'+
                  '<td><label class="chk"><input id="podebaixar" type="checkbox" '+podebaixar+' onclick="selectButton(this)"></label></td>'+
                  '<td></td><td></td>'+
                '</tr>'+
                '<tr>'+
                  '<td class="left-col"><strong>Pode editar código do banco de venda:</strong></td>'+
                  '<td><label class="chk"><input id="edtcodban" type="checkbox" '+edtcodban+' onclick="selectButton(this)"></label></td>'+
                  '<td></td><td></td>'+
                '</tr>'+
                '<tr>'+
                  '<td class="left-col"><strong>Pode acessar botão "sincroniza importação":</strong></td>'+
                  '<td><label class="chk"><input id="temfdv" type="checkbox" '+temfdv+' onclick="selectButton(this)"></label></td>'+
                  '<td></td><td></td>'+
                '</tr>'+
                '<tr>'+
                  '<td class="left-col"><strong>Visualizar saldo bancário na pesquisa e contas:</strong></td>'+
                  '<td><label class="chk"><input id="versaldobancario" type="checkbox" '+versaldobancario+' onclick="selectButton(this)"></label></td>'+
                  '<td></td><td></td>'+
                '</tr>'+
              '</tbody>'+
            '</table>'+
          '</div>'+

        '</div>'+
      '</div>'+

        '<script> '+
        'function selectButton(el) { '+
          'switch (el.id) { '+
            'case "mudarempresa": '+
              'top.ajaxRequest(fraCadUsuarios.htmlPermissoes, "mudarempresa:" + el.id, []); '+
              'break; '+

            'case "cadcli_i": '+
            'case "cadcli_a": '+
            'case "cadcli_e": '+

            'case "cadpro_i": '+
            'case "cadpro_a": '+
            'case "cadpro_e": '+

            'case "opeest_i": '+
            'case "opeest_a": '+
            'case "opeest_e": '+

            'case "opecon_i": '+
            'case "opecon_a": '+
            'case "opecon_e": '+

            'case "cadpedven_i": '+
            'case "cadpedven_a": '+
            'case "cadpedven_e": '+

            'case "cadpedcom_i": '+
            'case "cadpedcom_a": '+
            'case "cadpedcom_e": '+

            'case "opeoser_i": '+
            'case "opeoser_a": '+
            'case "opeoser_e": '+

            'case "ger_i": '+
            'case "ger_a": '+
            'case "ger_e": '+

            'case "empope": '+

            'case "mudaemp": '+

            'case "senhaesp": '+

            'case "cadtabsup": '+

            'case "botsaldo": '+

            'case "pedvenf4": '+
            'case "pedvenf7": '+

            'case "pedcomf4": '+
            'case "pedcomf7": '+

            'case "osf4": '+
            'case "osf7": '+

            'case "arvore": '+

            'case "mostex": '+

            'case "permitealtdescr": '+

            'case "bloqos": '+

            'case "podexcel": '+

            'case "ajustaimagem": '+

            'case "habcodped": '+

            'case "podeverlucr": '+

            'case "podebaixar": '+

            'case "edtcodban": '+

            'case "temfdv": '+

            'case "versaldobancario": '+

              'top.ajaxRequest(fraCadUsuarios.htmlPermissoes, "permissao:" + el.id, []); '+
              'break; '+

            'case "margemesquerda": '+

             'top.ajaxRequest(fraCadUsuarios.htmlPermissoes, "permissaoamargemesquerda:" + el.value, []); '+
              'break; '+

            'default: '+
              'console.log("Nenhuma ação definida para: " + el.id); '+
          '} '+
        '} '+
        '</script> '+

        '<script> '+
          'window.onload = function() { '+
            'window.scrollTo(0, 0); '+
          '}; '+
        '</script> '+

    '</body>'+
    '</html>';

  htmlPermissoes.html.text := html;
end;

procedure TfraCadUsuarios.retornar;
begin
  pgcTela.ActivePageIndex := 0;
  listar;
end;

procedure TfraCadUsuarios.tgAtivoToggled(const Value: Boolean);
begin
  if value then
    ativo := 'S' else
    ativo := 'N';
end;

procedure TfraCadUsuarios.chkBloqosChange(Sender: TObject);
begin
  if chkBloqos.Checked then
    bloqosValor := 'S' else
    bloqosValor := 'N';
end;

procedure TfraCadUsuarios.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
  ConfigurarAlignComboBoxes(self, 10);
  htmlPermissoes.JSControl.Id := 'htmlPermissoes';
  edTelefone.JSControl.Id := 'edTelefone';
  listar;
end;

procedure TfraCadUsuarios.listar(pDado :string = '');
var
  resp1       :IResponse;
  body        :string;
  jsonResp    :TJSONObject;
begin
  pgcTela.ActivePageIndex := 0;

  resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getUsuario)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('usuario', pDado)
            .timeOut(12000)
            .Get;

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

procedure TfraCadUsuarios.limpaCampos;
begin
  alterando := false;
  ativo := 'S';
  limpaCookiesEditRecursivo(self);
  lblTipoManipulacao.Caption := 'NOVO REGISTRO';
  retornaHTMLPermissoesNovo;
end;

procedure TfraCadUsuarios.UniFrameReady(Sender: TObject);
begin
  RGLayoutUnigui1.Start;
end;

procedure TfraCadUsuarios.imgFundoResize(Sender: TUniControl; OldWidth,
  OldHeight: Integer);
begin
  AjustarColunasGrid(gridTela, 1, 39, 1, 3, 38, 39);
end;

end.
