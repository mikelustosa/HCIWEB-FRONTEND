unit ufraOperacaoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniDateTimePicker, UniSFLabel, uniRadioButton,
  UniSFComboBox, uniEdit, uniPanel, UniFSToggle, uniBasicGrid, uniDBGrid,
  uniPageControl, uniScrollBox, uniTimer, URGLayoutUnigui, uniImage, uniButton,
  uniBitBtn, UniSFButton, UniSFBitBtn, uniLabel, uniGUIBaseClasses, Data.DB,
  Datasnap.DBClient, UniSFiGrowl, UniSFSweetAlert, System.JSON, uniGroupBox,
  uniMemo, UniSFBadge;

type
  TfraOperacaoContas = class(TUniFrame)
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
    rg1: TRGLayoutUnigui;
    rg2: TRGLayoutUnigui;
    rg3: TRGLayoutUnigui;
    rg4: TRGLayoutUnigui;
    rg5: TRGLayoutUnigui;
    rg6: TRGLayoutUnigui;
    rg7: TRGLayoutUnigui;
    scrFundo: TUniScrollBox;
    pgcTela: TUniPageControl;
    tsListagem: TUniTabSheet;
    gridTela: TUniDBGrid;
    cpPesquisa: TUniContainerPanel;
    tsDetalhe: TUniTabSheet;
    cpMenuRodape: TUniContainerPanel;
    btnVoltar: TUniSFBitBtn;
    btExcluir: TUniSFBitBtn;
    UniContainerPanel61: TUniContainerPanel;
    UniSFLabel3: TUniSFLabel;
    UniContainerPanel62: TUniContainerPanel;
    UniSFLabel4: TUniSFLabel;
    UniContainerPanel63: TUniContainerPanel;
    UniSFLabel5: TUniSFLabel;
    compDATA1: TUniContainerPanel;
    UniSFLabel6: TUniSFLabel;
    UniContainerPanel65: TUniContainerPanel;
    UniSFLabel7: TUniSFLabel;
    UniContainerPanel66: TUniContainerPanel;
    UniSFLabel8: TUniSFLabel;
    compCBLIMITEREGISTROS: TUniSFComboBox;
    UniContainerPanel22: TUniContainerPanel;
    UniContainerPanel67: TUniContainerPanel;
    UniSFLabel9: TUniSFLabel;
    UniContainerPanel68: TUniContainerPanel;
    UniSFLabel10: TUniSFLabel;
    compTEXTOPESQUISAR: TUniEdit;
    UniContainerPanel69: TUniContainerPanel;
    UniSFLabel11: TUniSFLabel;
    UniContainerPanel70: TUniContainerPanel;
    UniSFBitBtn3: TUniSFBitBtn;
    UniContainerPanel71: TUniContainerPanel;
    UniSFLabel12: TUniSFLabel;
    UniContainerPanel72: TUniContainerPanel;
    UniSFLabel13: TUniSFLabel;
    cbCampos: TUniSFComboBox;
    UniContainerPanel73: TUniContainerPanel;
    UniSFLabel14: TUniSFLabel;
    UniContainerPanel74: TUniContainerPanel;
    UniSFLabel15: TUniSFLabel;
    UniSFComboBox2: TUniSFComboBox;
    UniContainerPanel75: TUniContainerPanel;
    UniSFLabel16: TUniSFLabel;
    UniContainerPanel76: TUniContainerPanel;
    UniSFLabel17: TUniSFLabel;
    UniSFComboBox3: TUniSFComboBox;
    compVALORNUM1: TUniEdit;
    UniContainerPanel23: TUniContainerPanel;
    UniSFLabel1: TUniSFLabel;
    compVALORNUM2: TUniEdit;
    compDiaDespPIni: TUniDateTimePicker;
    UniContainerPanel24: TUniContainerPanel;
    UniSFLabel2: TUniSFLabel;
    compDiaDespPFin: TUniDateTimePicker;
    UniContainerPanel26: TUniContainerPanel;
    UniSFLabel18: TUniSFLabel;
    UniContainerPanel64: TUniContainerPanel;
    btnPesquisar: TUniSFBitBtn;
    DSTela: TDataSource;
    UniContainerPanel12: TUniContainerPanel;
    compTitulo: TUniLabel;
    pgcDetalhe: TUniPageControl;
    tsDadosDaConta: TUniTabSheet;
    tsObservacoes: TUniTabSheet;
    tsRemessaBancaria: TUniTabSheet;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel3: TUniLabel;
    PnlDadosConta: TUniPanel;
    scrDetalhe: TUniScrollBox;
    UniPanel6: TUniPanel;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel6: TUniLabel;
    compDREF: TUniDateTimePicker;
    UniPanel7: TUniPanel;
    UniEdit2: TUniEdit;
    UniPanel3: TUniPanel;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel4: TUniLabel;
    compDIADESPP: TUniDateTimePicker;
    UniPanel4: TUniPanel;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel5: TUniLabel;
    compDIADESPR: TUniDateTimePicker;
    UniPanel9: TUniPanel;
    UniContainerPanel7: TUniContainerPanel;
    compVALORPaa: TUniLabel;
    UniPanel10: TUniPanel;
    UniContainerPanel8: TUniContainerPanel;
    compVALORRdfdf: TUniLabel;
    compVALORR: TUniEdit;
    compVALORP: TUniEdit;
    UniPanel2: TUniPanel;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel9: TUniLabel;
    compNUMDOC: TUniEdit;
    UniPanel8: TUniPanel;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel10: TUniLabel;
    compNUMDOC2: TUniEdit;
    UniPanel11: TUniPanel;
    UniContainerPanel11: TUniContainerPanel;
    UniLabel11: TUniLabel;
    compAGENCIA: TUniEdit;
    UniPanel12: TUniPanel;
    UniContainerPanel13: TUniContainerPanel;
    UniLabel12: TUniLabel;
    compREPASSE: TUniEdit;
    UniPanel13: TUniPanel;
    UniPanel42: TUniPanel;
    compDESCRPR: TUniEdit;
    UniContainerPanel41: TUniContainerPanel;
    UniPanel41: TUniPanel;
    compCODPR: TUniEdit;
    UniContainerPanel40: TUniContainerPanel;
    UniLabel33: TUniLabel;
    UniSFBitBtn2: TUniSFBitBtn;
    UniPanel14: TUniPanel;
    compCODCC: TUniEdit;
    UniContainerPanel14: TUniContainerPanel;
    UniLabel13: TUniLabel;
    UniSFBitBtn4: TUniSFBitBtn;
    UniPanel15: TUniPanel;
    compDESCR: TUniEdit;
    UniContainerPanel15: TUniContainerPanel;
    UniPanel16: TUniPanel;
    compNOMECLI: TUniEdit;
    UniContainerPanel16: TUniContainerPanel;
    UniPanel17: TUniPanel;
    compCODCLI: TUniEdit;
    UniContainerPanel17: TUniContainerPanel;
    UniLabel14: TUniLabel;
    UniSFBitBtn5: TUniSFBitBtn;
    UniPanel18: TUniPanel;
    compNOME: TUniEdit;
    UniContainerPanel18: TUniContainerPanel;
    UniPanel19: TUniPanel;
    compCODBAN: TUniEdit;
    UniContainerPanel19: TUniContainerPanel;
    UniLabel15: TUniLabel;
    UniSFBitBtn6: TUniSFBitBtn;
    UniPanel20: TUniPanel;
    UniPanel21: TUniPanel;
    UniPanel23: TUniPanel;
    UniContainerPanel21: TUniContainerPanel;
    UniLabel16: TUniLabel;
    compDESCRMV: TUniEdit;
    UniPanel22: TUniPanel;
    UniContainerPanel20: TUniContainerPanel;
    UniLabel17: TUniLabel;
    compOBS: TUniEdit;
    UniPanel24: TUniPanel;
    UniContainerPanel29: TUniContainerPanel;
    pnlObservacoes: TUniPanel;
    scrObservacoes: TUniScrollBox;
    UniPanel53: TUniPanel;
    UniContainerPanel50: TUniContainerPanel;
    compTEXTO: TUniMemo;
    pnlRemessaBancaria: TUniPanel;
    scrRemessaBancaria: TUniScrollBox;
    UniPanel1: TUniPanel;
    UniContainerPanel28: TUniContainerPanel;
    UniLabel7: TUniLabel;
    UniDateTimePicker2: TUniDateTimePicker;
    UniPanel25: TUniPanel;
    UniPanel27: TUniPanel;
    UniContainerPanel31: TUniContainerPanel;
    UniLabel8: TUniLabel;
    comppfj: TUniSFComboBox;
    UniPanel28: TUniPanel;
    UniContainerPanel32: TUniContainerPanel;
    UniLabel18: TUniLabel;
    UniEdit3: TUniEdit;
    UniPanel29: TUniPanel;
    UniPanel30: TUniPanel;
    UniContainerPanel33: TUniContainerPanel;
    UniLabel19: TUniLabel;
    UniSFComboBox4: TUniSFComboBox;
    UniPanel31: TUniPanel;
    UniContainerPanel34: TUniContainerPanel;
    UniLabel20: TUniLabel;
    UniDateTimePicker3: TUniDateTimePicker;
    UniPanel32: TUniPanel;
    UniPanel33: TUniPanel;
    UniContainerPanel35: TUniContainerPanel;
    UniLabel21: TUniLabel;
    UniEdit5: TUniEdit;
    UniPanel34: TUniPanel;
    UniContainerPanel36: TUniContainerPanel;
    UniLabel22: TUniLabel;
    UniEdit6: TUniEdit;
    UniPanel35: TUniPanel;
    pnlID: TUniPanel;
    compID: TUniEdit;
    UniContainerPanel37: TUniContainerPanel;
    UniLabel23: TUniLabel;
    UniContainerPanel38: TUniContainerPanel;
    UniSFBitBtn25: TUniSFBitBtn;
    UniSFBitBtn26: TUniSFBitBtn;
    UniSFBitBtn27: TUniSFBitBtn;
    UniSFBitBtn28: TUniSFBitBtn;
    btnRecibo: TUniSFBitBtn;
    UniSFBitBtn30: TUniSFBitBtn;
    UniContainerPanel39: TUniContainerPanel;
    btnBaixar: TUniSFBitBtn;
    btIncluir: TUniSFBitBtn;
    btAlterar: TUniSFBitBtn;
    UniSFBadge1: TUniSFBadge;
    btGravar: TUniSFBitBtn;
    compDEBCRED: TUniSFComboBox;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameReady(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSTelaiconeAtivoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure gridTelaDblClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btBaixarClick(Sender: TObject);
    procedure UniSFBitBtn2Click(Sender: TObject);
    procedure UniSFBitBtn4Click(Sender: TObject);
    procedure UniSFBitBtn6Click(Sender: TObject);
    procedure UniSFBitBtn5Click(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btnReciboClick(Sender: TObject);
  private
    { Private declarations }
    wInc : boolean;
    wAlt : boolean;
    wCon : boolean;
    ativo : string;

    function pesquisaMovContas(out weJson:TJSONObject; weId,weCodPro,weDescr :string): boolean;
    function hConta(weId, weCodEmp: string; wejRet: TJSONObject): boolean;
    procedure hDados(weId, weEmpresa:string);

    procedure callBackDepartamentos(Sender: TComponent;
    AResult: Integer);
    procedure callBackCentroDeCusto(Sender: TComponent;
    AResult: Integer);
    procedure callBackBancos(Sender: TComponent;
    AResult: Integer);
    procedure callBackClientes(Sender: TComponent;
    AResult: Integer);
    procedure callBackBaixaConta(Sender: TComponent;
    AResult: Integer);

//    function NovaAba(nomeFormFrame: TFrame; descFormFrame: string; Fechar: Boolean; iconTab: integer = -1; tabBar: boolean = false): boolean;

  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uUtils, uConstantes, RESTRequest4D.Request, MainModule, ufrmListaGlobal,
  ufrmBaixaConta,UniSFCore;


//function TfraOperacaoContas.NovaAba(nomeFormFrame: TFrame; descFormFrame: string; Fechar: Boolean; iconTab: integer = -1; tabBar: boolean = false): boolean;
//var TabSheet      :TUniTabSheet;
//    FCurrentFrame :TUniFrame;
//    I             :Integer;
//begin
//
//      pagePrincipal.Visible := True;
//
//      {Verificando se a tela já está aberto e redireciona a ela}
//      for I := 0 to pagePrincipal.PageCount - 1 do
//        with pagePrincipal do
//          if Pages[I].Caption = descFormFrame  then
//            begin
//              pagePrincipal.ActivePageIndex := I;
//              result := true;
//              Exit;
//            end;
//
//      TabSheet              := TUniTabSheet.Create(Self);
//      TabSheet.PageControl  := pagePrincipal;
//      TabSheet.Caption      := descFormFrame;
//      TabSheet.Closable     := Fechar;
//      TabSheet.ImageIndex   := iconTab;
//      TabSheet.PageControl.TabBarVisible := tabBar;
//
//      FCurrentFrame:= TUniFrameClass(nomeFormFrame).Create(Self);
//
//      with FCurrentFrame do
//        begin
//          Align               := alClient;
//          Parent              := TabSheet;
//        end;
//
//      Refresh;
//
//      pagePrincipal.ActivePage := TabSheet;
//      result := false;
//end;

procedure LimparUniEditsDoFrame(AFrame: TUniFrame);
var
  i: Integer;
begin
  if not Assigned(AFrame) then
    Exit;

  for i := 0 to AFrame.ComponentCount - 1 do
  begin
    if AFrame.Components[i] is TUniEdit then
    begin
      TUniEdit(AFrame.Components[i]).Text := '';
    end;
  end;
end;

procedure TfraOperacaoContas.callBackBaixaConta(Sender: TComponent;
  AResult: Integer);
var
  resp1     :IResponse;
  wValor : string;
begin
  if frmBaixaConta.ModalResult = mrOk then
  begin
    wValor := frmBaixaConta.compVALORREAL.Text;
    alerta.QuestionBasic('Prosseguir?',
    procedure(const ButtonClicked: TAButton)
    begin
      if ButtonClicked = abConfirm then
      begin
        var jBody :TJSONObject;
        try
          jBody := TJSONObject.Create;
          jBody.AddPair('codBan', compCODBAN.Text);
          jBody.AddPair('debCred',compDEBCRED.Text);
          jBody.AddPair('diaDespR', frmBaixaConta.compDATAREAL.Text);
          jBody.AddPair('valorR', wValor);
          jBody.AddPair('id', compID.Text);
          jBody.AddPair('empresa', vvcodemp);

          resp1 := TRequest.New.BaseURL(baseurlCadastros)
                 .resource(putBaixaConta)
                 .AddParam('nomeBanco', uniMainModule.nomebanco)
                 .AddBody(jBody)
                 .timeOut(12000)
                 .Put;

          if resp1.StatusCode = 200 then
          begin
            alertaM.Success('Conta baixada com sucesso.');
            frmBaixaConta.Close;
            unisession.Synchronize();
            btnVoltar.Click;
            btnPesquisar.Click;
          end
          else
          begin
            alerta.Error(resp1.Content);
          end;
        finally
        end;
      end;
    end);
  end;
end;

procedure TfraOperacaoContas.callBackClientes(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODCLI.text     := frmListaGlobal.CDSTela.FieldByName('codCli').AsString;
    compNOMECLI.Text  := frmListaGlobal.CDSTela.FieldByName('nome').AsString;
    alertaM.info('Cliente selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TfraOperacaoContas.callBackBancos(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODBAN.text     := frmListaGlobal.CDSTela.FieldByName('codBan').AsString;
    compNOME.Text  := frmListaGlobal.CDSTela.FieldByName('nome').AsString;
    alertaM.info('Banco selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TfraOperacaoContas.callBackCentroDeCusto(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODCC.text     := frmListaGlobal.CDSTela.FieldByName('codCc').AsString;
    compDESCR.Text  := frmListaGlobal.CDSTela.FieldByName('descr').AsString;
    alertaM.info('Centro de custo selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('descr').AsString + '</b>');
  end;
end;

procedure TfraOperacaoContas.callBackDepartamentos(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODPR.text     := frmListaGlobal.CDSTela.FieldByName('codPr').AsString;
    compDESCRPR.Text  := frmListaGlobal.CDSTela.FieldByName('descrPr').AsString;
    alertaM.info('Departamento selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('descrPr').AsString + '</b>');
  end;
end;

function TfraOperacaoContas.hConta(weId, weCodEmp: string; wejRet: TJSONObject): boolean;
var
  resp1       : IResponse;
  jsonBody    : TJSONObject;
  wJsonResult : TJSONObject;
begin
  result := false;
  // Validações
  if weId.Trim.IsEmpty or weCodEmp.Trim.IsEmpty then
  begin
    wejRet.AddPair('Erro', 'Parâmetros inválidos');
    Exit;
  end;
  try
    jsonBody := TJSONObject.Create;
    try
      jsonBody.AddPair('empresa',weCodEmp);
      jsonBody.AddPair('id',weId);
      resp1 := TRequest
               .New
               .BaseURL(baseUrlCadastros)
               .Resource(getConta)
               .AddParam('nomeBanco', uniMainModule.nomeBanco)
               .AddBody(jsonBody.ToString)
               .TimeOut(15000)
               .get;
      if (resp1 <> nil) and (resp1.StatusCode = 200) then
      begin
        wJsonResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
        if wJsonResult <> nil then
        begin
          wejRet.AddPair('Result',TJSONObject.ParseJSONValue(wJsonResult.GetValue('Result').ToString));
//          wejRet.AddPair('Result',(wJsonResult.GetValue('Result') as TJSONArray).Clone.ToString);
//          wejRet.AddPair('Result',wJsonResult.Clone as TJSONValue);
//          wejRet.AddPair('Result',wJsonResult.GetValue('Result') as TJSONArray).Clone.ToString;
//          weJret := TJSONObject.ParseJSONValue((wJsonResult.GetValue('Result') as TJSONArray).Items[0].ToString)  as TJSONObject;
          FreeAndNil(wJsonResult);
        end;
      end;
      result := true;
    except on e:exception do
      begin
        alerta.Error('Erro: '+e.Message);
        wejRet.AddPair('Erro','getConta. Erro: '+e.Message);
      end;

    end;
  finally
    FreeAndNil(jsonBody);
  end;
end;

procedure TfraOperacaoContas.btAlterarClick(Sender: TObject);
begin
  wInc := false;
  wAlt := true;
  wCon := false;
end;

procedure TfraOperacaoContas.btBaixarClick(Sender: TObject);
//var
//  resp1     :IResponse;
//  jBody: TJSONObject;
begin


    frmBaixaConta.compVALORREAL.Text := compVALORR.Text;
    frmBaixaConta.showmodal(callBackBaixaConta);
//    frmBaixaConta.totalGeral := strtofloatDef(compTOTALGERAL.Text,0);
//    frmBaixaConta.compVALORPAGO.SetFocus;


//  jBody := nil;
//  try
//    jBody := TJSONObject.Create;
//    jBody.AddPair('codBan', compCODBAN.Text);
//    jBody.AddPair('debCred',compDEBCRED.Text);
//    jBody.AddPair('diaDespR', compDIADESPR.Text);
//    jBody.AddPair('valorR', compVALORR.Text);
//    jBody.AddPair('id', compID.Text);
//    jBody.AddPair('empresa', vvcodemp);
//
//
//    resp1 := TRequest.New.BaseURL(baseurlCadastros)
//           .resource(putBaixaConta)
//           .AddParam('nomeBanco', uniMainModule.nomebanco)
//           .AddBody(jBody)
//           .timeOut(12000)
//           .Put;
//    if resp1.StatusCode = 200 then
//    begin
//      var jResp: TJSONObject;
//      jResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
//      alerta.Success(jResp.GetValue('Result').Value);
//      FreeAndNil(jResp);
//    end
//    else
//    begin
//      alerta.Error(resp1.Content);
//    end;
//  finally
//
//  end;
end;

procedure TfraOperacaoContas.btExcluirClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody   :TJSONObject;
begin
  alerta.QuestionBasic('Confirma para excluir o registro?',
    procedure(const ButtonClicked: TAButton)
    begin
      if ButtonClicked = abConfirm then
      begin
        try
          try
            jsonBody := TJSONObject.Create;
            jsonBody.AddPair('id', compID.Text);

            resp1 := TRequest
                    .New
                    .BaseURL(baseurlCadastros)
                    .Resource(deleteConta)
                    .AddParam('nomeBanco', uniMainModule.nomebanco)
                    .AddBody(jsonBody.ToString)
                    .Timeout(12000)
                    .Delete;
            if resp1.StatusCode = 200 then
            begin
              alertam.Success('Conta excluída com sucesso.');//resp1.content);
              unisession.Synchronize();
              btnVoltar.Click;
              btnPesquisar.Click;
            end
            else
            begin
              alertam.Error('ERRO.: '+resp1.Content);
              unisession.Synchronize();
            end;
          except on e:exception do
            begin
              alertam.Error('ERRO: '+e.Message);
              unisession.Synchronize();
            end;
          end;
        finally
          FreeAndNil(jsonBody);
        end;
      end;
    end);
end;

procedure TfraOperacaoContas.btIncluirClick(Sender: TObject);
begin
 wInc := true;
 walt := false;
 wCon := false;
 hDados('','');
end;

procedure TfraOperacaoContas.btnNovoClick(Sender: TObject);
begin

//    pgcTela.ActivePage := tsDetalhe;
//PreencherCamposDoForm(Self, ativo, nil, nil, 'NOVO REGISTRO');
  wInc := true;
  wAlt := false;
  wCon :=false;
  hDados('', '');
end;

procedure TfraOperacaoContas.btnVoltarClick(Sender: TObject);
begin
  pgcTela.ActivePage := tsListagem;
end;

procedure TfraOperacaoContas.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Detalhe', 'editar', 'dc3545');
end;

procedure TfraOperacaoContas.CDSTelaiconeAtivoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTela.FieldByName('ativo').AsString, Text, DisplayText);
end;

procedure TfraOperacaoContas.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    wInc := false;
    wAlt := false;
    wCon :=true;
    hDados(CDSTela.FieldByName('id').AsString, CDSTela.FieldByName('empresa').AsString);
  end;
end;

procedure TfraOperacaoContas.hDados(weId, weEmpresa:string);
var
wjRet: TJSONObject;
begin
  wjRet := nil;

  DefinirTodasAbasNaPrimeiraPagina(self);
  try
    wjRet := TJSONObject.Create;
    LimparUniEditsDoFrame(self);

    //incluir
    if (wInc) then
    begin
      compDIADESPP.DateTime := 0;
      compDIADESPR.DateTime := 0;
      compDREF.DateTime := date();
      compDIADESPP.SetFocus;
    end;

    //consulta ou alteração
    if (wCon) or (wAlt) then
    begin
      if hConta(CDSTela.FieldByName('id').AsString, CDSTela.FieldByName('empresa').AsString, wjRet) then
      begin
        compID.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('id');
        compDIADESPP.DateTime := strtodate((wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('diaDespP'));
        if (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('diaDespR').Trim <> '' then
          compDIADESPR.DateTime := strtodate((wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('diaDespR'))
        else
          compDIADESPR.Text := '';
        compDREF.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('dRef');
        compVALORR.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('valorR');
        compVALORP.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('valorP');
        compNUMDOC.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('numDoc');
        compNUMDOC2.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('numDoc2');
        compAGENCIA.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('agencia');
        compREPASSE.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('repasse');
        compCODPR.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('codPr');
        compDESCRPR.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('descrPr');
        compCODCC.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('codCc');
        compDESCR.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('descr');
        compDEBCRED.SetPositionFromValue((wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('debCred'));
        compCODBAN.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('codBan');
        compNOME.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('nome');
        compCODCLI.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('codCli');
        compNOMECLI.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('nomeCli');
        compDESCRMV.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('descrMv');
        compOBS.Text := (wjRet.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('obs');
      end;
    end;
    pgcTela.ActivePage := tsDetalhe;
  finally
    FreeAndNil(wjRet);
  end;
end;

procedure TfraOperacaoContas.gridTelaDblClick(Sender: TObject);
begin
  wInc := false;
  wAlt := false;
  wCon :=true;
  hDados(CDSTela.FieldByName('id').AsString, CDSTela.FieldByName('empresa').AsString);
end;

procedure TfraOperacaoContas.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  if TUniDBGrid(Sender).DataSource.DataSet
       .FieldByName('DEBCRED').AsString = 'C' then
    Attribs.Font.Color := clGreen
  else
    Attribs.Font.Color := clRed;
end;

function TfraOperacaoContas.pesquisaMovContas(out weJson:TJSONObject; weId,weCodPro,weDescr :string): boolean;
begin
end;


procedure TfraOperacaoContas.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
  ConfigurarAlignComboBoxes(self, 10);
//  listar;
end;

procedure TfraOperacaoContas.UniFrameReady(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
//  rg1.Start;
//  rg2.Start;
//  rg3.Start;
//  rg4.Start;
//  rg5.Start;
//  rg6.Start;
//  rg7.Start;
//  rg8.Start;
//  rg9.Start;
  scrFundo.Align := alClient;
  pgcTela.Align := alClient;
  pgcDetalhe.Align := alClient;
  PnlDadosConta.Align := alClient;
  scrDetalhe.Align := alClient;
  scrObservacoes.Align := alClient;
  scrRemessaBancaria.Align := alClient;
  compDiaDespPIni.DateTime := date - 15;
  compDiaDespPFin.DateTime := date;
end;

procedure TfraOperacaoContas.btnPesquisarClick(Sender: TObject);
var
  resp1     :IResponse;
  jsonBody : TJSONObject;
  jsonResp : TJSONObject;
begin
  jsonBody := nil;
  jsonResp := nil;
  try
    jsonBody := TJSONObject.Create;
    jsonBody.AddPair('empresa',vvcodemp);
    if cbCampos.Text = 'Nome Cliente' then
      jsonBody.AddPair('nomCli',trim(compTEXTOPESQUISAR.Text))
    else
      jsonBody.AddPair('nomCli','');
//    jsonBody.AddPair('diaDespP','29/05/2026');
    jsonBody.AddPair('diaDespPIni',datetostr(compDiaDespPIni.DateTime));
    jsonBody.AddPair('diaDespPFin',datetostr(compDiaDespPFin.DateTime));
    jsonBody.AddPair('valorP','');
    jsonBody.AddPair('numDoc','');

    try
      resp1 := TRequest.New.BaseURL(baseurlCadastros)
             .resource(getMovContas)
             .AddParam('nomeBanco', uniMainModule.nomebanco)
             .AddBody(jsonBody)
             .timeOut(120000)
             .Get;

      jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
      if resp1.StatusCode = 200 then
      begin
//        jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
        JsonToDataset(CDSTela, jsonResp.GetValue('Result').ToString);
      end
      else
      begin
        alerta.Warning(jsonResp.GetValue('Result').Value);
      end;
    except on e: exception do
      begin
        alerta.Error('Erro: '+e.Message);
      end;
    end;
  finally
//    FreeAndNil(jsonBody);
//    FreeAndNil(jsonResp);
  end;
end;

procedure TfraOperacaoContas.btnReciboClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody   :TJSONObject;
begin
  try
    jsonBody := TJSONObject.Create;

    //dados gerais
    jsonBody.AddPair('id', compID.Text);
    jsonBody.AddPair('empresa', vvcodemp);

      resp1 := TRequest
              .New
              .BaseURL(baseurlImpressao)
              .Resource(getRecibo)
              .AddParam('nomeBanco', uniMainModule.nomebanco)
              .AddBody(jsonBody.ToString)
              .Timeout(12000)
              .Get;


    if resp1.StatusCode = 200 then
    begin
      alertam.Success('Relatório gerado com sucesso.');

      var wResult : TJSONObject;
      wResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;

      //wpastaTmpPdf é temporário. só deve vir  a url
      wUrlRelatorioTmpPdf := 'C:\ProjetoHciApi\TMP' + wResult.GetValue('nomeArquivo').Value;

      UniSession.AddJS( 'window.open(' + QuotedStr(wUrlRelatorioTmpPdf) + ', ''_blank'');');
//      wUrlRelatorioTmpPdf := dm.wPastaTmpPdf + wResult.GetValue('nomeArquivo').Value;
//      novaAba(TFrame(TFraImpressao),'PDF',true,'');
//      NovaAba(TFrame(TFraImpressao),'PDF', true, -1, true);

//      btnVoltar.Click;
//      btnPesquisar.Click;
    end
    else
    begin
      alertam.Error(resp1.Content);
    end;

  finally
    FreeAndNil(jsonBody);
  end;
end;

procedure TfraOperacaoContas.UniSFBitBtn2Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'DEPARTAMENTOS';
  frmListaGlobal.lblDescricao.Caption := 'DEPARTAMENTOS';
  frmListaGlobal.showModal(callBackDepartamentos);
end;

procedure TfraOperacaoContas.UniSFBitBtn4Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO_CONTA';
  frmListaGlobal.lblDescricao.Caption := 'CENTROS DE CUSTO';
  frmListaGlobal.showModal(callBackCentroDeCusto);
end;

procedure TfraOperacaoContas.UniSFBitBtn5Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CLIENTES_CONTA';
  frmListaGlobal.lblDescricao.Caption := 'CLIENTES';
  frmListaGlobal.showModal(callBackClientes);
end;

procedure TfraOperacaoContas.UniSFBitBtn6Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'BANCOS';
  frmListaGlobal.lblDescricao.Caption := 'BANCOS';
  frmListaGlobal.showModal(callBackBancos);
end;

procedure TfraOperacaoContas.btGravarClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody   :TJSONObject;
begin
  try
    jsonBody := TJSONObject.Create;

    //dados gerais
    jsonBody.AddPair('empresa', vvcodemp);
    jsonBody.AddPair('diaDespP',compDIADESPP.Text);
    jsonBody.AddPair('codCli',compCODCLI.Text);
    jsonBody.AddPair('diaDespR',compDIADESPR.Text);
    jsonBody.AddPair('dRef',compDREF.Text);
    jsonBody.AddPair('valorP',compVALORP.Text);
    jsonBody.AddPair('valorR',compVALORR.Text);
    jsonBody.AddPair('codBan',compCODBAN.Text);
    jsonBody.AddPair('codCc',compCODCC.Text);
    jsonBody.AddPair('codPr',compCODPR.Text);
//    jsonBody.AddPair('saldo',);
//    jsonBody.AddPair('saldoCc',);
    jsonBody.AddPair('debCred',compDEBCRED.Text);
    jsonBody.AddPair('descrMv',compDESCRMV.Text);
    jsonBody.AddPair('numDoc',compNUMDOC.Text);
    jsonBody.AddPair('numDoc2',compNUMDOC2.Text);
    jsonBody.AddPair('repasse',compREPASSE.Text);
    jsonBody.AddPair('agencia',compAGENCIA.Text);
    jsonBody.AddPair('obs',compOBS.Text);
    jsonBody.AddPair('texto',compTEXTO.Text);

    if wInc then
    begin
      resp1 := TRequest
              .New
              .BaseURL(baseurlCadastros)
              .Resource(postConta)
              .AddParam('nomeBanco', uniMainModule.nomebanco)
              .AddBody(jsonBody.ToString)
              .Timeout(12000)
              .Post;
    end
    else if wAlt then
    begin
      jsonBody.AddPair('id',compID.Text);
      resp1 := TRequest
              .New
              .BaseURL(baseurlCadastros)
              .Resource(putConta)
              .AddParam('nomeBanco', uniMainModule.nomebanco)
              .AddBody(jsonBody.ToString)
              .Timeout(12000)
              .Put;

    end;
    sleep(2000);
    if resp1.StatusCode = 200 then
    begin
      if wInc then
        alertam.Success('Conta inserida com sucesso.')
      else if wAlt then
        alertam.Success('Conta atualizada com sucesso.');

      btnVoltar.Click;
      btnPesquisar.Click;
    end
    else
    begin
      alertam.Error(resp1.Content);
    end;

  finally
    FreeAndNil(jsonBody);
  end;
end;

end.
