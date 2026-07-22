unit ufrmRelCaixaConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniDateTimePicker, uniButton, uniBitBtn,
  UniSFButton, UniSFBitBtn, uniLabel, uniPanel, uniEdit, uniPageControl,
  uniGUIBaseClasses, uniScrollBox, UniSFComboBox, UniSFiGrowl;

type
  TFrmRelCaixaConta = class(TUniForm)
    UniScrollBox1: TUniScrollBox;
    UniPageControl1: TUniPageControl;
    tsCaixaPorCliente: TUniTabSheet;
    tsGerNfce: TUniTabSheet;
    UniPanel1: TUniPanel;
    UniScrollBox2: TUniScrollBox;
    UniPanel13: TUniPanel;
    compCODCLI: TUniEdit;
    UniContainerPanel11: TUniContainerPanel;
    UniLabel13: TUniLabel;
    btnCli: TUniSFBitBtn;
    UniPanel2: TUniPanel;
    compNOMCLI: TUniEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniPanel40: TUniPanel;
    UniContainerPanel23: TUniContainerPanel;
    UniLabel31: TUniLabel;
    compDTINI: TUniDateTimePicker;
    UniPanel3: TUniPanel;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    compDTFIN: TUniDateTimePicker;
    UniPanel26: TUniPanel;
    UniPanel4: TUniPanel;
    compMOEDA: TUniEdit;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel2: TUniLabel;
    btnMoeda: TUniSFBitBtn;
    UniPanel5: TUniPanel;
    UniPanel6: TUniPanel;
    UniPanel7: TUniPanel;
    UniContainerPanel7: TUniContainerPanel;
    UniLabel3: TUniLabel;
    compCONSOLIDADO_1: TUniSFComboBox;
    UniPanel8: TUniPanel;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel4: TUniLabel;
    compREALIZADO: TUniSFComboBox;
    UniPanel9: TUniPanel;
    UniPanel10: TUniPanel;
    compCODBAN: TUniEdit;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel5: TUniLabel;
    btnBanco: TUniSFBitBtn;
    UniPanel11: TUniPanel;
    compCODCC: TUniEdit;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel6: TUniLabel;
    btnCCusto: TUniSFBitBtn;
    UniPanel12: TUniPanel;
    compCODPR: TUniEdit;
    UniContainerPanel8: TUniContainerPanel;
    UniLabel7: TUniLabel;
    btnDepartamento: TUniSFBitBtn;
    UniPanel14: TUniPanel;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel8: TUniLabel;
    UniSFComboBox2: TUniSFComboBox;
    UniPanel15: TUniPanel;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel9: TUniLabel;
    UniSFComboBox3: TUniSFComboBox;
    UniPanel16: TUniPanel;
    UniContainerPanel12: TUniContainerPanel;
    UniLabel10: TUniLabel;
    compORDENA_1: TUniSFComboBox;
    alertaM: TUniSFiGrowl;
    UniContainerPanel13: TUniContainerPanel;
    btnImprimir_0: TUniSFBitBtn;
    UniPanel17: TUniPanel;
    UniScrollBox3: TUniScrollBox;
    UniPanel20: TUniPanel;
    UniContainerPanel16: TUniContainerPanel;
    UniLabel12: TUniLabel;
    compDTINI_1: TUniDateTimePicker;
    UniPanel21: TUniPanel;
    UniContainerPanel17: TUniContainerPanel;
    UniLabel14: TUniLabel;
    compDTFIN_1: TUniDateTimePicker;
    UniPanel24: TUniPanel;
    UniPanel25: TUniPanel;
    UniPanel27: TUniPanel;
    UniContainerPanel19: TUniContainerPanel;
    UniLabel16: TUniLabel;
    compCBTIPO: TUniSFComboBox;
    UniPanel28: TUniPanel;
    UniContainerPanel20: TUniContainerPanel;
    UniLabel17: TUniLabel;
    compEXIBIRITENS: TUniSFComboBox;
    UniContainerPanel28: TUniContainerPanel;
    btnImprimir_1: TUniSFBitBtn;
    UniTabSheet1: TUniTabSheet;
    UniPanel18: TUniPanel;
    UniScrollBox4: TUniScrollBox;
    UniPanel19: TUniPanel;
    UniContainerPanel14: TUniContainerPanel;
    UniLabel11: TUniLabel;
    compDTINI_2: TUniDateTimePicker;
    UniPanel22: TUniPanel;
    UniContainerPanel15: TUniContainerPanel;
    UniLabel15: TUniLabel;
    compDTFIN_2: TUniDateTimePicker;
    UniPanel23: TUniPanel;
    UniPanel29: TUniPanel;
    UniPanel30: TUniPanel;
    UniContainerPanel18: TUniContainerPanel;
    UniLabel18: TUniLabel;
    compCBIMPRIMIRORDEM_2: TUniSFComboBox;
    UniPanel31: TUniPanel;
    UniContainerPanel21: TUniContainerPanel;
    UniLabel19: TUniLabel;
    compCBTIPODERELATORIO_2: TUniSFComboBox;
    UniPanel32: TUniPanel;
    UniPanel33: TUniPanel;
    UniContainerPanel24: TUniContainerPanel;
    UniLabel20: TUniLabel;
    compCodCcFin_2: TUniEdit;
    UniSFBitBtn4: TUniSFBitBtn;
    UniPanel34: TUniPanel;
    UniContainerPanel25: TUniContainerPanel;
    UniLabel21: TUniLabel;
    compCodCcIni_2: TUniEdit;
    UniSFBitBtn3: TUniSFBitBtn;
    UniPanel35: TUniPanel;
    UniContainerPanel26: TUniContainerPanel;
    UniLabel22: TUniLabel;
    compCodCliPagRec_2: TUniEdit;
    UniSFBitBtn5: TUniSFBitBtn;
    UniPanel36: TUniPanel;
    UniPanel37: TUniPanel;
    UniContainerPanel27: TUniContainerPanel;
    UniLabel23: TUniLabel;
    compCODVEN_2: TUniEdit;
    UniSFBitBtn6: TUniSFBitBtn;
    UniPanel38: TUniPanel;
    UniContainerPanel29: TUniContainerPanel;
    UniLabel24: TUniLabel;
    compCODPR_2: TUniEdit;
    UniSFBitBtn8: TUniSFBitBtn;
    UniPanel39: TUniPanel;
    UniContainerPanel30: TUniContainerPanel;
    UniLabel25: TUniLabel;
    compCODBANINI_2: TUniEdit;
    UniSFBitBtn9: TUniSFBitBtn;
    UniPanel41: TUniPanel;
    UniContainerPanel31: TUniContainerPanel;
    UniLabel26: TUniLabel;
    compCODBANFIN_2: TUniEdit;
    UniSFBitBtn10: TUniSFBitBtn;
    UniPanel42: TUniPanel;
    UniPanel43: TUniPanel;
    UniContainerPanel32: TUniContainerPanel;
    UniLabel27: TUniLabel;
    compCONSOLIDADO_2: TUniSFComboBox;
    UniPanel44: TUniPanel;
    UniContainerPanel33: TUniContainerPanel;
    UniLabel28: TUniLabel;
    UniEdit5: TUniEdit;
    UniPanel45: TUniPanel;
    UniContainerPanel34: TUniContainerPanel;
    UniLabel29: TUniLabel;
    compCBRESUMIDO_2: TUniSFComboBox;
    UniPanel46: TUniPanel;
    UniContainerPanel22: TUniContainerPanel;
    btnImprimir_2: TUniSFBitBtn;
    UniTabSheet2: TUniTabSheet;
    UniPanel47: TUniPanel;
    UniScrollBox5: TUniScrollBox;
    UniPanel48: TUniPanel;
    UniContainerPanel35: TUniContainerPanel;
    UniLabel30: TUniLabel;
    compDTINI_3: TUniDateTimePicker;
    UniPanel49: TUniPanel;
    UniContainerPanel36: TUniContainerPanel;
    UniLabel32: TUniLabel;
    compDTFIN_3: TUniDateTimePicker;
    UniPanel50: TUniPanel;
    UniPanel51: TUniPanel;
    UniPanel54: TUniPanel;
    UniPanel57: TUniPanel;
    UniContainerPanel41: TUniContainerPanel;
    UniLabel37: TUniLabel;
    compCODCLI_3: TUniEdit;
    UniSFBitBtn13: TUniSFBitBtn;
    UniPanel60: TUniPanel;
    UniContainerPanel43: TUniContainerPanel;
    UniLabel39: TUniLabel;
    UniPanel61: TUniPanel;
    UniContainerPanel44: TUniContainerPanel;
    UniLabel40: TUniLabel;
    compCODBAN_3: TUniEdit;
    UniSFBitBtn16: TUniSFBitBtn;
    UniPanel52: TUniPanel;
    UniContainerPanel37: TUniContainerPanel;
    UniLabel33: TUniLabel;
    UniEdit1: TUniEdit;
    UniSFBitBtn11: TUniSFBitBtn;
    UniContainerPanel38: TUniContainerPanel;
    btnImprimir_3: TUniSFBitBtn;
    compCBDEBCRED_3: TUniSFComboBox;
    UniTabSheet3: TUniTabSheet;
    UniPanel53: TUniPanel;
    UniScrollBox6: TUniScrollBox;
    UniPanel55: TUniPanel;
    UniContainerPanel39: TUniContainerPanel;
    UniLabel34: TUniLabel;
    compDTINI_4: TUniDateTimePicker;
    UniPanel56: TUniPanel;
    UniContainerPanel40: TUniContainerPanel;
    UniLabel35: TUniLabel;
    compDTFIN_4: TUniDateTimePicker;
    UniPanel58: TUniPanel;
    UniPanel59: TUniPanel;
    UniPanel62: TUniPanel;
    UniContainerPanel42: TUniContainerPanel;
    UniLabel36: TUniLabel;
    compCBTIPODERELATORIOABC_4: TUniSFComboBox;
    UniPanel63: TUniPanel;
    UniContainerPanel45: TUniContainerPanel;
    UniLabel38: TUniLabel;
    compCBCONSOLIDADO_4: TUniSFComboBox;
    UniPanel64: TUniPanel;
    UniContainerPanel46: TUniContainerPanel;
    UniLabel41: TUniLabel;
    compCODCLA_4: TUniEdit;
    UniContainerPanel47: TUniContainerPanel;
    btnImprimir_4: TUniSFBitBtn;
    UniTabSheet4: TUniTabSheet;
    UniPanel65: TUniPanel;
    UniScrollBox7: TUniScrollBox;
    UniPanel66: TUniPanel;
    UniContainerPanel48: TUniContainerPanel;
    UniLabel42: TUniLabel;
    compDTINI_5: TUniDateTimePicker;
    UniPanel67: TUniPanel;
    UniContainerPanel49: TUniContainerPanel;
    UniLabel43: TUniLabel;
    compDTFIN_5: TUniDateTimePicker;
    UniPanel68: TUniPanel;
    UniPanel69: TUniPanel;
    UniPanel70: TUniPanel;
    UniContainerPanel50: TUniContainerPanel;
    UniLabel44: TUniLabel;
    compCBTIPODERELATORIO_5: TUniSFComboBox;
    UniPanel73: TUniPanel;
    UniContainerPanel53: TUniContainerPanel;
    UniLabel47: TUniLabel;
    compCodCcIni_5: TUniEdit;
    UniSFBitBtn15: TUniSFBitBtn;
    UniPanel74: TUniPanel;
    UniContainerPanel54: TUniContainerPanel;
    UniLabel48: TUniLabel;
    compCodCcFin_5: TUniEdit;
    UniSFBitBtn17: TUniSFBitBtn;
    UniPanel75: TUniPanel;
    UniPanel76: TUniPanel;
    UniContainerPanel55: TUniContainerPanel;
    UniLabel49: TUniLabel;
    compCodCcIgnorarIni_5: TUniEdit;
    UniSFBitBtn18: TUniSFBitBtn;
    UniPanel77: TUniPanel;
    UniContainerPanel56: TUniContainerPanel;
    UniLabel50: TUniLabel;
    compCodCcIgnorarFin_5: TUniEdit;
    UniSFBitBtn19: TUniSFBitBtn;
    UniPanel78: TUniPanel;
    UniPanel79: TUniPanel;
    UniContainerPanel57: TUniContainerPanel;
    UniLabel51: TUniLabel;
    compDATA_5: TUniSFComboBox;
    UniPanel80: TUniPanel;
    UniContainerPanel58: TUniContainerPanel;
    UniLabel52: TUniLabel;
    compCONSOLIDADO_5: TUniSFComboBox;
    UniPanel81: TUniPanel;
    UniContainerPanel59: TUniContainerPanel;
    UniLabel53: TUniLabel;
    compCODPR_5: TUniEdit;
    UniSFBitBtn20: TUniSFBitBtn;
    UniPanel82: TUniPanel;
    UniContainerPanel60: TUniContainerPanel;
    UniLabel54: TUniLabel;
    compCODCLI_5: TUniEdit;
    UniSFBitBtn21: TUniSFBitBtn;
    UniPanel83: TUniPanel;
    UniContainerPanel61: TUniContainerPanel;
    UniLabel55: TUniLabel;
    compMOEDA_5: TUniEdit;
    UniSFBitBtn22: TUniSFBitBtn;
    UniPanel71: TUniPanel;
    UniContainerPanel51: TUniContainerPanel;
    UniLabel45: TUniLabel;
    compCODBAN_5: TUniEdit;
    UniSFBitBtn23: TUniSFBitBtn;
    UniPanel72: TUniPanel;
    UniPanel84: TUniPanel;
    UniPanel85: TUniPanel;
    UniPanel86: TUniPanel;
    UniContainerPanel52: TUniContainerPanel;
    UniLabel46: TUniLabel;
    compORDENACAO_5: TUniSFComboBox;
    UniPanel87: TUniPanel;
    UniContainerPanel62: TUniContainerPanel;
    UniLabel56: TUniLabel;
    compORDENACAOASCDESC_5: TUniSFComboBox;
    UniContainerPanel63: TUniContainerPanel;
    btnImprimir_5: TUniSFBitBtn;
    cpMenuRodape: TUniContainerPanel;
    btnCancelar: TUniSFBitBtn;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnCliClick(Sender: TObject);
    procedure btnBancoClick(Sender: TObject);
    procedure btnCCustoClick(Sender: TObject);
    procedure btnDepartamentoClick(Sender: TObject);
    procedure btnImprimir_0Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure btnImprimir_1Click(Sender: TObject);
    procedure btnImprimir_2Click(Sender: TObject);
    procedure UniSFBitBtn3Click(Sender: TObject);
    procedure UniSFBitBtn4Click(Sender: TObject);
    procedure UniSFBitBtn9Click(Sender: TObject);
    procedure UniSFBitBtn10Click(Sender: TObject);
    procedure UniSFBitBtn5Click(Sender: TObject);
    procedure UniSFBitBtn6Click(Sender: TObject);
    procedure UniSFBitBtn8Click(Sender: TObject);
    procedure btnImprimir_3Click(Sender: TObject);
    procedure UniSFBitBtn11Click(Sender: TObject);
    procedure UniSFBitBtn13Click(Sender: TObject);
    procedure UniSFBitBtn16Click(Sender: TObject);
    procedure btnImprimir_4Click(Sender: TObject);
    procedure UniSFBitBtn23Click(Sender: TObject);
    procedure UniSFBitBtn22Click(Sender: TObject);
    procedure UniSFBitBtn21Click(Sender: TObject);
    procedure UniSFBitBtn20Click(Sender: TObject);
    procedure UniSFBitBtn19Click(Sender: TObject);
    procedure UniSFBitBtn18Click(Sender: TObject);
    procedure UniSFBitBtn17Click(Sender: TObject);
    procedure UniSFBitBtn15Click(Sender: TObject);
    procedure btnImprimir_5Click(Sender: TObject);
    procedure btnMoedaClick(Sender: TObject);
  private
    { Private declarations }
    //CLIENTE
    procedure callBackCliente(Sender: TComponent;
      AResult: Integer);
    procedure callBackCliente_2(Sender: TComponent;
      AResult: Integer);
    procedure callBackCliente_3(Sender: TComponent;
      AResult: Integer);
    procedure callBackCliente_5(Sender: TComponent;
      AResult: Integer);

    //BANCO
    procedure callBackBanco(Sender: TComponent;
      AResult: Integer);
    procedure callBackBancoIni_2(Sender: TComponent;
      AResult: Integer);
    procedure callBackBancoFin_2(Sender: TComponent;
      AResult: Integer);
    procedure callBackBanco_3(Sender: TComponent;
      AResult: Integer);
    procedure callBackBanco_5(Sender: TComponent;
      AResult: Integer);

    //CENTRO DE CUSTO
    procedure callBackCCusto(Sender: TComponent;
      AResult: Integer);
    procedure callBackCCustoIni_5(Sender: TComponent;
      AResult: Integer);
    procedure callBackCCustoFin_5(Sender: TComponent;
      AResult: Integer);
    procedure callBackCCustoIgnorarIni_5(Sender: TComponent;
      AResult: Integer);
    procedure callBackCCustoIgnorarFin_5(Sender: TComponent;
      AResult: Integer);
    procedure callBackCCustoIni_2(Sender: TComponent;
      AResult: Integer);
    procedure callBackCCustoFin_2(Sender: TComponent;
      AResult: Integer);

    //DEPARTAMENTO
    procedure callBackDepartamento(Sender: TComponent;
      AResult: Integer);
    procedure callBackDepartamento_2(Sender: TComponent;
      AResult: Integer);
    procedure callBackDepartamento_5(Sender: TComponent;
      AResult: Integer);

    //VENDEDOR
    procedure callBackVendedor_2(Sender: TComponent;
      AResult: Integer);
  public
    { Public declarations }
  end;

function FrmRelCaixaConta: TFrmRelCaixaConta;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ufrmListaGlobal, RESTRequest4D.Response.Intf,
  System.JSON, uUtils, uConstantes, RESTRequest4D.Request;

procedure TFrmRelCaixaConta.callBackVendedor_2(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODVEN_2.Text     := frmListaGlobal.CDSTela.FieldByName('CODVEND').AsString;
    alertaM.info('Vendedor selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('NOMEVEND').AsString + '</b>');
  end;
end;

procedure TFrmRelCaixaConta.callBackDepartamento(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODPR.Text     := frmListaGlobal.CDSTela.FieldByName('CODPR').AsString;
    alertaM.info('Departamento selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('DESCRPR').AsString + '</b>');
  end;
end;

procedure TFrmRelCaixaConta.callBackDepartamento_5(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODPR_5.Text     := frmListaGlobal.CDSTela.FieldByName('CODPR').AsString;
    alertaM.info('Departamento selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('DESCRPR').AsString + '</b>');
  end;
end;

procedure TFrmRelCaixaConta.callBackDepartamento_2(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODPR_2.Text     := frmListaGlobal.CDSTela.FieldByName('CODPR').AsString;
    alertaM.info('Departamento selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('DESCRPR').AsString + '</b>');
  end;
end;

procedure TFrmRelCaixaConta.UniFormShow(Sender: TObject);
begin
  //impressão de caixa por cliente
  if UniPageControl1.ActivePageIndex = 0 then
  begin
    compDTINI.DateTime := date - 15;
    compDTFIN.DateTime := date;
    compCONSOLIDADO_1.ItemIndex := 0;
    compORDENA_1.ItemIndex := 0;
  end

  //relatório gereral nfce
  else if UniPageControl1.ActivePageIndex = 1 then
  begin
    compDTINI_1.DateTime := date - 15;
    compDTFIN_1.DateTime := date;
    compCBTIPO.ItemIndex := 0;
    compEXIBIRITENS.ItemIndex := 0;
  end

  //contas pagar/receber
  else if UniPageControl1.ActivePageIndex = 2 then
  begin
    compDTINI_2.DateTime := date - 15;
    compDTFIN_2.DateTime := date;
    compCBIMPRIMIRORDEM_2.ItemIndex := 2;
    compCBTIPODERELATORIO_2.ItemIndex := 0;
    compCONSOLIDADO_2.ItemIndex := 1;
    compCBRESUMIDO_2.ItemIndex := 0;
  end

  //caixa por período
  else if UniPageControl1.ActivePageIndex = 3 then
  begin
    compDTINI_3.DateTime := date - 15;
    compDTFIN_3.DateTime := date;
    compCBDEBCRED_3.ItemIndex := 0;
  end

  //ABC cliente/fornecedor
  else if UniPageControl1.ActivePageIndex = 4 then
  begin
    compDTINI_4.DateTime := date - 15;
    compDTFIN_4.DateTime := date;
    compCBTIPODERELATORIOABC_4.ItemIndex := 0;
    compCBCONSOLIDADO_4.ItemIndex := 0;
    compCODCLA_4.Text := 'CL';
  end

  //caixa por centro de custo
  else if UniPageControl1.ActivePageIndex = 5 then
  begin
    compDTINI_5.DateTime := date - 15;
    compDTFIN_5.DateTime := date;
    compCBTIPODERELATORIO_5.ItemIndex := 0;
    compDATA_5.ItemIndex := 0;
    compCONSOLIDADO_5.ItemIndex := 0;
    compORDENACAO_5.ItemIndex := 1;
    compORDENACAOASCDESC_5.ItemIndex := 0;
  end;

end;

procedure TFrmRelCaixaConta.UniSFBitBtn10Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'BANCO';
  frmListaGlobal.lblDescricao.Caption := 'BANCOS';
  frmListaGlobal.showModal(callBackBancoFin_2);
end;

procedure TFrmRelCaixaConta.UniSFBitBtn11Click(Sender: TObject);
begin
  alertam.Warning('Em manutenção');

end;

procedure TFrmRelCaixaConta.btnImprimir_3Click(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
  wJsonResult: TJSONObject;
begin
  resp1 := nil;
  wJsonResult := nil;
  try
    jsonBody := TJSONObject.Create;
    try
      jsonBody.AddPair('empresa', vvcodemp);
      jsonBody.AddPair('codCli', compCODCLI_3.Text);
      //crédito
      if compCBDEBCRED_3.ItemIndex = 1 then
        jsonBody.AddPair('debCred', 'C')
      //débito
      else if compCBDEBCRED_3.ItemIndex = 2 then
        jsonBody.AddPair('debCred', 'D')
      else
        jsonBody.AddPair('debCred', '');
      jsonBody.AddPair('codBan', compCODBAN_3.Text);
      jsonBody.AddPair('dtIni', datetostr(compDTINI_3.DateTime));
      jsonBody.AddPair('dtFin', datetostr(compDTFIN_3.DateTime));

      resp1 := TRequest
              .New
              .BaseURL(baseurlImpressao)
              .Resource(getCaixaPeriodo)
              .AddParam('nomeBanco', uniMainModule.nomebanco)
              .AddBody(jsonBody.ToString)
              .Timeout(120000)
              .Get;

      var wResult : TJSONObject;
      wResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
      if resp1.StatusCode = 200 then
      begin
        alertam.Success('Relatório gerado com sucesso.');

//        var wResult : TJSONObject;
//        wResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;

//        wUrlRelatorioTmpPdf := 'C:\ProjetoHciApi\TMP' + wResult.GetValue('nomeArquivo').Value;
        wUrlRelatorioTmpPdf := wResult.GetValue('local').Value;

        UniSession.AddJS( 'window.open(' + QuotedStr(wUrlRelatorioTmpPdf) + ', ''_blank'');');
  //      wUrlRelatorioTmpPdf := dm.wPastaTmpPdf + wResult.GetValue('nomeArquivo').Value;
  //      novaAba(TFrame(TFraImpressao),'PDF',true,'');
  //      NovaAba(TFrame(TFraImpressao),'PDF', true, -1, true);

  //      btnVoltar.Click;
  //      btnPesquisar.Click;
      end
      else
      begin
        alertam.Warning(wResult.GetValue('Erro').Value);
      end;
    finally
      jsonBody.Free;
    end;
  except on e:exception do
    begin
      alertam.Error('ERRO: '+ e.Message);
    end;
  end;
end;

procedure TFrmRelCaixaConta.UniSFBitBtn13Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CLIENTE';
  frmListaGlobal.lblDescricao.Caption := 'CLIENTES';
  frmListaGlobal.showModal(callBackCliente_3);
end;

procedure TFrmRelCaixaConta.btnImprimir_4Click(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
  wJsonResult: TJSONObject;
begin
  resp1 := nil;
  wJsonResult := nil;
  try
    jsonBody := TJSONObject.Create;
    try
      jsonBody.AddPair('empresa', vvcodemp);
      jsonBody.AddPair('consolidado', compCBCONSOLIDADO_4.ItemIndex.ToString);
      jsonBody.AddPair('tipoDeRelatorio', compCBTIPODERELATORIOABC_4.ItemIndex.ToString);
      jsonBody.AddPair('codCla', compCODCLA_4.Text);
      jsonBody.AddPair('dtIni', datetostr(compDTINI_4.DateTime));
      jsonBody.AddPair('dtFin', datetostr(compDTFIN_4.DateTime));

      resp1 := TRequest
              .New
              .BaseURL(baseurlImpressao)
              .Resource(getContaAbcCliFor)
              .AddParam('nomeBanco', uniMainModule.nomebanco)
              .AddBody(jsonBody.ToString)
              .Timeout(120000)
              .Get;

      var wResult : TJSONObject;
      wResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
      if resp1.StatusCode = 200 then
      begin
        alertam.Success('Relatório gerado com sucesso.');

//        var wResult : TJSONObject;
//        wResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;

//        wUrlRelatorioTmpPdf := 'C:\ProjetoHciApi\TMP' + wResult.GetValue('nomeArquivo').Value;
        wUrlRelatorioTmpPdf := wResult.GetValue('local').Value;

        UniSession.AddJS( 'window.open(' + QuotedStr(wUrlRelatorioTmpPdf) + ', ''_blank'');');
  //      wUrlRelatorioTmpPdf := dm.wPastaTmpPdf + wResult.GetValue('nomeArquivo').Value;
  //      novaAba(TFrame(TFraImpressao),'PDF',true,'');
  //      NovaAba(TFrame(TFraImpressao),'PDF', true, -1, true);

  //      btnVoltar.Click;
  //      btnPesquisar.Click;
      end
      else
      begin
        alertam.Warning(wResult.GetValue('Erro').Value);
      end;
    finally
      jsonBody.Free;
    end;
  except on e:exception do
    begin
      alertam.Error('ERRO: '+ e.Message);
    end;
  end;
end;


procedure TFrmRelCaixaConta.UniSFBitBtn15Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTO';
  frmListaGlobal.showModal(callBackCcustoIni_5);
end;

procedure TFrmRelCaixaConta.UniSFBitBtn16Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'BANCO';
  frmListaGlobal.lblDescricao.Caption := 'BANCOS';
  frmListaGlobal.showModal(callBackBanco_3);
end;

procedure TFrmRelCaixaConta.UniSFBitBtn17Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTO';
  frmListaGlobal.showModal(callBackCcustoFin_5);
end;

procedure TFrmRelCaixaConta.UniSFBitBtn18Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTO';
  frmListaGlobal.showModal(callBackCcustoIgnorarIni_5);
end;

procedure TFrmRelCaixaConta.UniSFBitBtn19Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTO';
  frmListaGlobal.showModal(callBackCcustoIgnorarFin_5);
end;

procedure TFrmRelCaixaConta.btnImprimir_0Click(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
  wJsonResult: TJSONObject;
begin
  resp1 := nil;
  wJsonResult := nil;
  try
    jsonBody := TJSONObject.Create;
    try
      jsonBody.AddPair('codBan', compCODBAN.Text);
      jsonBody.AddPair('codCc', compCODCC.Text);
      jsonBody.AddPair('codDepto', compCODPR.Text);
      jsonBody.AddPair('realizado', '');
      jsonBody.AddPair('ordenacaoCampo', '');
      jsonBody.AddPair('ordenacaoAscDesc', '');
      jsonBody.AddPair('empresa', vvcodemp);
      jsonBody.AddPair('dtIni', datetostr(compDTINI.DateTime));
      jsonBody.AddPair('dtFin', datetostr(compDTFIN.DateTime));
      jsonBody.AddPair('codCli', compCODCLI.Text);
      jsonBody.AddPair('consolidado', '');
      resp1 := TRequest
              .New
              .BaseURL(baseurlImpressao)
              .Resource(getRelCaixaPorCliente)
              .AddParam('nomeBanco', uniMainModule.nomebanco)
              .AddBody(jsonBody.ToString)
              .Timeout(12000)
              .Get;
      var wResult : TJSONObject;
      wResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
      if resp1.StatusCode = 200 then
      begin
        alertam.Success('Relatório gerado com sucesso.');

//        wUrlRelatorioTmpPdf := 'C:\ProjetoHciApi\TMP' + wResult.GetValue('nomeArquivo').Value;
        wUrlRelatorioTmpPdf := wResult.GetValue('local').Value;

        UniSession.AddJS( 'window.open(' + QuotedStr(wUrlRelatorioTmpPdf) + ', ''_blank'');');
  //      wUrlRelatorioTmpPdf := dm.wPastaTmpPdf + wResult.GetValue('nomeArquivo').Value;
  //      novaAba(TFrame(TFraImpressao),'PDF',true,'');
  //      NovaAba(TFrame(TFraImpressao),'PDF', true, -1, true);

  //      btnVoltar.Click;
  //      btnPesquisar.Click;
      end
      else
      begin
        alertam.Warning(wResult.GetValue('Erro').Value);
      end;
    finally
      jsonBody.Free;
    end;
  except on e:exception do
    begin
      alertam.Error('ERRO: '+ e.Message);
    end;
  end;
end;

procedure TFrmRelCaixaConta.UniSFBitBtn20Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'DEPARTAMENTO';
  frmListaGlobal.lblDescricao.Caption := 'DEPARTAMENTOS';
  frmListaGlobal.showModal(callBackDepartamento_5);
end;

procedure TFrmRelCaixaConta.UniSFBitBtn21Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CLIENTE';
  frmListaGlobal.lblDescricao.Caption := 'CLIENTES';
  frmListaGlobal.showModal(callBackCliente_5);
end;

procedure TFrmRelCaixaConta.UniSFBitBtn22Click(Sender: TObject);
begin
  alertam.Warning('Em manutenção');

end;

procedure TFrmRelCaixaConta.UniSFBitBtn23Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'BANCO';
  frmListaGlobal.lblDescricao.Caption := 'BANCOS';
  frmListaGlobal.showModal(callBackBanco_5);
end;

procedure TFrmRelCaixaConta.btnImprimir_5Click(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
  wJsonResult: TJSONObject;
begin
  resp1 := nil;
  wJsonResult := nil;
  try
    jsonBody := TJSONObject.Create;
    try
      jsonBody.AddPair('empresa', vvcodemp);
      jsonBody.AddPair('tipoDeRelatorio', compCBTIPODERELATORIO_5.ItemIndex.ToString);
      jsonBody.AddPair('consolidado', compCONSOLIDADO_5.ItemIndex.ToString);
      jsonBody.AddPair('codCcustoIni', compCodCcIni_5.Text);
      jsonBody.AddPair('codCcustoFin', compCodCcFin_5.Text);
      jsonBody.AddPair('codCcustoIgnorarIni', compCodCcIgnorarIni_5.Text);
      jsonBody.AddPair('codCcustoIgnorarFin', compCodCcIgnorarFin_5.Text);
      jsonBody.AddPair('data', compDATA_5.ItemIndex.ToString);
      jsonBody.AddPair('codPr', compCODPR_5.Text);
      jsonBody.AddPair('codCli', compCODCLI_5.Text);
      jsonBody.AddPair('codBan', compCODBAN_5.Text);
      jsonBody.AddPair('ordenacaoAscDesc', compORDENACAOASCDESC_5.ItemIndex.ToString);
      jsonBody.AddPair('ordenacao', compORDENACAO_5.ItemIndex.ToString);
      jsonBody.AddPair('dtIni', datetostr(compDTINI_5.DateTime));
      jsonBody.AddPair('dtFin', datetostr(compDTFIN_5.DateTime));

      resp1 := TRequest
              .New
              .BaseURL(baseurlImpressao)
              .Resource(getCaixaCcusto)
              .AddParam('nomeBanco', uniMainModule.nomebanco)
              .AddBody(jsonBody.ToString)
              .Timeout(120000)
              .Get;

      var wResult : TJSONObject;
      wResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
      if resp1.StatusCode = 200 then
      begin
        alertam.Success('Relatório gerado com sucesso.');

//        var wResult : TJSONObject;
//        wResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;

//        wUrlRelatorioTmpPdf := 'C:\ProjetoHciApi\TMP' + wResult.GetValue('nomeArquivo').Value;
        wUrlRelatorioTmpPdf := wResult.GetValue<string>('local');

        UniSession.AddJS( 'window.open(' + QuotedStr(wUrlRelatorioTmpPdf) + ', ''_blank'');');
  //      wUrlRelatorioTmpPdf := dm.wPastaTmpPdf + wResult.GetValue('nomeArquivo').Value;
  //      novaAba(TFrame(TFraImpressao),'PDF',true,'');
  //      NovaAba(TFrame(TFraImpressao),'PDF', true, -1, true);

  //      btnVoltar.Click;
  //      btnPesquisar.Click;
      end
      else
      begin
        alertam.Warning(wResult.GetValue('Erro').Value);
      end;
    finally
      jsonBody.Free;
    end;
  except on e:exception do
    begin
      alertam.Error('ERRO: '+ e.Message);
    end;
  end;
end;

procedure TFrmRelCaixaConta.btnImprimir_2Click(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
  wJsonResult: TJSONObject;
begin
  resp1 := nil;
  wJsonResult := nil;
  try
    jsonBody := TJSONObject.Create;
    try
      jsonBody.AddPair('empresa', vvcodemp);
      jsonBody.AddPair('tipoDeRelatorio', compCBTIPODERELATORIO_2.ItemIndex.ToString);
      jsonBody.AddPair('consolidado', compCONSOLIDADO_2.ItemIndex.ToString);
      jsonBody.AddPair('dtIni', datetostr(compDTINI_2.DateTime));
      jsonBody.AddPair('dtFin', datetostr(compDTFIN_2.DateTime));
      jsonBody.AddPair('codCli', compCodCliPagRec_2.Text);
      jsonBody.AddPair('codCcIni', compCodCcIni_2.Text);
      jsonBody.AddPair('codCcFin', compCodCcFin_2.Text);
      jsonBody.AddPair('codPr', compCODPR_2.Text);
      jsonBody.AddPair('codBanIni', compCODBANINI_2.Text);
      jsonBody.AddPair('codBanFin', compCODBANFIN_2.Text);
      jsonBody.AddPair('codVen', compCODVEN_2.Text);
      jsonBody.AddPair('imprimirOrdem', compCBIMPRIMIRORDEM_2.ItemIndex.ToString);

      resp1 := TRequest
              .New
              .BaseURL(baseurlImpressao)
              .Resource(getRelPagRec)
              .AddParam('nomeBanco', uniMainModule.nomebanco)
              .AddBody(jsonBody.ToString)
              .Timeout(120000)
              .Get;

      var wResult : TJSONObject;
      wResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
      if resp1.StatusCode = 200 then
      begin
        alertam.Success('Relatório gerado com sucesso.');

//        var wResult : TJSONObject;
//        wResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;

//        wUrlRelatorioTmpPdf := 'C:\ProjetoHciApi\TMP' + wResult.GetValue('nomeArquivo').Value;
        wUrlRelatorioTmpPdf := wResult.GetValue('local').Value;

        UniSession.AddJS( 'window.open(' + QuotedStr(wUrlRelatorioTmpPdf) + ', ''_blank'');');
  //      wUrlRelatorioTmpPdf := dm.wPastaTmpPdf + wResult.GetValue('nomeArquivo').Value;
  //      novaAba(TFrame(TFraImpressao),'PDF',true,'');
  //      NovaAba(TFrame(TFraImpressao),'PDF', true, -1, true);

  //      btnVoltar.Click;
  //      btnPesquisar.Click;
      end
      else
      begin
        alertam.Warning(wResult.GetValue('Erro').Value);
      end;
    finally
      jsonBody.Free;
    end;
  except on e:exception do
    begin
      alertam.Error('ERRO: '+ e.Message);
    end;
  end;
end;

procedure TFrmRelCaixaConta.UniSFBitBtn3Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTO';
  frmListaGlobal.showModal(callBackCCustoIni_2);
end;

procedure TFrmRelCaixaConta.UniSFBitBtn4Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTO';
  frmListaGlobal.showModal(callBackCCustoFin_2);
end;

procedure TFrmRelCaixaConta.UniSFBitBtn5Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CLIENTE';
  frmListaGlobal.lblDescricao.Caption := 'CLIENTES';
  frmListaGlobal.showModal(callBackCliente_2);
end;

procedure TFrmRelCaixaConta.UniSFBitBtn6Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'VENDEDOR';
  frmListaGlobal.lblDescricao.Caption := 'VENDEDORES';
  frmListaGlobal.showModal(callBackVendedor_2);
end;

procedure TFrmRelCaixaConta.btnImprimir_1Click(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
  wJsonResult: TJSONObject;
begin
  resp1 := nil;
  wJsonResult := nil;
  try
    jsonBody := TJSONObject.Create;
    try
      jsonBody.AddPair('empresa', vvcodemp);
      jsonBody.AddPair('dtIni', datetostr(compDTINI_1.DateTime));
      jsonBody.AddPair('dtFin', datetostr(compDTFIN_1.DateTime));

      if compCBTIPO.ItemIndex >= 0 then
        jsonBody.AddPair('tipo', compCBTIPO.ItemIndex.ToString)
      else
        jsonBody.AddPair('tipo', '');

      if compEXIBIRITENS.ItemIndex >= 0 then
      begin
        if compEXIBIRITENS.ItemIndex = 0 then
          jsonBody.AddPair('exibirItens', 'N')
        else if compEXIBIRITENS.ItemIndex = 1 then
          jsonBody.AddPair('exibirItens', 'S');
      end
      else
      begin
        jsonBody.AddPair('exibirItens', '');
      end;

      resp1 := TRequest
              .New
              .BaseURL(baseurlImpressao)
              .Resource(getRelGerNFCE)
              .AddParam('nomeBanco', uniMainModule.nomebanco)
              .AddBody(jsonBody.ToString)
              .Timeout(120000)
              .Get;

      var wResult : TJSONObject;
      wResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
      if resp1.StatusCode = 200 then
      begin
        alertam.Success('Relatório gerado com sucesso.');

//        var wResult : TJSONObject;
//        wResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;

//        wUrlRelatorioTmpPdf := 'C:\ProjetoHciApi\TMP' + wResult.GetValue('nomeArquivo').Value;
        wUrlRelatorioTmpPdf := wResult.GetValue('local').Value;

        UniSession.AddJS( 'window.open(' + QuotedStr(wUrlRelatorioTmpPdf) + ', ''_blank'');');
  //      wUrlRelatorioTmpPdf := dm.wPastaTmpPdf + wResult.GetValue('nomeArquivo').Value;
  //      novaAba(TFrame(TFraImpressao),'PDF',true,'');
  //      NovaAba(TFrame(TFraImpressao),'PDF', true, -1, true);

  //      btnVoltar.Click;
  //      btnPesquisar.Click;
      end
      else
      begin
        alertam.Warning(wResult.GetValue('Erro').Value);
      end;
    finally
      jsonBody.Free;
    end;
  except on e:exception do
    begin
      alertam.Error('ERRO: '+ e.Message);
    end;
  end;
end;

procedure TFrmRelCaixaConta.UniSFBitBtn8Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'DEPARTAMENTO';
  frmListaGlobal.lblDescricao.Caption := 'DEPARTAMENTOS';
  frmListaGlobal.showModal(callBackDepartamento_2);
end;

procedure TFrmRelCaixaConta.UniSFBitBtn9Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'BANCO';
  frmListaGlobal.lblDescricao.Caption := 'BANCOS';
  frmListaGlobal.showModal(callBackBancoIni_2);
end;

procedure TFrmRelCaixaConta.callBackCCustoIgnorarFin_5(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCodCcIgnorarFin_5.Text     := frmListaGlobal.CDSTela.FieldByName('CODCC').AsString;
    alertaM.info('Centro de custo selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('DESCR').AsString + '</b>');
  end;
end;

procedure TFrmRelCaixaConta.callBackCCustoIgnorarIni_5(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCodCcIgnorarIni_5.Text     := frmListaGlobal.CDSTela.FieldByName('CODCC').AsString;
    alertaM.info('Centro de custo selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('DESCR').AsString + '</b>');
  end;
end;

procedure TFrmRelCaixaConta.callBackCCustoIni_5(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCodCcIni_5.Text     := frmListaGlobal.CDSTela.FieldByName('CODCC').AsString;
    alertaM.info('Centro de custo selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('DESCR').AsString + '</b>');
  end;
end;

procedure TFrmRelCaixaConta.callBackCCustoFin_5(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCodCcFin_5.Text     := frmListaGlobal.CDSTela.FieldByName('CODCC').AsString;
    alertaM.info('Centro de custo selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('DESCR').AsString + '</b>');
  end;
end;

procedure TFrmRelCaixaConta.callBackCCusto(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODCC.Text     := frmListaGlobal.CDSTela.FieldByName('CODCC').AsString;
    alertaM.info('Centro de custo selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('DESCR').AsString + '</b>');
  end;
end;

procedure TFrmRelCaixaConta.callBackCCustoFin_2(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODCCFin_2.Text     := frmListaGlobal.CDSTela.FieldByName('CODCC').AsString;
    alertaM.info('Centro de custo selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('DESCR').AsString + '</b>');
  end;
end;

procedure TFrmRelCaixaConta.callBackCCustoIni_2(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODCCIni_2.Text     := frmListaGlobal.CDSTela.FieldByName('CODCC').AsString;
    alertaM.info('Centro de custo selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('DESCR').AsString + '</b>');
  end;
end;

procedure TFrmRelCaixaConta.callBackBanco(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODBAN.Text     := frmListaGlobal.CDSTela.FieldByName('CODBAN').AsString;
    alertaM.info('Banco selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TFrmRelCaixaConta.callBackBanco_5(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODBAN_5.Text     := frmListaGlobal.CDSTela.FieldByName('CODBAN').AsString;
    alertaM.info('Banco selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TFrmRelCaixaConta.callBackBanco_3(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODBAN_3.Text     := frmListaGlobal.CDSTela.FieldByName('CODBAN').AsString;
    alertaM.info('Banco selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TFrmRelCaixaConta.callBackBancoIni_2(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODBANINI_2.Text     := frmListaGlobal.CDSTela.FieldByName('CODBAN').AsString;
    alertaM.info('Banco selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TFrmRelCaixaConta.callBackBancoFin_2(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODBANFIN_2.Text     := frmListaGlobal.CDSTela.FieldByName('CODBAN').AsString;
    alertaM.info('Banco selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TFrmRelCaixaConta.callBackCliente_2(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCodCliPagRec_2.Text     := frmListaGlobal.CDSTela.FieldByName('CODcli').AsString;
    alertaM.info('Cliente selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TFrmRelCaixaConta.callBackCliente_5(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODCLI_5.Text     := frmListaGlobal.CDSTela.FieldByName('CODcli').AsString;
    alertaM.info('Cliente selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TFrmRelCaixaConta.callBackCliente_3(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODCLI_3.Text     := frmListaGlobal.CDSTela.FieldByName('CODcli').AsString;
    alertaM.info('Cliente selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TFrmRelCaixaConta.callBackCliente(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compNomCli.Text     := frmListaGlobal.CDSTela.FieldByName('NOME').AsString;
    compCODCLI.Text     := frmListaGlobal.CDSTela.FieldByName('CODcli').AsString;
    alertaM.info('Cliente selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TFrmRelCaixaConta.btnBancoClick(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'BANCO';
  frmListaGlobal.lblDescricao.Caption := 'BANCOS';
  frmListaGlobal.showModal(callBackBanco);
end;

procedure TFrmRelCaixaConta.btnDepartamentoClick(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'DEPARTAMENTO';
  frmListaGlobal.lblDescricao.Caption := 'DEPARTAMENTOS';
  frmListaGlobal.showModal(callBackDepartamento);
end;

procedure TFrmRelCaixaConta.btnMoedaClick(Sender: TObject);
begin
  alertam.Warning('Em manutenção');
end;

procedure TFrmRelCaixaConta.btnCCustoClick(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO';
  frmListaGlobal.lblDescricao.Caption := 'CENTROS DE CUSTOS';
  frmListaGlobal.showModal(callBackCCusto);
end;

function FrmRelCaixaConta: TFrmRelCaixaConta;
begin
  Result := TFrmRelCaixaConta(UniMainModule.GetFormInstance(TFrmRelCaixaConta));
end;

procedure TFrmRelCaixaConta.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmRelCaixaConta.btnCliClick(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CLIENTE';
  frmListaGlobal.lblDescricao.Caption := 'CLIENTES';
  frmListaGlobal.showModal(callBackCliente);
end;

end.
