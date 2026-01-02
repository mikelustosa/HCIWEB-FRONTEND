unit uUtils;

interface

uses
SysUtils, StdCtrls, StrUtils, dialogs, System.Classes, DateUtils, System.RegularExpressions, UniSFBitBtn, uniGUIApplication,
FireDAC.Comp.Client, Datasnap.DBClient, system.JSON, Data.DB, REST.Response.Adapter, uniPanel, UniSFLabel, Vcl.Forms,
UniSFComboBox, uniDateTimePicker, uniEdit, SOAP.EncdDecd, REST.Types, REST.Client, System.NetEncoding,
uniURLFrame, RESTRequest4D.request, uniGUIFrame, uniCheckBox, uniDBGrid, uniGUITypes, uniMemo, UniFSToggle,
Winapi.Windows, Vcl.Controls, MainModule, TCustomIdHTTPUnit, IdHTTP, Vcl.Graphics, uniRadioButton,
uniGUIForm, uniPageControl, UniSFSweetAlert, UniSFCore, uniLabel, system.math;

type
  TEndereco = record
    Logradouro  :string;
    UF          :string;
    Bairro      :string;
    Localidade  :string;
    Ibge        :string;
    erro        :string;
end;

type
 TMunicipio = record
  ID          :string;
  UF          :string;
  NOMEUF      :string;
  MUNICIPIO   :string;
  CODIGOMUNICIPIOCOMPLETO:string;
  NOMEMUNICIPIO :string;
  erro        :string;
end;

type
  TExUniCustomDBGrid = class (TUniCustomDBGrid)
end;

function removeEspaco(const str: String): string;
function regExStringReplace(const Input :string; OldPattern :array of Char;
    const Replacement:  String = ''; Options :TRegExOptions = [roIgnoreCase]) :string;
function TrocaCaracterEspecial(aTexto : string; aLimExt : boolean) : string;
function removeCaraters(value: string): string;
function removeCaratersMenosOsEspaco(value: string): string;
function marcaCheckbox(value: string): boolean;
function GetToken(Size: Integer; Tipo : Integer = 1): String;
function normalizaValorNumero(value: string): string;
function retornaBoleano(value: string): boolean;
function ToggledToString(pBoolean: Boolean): string;
function ToggledtostringNum(pBoolean: Boolean): string;
procedure loadingShow(btn: TUniSFBitBtn);
procedure loadingShowLabel(lbl: TUniSFLabel);
procedure loadingHideLabel(lbl: TUniSFLabel);
procedure loadingShowPanel(pn: TUniContainerPanel);
procedure loadingPanelHide(pn: TUniContainerPanel);
procedure loadingHide(btn: TUniSFBitBtn);
procedure loadingWhiteShow(btn: TUniSFBitBtn);
procedure loadingWhiteHide(btn: TUniSFBitBtn);
function DataSetToJsonTxt(aType: integer; FDQuery: TFDQuery = nil; ClientDataSet: TClientDataSet = nil): string;
procedure JsonToDataset(aDataset : TDataSet; aJSON : string);
procedure JsonToMemTable(aMT: TFDMemTable; aJSON : string);
function StringReplacelettersNotAccents(Str:String):String;
//function ValidarCPF(fsDocto: String): boolean;
function validaCPF(CPF: string): boolean;
function gerarToken(Action, Src: String): String;
function versaoExe: String;
procedure limpaUniDatePicker(dtpck: TUniDateTimePicker);
procedure loadingShowComboBox(cb: TUniSFComboBox);
procedure loadingHideComboBox(cb: TUniSFComboBox);
procedure limpaCookiesEdit(ed: TUniEdit = nil; cBox: TUniSFComboBox = nil);
procedure limpaCookiesEditRecursivo(Component: TComponent);
function ContarCaracteres(componente: TComponent; quantidadeMaxima: Integer): Integer;
function validaCNS(Num: string) :Boolean;
function RemoverEspacosExtras(const texto: string): string;
function ValidaHorario(const Horario: string): Boolean;
function validaData(const data: string): Boolean;
function ObterJSONsDoArray(const jsonString: string; out primeiroItem, segundoItem: string): Boolean;
function validarTexto(texto: string): Boolean;
function StreamToBase64(STream: TFileStream): String;
function AddHtmlWithImageToURLFrame(const URLFrame: TUniURLFrame; const imageBase64: wideString): string;
procedure enviarNotificacaoSlack(pEndpoint, pStatusCode, pCliente, pBody, pContent: string; pTipo : string = '');
function buscaCEP(CEP: string): TEndereco;
function buscaMunicipios(UF: string): TArray<TMunicipio>;
procedure LimparComponentes(Component: TComponent);
procedure ConfigurarAlignComboBoxes(Component: TComponent; marginTop: integer = 5);
procedure AtribuirValorGridToEdit(const Grid: TUniDBGrid; const ColumnIndex: Integer; const edit: TUniEdit);
procedure AtribuirValorGridToSFComboBox(const Grid: TUniDBGrid; const ColumnIndex: Integer; const comboBox: TUniSFComboBox);
procedure AtribuirValorGridToSFComboBoxItemIndex(const Grid: TUniDBGrid; const ColumnIndex: Integer; const comboBox: TUniSFComboBox);
procedure AtribuirValorGridToCheckBox(const Grid: TUniDBGrid; const ColumnIndex: Integer; const checkBox: TUniCheckBox);
procedure AtribuirValorGridToMemo(const Grid: TUniDBGrid; const ColumnIndex: Integer; const mem: TUniMemo);
function checkBoxParaString(CheckBox: TUniCheckBox): string;
function toggleParaString(Toggle: TUniFSToggle): string;
function toggleParaInt(Toggle: TUniFSToggle): integer;
function radioButtonParaString(RadioButton: TUniRadioButton): string;
procedure SetGridColor(Sender: TObject; Attribs: TUniCellAttribs);
procedure ocultarMenuGrid(pGrid: TUniDBGrid);
procedure AtribuirValorCDSToEdit(const DS: TClientDataSet; const field: string; const edit: TUniEdit);
function LocalizarItemPorCodigoNoComboBox(Codigo: Integer;weCbGrupo:tUniSfComboBox): Integer;
procedure anulaEvento(Sender: TObject);
function verificaSeCheckBoxEEditsEstaoTodosVazios(const AOwner: TComponent): Boolean;
function verificaSeTodosCheckBoxEstaoVazios(const AOwner: TComponent): Boolean;
procedure ListarNomesComponentes(Form: TUniForm; mMemo: TUniMemo);
function ColocaBotaoNoGrid(TextoBotao: string = ''; TipoBotao: string = ''; corBotao: string = '000fb8'): string;
procedure FecharAbaAtualComSeguranca(PageControl: TUniPageControl);
procedure AjustarColunasGrid(Grid: TUniDBGrid; Col1, Col2: Integer; ColDef1: integer = -1; ColDef2: integer = -1;
ColDef3: integer = -1; ColDef4: integer = -1; ColDef5: integer = -1);
procedure DefinirTodasAbasNaPrimeiraPagina(AOwner: TWinControl);
procedure ExibeIconeAtivo(const Valor: string; var Texto: string; DisplayText: Boolean);
procedure PreencherCamposDoForm(AOwner: TComponent;
  out lAtivo: string;
  AGrid: TUniDBGrid = nil;
  ADataSet: TClientDataSet = nil;
  lblTitulo: string = '');
procedure MarcarTodosCheckBox(AFrame: TUniFrame);
function GetJsonArrayValue(const AJson: TJSONObject; const ArrayName, FieldName: string): string;
function red_cent(Num: double): double;
function red_unit(Num: double; casa: integer): double;
function EStr(Texto: string; Tam: integer): string;
function Right(InString: string; NumChars: Byte): string;
function Spaces(i: Byte): string;
function formata(valor: real; tamanho: integer; Casas: integer): string;
function transform(valor: real; mascara: string; tamanho: integer): string;
function Replicate(Carac: Char; qtd: integer): string;
function Repl(Carac: Char; qtd: integer): string;
function iff(Quest: Boolean; Var1, Var2: variant): variant;
function convfloat(Num: string): double;

implementation

uses uConstantes;

function iff(Quest: Boolean; Var1, Var2: variant): variant;
begin
  if Quest then
    result := Var1
  else
    result := Var2;
end;


function convfloat(Num: string): double;
var
  n: integer;
  soma: string;
  DecimalSeparator: char;
begin
  soma := '';

  Num := StringReplace(Num, 'R', '', [rfReplaceAll]);
  Num := StringReplace(Num, '$', '', [rfReplaceAll]);

  if DecimalSeparator = ',' then
  begin
    for n := 1 to Length(Num) do
      if copy(Num, n, 1) <> '.' then
        soma := soma + copy(Num, n, 1);
    soma := iff(soma <> '', soma, '0,00');
  end
  else
  begin
    for n := 1 to Length(Num) do
      if copy(Num, n, 1) <> ',' then
        soma := soma + copy(Num, n, 1);
    soma := iff(soma <> '', soma, '0.00');
  end;
  result := strtofloat(trim(soma));
end;

function Repl(Carac: Char; qtd: integer): string;
var
  i: integer;
  x: string;
begin
  x := '';

  for i := 1 to qtd do
    x := x + Carac;

  Repl := x;
end;

function Replicate(Carac: Char; qtd: integer): string;
var
  i: integer;
  x: string;
begin
  x := '';
  for i := 1 to qtd do
    x := x + Carac;
  Replicate := x;
end;

function transform(valor: real; mascara: string; tamanho: integer): string;
var
  val: string;
begin
  val := FormatFloat(mascara, valor);
  // try
  result := Spaces(tamanho - Length(val)) + val;
  // except
  // mensagem('Valor => '+val+' não cabe no tamanho => '+inttostr(tamanho));
  // end;
end;

function formata(valor: real; tamanho: integer; Casas: integer): string;
begin
  try
    if Length(transform(valor, '###,' + Replicate('#', Casas) + '0.' + Replicate('0', Casas), tamanho)) > tamanho then
      result := Repl('*', tamanho)
    else
      result := transform(valor, '###,' + Replicate('#', Casas) + '0.' + Replicate('0', Casas), tamanho);
  except
    result := Repl('*', tamanho);
  end;
end;

function Spaces(i: Byte): string;
var
  Zip: string[255];

begin
  FillChar(Zip, i + 1, ' ');
  Zip[0] := AnsiChar(i);
  Spaces := Zip;
end;

function Right(InString: string; NumChars: Byte): string;
var
  index: Byte;

begin
  if NumChars >= Length(InString) then
    Right := InString
  else
  begin
    Index := Length(InString) - NumChars + 1;
    Right := copy(InString, Index, NumChars)
  end;
end;

function EStr(Texto: string; Tam: integer): string;
begin

  if Length(Texto) >= Tam then
    EStr := copy(Texto, 1, Tam)
  else
    EStr := Right(Texto + Spaces(Tam - Length(Texto)), Tam);

end;

function red_unit(Num: double; casa: integer): double;
var
  n1: extended;
  n2, n3: double;
begin
  n2 := power(10, casa);
  n1 := Num * n2;
  n3 := Frac(n1);
  if (n3 >= 0.4999) and (n3 < 0.9) then
    n1 := round(n1 + 0.1)
  else
    n1 := round(n1);
  red_unit := n1 / n2;
end;

function red_cent(Num: double): double;
begin
  red_cent := red_unit(Num, 2);
end;

procedure AjustarColunasGrid(Grid: TUniDBGrid; Col1, Col2: Integer; ColDef1: integer = -1; ColDef2: integer = -1;
ColDef3: integer = -1; ColDef4: integer = -1; ColDef5: integer = -1);
var
  I: Integer;
begin
  if not Assigned(Grid) then
    Exit;

  // Verifica se está rodando no mobile
  if uniMainModule.screenWidth <= 768 then
  begin
    for I := 0 to Grid.Columns.Count - 1 do
    begin
      if (I = Col1) or (I = Col2) then
        Grid.Columns[I].Visible := True
      else
        Grid.Columns[I].Visible := False;
    end;
  end
  else if uniMainModule.screenWidth > 768 then
  begin
    // Exibir todas as colunas default no PC/Notebook
    for I := 0 to Grid.Columns.Count - 1 do
    begin
      if (I = ColDef1) or (I = ColDef2) or (I = ColDef3) or (I = ColDef4) or (I = ColDef5) then
        Grid.Columns[I].Visible := True
      else
        Grid.Columns[I].Visible := False;
    end;
  end;
end;


procedure FecharAbaAtualComSeguranca(PageControl: TUniPageControl);
var
  AbaAtual: TUniTabSheet;
begin
  if Assigned(PageControl) and (PageControl.ActivePageIndex >= 0) then
  begin
    AbaAtual := PageControl.ActivePage;

    if Assigned(AbaAtual) then
    begin
      PageControl.ActivePageIndex := 0; // volta para a primeira aba
      PageControl.Enabled := True;

      try
        FreeAndNil(AbaAtual); // libera a aba com segurança
        AbaAtual.Free;
      except
        // Trata possíveis exceções silenciosamente
      end;
    end;
  end;
end;

function ColocaBotaoNoGrid(TextoBotao: string = ''; TipoBotao: string = ''; corBotao: string = '000fb8'): string;
var
  Icone: string;
begin
  // Define o ícone com base no tipo recebido
  if TipoBotao.ToUpper = 'IMPRESSORA' then
    Icone := 'fa fa-print'
  else if TipoBotao.ToUpper = 'LUPA' then
    Icone := 'fa fa-search'
  else if TipoBotao.ToUpper = 'EDITAR' then
    Icone := 'fa fa-edit'
  else if TipoBotao.ToUpper = 'EXCLUIR' then
    Icone := 'fa fa-trash'
  else if TipoBotao.ToUpper = 'PRENATAL' then
    Icone := 'fa fa-baby'
  else if TipoBotao.ToUpper = 'ATENDIMENTO' then
    Icone := 'fa fa-notes-medical'
  else
    Icone := 'fa fa-question'; // ícone padrão para tipo desconhecido

  // Monta o HTML
  Result := '<span style="display: flex; justify-content: center;">' +
            '<button type="button" class="btn btn-red-custom btn-sm" style="width: 70%; background-color:#'+corBotao+'">' +
            '<i class="' + Icone + '"></i>&nbsp;' + TextoBotao + '</button></span>';
end;

procedure anulaEvento(Sender: TObject);
begin
  //Anula evento
end;

procedure ListarNomesComponentes(Form: TUniForm; mMemo: TUniMemo);
var
  i: Integer;
begin
  for i := 0 to Form.ComponentCount - 1 do
  begin
    //ShowMessage(Form.Components[i].Name);
    mMemo.Lines.Add(Form.Components[i].Name)
    // Ou, se quiser só exibir no console/log:
    // WriteLn(Form.Components[i].Name);
  end;
end;

function verificaSeCheckBoxEEditsEstaoTodosVazios(const AOwner: TComponent): Boolean;
var
  i: Integer;
  CheckBox: TUniCheckBox;
  Edit: TUniEdit;
begin
  Result := False;

  for i := 0 to AOwner.ComponentCount - 1 do
  begin
    if AOwner.Components[i] is TUniCheckBox then
    begin
      CheckBox := TUniCheckBox(AOwner.Components[i]);
      if CheckBox.Checked then
      begin
        Result := True;
        Exit;
      end;
    end
    else if AOwner.Components[i] is TUniEdit then
    begin
      Edit := TUniEdit(AOwner.Components[i]);
      if Trim(Edit.Text) <> '' then
      begin
        Result := True;
        Exit;
      end;
    end;
  end;
end;

function verificaSeTodosCheckBoxEstaoVazios(const AOwner: TComponent): Boolean;
var
  i: Integer;
  CheckBox: TUniCheckBox;
begin
  Result := False;

  for i := 0 to AOwner.ComponentCount - 1 do
  begin
    if AOwner.Components[i] is TUniCheckBox then
    begin
      CheckBox := TUniCheckBox(AOwner.Components[i]);
      if CheckBox.Checked then
      begin
        Result := True;
        Exit;
      end;
    end;
  end;
end;


function LocalizarItemPorCodigoNoComboBox(Codigo: Integer;weCbGrupo:tUniSfComboBox): Integer;
var
  i: Integer;
begin
  Result := -1; // Inicializa o resultado como -1 (não encontrado)
  // Percorre os itens do combobox
  for i := 0 to weCbGrupo.Items.Count - 1 do
    begin
      // Recupera o código associado ao item atual
      if Integer(weCbGrupo.Items.Objects[i]) = Codigo then
        begin
          // Se o código corresponder ao código procurado, retorna o índice do item
          Result := i;
          Exit; // Termina a busca assim que encontrar o item
        end;
    end;
end;

//procedure populaCombo(weCombo:tUniSfComboBox;weTabela:string);
//var
//  i:integer;
//  resp1         :IResponse;
//  wBody         :TJSONObject;
//  jsonResponse  :TJSONObject;
//  jContentDados,wRecurso,wBaseUrl      :string;
//begin
//  try
//    i  :=1;
//    wBody  :=TJSONObject.Create;
//    wBody.AddPair('idEmpresaVinculada',UniMainModule.idEmpresaVinculada);
//    wBody.AddPair('nomeBanco',UniMainModule.nomeBanco);
//    wBody.AddPair('codFuncionario',UniMainModule.gCodFuncionario);
//    //convênio
//    if weTabela.Trim.ToUpper = 'CONVENIO' then
//      begin
//        wBody.AddPair('codConvenio','');
//        wBody.AddPair('convenio','');
//        wBody.AddPair('descriTabela','');
//        wBaseUrl  :=  baseurlhorse;
//        wRecurso  :=  getConvenioAll;
//      end
//    //médicos
//    else if weTabela.Trim.ToUpper = 'MEDICOS' then
//      begin
//        wBody.AddPair('codMedico','');
//        wBody.AddPair('nome','');
//        wBody.AddPair('ativo','');
//        wBaseUrl  :=  baseurlhorse;
//        wRecurso  :=  getMedicosEEMpresasAll;
//      end
//    //empresa executante (exame)
//    else if weTabela.Trim.ToUpper = 'SOLICITANTE' then
//      begin
//        wBody.AddPair('codCliente','');
//        wBody.AddPair('nome','');
//        wBody.AddPair('cnpj','');
//        wBaseUrl  :=  baseurlhorse;
//        wRecurso  :=  getEmpresasFiliaisApoiadosSELECT;
//      end
//    //solicitante (exame)
//    else if weTabela.Trim.ToUpper = 'FILIALAPOIADO' then
//      begin
//        wBody.AddPair('cod_ClienteDestino','');
//        wBody.AddPair('nome','');
//        wBody.AddPair('cnpj','');
//        wBaseUrl  :=  baseurlhorse;
//        wRecurso  :=  getSolicitELabsSELECT;
//      end
//    else
//      exit;
//    resp1 := TRequest.New.BaseURL(wBaseUrl)
//          .Resource(wRecurso)
//          .AddBody(wBody)
//          .Timeout(12000)
//          .post;
//    jsonResponse  :=  TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
//    if resp1.StatusCode = 200 then
//      begin
//        weCombo.items.clear;
//        jContentDados  := jsonResponse.GetValue('Result').ToString;
//        jsonToDataSet(uniMainModule.cdsTmp2, jContentDados);
//        weCombo.Items.Clear;
//        while not UniMainModule.cdsTmp2.Eof do
//          begin
//            //convênio
//            if weTabela.Trim.ToUpper = 'CONVENIO' then
//              weCombo.Items.AddObject(UniMainModule.cdsTmp2.FieldByName('convenio').value, TObject(strToInt(UniMainModule.cdsTmp2.FieldByName('codConvenio').value)))
////              weCombo.Items.Add(UniMainModule.cdsTmp2.FieldByName('convenio').AsString)
//            //médicos
//            else if weTabela.Trim.ToUpper = 'MEDICOS' then
//              weCombo.Items.Add(UniMainModule.cdsTmp2.FieldByName('nome').AsString)
//            //empresa executante (exame)
//            else if weTabela.Trim.ToUpper = 'SOLICITANTE' then
//              weCombo.Items.Add(UniMainModule.cdsTmp2.FieldByName('nome').AsString)
//            //solicitante
//            else if weTabela.Trim.ToUpper = 'FILIALAPOIADO' then
//              weCombo.Items.Add(UniMainModule.cdsTmp2.FieldByName('nome').AsString);
//
//            UniMainModule.cdsTmp2.Next;
//            inc(i);
//          end;
//        weCombo.LoadData;
//      end;
//  finally
//      wBody.free;
//  end;
//end;

procedure ocultarMenuGrid(pGrid: TUniDBGrid);
var
   i : integer;
begin
   for I := 0 to pGrid.Columns.Count-1 do
   begin
    pGrid.Columns[I].Menu.MenuEnabled := False;
   end;

   TExUniCustomDBGrid(pGrid).DoConfigureJSColumns(pGrid.DataSource.DataSet);
end;

procedure SetGridColor(Sender: TObject; Attribs: TUniCellAttribs);
begin
  if Odd((Sender as TUniDBGrid).DataSource.DataSet.RecNo) then
    Attribs.Color := clWhite
  else
    Attribs.Color := $00F7F1EF; // leve azul
end;

function checkBoxParaString(CheckBox: TUniCheckBox): string;
begin
  if CheckBox.Checked then
    Result := 'T'
  else
    Result := 'F';
end;

function toggleParaString(Toggle: TUniFSToggle): string;
begin
  if Toggle.Toggled then
    Result := 'T'
  else
    Result := 'F';
end;

function toggleParaInt(Toggle: TUniFSToggle): integer;
begin
  if Toggle.Toggled then
    Result := 1
  else
    Result := 0;
end;

function radioButtonParaString(RadioButton: TUniRadioButton): string;
begin
  if RadioButton.Checked then
    Result := 'T'
  else
    Result := 'F';
end;



procedure AtribuirValorCDSToEdit(const DS: TClientDataSet; const field: string; const edit: TUniEdit);
begin
  if (field <> '') then
  begin
    edit.Text := DS.FieldByName(field).AsString;
  end;
end;

procedure AtribuirValorGridToEdit(const Grid: TUniDBGrid; const ColumnIndex: Integer; const edit: TUniEdit);
begin
  if (ColumnIndex >= 0) and (ColumnIndex < Grid.Columns.Count) then
  begin
    edit.Text := Grid.Columns[ColumnIndex].Field.AsString;
  end;
end;

procedure AtribuirValorGridToMemo(const Grid: TUniDBGrid; const ColumnIndex: Integer; const mem: TUniMemo);
begin
  if (ColumnIndex >= 0) and (ColumnIndex < Grid.Columns.Count) then
  begin
    mem.Text := Grid.Columns[ColumnIndex].Field.AsString;
  end;
end;

procedure AtribuirValorGridToSFComboBox(const Grid: TUniDBGrid; const ColumnIndex: Integer; const comboBox: TUniSFComboBox);
begin
  if (ColumnIndex >= 0) and (ColumnIndex < Grid.Columns.Count) then
  begin
    comboBox.SetPositionFromValue(Grid.Columns[ColumnIndex].Field.AsString);
  end;
end;

procedure AtribuirValorGridToSFComboBoxItemIndex(const Grid: TUniDBGrid; const ColumnIndex: Integer; const comboBox: TUniSFComboBox);
begin
  if (ColumnIndex >= 0) and (ColumnIndex < Grid.Columns.Count) then
  begin
    comboBox.ItemIndex := Grid.Columns[ColumnIndex].Field.Value;
  end;
end;

procedure AtribuirValorGridToCheckBox(const Grid: TUniDBGrid; const ColumnIndex: Integer; const checkBox: TUniCheckBox);
begin
  if (ColumnIndex >= 0) and (ColumnIndex < Grid.Columns.Count) then
  begin
    checkBox.Checked := retornaBoleano(Grid.Columns[ColumnIndex].Field.AsString);
  end;
end;

procedure ConfigurarAlignComboBoxes(Component: TComponent; marginTop: integer = 5);
var
  I: Integer;
begin
  for I := 0 to Component.ComponentCount - 1 do
  begin
    if Component.Components[I] is TUniSFComboBox then
    begin
      (Component.Components[I] as TUniSFComboBox).Align := alClient;
      (Component.Components[I] as TUniSFComboBox).AlignWithMargins := true;
      (Component.Components[I] as TUniSFComboBox).Margins.Top := marginTop;

      // Chamada recursiva para componentes que podem conter outros componentes
      ConfigurarAlignComboBoxes(Component.Components[I]);
    end;
  end;
end;

procedure LimparComponentes(Component: TComponent);
var
  I: Integer;
begin
  for I := 0 to Component.ComponentCount - 1 do
  begin
    if Component.Components[I] is TUniEdit then
      (Component.Components[I] as TUniEdit).Text := ''
    else if Component.Components[I] is TUniSFComboBox then
      (Component.Components[I] as TUniSFComboBox).SetPositionFromValue('')
    else if Component.Components[I] is TUniCheckBox then
      (Component.Components[I] as TUniCheckBox).Checked := False;

    // Chamada recursiva para componentes que podem conter outros componentes
    LimparComponentes(Component.Components[I]);
  end;
end;


function buscaCEP(CEP: string): TEndereco;
var
  LJsonresponse :TJSONObject;
  resp1 :IResponse;
begin

  if CEP <> '' then
  begin
    try
      try
        CEP := stringreplace(CEP, '-', '', [rfReplaceAll, rfIgnoreCase]);


        resp1 := TRequest.New
                .BaseURL('https://cep-api.hci.app.br/viacep/'+CEP)
                .timeOut(12000)
                .get;

        if resp1.statuscode = 200 then
        begin
          LJsonresponse := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(resp1.Content), 0) as TJSONObject;

          Result.erro       := '';
          Result.Logradouro := LJsonresponse.GetValue('logradouro').Value;
          Result.UF         := LJsonresponse.GetValue('uf').Value;
          Result.Bairro     := LJsonresponse.GetValue('bairro').Value;
          Result.Localidade := LJsonresponse.GetValue('localidade').Value;
          Result.Ibge := LJsonresponse.GetValue('ibge').Value;
        end else
          result.erro := resp1.Content;
      except on e:exception do
          Result.erro     := e.Message;
      end;
    finally
      LJsonresponse.free;
    end;
  end;
end;

function buscaMunicipios(UF: string): TArray<TMunicipio>;
var
  LJsonResponse: TJSONObject;
  LArray: TJSONArray;
  LItem: TJSONObject;
  resp1: IResponse;
  i: Integer;
begin
  SetLength(Result, 0); // inicia vazio

  if UF = '' then
    Exit;

  resp1 := TRequest.New
            .BaseURL(baseurlCadastros)
            .Resource(getCidades)
            .AddParam('ID', '')
            .AddParam('UF', UF)
            .AddParam('CODIGOMUNICIPIOCOMPLETO', '')
            .AddParam('NOMEMUNICIPIO', '')
            .Timeout(12000)
            .Get;

  if resp1.StatusCode = 200 then
  begin
    LJsonResponse := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(resp1.Content), 0) as TJSONObject;
    try
      LArray := LJsonResponse.GetValue<TJSONArray>('Result');
      if Assigned(LArray) then
      begin
        SetLength(Result, LArray.Count);
        for i := 0 to LArray.Count - 1 do
        begin
          LItem := LArray.Items[i] as TJSONObject;

          Result[i].ID := LItem.GetValue<string>('ID', '');
          Result[i].UF := LItem.GetValue<string>('UF', '');
          Result[i].NOMEUF := LItem.GetValue<string>('NOMEUF', '');
          Result[i].MUNICIPIO := LItem.GetValue<string>('MUNICIPIO', '');
          Result[i].CODIGOMUNICIPIOCOMPLETO := LItem.GetValue<string>('CODIGOMUNICIPIOCOMPLETO', '');
          Result[i].NOMEMUNICIPIO := LItem.GetValue<string>('NOMEMUNICIPIO', '');
        end;
      end;
    finally
      LJsonResponse.Free;
    end;
  end else
    raise Exception.CreateFmt('Erro na requisição: %d - %s', [resp1.StatusCode, resp1.Content]);
end;

function caractersWhats(vText: string): string;
begin
  vText := StringReplace(vText, sLineBreak,'\n',[rfReplaceAll]);
  vText := StringReplace((vText), #13,'',[rfReplaceAll]);
  vText := StringReplace((vText), '"','\"',[rfReplaceAll]);
  vText := StringReplace((vText), #$A, '', [rfReplaceAll]);
  vText := StringReplace((vText), '&', 'e', [rfReplaceAll]);
  vText := StringReplace((vText), '$', '', [rfReplaceAll]);
  Result := vText;
end;

procedure enviarNotificacaoSlack(pEndpoint, pStatusCode, pCliente, pBody, pContent: string; pTipo : string = '');
var
  baseURL   :string;
  mensagem  :string;
  ABody     :string;
  lURL      :String;
  lResponse, JsonToSend :TStringStream;
  sResponse :string;
  Http      :TCustomIdHTTP;
  cep       :string;
  falha     :string;
begin
  if pTipo = '' then
  begin

        baseURL := 'https://hooks.slack.com/services/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';
        mensagem := '*FrontEnd produção* - '+dateToStr(date) + ' '+ timeToStr(time)+'\n\n';
        mensagem := mensagem + '*Endpoint*: ' + pEndpoint+ '\n';
        mensagem := mensagem + '*StatusCode*: ' + pStatusCode+ '\n';
        mensagem := mensagem + '*Cliente*: '  + pCliente + '\n';
        mensagem := mensagem + '*Body*: '  + caractersWhats(pBody) + '\n';
        mensagem := mensagem + '*Content*: '  + pContent + '\n\n';
        mensagem := mensagem + '*Equipe dev favor verificar.*';

        lResponse := TStringStream.Create('');

        lURL := baseURL;

        Http := TCustomIdHTTP.Create(nil);

        Http.Request.UserAgent :=
          'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36';
        Http.Request.ContentType := 'application/json';
        Http.Request.ContentEncoding := 'utf-8';
        Http.ProtocolVersion := TIdHTTPProtocolVersion.pv1_1;
        Http.Request.CustomHeaders.FoldLines := False;
    //      Http.Request.CustomHeaders.Add
    //        ('api-key: Cw19fBYwKr7D4CSK4s6iLiAFmiVGplINsZUoAXEasK2M9ptkFrjlGjRgSRA76Ope');

        Http.ConnectTimeout := 60000;
        Http.ReadTimeout := 60000;

          JsonToSend := TStringStream.Create
            ('{ "text":"'+UTF8Encode(mensagem)+'" }');
        try
          Http.post(lURL, JsonToSend, lResponse);
        except on e:exception do
         falha := e.Message;
        end;
  end;

end;

function AddHtmlWithImageToURLFrame(const URLFrame: TUniURLFrame; const imageBase64: wideString): string;
var
  HtmlCode: TStringList;
begin
  // Crie um TStringList para armazenar o HTML
  HtmlCode := TStringList.Create;
  try
    // Adicione o código HTML necessário para exibir a imagem centralizada
    HtmlCode.Add('<html>');
    HtmlCode.Add('<head>');
    HtmlCode.Add('<style>');
    HtmlCode.Add('  body {');
    HtmlCode.Add('    display: flex;');
    HtmlCode.Add('    justify-content: center;');
    HtmlCode.Add('    align-items: center;');
    HtmlCode.Add('    height: 100vh;');
    HtmlCode.Add('    margin: 0;');
    HtmlCode.Add('  }');
    HtmlCode.Add('</style>');
    HtmlCode.Add('</head>');
    HtmlCode.Add('<body>olha a imagem:');
    HtmlCode.Add('<img src="data:image/jpeg;base64,' + imageBase64 + '">');
    HtmlCode.Add('</body>');
    HtmlCode.Add('</html>');

    // Atribua o HTML gerado ao TUniURLFrame
    URLFrame.HTML.Text := HtmlCode.Text;

    Result := HtmlCode.Text;
  finally
    HtmlCode.Free;
  end;
end;

function FileStreamToMemoryStream(const FileStream: TFileStream): TMemoryStream;
begin
  Result := TMemoryStream.Create;
  try
    // Defina o tamanho do MemoryStream igual ao tamanho do FileStream
    Result.Size := FileStream.Size;
    // Mova os dados do FileStream para o MemoryStream
    Result.CopyFrom(FileStream, FileStream.Size);
  except
    // Em caso de erro, libere a memória alocada e relance a exceção
    Result.Free;
    raise;
  end;
end;

function StreamToBase64(STream: TFileStream): String;
var
  MSTream : TMemoryStream;
  Base64 : tBase64Encoding;
begin
  Try
    MSTream := FileStreamToMemoryStream(STream);
    MSTream.Seek(0, 0);
    Base64 := TBase64Encoding.Create;
    Result := Base64.EncodeBytesToString(MSTream.Memory, MSTream.Size);
  Finally
    Base64.Free;
    Base64:=nil;
  End;

end;

function validarTexto(texto: string): Boolean;

const
  PadraoRegex = '\b[A-Za-zÀ-ú]+\b'; // Expressão regular para verificar palavras em português
var
  Regex: TRegEx;
begin
  Regex := TRegEx.Create(PadraoRegex);
  Result := Regex.IsMatch(Texto);
end;


//Funcões para retornar e separar o json do resultado e o json dos valores de referências

function ObterJSONsDoArray(const jsonString: string; out primeiroItem, segundoItem: string): Boolean;
  function ObterObjetoResultDoJSON(const jsonString: string): string;
  var
    jsonObj, resultObj: TJSONObject;
    jsonArray: TJSONArray;
  begin
    resultObj := nil;

    try
      jsonObj := TJSONObject.ParseJSONValue(jsonString) as TJSONObject;
      if Assigned(jsonObj) then
      begin
        if jsonObj.TryGetValue('Result', jsonArray) then
        begin
          if jsonArray.Count > 0 then
          begin
            if jsonArray.Items[0] is TJSONObject then
              resultObj := jsonArray.Items[0] as TJSONObject;
          end;
        end;
      end;
    except
      // Lidar com exceções de análise JSON, se necessário
    end;

    Result := resultObj.ToString;
  end;

var
  jsonObj: TJSONObject;
  jsonArray: TJSONArray;
begin
  try
    jsonObj := TJSONObject.ParseJSONValue(jsonString) as TJSONObject;
    if Assigned(jsonObj) then
    begin
      jsonArray := jsonObj.GetValue('resultadoEReferencias') as TJSONArray;
      if Assigned(jsonArray) then
      begin
        if jsonArray.Count >= 1 then
          primeiroItem := jsonArray.Items[0].ToString
        else
          primeiroItem := '';

        if jsonArray.Count >= 2 then
        begin
          segundoItem := ObterObjetoResultDoJSON(jsonArray.Items[1].ToString);
        end
        else
          segundoItem := '';

        Result := True;
      end
      else
      begin
        primeiroItem := '';
        segundoItem := '';
        Result := False; // Array 'teste' não encontrado
      end;
    end
    else
    begin
      primeiroItem := '';
      segundoItem := '';
      Result := False; // JSON inválido
    end;
  except
    primeiroItem := '';
    segundoItem := '';
    Result := False; // Exceção ao analisar o JSON
  end;
end;

function ValidaHorario(const Horario: string): Boolean;
var
  Match: TMatch;
  Hora, Minuto: Integer;
begin
  Result := False;

  // Valida o formato HH:MM com regex
  Match := TRegEx.Match(Horario, '^([0-2][0-9]):([0-5][0-9])$');
  if not Match.Success then
    Exit;

  // Converte HH e MM para inteiros
  Hora := StrToIntDef(Match.Groups[1].Value, -1);
  Minuto := StrToIntDef(Match.Groups[2].Value, -1);

  // Verifica se estão dentro dos limites aceitáveis
  Result := (Hora >= 0) and (Hora < 24) and (Minuto >= 0) and (Minuto < 60);
end;


function validaData(const data: string): Boolean;
var
  DataValida: TDateTime;
  FormatoData: TFormatSettings;
begin
  // Define o formato de data brasileiro
  FormatoData.ShortDateFormat := 'dd/mm/yyyy';
  FormatoData.DateSeparator := '/';

  try
    // Tenta converter a string em uma data usando o formato brasileiro
    DataValida := StrToDate(data, FormatoData);

    // Verifica se a data é maior ou igual a 01/01/1900
    Result := DataValida >= EncodeDate(1900, 1, 1);
  except
    // Em caso de erro na conversão, retorna falso
    Result := False;
  end;
end;


function RemoverEspacosExtras(const texto: string): string;

var
  i: Integer;
  temEspaco: Boolean;
begin
  Result := '';
  temEspaco := False;

  for i := 1 to Length(texto) do
  begin
    if texto[i] = ' ' then
    begin
      if not temEspaco then
      begin
        Result := Result + texto[i];
        temEspaco := True;
      end;
    end
    else
    begin
      Result := Result + texto[i];
      temEspaco := False;
    end;
  end;
end;


//FUNÇAO DE VALIDAÇÃO DO CNS (SUS)

function validaCNS(Num: string) :Boolean;
var
  soma  :int64;
  resto :integer;
begin
  soma :=
    ( ( strtoint64( copy( Num, 1, 1 ) ) ) * 15 ) +
    ( ( strtoint64( copy( Num, 2, 1 ) ) ) * 14 ) +
    ( ( strtoint64( copy( Num, 3, 1 ) ) ) * 13 ) +
    ( ( strtoint64( copy( Num, 4, 1 ) ) ) * 12 ) +
    ( ( strtoint64( copy( Num, 5, 1 ) ) ) * 11 ) +
    ( ( strtoint64( copy( Num, 6, 1 ) ) ) * 10 ) +
    ( ( strtoint64( copy( Num, 7, 1 ) ) ) * 9 ) +
    ( ( strtoint64( copy( Num, 8, 1 ) ) ) * 8 ) +
    ( ( strtoint64( copy( Num, 9, 1 ) ) ) * 7 ) +
    ( ( strtoint64( copy( Num, 10, 1 ) ) ) * 6 ) +
    ( ( strtoint64( copy( Num, 11, 1 ) ) ) * 5 ) +
    ( ( strtoint64( copy( Num, 12, 1 ) ) ) * 4 ) +
    ( ( strtoint64( copy( Num, 13, 1 ) ) ) * 3 ) +
    ( ( strtoint64( copy( Num, 14, 1 ) ) ) * 2 ) +
    ( ( strtoint64( copy( Num, 15, 1 ) ) ) * 1 );

  resto:= soma mod 11;

  if resto <> 0 then
   result := false
  else
   result := true;
end;


function ContarCaracteres(componente: TComponent; quantidadeMaxima: Integer): Integer;
var
  texto: string;
begin
  // Verifica se o componente é um controle de edição de texto (TEdit ou TMemo)
  if (componente is TUniMemo) then
  begin
    // Obtém o texto do componente
    texto := TUniMemo(componente).Text;

    if texto = '' then
    begin
      result := 0;
      exit;
    end;

    // Verifica se o texto atual excede a quantidade máxima permitida
    if Length(texto) > quantidadeMaxima then
    begin
      Result := quantidadeMaxima;
      exit;
    end else
      Result := Length(texto);
  end
  else
    Result := 0; // Retorna 0 se o componente não for um controle de edição de texto
end;


procedure limpaUniDatePicker(dtpck: TUniDateTimePicker);

begin

  dtpck.DateTime := 0.0;
  dtpck.JSInterface.JSCode('Ext.defer(function(){'#1'.setValue()}, 10);');
end;



function versaoExe: String;

type
   PFFI = ^vs_FixedFileInfo;
var
   F       : PFFI;
   Handle  : Dword;
   Len     : Longint;
   Data    : Pchar;
   Buffer  : Pointer;
   Tamanho : Dword;
   Parquivo: Pchar;
   Arquivo : String;
begin
   Arquivo  := Application.ExeName;
   Parquivo := StrAlloc(Length(Arquivo) + 1);
   StrPcopy(Parquivo, Arquivo);
   Len := GetFileVersionInfoSize(Parquivo, Handle);
   Result := '';
   if Len > 0 then
   begin
      Data:=StrAlloc(Len+1);
      if GetFileVersionInfo(Parquivo,Handle,Len,Data) then
      begin
         VerQueryValue(Data, '',Buffer,Tamanho);
         F := PFFI(Buffer);
         Result := Format('%d.%d.%d.%d',
                          [HiWord(F^.dwFileVersionMs),
                           LoWord(F^.dwFileVersionMs),
                           HiWord(F^.dwFileVersionLs),
                           Loword(F^.dwFileVersionLs)]
                         );
      end;
      StrDispose(Data);
   end;
   StrDispose(Parquivo);
end;



function gerarToken(Action, Src: String): String;

Label Fim;
var KeyLen : Integer;
        KeyPos : Integer;
        OffSet : Integer;
        Dest, Key, serialkey : String;
        SrcPos : Integer;
        SrcAsc : Integer;
        TmpSrcAsc : Integer;
        Range : Integer;
begin
        if (Src = '') Then
        begin
                Result:= '';
                Goto Fim;
        end;
        Key := 'YUQL23KL23DF90WI1E1JAS467NMCXXL6JAOAUWWKCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';

        Dest := '';
        KeyLen := Length(Key);
        KeyPos := 0;
        SrcPos := 0;
        SrcAsc := 0;
        Range := 256;
        if (Action = UpperCase('C')) then
        begin
                Randomize;
                OffSet := Random(Range);
                Dest := Format('%1.2x',[OffSet]);
                //Dest := Format('###-###-###-###',[OffSet]);
                for SrcPos := 1 to Length(Src) do
                begin
                        Application.ProcessMessages;
                        SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
                        if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;

                        SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
                        Dest := Dest + Format('%1.2x',[SrcAsc]);
                        OffSet := SrcAsc;
                        serialkey := Dest;
                end;
        end
        Else if (Action = UpperCase('D')) then

        try
        //begin
                OffSet := StrToInt('$' + copy(Src,1,2));//<--------------- adiciona o $ entra as aspas simples
                SrcPos := 3;
                repeat
                        SrcAsc := StrToInt('$' + copy(Src,SrcPos,2));//<--------------- adiciona o $ entra as aspas simples
                        if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
                        TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
                        if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
                        else TmpSrcAsc := TmpSrcAsc - OffSet;
                        Dest := Dest + Chr(TmpSrcAsc);
                        OffSet := SrcAsc;
                        SrcPos := SrcPos + 2;
                until (SrcPos >= Length(Src));
        //end;
        except on E:Exception do
        begin
        end;
end;



        //Result:= FormatMaskText('00000-00000-00000-0000;0;',Dest);
        Result:= Dest;
        Fim:
end;


function validaCPF(CPF: string): boolean;

var  dig10, dig11: string;

    s, i, r, peso: integer;
begin
// length - retorna o tamanho da string (CPF é um número formado por 11 dígitos)
  if ((CPF = '00000000000') or (CPF = '11111111111') or
      (CPF = '22222222222') or (CPF = '33333333333') or
      (CPF = '44444444444') or (CPF = '55555555555') or
      (CPF = '66666666666') or (CPF = '77777777777') or
      (CPF = '88888888888') or (CPF = '99999999999') or
      (length(CPF) <> 11))
     then begin
              validaCPF := false;
              exit;
            end;

// try - protege o código para eventuais erros de conversão de tipo na função StrToInt
  try
{ *-- Cálculo do 1o. Digito Verificador --* }
    s := 0;
    peso := 10;
    for i := 1 to 9 do
    begin
// StrToInt converte o i-ésimo caractere do CPF em um número
      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig10 := '0'
    else str(r:1, dig10); // converte um número no respectivo caractere numérico

{ *-- Cálculo do 2o. Digito Verificador --* }
    s := 0;
    peso := 11;
    for i := 1 to 10 do
    begin
      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig11 := '0'
    else str(r:1, dig11);

{ Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig10 = CPF[10]) and (dig11 = CPF[11]))
       then validaCPF := true
    else validaCPF := false;
  except
    validaCPF := false
  end;

end;


//function ValidarCPF(fsDocto: String): boolean;

//var
//  v: array[0..1] of Word;
//begin
//  if (Length(fsDocto) <> 11) then
//  begin
//     //fsMsgErro := 'CPF deve ter 11 dígitos. (Apenas números)' ;
//     result := false;
//     exit
//  end;
//
//  if pos(fsDocto,'11111111111.22222222222.33333333333.44444444444.55555555555.'+
//         '66666666666.77777777777.88888888888.99999999999.00000000000') > 0 then
//  begin
//     //fsMsgErro := 'CPF Informado não é válido';
//     result := false;
//     exit;
//  end;
//
//  try
//    //Nota: Calcula o primeiro dígito de verificação.
//    v[0] := 10*StrToInt(fsDocto[0]) + 9*StrToInt(fsDocto[1]) + 8*StrToInt(fsDocto[2]);
//    v[0] := v[0] + 7*StrToInt(fsDocto[3]) + 6*StrToInt(fsDocto[4]) + 5*StrToInt(fsDocto[5]);
//    v[0] := v[0] + 4*StrToInt(fsDocto[6]) + 3*StrToInt(fsDocto[7]) + 2*StrToInt(fsDocto[8]);
//    v[0] := 11 - v[0] mod 11;
//    v[0] := IfThen(v[0] >= 10, 0, v[0]);
//    //Nota: Calcula o segundo dígito de verificação.
//    v[1] := 11*StrToInt(fsDocto[0]) + 10*StrToInt(fsDocto[1]) + 9*StrToInt(fsDocto[2]);
//    v[1] := v[1] + 8*StrToInt(fsDocto[3]) +  7*StrToInt(fsDocto[4]) + 6*StrToInt(fsDocto[5]);
//    v[1] := v[1] + 5*StrToInt(fsDocto[6]) +  4*StrToInt(fsDocto[7]) + 3*StrToInt(fsDocto[8]);
//    v[1] := v[1] + 2*v[0];
//    v[1] := 11 - v[1] mod 11;
//    v[1] := IfThen(v[1] >= 10, 0, v[1]);
//    //Nota: Verdadeiro se os dígitos de verificação são os esperados.
//    if ((v[0] <> StrToInt(fsDocto[9])) or (v[1] <> StrToInt(fsDocto[10])))then
//    begin
//      //fsMsgErro := 'CPF Informado não é válido';
//      result := false;
//      exit;
//    end else
//      result := true;
//  except
//    on E:Exception do
//    begin
//      //fsMsgErro := 'Erro ao validar CPF '+slinebreak+E.Message;
//      result := false;
//      exit;
//    end;
//  end;
//end;


function StringReplacelettersNotAccents(Str:String):String;

type
 USASCIIString = type AnsiString(20127);
var
 C:Char;
begin
  result:='';
  for C in Str do
    if String(USASCIIString(C)) <> C then
      result:=result+'_'
    else
      result:=result+C;
end;

procedure JsonToDataset(aDataset : TDataSet; aJSON : string);
var
  JObj: TJSONArray;
  vConv : TCustomJSONDataSetAdapter;
begin
  if (aJSON = EmptyStr) then
  begin
    Exit;
  end;

  JObj := TJSONObject.ParseJSONValue(aJSON) as TJSONArray;
  vConv := TCustomJSONDataSetAdapter.Create(Nil);

  try
    vConv.Dataset := aDataset;
    vConv.UpdateDataSet(JObj);
  finally
    vConv.Free;
    JObj.Free;
  end;
end;

procedure JsonToMemTable(aMT: TFDMemTable; aJSON : string);
var
  JObj: TJSONArray;
  vConv : TCustomJSONDataSetAdapter;
begin
  if (aJSON = EmptyStr) then
  begin
    Exit;
  end;

  JObj := TJSONObject.ParseJSONValue(aJSON) as TJSONArray;
  vConv := TCustomJSONDataSetAdapter.Create(Nil);

  try
    vConv.Dataset := aMT;
    vConv.UpdateDataSet(JObj);
  finally
    vConv.Free;
    JObj.Free;
  end;
end;

function DataSetToJsonTxt(aType: integer; FDQuery: TFDQuery = nil; ClientDataSet: TClientDataSet = nil): string;
var
    ArrayJSon:TJSONArray;
    ObjJSon:TJSONObject;
    strJSon:TJSONString;
    intJSon:TJSONNumber;
    TrueJSon:TJSONTrue;
    FalseJSon:TJSONFalse;
    I: Integer;
    pField:TField;
begin
  ArrayJSon:=TJSONArray.Create;
  try
    if aType = 1 then
    begin
      FDQuery.First;

      while not FDQuery.Eof do
      begin
        ObjJSon:=TJSONObject.Create;
        for pField in FDQuery.Fields do
          case pField.DataType of
            ftString:
              begin
                strJSon:=TJSONString.Create(pField.AsString);
                ObjJSon.AddPair(pField.FieldName,strJSon);
              end;

          else
            begin
              strJSon:=TJSONString.Create(pField.AsString);
              ObjJSon.AddPair(pField.FieldName,strJSon);
            end;
          end;
        ArrayJSon.AddElement(ObjJSon);
        FDQuery.next;
      end;
    end else
    if aType = 2 then
    begin
      ClientDataSet.First;

      while not ClientDataSet.Eof do
      begin
        ObjJSon:=TJSONObject.Create;
        var contador := 0;
        for pField in ClientDataSet.Fields do
          case pField.DataType of
            ftString:
              begin
                if (ClientDataSet.Fields[contador].fieldName <> 'principioAtivo') and ((ClientDataSet.Fields[contador].fieldName <> 'nomeProcedimento'))then
                begin
                  strJSon:=TJSONString.Create(pField.AsString);
                  ObjJSon.AddPair(pField.FieldName,strJSon);
                end;
                inc(contador);
              end;
              //inc(i);

          //else
//            begin
//              strJSon:=TJSONString.Create(pField.AsString);
//              ObjJSon.AddPair(pField.FieldName,strJSon);
//            end;
          end;
        ArrayJSon.AddElement(ObjJSon);

        ClientDataSet.next;

      end;
    end else
    if aType = 3 then
    begin
      ClientDataSet.First;

      while not ClientDataSet.Eof do
      begin
        ObjJSon:=TJSONObject.Create;
        for pField in ClientDataSet.Fields do
          case pField.DataType of
            ftString:
              begin
                strJSon:=TJSONString.Create(pField.AsString);
                ObjJSon.AddPair(pField.FieldName,strJSon);
              end;

              ftWideString:
              begin

              end;

          //else
//            begin
//              strJSon:=TJSONString.Create(pField.AsString);
//              ObjJSon.AddPair(pField.FieldName,strJSon);
//            end;
          end;
        ArrayJSon.AddElement(ObjJSon);
        ClientDataSet.next;
      end;
    end else
    if aType = 4 then
    begin
      ClientDataSet.First;

      while not ClientDataSet.Eof do
      begin
        ObjJSon:=TJSONObject.Create;
        for pField in ClientDataSet.Fields do
          case pField.DataType of
            ftInteger:
              begin
                strJSon:=TJSONString.Create(pField.AsString);
                ObjJSon.AddPair(pField.FieldName,strJSon);
              end;

          //else
//            begin
//              strJSon:=TJSONString.Create(pField.AsString);
//              ObjJSon.AddPair(pField.FieldName,strJSon);
//            end;
          end;
        ArrayJSon.AddElement(ObjJSon);
        ClientDataSet.next;
      end;
    end else
    if aType = 5 then
    begin
      ClientDataSet.First;

      while not ClientDataSet.Eof do
      begin
        ObjJSon:=TJSONObject.Create;
        for pField in ClientDataSet.Fields do
          case pField.DataType of
            ftFloat:
              begin
                strJSon:=TJSONString.Create(pField.AsString);
                ObjJSon.AddPair(pField.FieldName,strJSon);
              end;

          //else
//            begin
//              strJSon:=TJSONString.Create(pField.AsString);
//              ObjJSon.AddPair(pField.FieldName,strJSon);
//            end;
          end;
        ArrayJSon.AddElement(ObjJSon);
        ClientDataSet.next;
      end;
    end else
    if aType = 6 then
    begin
      ClientDataSet.First;

      while not ClientDataSet.Eof do
      begin
        ObjJSon:=TJSONObject.Create;
        for pField in ClientDataSet.Fields do
          case pField.DataType of
            ftWideString:
              begin
                strJSon:=TJSONString.Create(pField.AsString);
                ObjJSon.AddPair(pField.FieldName,strJSon);
              end;

            ftString:
              begin
                strJSon:=TJSONString.Create(pField.AsString);
                ObjJSon.AddPair(pField.FieldName,strJSon);
              end;
          end;
        ArrayJSon.AddElement(ObjJSon);
        ClientDataSet.next;
      end;
    end;

    result:=ArrayJSon.ToString;
  finally
    ArrayJSon.Free;
  end;

end;

procedure loadingShow(btn: TUniSFBitBtn);
begin
  UniSession.AddJS(btn.JSName + '.setDisabled(true)');
  UniSession.AddJS('$(''#'+btn.JSId+''').addClass(''button--loading'')');
end;

procedure limpaCookiesEdit(ed: TUniEdit = nil; cBox: TUniSFComboBox = nil);
begin
  if assigned(ed) then
  begin
    with ed do
    begin
      ClientEvents.ExtEvents.Values['afterrender'] :=
      'function afterrender(sender, config) {'+
         'var me=sender.inputEl;'+
            'me.set({'+
                'readonly: "readonly"'+
            '});'+

            'sender.addListener('+
                quotedStr('focus')+','+
                'function(sender, e, eOpts) {'+
                    'me.el.dom.removeAttribute('+quotedStr('readonly')+');'+
                '}'+
            ');'+
      '}';
    end;
  end;

  if assigned(cBox) then
  begin
    cBox.SetPositionFromValue('');
  end;
end;

procedure limpaCookiesEditRecursivo(Component: TComponent);
var
  I: Integer;
begin
 for I := 0 to Component.ComponentCount - 1 do
  begin
    if Component.Components[I] is TUniEdit then
    begin
      limpaCookiesEdit(TUniEdit(Component.Components[I]), nil); // passa o objeto, não o Name
      TUniEdit(Component.Components[I]).Clear;             // limpa o conteúdo
    end;

    if Component.Components[I] is TUniSFComboBox then
    begin
      limpaCookiesEdit(nil, TUniSFComboBox(Component.Components[I])); // passa o objeto, não o Name
      TUniSFComboBox(Component.Components[I]).SetPositionFromValue(''); // limpa o conteúdo
      TUniSFComboBox(Component.Components[I]).Update;
      TUniSFComboBox(Component.Components[I]).LoadData;
    end;

    // chamada recursiva para subcomponentes
    if Component.Components[I].ComponentCount > 0 then
      limpaCookiesEditRecursivo(Component.Components[I]);
  end;
end;


procedure loadingShowLabel(lbl: TUniSFLabel);
begin
  UniSession.AddJS(lbl.JSName + '.setDisabled(true)');
  UniSession.AddJS('$(''#'+lbl.JSId+''').addClass(''button--loading'')');
end;

procedure loadingHideLabel(lbl: TUniSFLabel);
begin
  UniSession.AddJS(lbl.JSName + '.setDisabled(false)');
  UniSession.AddJS('$(''#'+lbl.JSId+''').removeClass(''button--loading'')');
end;

procedure loadingShowPanel(pn: TUniContainerPanel);
begin
  UniSession.AddJS(pn.JSName + '.setDisabled(true)');
  UniSession.AddJS('$(''#'+pn.JSId+''').addClass(''button--loading'')');
end;

procedure loadingPanelHide(pn: TUniContainerPanel);
begin
  UniSession.AddJS(pn.JSName + '.setDisabled(false)');
  UniSession.AddJS('$(''#'+pn.JSId+''').removeClass(''button--loading'')');
end;

procedure loadingHide(btn: TUniSFBitBtn);
begin
  UniSession.AddJS(btn.JSName + '.setDisabled(false)');
  UniSession.AddJS('$(''#'+btn.JSId+''').removeClass(''button--loading'')');
end;

procedure loadingWhiteShow(btn: TUniSFBitBtn);
begin
  UniSession.AddJS(btn.JSName + '.setDisabled(true)');
  UniSession.AddJS('$(''#'+btn.JSId+''').addClass(''button--loading--white'')');
end;

procedure loadingWhiteHide(btn: TUniSFBitBtn);
begin
  UniSession.AddJS(btn.JSName + '.setDisabled(false)');
  UniSession.AddJS('$(''#'+btn.JSId+''').removeClass(''button--loading--white'')');
end;

procedure loadingShowComboBox(cb: TUniSFComboBox);
begin
  UniSession.AddJS(cb.JSName + '.setDisabled(false)');
  UniSession.AddJS('$(''#'+cb.JSId+''').removeClass(''button--loading'')');
end;

procedure loadingHideComboBox(cb: TUniSFComboBox);
begin
  UniSession.AddJS(cb.JSName + '.setDisabled(false)');
  UniSession.AddJS('$(''#'+cb.JSId+''').removeClass(''button--loading'')');
end;

function retornaBoleano(value: string): boolean;
begin
  case AnsiIndexStr(UpperCase(value), ['0', '-1', 'false', 'true', 'F', 'T', 'N', 'S', 'NÃO', 'SIM', 'NAO', '', '0', '1']) of
    0   : result := false;
    1   : result := true;
    2   : result := false;
    3   : result := true;
    4   : result := false;
    5   : result := true;
    6   : result := false;
    7   : result := true;
    8   : result := false;
    9   : result := true;
    10  : result := false;
    11  : result := false;
    12  : result := false;
    13  : result := true;
  end;
end;

function Toggledtostring(pBoolean: Boolean): string;
begin
  if pBoolean then
    result := 'S'
  else
    Result := 'N';
end;

function ToggledtostringNum(pBoolean: Boolean): string;
begin
  if pBoolean then
    result := '1'
  else
    Result := '0';
end;

function normalizaValorNumero(value: string): string;
var
  newValue :string;
begin
  newValue := stringReplace(value, '.', '', [rfReplaceAll]);
  newValue := stringReplace(newValue, ',', '.', [rfReplaceAll]);

  result := newValue;
end;

function marcaCheckbox(value: string): boolean;
begin
  if (value = 'T') or (value = 'X') then
    result := true else
    result := false;
end;

function removeCaraters(value: string): string;
begin
  value := stringReplace(value, '(', '', [rfReplaceAll]);
  value := stringReplace(value, ')', '', [rfReplaceAll]);
  value := stringReplace(value, '-', '', [rfReplaceAll]);
  value := stringReplace(value, ' ', '', [rfReplaceAll]);
  value := stringReplace(value, '.', '', [rfReplaceAll]);
  value := stringReplace(value, '/', '', [rfReplaceAll]);

  result := value;
end;

function removeCaratersMenosOsEspaco(value: string): string;
begin
  value := stringReplace(value, '(', '', [rfReplaceAll]);
  value := stringReplace(value, ')', '', [rfReplaceAll]);
  value := stringReplace(value, '-', '', [rfReplaceAll]);
  value := stringReplace(value, '.', '', [rfReplaceAll]);
  value := stringReplace(value, '/', '', [rfReplaceAll]);

  result := value;
end;

function removeEspaco(const str: String): string;
const
  cDouble = '  ';
  cOne = ' ';
begin
   result := Str;

   while pos(cDouble,result) > 0 do
      result  := StringReplace(result, cDouble, cOne, [rfReplaceAll]);
end;

function regExStringReplace(const Input :string; OldPattern :array of Char;
    const Replacement:  String = ''; Options :TRegExOptions = [roIgnoreCase]) :string;
const
  MetaCaracter = '.*+?\^$|(){}[]';
var
  NewPattern  :String;
  newCaracter :Char;
const
  cDouble = '  ';
  cOne = ' ';
begin
  NewPattern  := '[';

  for newCaracter in OldPattern do
    if pos(newCaracter,MetaCaracter) > 0 then
      NewPattern  := NewPattern + '\' + newCaracter else
      NewPattern  := NewPattern + newCaracter;

      NewPattern:=NewPattern+']';

  result  := TRegEx.Replace(Input, NewPattern, Replacement, Options);

  while pos(cDouble, result) > 0 do
      result  := StringReplace(result, cDouble, cOne, [rfReplaceAll]);
end;


function TrocaCaracterEspecial(aTexto : string; aLimExt : boolean) : string;
const
  //Lista de caracteres especiais
  xCarEsp: array[1..38] of String = ('á', 'à', 'ã', 'â', 'ä','Á', 'À', 'Ã', 'Â', 'Ä',
                                     'é', 'è','É', 'È','í', 'ì','Í', 'Ì',
                                     'ó', 'ò', 'ö','õ', 'ô','Ó', 'Ò', 'Ö', 'Õ', 'Ô',
                                     'ú', 'ù', 'ü','Ú','Ù', 'Ü','ç','Ç','ñ','Ñ');
  //Lista de caracteres para troca
  xCarTro: array[1..38] of String = ('a', 'a', 'a', 'a', 'a','A', 'A', 'A', 'A', 'A',
                                     'e', 'e','E', 'E','i', 'i','I', 'I',
                                     'o', 'o', 'o','o', 'o','O', 'O', 'O', 'O', 'O',
                                     'u', 'u', 'u','u','u', 'u','c','C','n', 'N');
  //Lista de Caracteres Extras
  xCarExt: array[1..65] of string = ('<','>','!','@','#','$','%','¨','&','*',
                                     '(',')','_','+','=','{','}','[',']','?',
                                     ';',':',',','|','*','"','~','^','´','`',
                                     '¨','æ','Æ','ø','£','Ø','ƒ','ª','º','¿',
                                     '®','½','¼','ß','µ','þ','ý','Ý','1','2',
                                     '3','4','5','6','7','8','9','\','/', '.',
                                     ''+Chr(39)+'', '-', '°', '¬', '0');
var
  xTexto : string;
  i : Integer;
const
  cDouble = '  ';
  cOne = ' ';
begin
   xTexto := aTexto;
//   for i:=1 to 38 do
//     xTexto := StringReplace(xTexto, xCarEsp[i], xCarTro[i], [rfreplaceall]);

   //De acordo com o parâmetro aLimExt, elimina caracteres extras.
   if (aLimExt) then
     for i:=1 to 65 do
       xTexto := StringReplace(xTexto, xCarExt[i], '', [rfreplaceall]);
   Result := xTexto;

   while pos(cDouble, Result) > 0 do
      Result  := StringReplace(Result, cDouble, cOne, [rfReplaceAll]);
end;


// Senha padrão de 10 caracteres - letras e números
// GetToken(10);

// Senha com números e letras maiúsculas
// GetToken(20, 2);

// Senha com números e letras minúsculas
// GetToken(15, 3);

// Senha com letras maiúsculas e minúsculas
// GetToken(8, 4);

// Senha com somente números
// GetToken(12, 5);

// Senha com somente letras minúsculas
// GetToken(6, 6);

// Senha com somente letras minúsculas
// GetToken(30, 7);
function GetToken(Size: Integer; Tipo : Integer = 1): String;
var
  I: Integer;
  Chave: String;
const
  str1 = '1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
  str2 = '1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  str3 = '1234567890abcdefghijklmnopqrstuvwxyz';
  str4 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
  str5 = '1234567890';
  str6 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  str7 = 'abcdefghijklmnopqrstuvwxyz';
begin
  Chave := '';

  for I := 1 to Size do
  begin
    case Tipo of
      1 : Chave := Chave + str1[Random(Length(str1)) + 1];
      2 : Chave := Chave + str2[Random(Length(str2)) + 1];
      3 : Chave := Chave + str3[Random(Length(str3)) + 1];
      4 : Chave := Chave + str4[Random(Length(str4)) + 1];
      5 : Chave := Chave + str5[Random(Length(str5)) + 1];
      6 : Chave := Chave + str6[Random(Length(str6)) + 1];
      7 : Chave := Chave + str7[Random(Length(str7)) + 1];
    end;
  end;

  Result := Chave;
end;


procedure DefinirTodasAbasNaPrimeiraPagina(AOwner: TWinControl);
var
  I: Integer;
begin
  for I := 0 to AOwner.ComponentCount - 1 do
  begin
    if AOwner.Components[I] is TUniPageControl then
      (AOwner.Components[I] as TUniPageControl).ActivePageIndex := 0;
  end;
end;

procedure ExibeIconeAtivo(const Valor: string; var Texto: string; DisplayText: Boolean);
begin
  if not DisplayText then
    Exit;

  if Valor = 'S' then
    Texto := '<span style="cursor:pointer"> <i class="fa fa-circle bola-verde-pisca" style="color:green;"></i></span>'
  else
    Texto := '<span style="cursor:pointer"> <i class="fa fa-circle" style="color:red;"></i></span>';
end;

//Para extrair os dados e preencher os campos de um TUniFrame
procedure PreencherCamposDoForm(AOwner: TComponent;
  out lAtivo: string;
  AGrid: TUniDBGrid = nil;
  ADataSet: TClientDataSet = nil;
  lblTitulo: string = '');
var
  i: Integer;
  Campo: string;
  Componente: TComponent;
  DataSet: TDataSet;
begin
  // Ajusta título
  if Assigned(AOwner.FindComponent('compTitulo')) then
    TUniLabel(AOwner.FindComponent('compTitulo')).Caption := lblTitulo;

  //lAtivo := 'N';

  // Marca toggle se for novo registro
  if lblTitulo = 'NOVO REGISTRO' then
  begin
    if Assigned(AOwner.FindComponent('compativo')) and
      (AOwner.FindComponent('compativo') is TUniFSToggle) then
      TUniFSToggle(AOwner.FindComponent('compativo')).Toggled := True;
      lAtivo := 'S';
  end;

  //Decide qual dataset usar
  if Assigned(ADataSet) then
    DataSet := ADataSet
  else if Assigned(AGrid) and Assigned(AGrid.DataSource) then
    DataSet := AGrid.DataSource.DataSet
  else
    Exit; //Nenhum dataset válido

  if not Assigned(DataSet) then
    Exit;

  //Percorre campos do dataset
  for i := 0 to DataSet.Fields.Count - 1 do
  begin
    Campo := DataSet.Fields[i].FieldName;
    Componente := AOwner.FindComponent('comp' + Campo);

    if Assigned(Componente) then
    begin
      if Componente is TUniEdit then
        TUniEdit(Componente).Text := DataSet.Fields[i].AsString
      else if Componente is TUniMemo then
        TUniMemo(Componente).Text := DataSet.Fields[i].AsString
      else if Componente is TUniCheckBox then
        TUniCheckBox(Componente).Checked := (DataSet.Fields[i].AsString = 'S')
      else if Componente is TUniFSToggle then
      begin
        if (DataSet.Fields[i].AsString = 'S') or (DataSet.Fields[i].AsString = '1') or (DataSet.Fields[i].AsString = 'T') then
        begin
          lAtivo := 'S';
          TUniFSToggle(Componente).Toggled := true;
        end else
          begin
            lAtivo := 'N';
            TUniFSToggle(Componente).Toggled := false;
          end;
      end
      else if Componente is TUniSFLabel then
        TUniSFLabel(Componente).Caption := DataSet.Fields[i].AsString
      else if Componente is TUniSFComboBox then //TUniSFComboBox
      begin
        if Componente.name = 'compSM' then
        begin
          if DataSet.Fields[i].AsString = 'S' then
            TUniSFComboBox(Componente).SetPositionFromValue('S - SEMANAL') else
          if DataSet.Fields[i].AsString = 'M' then
            TUniSFComboBox(Componente).SetPositionFromValue('M - DIA DO MÊS')
        end else
          if Componente.Name = 'compPARCELACONSIDERA' then
          begin
            if DataSet.Fields[i].AsString = '1' then
              TUniSFComboBox(Componente).SetPositionFromValue('1 - DATA DO PEDIDO') else
            if DataSet.Fields[i].AsString = '2' then
              TUniSFComboBox(Componente).SetPositionFromValue('2 - DATA FATURADO') else
            if DataSet.Fields[i].AsString = '3' then
              TUniSFComboBox(Componente).SetPositionFromValue('3 - DATA DE EMISSÃO NFe');
          end else
            if Componente.Name = 'compMOVENTR' then
            begin
              if DataSet.Fields[i].AsString = '1' then
                TUniSFComboBox(Componente).SetPositionFromValue('1 - DATA FATURADO') else
              if DataSet.Fields[i].AsString = '2' then
                TUniSFComboBox(Componente).SetPositionFromValue('2 - DATA DE ENTREGA')
            end else
              if Componente.Name = 'compEMAILAUT' then
              begin
                if DataSet.Fields[i].AsString = '1' then
                  TUniSFComboBox(Componente).SetPositionFromValue('1 - SIM') else
                if DataSet.Fields[i].AsString = '2' then
                  TUniSFComboBox(Componente).SetPositionFromValue('2 - NÃO');
              end else
                if Componente.Name = 'compLOGMAIL' then
                begin
                  if DataSet.Fields[i].AsString = '1' then
                    TUniSFComboBox(Componente).SetPositionFromValue('1 - SIM') else
                  if DataSet.Fields[i].AsString = '2' then
                    TUniSFComboBox(Componente).SetPositionFromValue('2 - NÃO');
                end else
                  if Componente.Name = 'compINT_TIPOBAIXA' then
                  begin
                    if DataSet.Fields[i].AsString = '1' then
                      TUniSFComboBox(Componente).SetPositionFromValue('1 - MATÉRIA PRIMA') else
                    if DataSet.Fields[i].AsString = '2' then
                      TUniSFComboBox(Componente).SetPositionFromValue('2 - PRODUTOS SEMI ACABADOS') else
                    if DataSet.Fields[i].AsString = '3' then
                      TUniSFComboBox(Componente).SetPositionFromValue('3 - TODOS');
                  end else
                  if Componente.name = 'compFORMAPAGTO' then
                  begin
                    if DataSet.Fields[i].AsString = '01' then
                      TUniSFComboBox(Componente).SetPositionFromValue('01=Dinheiro') else
                    if DataSet.Fields[i].AsString = '02' then
                      TUniSFComboBox(Componente).SetPositionFromValue('02=Cheque') else
                    if DataSet.Fields[i].AsString = '03' then
                      TUniSFComboBox(Componente).SetPositionFromValue('03=Cartão de Crédito') else
                    if DataSet.Fields[i].AsString = '04' then
                      TUniSFComboBox(Componente).SetPositionFromValue('04=Cartão de Débito') else
                    if DataSet.Fields[i].AsString = '05' then
                      TUniSFComboBox(Componente).SetPositionFromValue('05=Crédito Loja') else
                    if DataSet.Fields[i].AsString = '10' then
                      TUniSFComboBox(Componente).SetPositionFromValue('10=Vale Alimentação') else
                    if DataSet.Fields[i].AsString = '11' then
                      TUniSFComboBox(Componente).SetPositionFromValue('11=Vale refeição') else
                    if DataSet.Fields[i].AsString = '12' then
                      TUniSFComboBox(Componente).SetPositionFromValue('12=Vale Presente') else
                    if DataSet.Fields[i].AsString = '13' then
                      TUniSFComboBox(Componente).SetPositionFromValue('13=Vale Combustível') else
                    if DataSet.Fields[i].AsString = '15' then
                      TUniSFComboBox(Componente).SetPositionFromValue('15=Boleto Bancário') else
                    if DataSet.Fields[i].AsString = '90' then
                      TUniSFComboBox(Componente).SetPositionFromValue('90=Sem Pagamento') else
                    if DataSet.Fields[i].AsString = '99' then
                      TUniSFComboBox(Componente).SetPositionFromValue('99=Outros');
                  end else
                    if Componente.Name = 'compcategoria' then
                    begin
                      if DataSet.Fields[i].AsString = 'C' then
                        TUniSFComboBox(Componente).SetPositionFromValue('CARTÕES') else
                      if DataSet.Fields[i].AsString = 'P' then
                        TUniSFComboBox(Componente).SetPositionFromValue('PIX');
                    end else
                      if Componente.Name = 'comptipoCar' then
                      begin
                        if DataSet.Fields[i].AsString = 'C' then
                          TUniSFComboBox(Componente).SetPositionFromValue('CRÉDITO') else
                        if DataSet.Fields[i].AsString = 'D' then
                          TUniSFComboBox(Componente).SetPositionFromValue('DÉBITO');
                      end else
                        if Componente.Name = 'compbandeira' then
                        begin
                          if DataSet.Fields[i].AsString = 'Vi' then
                            TUniSFComboBox(Componente).SetPositionFromValue('Visa') else
                          if DataSet.Fields[i].AsString = 'Ma' then
                            TUniSFComboBox(Componente).SetPositionFromValue('Mastercard') else
                          if DataSet.Fields[i].AsString = 'Am' then
                            TUniSFComboBox(Componente).SetPositionFromValue('American Express') else
                          if DataSet.Fields[i].AsString = 'So' then
                            TUniSFComboBox(Componente).SetPositionFromValue('Sorocred') else
                          if DataSet.Fields[i].AsString = 'Di' then
                            TUniSFComboBox(Componente).SetPositionFromValue('Diners Club') else
                          if DataSet.Fields[i].AsString = 'El' then
                            TUniSFComboBox(Componente).SetPositionFromValue('Elo') else
                          if DataSet.Fields[i].AsString = 'Hi' then
                            TUniSFComboBox(Componente).SetPositionFromValue('Hipercard') else
                          if DataSet.Fields[i].AsString = 'Au' then
                            TUniSFComboBox(Componente).SetPositionFromValue('Aura') else
                          if DataSet.Fields[i].AsString = 'Ca' then
                            TUniSFComboBox(Componente).SetPositionFromValue('Cabal') else
                          if DataSet.Fields[i].AsString = 'Ou' then
                            TUniSFComboBox(Componente).SetPositionFromValue('Outros');
                        end else
                          if Componente.Name = 'compemitebol' then
                          begin
                            if DataSet.Fields[i].AsString = '1' then
                                TUniSFComboBox(Componente).SetPositionFromValue('1 - Banco') else
                            if DataSet.Fields[i].AsString = '2' then
                                TUniSFComboBox(Componente).SetPositionFromValue('2 - Empresa');
                          end else
                            if Componente.Name = 'compcodPagNfe' then
                            begin
                              if (DataSet.Fields[i].AsString = '0') or (DataSet.Fields[i].AsString = '') then
                                  TUniSFComboBox(Componente).SetPositionFromValue('') else
                              if DataSet.Fields[i].AsString = '1' then
                                  TUniSFComboBox(Componente).SetPositionFromValue('01=Dinheiro') else
                              if DataSet.Fields[i].AsString = '2' then
                                  TUniSFComboBox(Componente).SetPositionFromValue('02=Cheque') else
                              if DataSet.Fields[i].AsString = '3' then
                                  TUniSFComboBox(Componente).SetPositionFromValue('03=Cartão de Crédito') else
                              if DataSet.Fields[i].AsString = '4' then
                                  TUniSFComboBox(Componente).SetPositionFromValue('04=Cartão de Débito') else
                              if DataSet.Fields[i].AsString = '5' then
                                  TUniSFComboBox(Componente).SetPositionFromValue('05=Crédito Loja') else
                              if DataSet.Fields[i].AsString = '10' then
                                  TUniSFComboBox(Componente).SetPositionFromValue('10=Vale Alimentação') else
                              if DataSet.Fields[i].AsString = '11' then
                                  TUniSFComboBox(Componente).SetPositionFromValue('11=Vale refeição') else
                              if DataSet.Fields[i].AsString = '12' then
                                  TUniSFComboBox(Componente).SetPositionFromValue('12=Vale Presente') else
                              if DataSet.Fields[i].AsString = '13' then
                                  TUniSFComboBox(Componente).SetPositionFromValue('13=Vale Combustível') else
                              if DataSet.Fields[i].AsString = '15' then
                                  TUniSFComboBox(Componente).SetPositionFromValue('15=Boleto Bancário') else
                              if DataSet.Fields[i].AsString = '16' then
                                  TUniSFComboBox(Componente).SetPositionFromValue('16=Depósito Bancário') else
                              if DataSet.Fields[i].AsString = '17' then
                                  TUniSFComboBox(Componente).SetPositionFromValue('17=Pagamento Instantâneo (PIX)') else
                              if DataSet.Fields[i].AsString = '18' then
                                  TUniSFComboBox(Componente).SetPositionFromValue('18=Transferência bancária, Carteira Digital') else
                              if DataSet.Fields[i].AsString = '19' then
                                  TUniSFComboBox(Componente).SetPositionFromValue('19=Programa de fidelidade, Cashback, Crédito Virtual') else
                              if DataSet.Fields[i].AsString = '90' then
                                  TUniSFComboBox(Componente).SetPositionFromValue('90=Sem Pagamento') else
                              if DataSet.Fields[i].AsString = '99' then
                                  TUniSFComboBox(Componente).SetPositionFromValue('99=Outros');
                            end else
                              if Componente.Name = 'compTIPO' then
                              begin
                                if DataSet.Fields[i].AsString = '0' then
                                    TUniSFComboBox(Componente).SetPositionFromValue('Vendedor') else
                                if DataSet.Fields[i].AsString = '1' then
                                    TUniSFComboBox(Componente).SetPositionFromValue('Gerente de venda');
                              end else
                                if Componente.Name = 'compFINNFE' then
                                begin
                                  TUniSFComboBox(Componente).SetPositionFromValue(DataSet.Fields[i].AsString);
                                end else
                                  if Componente.Name = 'compINDPRES' then
                                  begin
                                    TUniSFComboBox(Componente).SetPositionFromValue(DataSet.Fields[i].AsString);
                                  end else
                                    if Componente.Name = 'compFAIXAST' then
                                    begin
                                      if DataSet.Fields[i].AsString = 'T' then
                                          TUniSFComboBox(Componente).SetPositionFromValue('T - Tributado') else
                                      if DataSet.Fields[i].AsString = 'I' then
                                          TUniSFComboBox(Componente).SetPositionFromValue('I - Isento') else
                                      if DataSet.Fields[i].AsString = 'S' then
                                          TUniSFComboBox(Componente).SetPositionFromValue('S - Imposto sobre serviços') else
                                      if DataSet.Fields[i].AsString = 'N' then
                                          TUniSFComboBox(Componente).SetPositionFromValue('N - Não tributado') else
                                      if DataSet.Fields[i].AsString = 'F' then
                                          TUniSFComboBox(Componente).SetPositionFromValue('F - Substituição tributária') else
                                      TUniSFComboBox(Componente).ItemIndex := -1;
                                    end else
                                      if Componente.Name = 'compTIPOPROD' then
                                      begin
                                        if DataSet.Fields[i].AsString = '00' then
                                            TUniSFComboBox(Componente).SetPositionFromValue('00 - Mercadoria para Revenda') else
                                        if DataSet.Fields[i].AsString = '01' then
                                            TUniSFComboBox(Componente).SetPositionFromValue('01 - Matéria-Prima') else
                                        if DataSet.Fields[i].AsString = '02' then
                                            TUniSFComboBox(Componente).SetPositionFromValue('02 - Embalagem') else
                                        if DataSet.Fields[i].AsString = '03' then
                                            TUniSFComboBox(Componente).SetPositionFromValue('03 - Produto em processo') else
                                        if DataSet.Fields[i].AsString = '04' then
                                            TUniSFComboBox(Componente).SetPositionFromValue('04 - Produto Acabado') else
                                        if DataSet.Fields[i].AsString = '05' then
                                            TUniSFComboBox(Componente).SetPositionFromValue('05 - SubProduto') else
                                        if DataSet.Fields[i].AsString = '06' then
                                            TUniSFComboBox(Componente).SetPositionFromValue('06 - Produta Intemedíario') else
                                        if DataSet.Fields[i].AsString = '07' then
                                            TUniSFComboBox(Componente).SetPositionFromValue('07 - Material de Uso e consumo') else
                                        if DataSet.Fields[i].AsString = '08' then
                                            TUniSFComboBox(Componente).SetPositionFromValue('08 - Ativo imobilizado') else
                                        if DataSet.Fields[i].AsString = '09' then
                                            TUniSFComboBox(Componente).SetPositionFromValue('09 - Serviços') else
                                        if DataSet.Fields[i].AsString = '10' then
                                            TUniSFComboBox(Componente).SetPositionFromValue('10 - Outros Insumos') else
                                        if DataSet.Fields[i].AsString = '99' then
                                            TUniSFComboBox(Componente).SetPositionFromValue('99 - Outras') else

                                        TUniSFComboBox(Componente).ItemIndex := -1;
                                      end else
                                        if (Componente.Name = 'compCLIPI') or (Componente.Name = 'compSTICMSC') then
                                        begin
                                          if DataSet.Fields[i].AsString.Trim = '0' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('0  - Nacional') else
                                          if DataSet.Fields[i].AsString.Trim = '1' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('1  - Estrangeira - Importação  direta') else
                                          if DataSet.Fields[i].AsString.Trim = '2' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('2  - Estrangeira - Adiquirida no mercado interno') else
                                          if DataSet.Fields[i].AsString.Trim = '3' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('3  -  Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40% (quarenta por cento)') else
                                          if DataSet.Fields[i].AsString.Trim = '4' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('4  - Nacional, cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam o Decreto-Lei nº 288/67, e as Leis nºs 8.248/91, 8.387/91, 10.176/01 e 11.484/07') else
                                          if DataSet.Fields[i].AsString.Trim = '5' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('5  - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40% (quarenta por cento)') else
                                          if DataSet.Fields[i].AsString.Trim = '6' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('6  - Estrangeira – Importação direta, sem similar nacional, constante em lista de Resolução Camex') else
                                          if DataSet.Fields[i].AsString.Trim = '7' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('7  - Estrangeira – Adquirida no mercado interno, sem similar nacional, constante em lista de Resolução Camex') else
                                          if DataSet.Fields[i].AsString.Trim = '8' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('8  - Nacional – Mercadoria ou bem com conteúdo de importação superior a  70%') else
                                          if DataSet.Fields[i].AsString.Trim = '00' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('00 - Tributado integralmente') else
                                          if DataSet.Fields[i].AsString.Trim = '10' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('10 - Tributada e com cobrança do icms por substituição tributária') else
                                          if DataSet.Fields[i].AsString.Trim = '20' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('20 - Com redução na base de cálculo') else

                                          if DataSet.Fields[i].AsString.Trim = '30' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('30 - Isenta ou não Tributada e com cobrança do icms por substituição tributária') else
                                          if DataSet.Fields[i].AsString.Trim = '40' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('40 - Isenta') else
                                          if DataSet.Fields[i].AsString.Trim = '41' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('41 - Não tributada') else
                                          if DataSet.Fields[i].AsString.Trim = '50' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('50 - Com suspensão') else
                                          if DataSet.Fields[i].AsString.Trim = '51' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('51 - Diferimento') else
                                          if DataSet.Fields[i].AsString.Trim = '60' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('60 - Icms cobrado anteriormente por substituição tributária') else
                                          if DataSet.Fields[i].AsString.Trim = '70' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('70 - Com redução de base de cálculo e cobrança do icms por substituição tributária') else
                                          if DataSet.Fields[i].AsString.Trim = '90' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('90 - Outras') else
                                          if DataSet.Fields[i].AsString.Trim = '101' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('101 - Tributada pelo simples nacional com permissão de crédito') else
                                          if DataSet.Fields[i].AsString.Trim = '102' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('102 - Tributada pelo simples nacional sem permissão de crédito') else
                                          if DataSet.Fields[i].AsString.Trim = '103' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('103 - Isenção do ICMS no simples nacional para faixa de receita bruta') else
                                          if DataSet.Fields[i].AsString.Trim = '201' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('201 - Tributada pelo simples nacional com permissão de crédito e com cobrança do ICMS por substituição tributária') else
                                          if DataSet.Fields[i].AsString.Trim = '202' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('202 - Tributada pelo simples nacional sem permissão de crédito e com cobrança do ICMS por substituição tributária') else
                                          if DataSet.Fields[i].AsString.Trim = '203' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('203 - Isenção do ICMS no simples nacional para faixa de receita bruta e com cobrança do ICMS por substituição tributária') else
                                          if DataSet.Fields[i].AsString.Trim = '300' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('300 - Imune') else
                                          if DataSet.Fields[i].AsString.Trim = '400' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('400 - Não tributada pelo simples nacional') else
                                          if DataSet.Fields[i].AsString.Trim = '500' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('500 - ICMS cobrado anteriormente por substituição tributária (Substituído) ou por antecipação') else
                                          if DataSet.Fields[i].AsString.Trim = '900' then
                                              TUniSFComboBox(Componente).SetPositionFromValue('900 - Outros') else


                                          TUniSFComboBox(Componente).ItemIndex := -1;
                                        end else
                                        TUniSFComboBox(Componente).SetPositionFromValue(DataSet.Fields[i].AsString);
      end;
    end;
  end;


  // Percorre campos com descrição parcial do dataset
  for i := 0 to DataSet.Fields.Count - 1 do
  begin
    Campo := DataSet.Fields[i].FieldName;
    Componente := AOwner.FindComponent('compPacial' + Campo);

    if Assigned(Componente) then
    begin
      if Componente is TUniSFComboBox then
        TUniSFComboBox(Componente).SetPositionFromValue(DataSet.Fields[i].AsString + ' - ');
    end;
  end;

end;

procedure MarcarTodosCheckBox(AFrame: TUniFrame);
var
  I: Integer;
begin
  for I := 0 to AFrame.ComponentCount - 1 do
  begin
    if AFrame.Components[I] is TUniCheckBox then
      TUniCheckBox(AFrame.Components[I]).Checked := True;
  end;
end;


function GetJsonArrayValue(const AJson: TJSONObject; const ArrayName, FieldName: string): string;
begin
  Result := '';
  if Assigned(AJson) then
    try
      Result := AJson.GetValue<TJSONArray>(ArrayName)
                     .Items[0]
                     .GetValue<string>(FieldName);
    except
      Result := '';
    end;
end;




end.
