unit ufraReceberContaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniBasicGrid, uniDBGrid, UniFSToggle,
  uniButton, uniBitBtn, UniSFButton, UniSFBitBtn, UniSFComboBox,
  uniDateTimePicker, uniEdit, UniSFLabel, uniPanel, uniGUIBaseClasses,
  uniScrollBox, uniTimer, URGLayoutUnigui, Data.DB, Datasnap.DBClient,
  UniSFiGrowl, UniSFSweetAlert, uniPageControl;

type
  TfraReceberContaCliente = class(TUniFrame)
    alerta: TUniSFSweetAlert;
    alertaM: TUniSFiGrowl;
    CDSDados: TClientDataSet;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    CDSTela: TClientDataSet;
    CDSTelabotaoEditar: TAggregateField;
    CDSTelaiconeAtivo: TAggregateField;
    rg1: TRGLayoutUnigui;
    rg2: TRGLayoutUnigui;
    rg3: TRGLayoutUnigui;
    rg4: TRGLayoutUnigui;
    rg5: TRGLayoutUnigui;
    rg6: TRGLayoutUnigui;
    rg7: TRGLayoutUnigui;
    scrFundo: TUniScrollBox;
    UniPanel18: TUniPanel;
    cpPesquisa: TUniContainerPanel;
    UniContainerPanel21: TUniContainerPanel;
    UniSFLabel5: TUniSFLabel;
    UniContainerPanel25: TUniContainerPanel;
    UniSFLabel6: TUniSFLabel;
    compDIADESPP: TUniDateTimePicker;
    UniContainerPanel31: TUniContainerPanel;
    UniSFLabel11: TUniSFLabel;
    UniContainerPanel32: TUniContainerPanel;
    UniSFLabel12: TUniSFLabel;
    UniPanel19: TUniPanel;
    btnPesquisar: TUniSFBitBtn;
    cpMenuRodape: TUniContainerPanel;
    btnFecharCaixa: TUniSFBitBtn;
    btnRecebeConta: TUniSFBitBtn;
    UniScrollBox1: TUniScrollBox;
    UniPanel20: TUniPanel;
    UniScrollBox2: TUniScrollBox;
    gridTela: TUniDBGrid;
    pnlDadosRecebimento: TUniPanel;
    UniPanel1: TUniPanel;
    compVALORPREVISTO: TUniEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniPanel2: TUniPanel;
    compVALORREAL: TUniEdit;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel3: TUniLabel;
    UniPanel3: TUniPanel;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel4: TUniLabel;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniPageControl1: TUniPageControl;
    tsAReceber: TUniTabSheet;
    tsCancelarRecebimentos: TUniTabSheet;
    UniContainerPanel17: TUniContainerPanel;
    UniSFLabel1: TUniSFLabel;
    UniContainerPanel18: TUniContainerPanel;
    UniSFLabel2: TUniSFLabel;
    UniContainerPanel22: TUniContainerPanel;
    UniSFLabel3: TUniSFLabel;
    UniContainerPanel23: TUniContainerPanel;
    UniSFLabel4: TUniSFLabel;
    compNUMDOC: TUniEdit;
    compNOME: TUniEdit;
    compVALORP: TUniEdit;
    UniPanel10: TUniPanel;
    btnAdicionarConta: TUniSFBitBtn;
    compTIPOPAGAMENTO: TUniSFComboBox;
    DSTela: TDataSource;
    tsAdicionarConta: TUniTabSheet;
    UniPanel4: TUniPanel;
    UniContainerPanel14: TUniContainerPanel;
    UniSFBitBtn3: TUniSFBitBtn;
    UniSFBitBtn4: TUniSFBitBtn;
    UniScrollBox3: TUniScrollBox;
    UniPanel8: TUniPanel;
    UniPanel9: TUniPanel;
    compVALORP_ADC: TUniEdit;
    UniContainerPanel15: TUniContainerPanel;
    UniLabel5: TUniLabel;
    UniPanel11: TUniPanel;
    UniContainerPanel16: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniPanel7: TUniPanel;
    UniContainerPanel20: TUniContainerPanel;
    UniLabel8: TUniLabel;
    UniPanel13: TUniPanel;
    compNUMDOC_ADC: TUniEdit;
    UniContainerPanel24: TUniContainerPanel;
    UniLabel9: TUniLabel;
    UniPanel26: TUniPanel;
    UniPanel23: TUniPanel;
    compCODCC: TUniEdit;
    UniContainerPanel29: TUniContainerPanel;
    UniLabel22: TUniLabel;
    UniSFBitBtn10: TUniSFBitBtn;
    UniPanel14: TUniPanel;
    compCODBAN: TUniEdit;
    UniContainerPanel26: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniSFBitBtn5: TUniSFBitBtn;
    UniPanel15: TUniPanel;
    UniPanel16: TUniPanel;
    UniPanel21: TUniPanel;
    compCODCLI: TUniEdit;
    UniContainerPanel27: TUniContainerPanel;
    UniLabel11: TUniLabel;
    UniSFBitBtn6: TUniSFBitBtn;
    UniPanel12: TUniPanel;
    compDESCRCC: TUniEdit;
    UniContainerPanel19: TUniContainerPanel;
    UniPanel17: TUniPanel;
    compDESCRBAN: TUniEdit;
    UniContainerPanel28: TUniContainerPanel;
    UniPanel22: TUniPanel;
    compNOMCLI: TUniEdit;
    UniContainerPanel30: TUniContainerPanel;
    UniContainerPanel5: TUniContainerPanel;
    UniSFBitBtn2: TUniSFBitBtn;
    UNITEXT: TUniPanel;
    UniEdit1: TUniEdit;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel7: TUniLabel;
    UniPanel6: TUniPanel;
    compDESCRMV: TUniEdit;
    compDIADESPP_ADC: TUniDateTimePicker;
    compDIADESPR_ADC: TUniDateTimePicker;
    UniSFBitBtn1: TUniSFBitBtn;
    UniPanel5: TUniPanel;
    compID: TUniEdit;
    UniContainerPanel7: TUniContainerPanel;
    UniLabel12: TUniLabel;
    UniPanel24: TUniPanel;
    UniContainerPanel8: TUniContainerPanel;
    UniContainerPanel9: TUniContainerPanel;
    UniSFLabel7: TUniSFLabel;
    UniContainerPanel10: TUniContainerPanel;
    UniSFLabel8: TUniSFLabel;
    compDIADESPPESTORNO: TUniDateTimePicker;
    UniContainerPanel11: TUniContainerPanel;
    UniSFLabel9: TUniSFLabel;
    UniContainerPanel12: TUniContainerPanel;
    UniSFLabel10: TUniSFLabel;
    compNUMDOCESTORNO: TUniEdit;
    UniPanel25: TUniPanel;
    btnPesquisarEstorno: TUniSFBitBtn;
    UniContainerPanel13: TUniContainerPanel;
    UniSFLabel13: TUniSFLabel;
    UniContainerPanel33: TUniContainerPanel;
    UniSFLabel14: TUniSFLabel;
    compNOMEESTORNO: TUniEdit;
    UniContainerPanel34: TUniContainerPanel;
    UniSFLabel15: TUniSFLabel;
    UniContainerPanel35: TUniContainerPanel;
    UniSFLabel16: TUniSFLabel;
    compVALORPESTORNO: TUniEdit;
    UniContainerPanel36: TUniContainerPanel;
    UniSFBitBtn9: TUniSFBitBtn;
    UniSFBitBtn11: TUniSFBitBtn;
    UniScrollBox4: TUniScrollBox;
    UniPanel28: TUniPanel;
    UniScrollBox5: TUniScrollBox;
    gridTelaEstorno: TUniDBGrid;
    UniPanel29: TUniPanel;
    UniPanel30: TUniPanel;
    compVALORPREVISTOESTORNO: TUniEdit;
    UniContainerPanel37: TUniContainerPanel;
    UniLabel13: TUniLabel;
    UniPanel31: TUniPanel;
    compVALORREALESTORNO: TUniEdit;
    UniContainerPanel38: TUniContainerPanel;
    UniLabel14: TUniLabel;
    UniPanel32: TUniPanel;
    UniContainerPanel39: TUniContainerPanel;
    UniLabel15: TUniLabel;
    compTIPOPAGAMENTOESTORNO: TUniSFComboBox;
    UniContainerPanel40: TUniContainerPanel;
    UniLabel16: TUniLabel;
    UniPanel33: TUniPanel;
    compIDESTORNO: TUniEdit;
    UniContainerPanel41: TUniContainerPanel;
    UniLabel17: TUniLabel;
    CDSTelaEstorno: TClientDataSet;
    AggregateField3: TAggregateField;
    AggregateField4: TAggregateField;
    DSTelaEstorno: TDataSource;
    procedure UniFrameReady(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure btnAdicionarContaClick(Sender: TObject);
    procedure UniSFBitBtn6Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniSFBitBtn5Click(Sender: TObject);
    procedure UniSFBitBtn10Click(Sender: TObject);
    procedure UniSFBitBtn2Click(Sender: TObject);
    procedure UniSFBitBtn1Click(Sender: TObject);
    procedure btnRecebeContaClick(Sender: TObject);
    procedure btnPesquisarEstornoClick(Sender: TObject);
    procedure gridTelaEstornoCellClick(Column: TUniDBGridColumn);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure gridTelaEstornoDrawColumnCell(Sender: TObject; ACol,
      ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
  private
    { Private declarations }
    procedure callBackCliente(Sender: TComponent;
      AResult: Integer);
    procedure callBackBanco(Sender: TComponent;
      AResult: Integer);
    procedure callBackCCusto(Sender: TComponent;
      AResult: Integer);
  public
    { Public declarations }
  end;

implementation

uses
  RESTRequest4D.Response.Intf, System.JSON, uConstantes, RESTRequest4D.Request,
  MainModule, uUtils, ufrmListaGlobal, UniSFCore;

{$R *.dfm}


procedure TfraReceberContaCliente.callBackCCusto(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compDESCRCC.Text     := frmListaGlobal.CDSTela.FieldByName('descr').AsString;
    compCODCC.Text     := frmListaGlobal.CDSTela.FieldByName('codCc').AsString;
    alertaM.info('Centro de custo selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('descr').AsString + '</b>');
  end;
end;

procedure TfraReceberContaCliente.callBackBanco(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compDESCRBAN.Text     := frmListaGlobal.CDSTela.FieldByName('nome').AsString;
    compCODBAN.Text     := frmListaGlobal.CDSTela.FieldByName('codBan').AsString;
    alertaM.info('Banco selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TfraReceberContaCliente.callBackCliente(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compNOMCLI.Text     := frmListaGlobal.CDSTela.FieldByName('nome').AsString;
    compCODCLI.Text     := frmListaGlobal.CDSTela.FieldByName('codCli').AsString;
    alertaM.info('Cliente selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TfraReceberContaCliente.btnAdicionarContaClick(Sender: TObject);
begin
  UniPageControl1.ActivePage := tsAdicionarConta;
  compVALORP_ADC.Text := FormatFloatHci(0,JParGer.GetValue<integer>('DECPRECO'));
  compDIADESPP_ADC.DateTime := now;
  compDIADESPR_ADC.DateTime := now;
  compNUMDOC.Text := '';
  compCODCC.Text := '';
  compDESCRCC.Text := '';
  compCODBAN.Text := '';
  compDESCRBAN.Text := '';
  compCODCLI.Text := '';
  compNOMCLI.Text := '';
  compDESCRMV.Text := '';

end;

procedure TfraReceberContaCliente.btnRecebeContaClick(Sender: TObject);
var
  resp1     :IResponse;
  wValor : string;
  jBody : TJSONObject;
begin
  jBody := nil;
  try
    //recebimentos
    if UniPageControl1.ActivePage = tsAReceber then
      begin
        alerta.QuestionBasic('Confirma para receber esta conta?',
        procedure(const ButtonClicked: TAButton)
        begin
          if ButtonClicked = abConfirm then
          begin
            try
              try
                jBody := TJSONObject.Create;
                jBody.AddPair('codBan', CDSTela.FieldByName('codBan').AsString);
                jBody.AddPair('debCred', 'C');
                jBody.AddPair('diaDespR', '');
                jBody.AddPair('valorR', compVALORREAL.Text);
                jBody.AddPair('id', compID.Text);
                jBody.AddPair('empresa', vvcodemp);
                jBody.AddPair('int_Caixa_Pagto', vvCaixa);
                jBody.AddPair('int_Recebimento', '1');
                jBody.AddPair('int_TipoPagamento', copy(compTIPOPAGAMENTO.Text,1,2));

                resp1 := TRequest.New.BaseURL(baseurlCadastros)
                       .resource(putBaixaContaPdvUtilidades)
                       .AddParam('nomeBanco', uniMainModule.nomebanco)
                       .AddBody(jBody)
                       .timeOut(12000)
                       .Put;
                sleep(2000);
                if resp1.StatusCode = 200 then
                begin
                  alertaM.Success('Conta baixada com sucesso.');
                  btnPesquisar.Click;
                end
                else
                begin
                  alerta.Error(resp1.Content);
                end;
              except on e:exception do
                begin
                  alerta.Error('ERRO: '+e.Message);
                end;
              end;
              unisession.Synchronize();
            finally
      //        jBody.Free;
            end;
          end;
        end);
      end
      //estorno/cancelamento
      else if UniPageControl1.ActivePage = tsCancelarRecebimentos then
      begin
        alerta.QuestionBasic('Confirma para estornar este recebimento?',
        procedure(const ButtonClicked: TAButton)
        begin
          if ButtonClicked = abConfirm then
          begin
            try
              try
                jBody := TJSONObject.Create;
//                jBody.AddPair('codBan', CDSTelaEstorno.FieldByName('codBan').AsString);
                jBody.AddPair('debCred', 'D');
//                jBody.AddPair('diaDespR', datetostr(now));
                jBody.AddPair('valorR', compVALORREALESTORNO.Text);
                jBody.AddPair('id', compIDESTORNO.Text);
                jBody.AddPair('empresa', vvcodemp);
                jBody.AddPair('int_Caixa_Pagto', vvCaixa);
//                jBody.AddPair('int_Recebimento', '0');
                jBody.AddPair('int_TipoPagamento', copy(compTIPOPAGAMENTOESTORNO.Text,1,2));

                resp1 := TRequest.New.BaseURL(baseurlCadastros)
                       .resource(putEstornaContaPdvUtilidades)
                       .AddParam('nomeBanco', uniMainModule.nomebanco)
                       .AddBody(jBody)
                       .timeOut(12000)
                       .Put;
                sleep(2000);
                if resp1.StatusCode = 200 then
                begin
                  alertaM.Success('Conta estornada com sucesso.');
                  btnPesquisarEstorno.Click;
                end
                else
                begin
                  alerta.Error(resp1.Content);
                end;
              except on e:exception do
                begin
                  alerta.Error('ERRO: '+e.Message);
                end;
              end;
              unisession.Synchronize();
            finally
      //        jBody.Free;
            end;
          end;
        end);
      end;
  finally
    FreeAndNil(jBody);
  end;
end;

procedure TfraReceberContaCliente.btnPesquisarClick(Sender: TObject);
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
    jsonBody.AddPair('nomCli',trim(compNOME.Text));
    jsonBody.AddPair('diaDespP',compDIADESPP.Text);
    jsonBody.AddPair('valorP',compVALORP.Text);
    jsonBody.AddPair('numDoc',compNUMDOC.Text);
//    jsonBody.AddPair('int_Caixa_Pagto',vvCaixa);

    try
      resp1 := TRequest.New.BaseURL(baseurlCadastros)
             .resource(getMovContasPdvUtilidades)
             .AddParam('nomeBanco', uniMainModule.nomebanco)
             .AddBody(jsonBody)
             .timeOut(12000)
             .Get;

      jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
      if resp1.StatusCode = 200 then
      begin
        JsonToDataset(CDSTela, jsonResp.GetValue('Result').ToString);
      end
      else
      begin
        CDSTela.EmptyDataSet;
        alertam.Warning(jsonResp.GetValue('Result').Value);
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

procedure TfraReceberContaCliente.btnPesquisarEstornoClick(Sender: TObject);
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
    jsonBody.AddPair('nomCli',trim(compNOMEESTORNO.Text));
    jsonBody.AddPair('diaDespP',compDIADESPPESTORNO.Text);
    jsonBody.AddPair('valorP',compVALORPESTORNO.Text);
    jsonBody.AddPair('numDoc',compNUMDOCESTORNO.Text);
    jsonBody.AddPair('int_Caixa_Pagto',vvCaixa);

    try
      resp1 := TRequest.New.BaseURL(baseurlCadastros)
             .resource(getEstornaContaPdvUtilidades)
             .AddParam('nomeBanco', uniMainModule.nomebanco)
             .AddBody(jsonBody)
             .timeOut(12000)
             .Get;

      jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
      if resp1.StatusCode = 200 then
      begin
        JsonToDataset(CDSTelaEstorno, jsonResp.GetValue('Result').ToString);
      end
      else
      begin
//        CDSTelaEstorno.EmptyDataSet;
        alertam.Warning(jsonResp.GetValue('Result').Value);
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

procedure TfraReceberContaCliente.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Detalhe', 'editar', 'dc3545');
end;

procedure TfraReceberContaCliente.gridTelaCellClick(Column: TUniDBGridColumn);
begin
//  if column.Field = CDSTelabotaoEditar then
//  begin
    compVALORPREVISTO.Text := CDSTela.FieldByName('valorP').AsString;
    compVALORREAL.Text := CDSTela.FieldByName('valorR').AsString;
    compID.Text := CDSTela.FieldByName('id').AsString;
    compTIPOPAGAMENTO.ItemIndex := 0;
//  end;
end;

procedure TfraReceberContaCliente.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfraReceberContaCliente.gridTelaEstornoCellClick(
  Column: TUniDBGridColumn);
begin
  compVALORPREVISTOESTORNO.Text := CDSTelaEstorno.FieldByName('valorP').AsString;
  compVALORREALESTORNO.Text := CDSTelaEstorno.FieldByName('valorR').AsString;
  compIDESTORNO.Text := CDSTelaEstorno.FieldByName('id').AsString;
  compTIPOPAGAMENTOESTORNO.ItemIndex := 0;
end;

procedure TfraReceberContaCliente.gridTelaEstornoDrawColumnCell(Sender: TObject;
  ACol, ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfraReceberContaCliente.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
end;

procedure TfraReceberContaCliente.UniFrameReady(Sender: TObject);
begin
  UniPageControl1.ActivePage := tsAReceber;
  compDIADESPP.DateTime := now -30;
  btnPesquisar.Click;
end;

procedure TfraReceberContaCliente.UniSFBitBtn10Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO_PDV_UTILITARIO';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTO';
  frmListaGlobal.showModal(callBackCCusto);
end;

procedure TfraReceberContaCliente.UniSFBitBtn1Click(Sender: TObject);
begin
  UniPageControl1.ActivePage := tsAReceber;
end;

procedure TfraReceberContaCliente.UniSFBitBtn2Click(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody   :TJSONObject;
  jsonResp :TJSONObject;
begin
  try
    jsonBody := TJSONObject.Create;
    jsonResp := TJSONObject.Create;

    //dados gerais
    jsonBody.AddPair('empresa', vvcodemp);
    jsonBody.AddPair('diaDespP',compDIADESPP_ADC.Text);
    jsonBody.AddPair('codCli',compCODCLI.Text);
    jsonBody.AddPair('diaDespR','');
    jsonBody.AddPair('dRef',compDIADESPR_ADC.Text);
    jsonBody.AddPair('valorP',compVALORP_ADC.Text);
    jsonBody.AddPair('valorR','0');
    jsonBody.AddPair('codBan',compCODBAN.Text);
    jsonBody.AddPair('codCc',compCODCC.Text);
    jsonBody.AddPair('codPr','');
    jsonBody.AddPair('debCred','C');
    jsonBody.AddPair('descrMv',compDESCRMV.Text);
    jsonBody.AddPair('numDoc',compNUMDOC_ADC.Text);
    jsonBody.AddPair('numDoc2','');
    jsonBody.AddPair('repasse','');
    jsonBody.AddPair('agencia','');
    jsonBody.AddPair('obs','');
    jsonBody.AddPair('texto','');

    resp1 := TRequest
            .New
            .BaseURL(baseurlCadastros)
            .Resource(postConta)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddBody(jsonBody.ToString)
            .Timeout(12000)
            .Post;

    sleep(2000);
    jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;

    if resp1.StatusCode = 200 then
    begin
      alertam.Success('Conta inserida com sucesso.');
      UniPageControl1.ActivePage := tsAReceber;
    end
    else
    begin
      alertam.Error(jsonResp.GetValue<string>('Erro'));
    end;
  finally
    FreeAndNil(jsonBody);
    FreeAndNil(jsonResp);
  end;
end;

procedure TfraReceberContaCliente.UniSFBitBtn5Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'BANCOS_PDV_UTILITARIO';
  frmListaGlobal.lblDescricao.Caption := 'BANCOS';
  frmListaGlobal.showModal(callBackBanco);
end;

procedure TfraReceberContaCliente.UniSFBitBtn6Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CLIENTES_PDV_UTILITARIO';
  frmListaGlobal.lblDescricao.Caption := 'CLIENTES';
  frmListaGlobal.showModal(callBackCliente);
end;

end.
