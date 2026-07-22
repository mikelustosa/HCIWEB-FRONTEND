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
    comppfj: TUniSFComboBox;
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
    UniSFComboBox4: TUniSFComboBox;
    alertaM: TUniSFiGrowl;
    UniContainerPanel13: TUniContainerPanel;
    UniSFBitBtn1: TUniSFBitBtn;
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
    UniSFBitBtn7: TUniSFBitBtn;
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
    compCBIMPRIMIRORDEM: TUniSFComboBox;
    UniPanel31: TUniPanel;
    UniContainerPanel21: TUniContainerPanel;
    UniLabel19: TUniLabel;
    compCBTIPODERELATORIO: TUniSFComboBox;
    UniPanel32: TUniPanel;
    UniPanel33: TUniPanel;
    UniContainerPanel24: TUniContainerPanel;
    UniLabel20: TUniLabel;
    compCodCcFin: TUniEdit;
    UniSFBitBtn4: TUniSFBitBtn;
    UniPanel34: TUniPanel;
    UniContainerPanel25: TUniContainerPanel;
    UniLabel21: TUniLabel;
    compCodCcIni: TUniEdit;
    UniSFBitBtn3: TUniSFBitBtn;
    UniPanel35: TUniPanel;
    UniContainerPanel26: TUniContainerPanel;
    UniLabel22: TUniLabel;
    compCodCliPagRec: TUniEdit;
    UniSFBitBtn5: TUniSFBitBtn;
    UniPanel36: TUniPanel;
    UniPanel37: TUniPanel;
    UniContainerPanel27: TUniContainerPanel;
    UniLabel23: TUniLabel;
    compCODVEN: TUniEdit;
    UniSFBitBtn6: TUniSFBitBtn;
    UniPanel38: TUniPanel;
    UniContainerPanel29: TUniContainerPanel;
    UniLabel24: TUniLabel;
    compCODPR_2: TUniEdit;
    UniSFBitBtn8: TUniSFBitBtn;
    UniPanel39: TUniPanel;
    UniContainerPanel30: TUniContainerPanel;
    UniLabel25: TUniLabel;
    compCODBANINI: TUniEdit;
    UniSFBitBtn9: TUniSFBitBtn;
    UniPanel41: TUniPanel;
    UniContainerPanel31: TUniContainerPanel;
    UniLabel26: TUniLabel;
    compCODBANFIN: TUniEdit;
    UniSFBitBtn10: TUniSFBitBtn;
    UniPanel42: TUniPanel;
    UniPanel43: TUniPanel;
    UniContainerPanel32: TUniContainerPanel;
    UniLabel27: TUniLabel;
    compCONSOLIDADO: TUniSFComboBox;
    UniPanel44: TUniPanel;
    UniContainerPanel33: TUniContainerPanel;
    UniLabel28: TUniLabel;
    UniEdit5: TUniEdit;
    UniPanel45: TUniPanel;
    UniContainerPanel34: TUniContainerPanel;
    UniLabel29: TUniLabel;
    compCBRESUMIDO: TUniSFComboBox;
    UniPanel46: TUniPanel;
    UniContainerPanel22: TUniContainerPanel;
    UniSFBitBtn2: TUniSFBitBtn;
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
    compCODCLI3: TUniEdit;
    UniSFBitBtn13: TUniSFBitBtn;
    UniPanel60: TUniPanel;
    UniContainerPanel43: TUniContainerPanel;
    UniLabel39: TUniLabel;
    UniPanel61: TUniPanel;
    UniContainerPanel44: TUniContainerPanel;
    UniLabel40: TUniLabel;
    compCODBAN3: TUniEdit;
    UniSFBitBtn16: TUniSFBitBtn;
    UniPanel52: TUniPanel;
    UniContainerPanel37: TUniContainerPanel;
    UniLabel33: TUniLabel;
    UniEdit1: TUniEdit;
    UniSFBitBtn11: TUniSFBitBtn;
    UniContainerPanel38: TUniContainerPanel;
    UniSFBitBtn12: TUniSFBitBtn;
    compCBDEBCRED: TUniSFComboBox;
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
    compCBTIPODERELATORIOABC: TUniSFComboBox;
    UniPanel63: TUniPanel;
    UniContainerPanel45: TUniContainerPanel;
    UniLabel38: TUniLabel;
    compCBCONSOLIDADOABC: TUniSFComboBox;
    UniPanel64: TUniPanel;
    UniContainerPanel46: TUniContainerPanel;
    UniLabel41: TUniLabel;
    compCODCLA: TUniEdit;
    UniContainerPanel47: TUniContainerPanel;
    UniSFBitBtn14: TUniSFBitBtn;
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
    compCBTIPODERELATORIO_4: TUniSFComboBox;
    UniPanel73: TUniPanel;
    UniContainerPanel53: TUniContainerPanel;
    UniLabel47: TUniLabel;
    compCodCcIni_4: TUniEdit;
    UniSFBitBtn15: TUniSFBitBtn;
    UniPanel74: TUniPanel;
    UniContainerPanel54: TUniContainerPanel;
    UniLabel48: TUniLabel;
    compCodCcFin_4: TUniEdit;
    UniSFBitBtn17: TUniSFBitBtn;
    UniPanel75: TUniPanel;
    UniPanel76: TUniPanel;
    UniContainerPanel55: TUniContainerPanel;
    UniLabel49: TUniLabel;
    compCodCcIni_5: TUniEdit;
    UniSFBitBtn18: TUniSFBitBtn;
    UniPanel77: TUniPanel;
    UniContainerPanel56: TUniContainerPanel;
    UniLabel50: TUniLabel;
    compCodCcFin_5: TUniEdit;
    UniSFBitBtn19: TUniSFBitBtn;
    UniPanel78: TUniPanel;
    UniPanel79: TUniPanel;
    UniContainerPanel57: TUniContainerPanel;
    UniLabel51: TUniLabel;
    compDATA: TUniSFComboBox;
    UniPanel80: TUniPanel;
    UniContainerPanel58: TUniContainerPanel;
    UniLabel52: TUniLabel;
    compCONSOLIDADO_4: TUniSFComboBox;
    UniPanel81: TUniPanel;
    UniContainerPanel59: TUniContainerPanel;
    UniLabel53: TUniLabel;
    compCODPR_4: TUniEdit;
    UniSFBitBtn20: TUniSFBitBtn;
    UniPanel82: TUniPanel;
    UniContainerPanel60: TUniContainerPanel;
    UniLabel54: TUniLabel;
    compCODCLI_4: TUniEdit;
    UniSFBitBtn21: TUniSFBitBtn;
    UniPanel83: TUniPanel;
    UniContainerPanel61: TUniContainerPanel;
    UniLabel55: TUniLabel;
    compMOEDA_4: TUniEdit;
    UniSFBitBtn22: TUniSFBitBtn;
    UniPanel71: TUniPanel;
    UniContainerPanel51: TUniContainerPanel;
    UniLabel45: TUniLabel;
    compCODBAN_4: TUniEdit;
    UniSFBitBtn23: TUniSFBitBtn;
    UniPanel72: TUniPanel;
    UniPanel84: TUniPanel;
    UniPanel85: TUniPanel;
    UniPanel86: TUniPanel;
    UniContainerPanel52: TUniContainerPanel;
    UniLabel46: TUniLabel;
    compORDENACAO: TUniSFComboBox;
    UniPanel87: TUniPanel;
    UniContainerPanel62: TUniContainerPanel;
    UniLabel56: TUniLabel;
    compORDENACAOASCDESC: TUniSFComboBox;
    UniContainerPanel63: TUniContainerPanel;
    UniSFBitBtn24: TUniSFBitBtn;
    cpMenuRodape: TUniContainerPanel;
    btnCancelar: TUniSFBitBtn;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnCliClick(Sender: TObject);
    procedure btnBancoClick(Sender: TObject);
    procedure btnCCustoClick(Sender: TObject);
    procedure btnDepartamentoClick(Sender: TObject);
    procedure UniSFBitBtn1Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniSFBitBtn7Click(Sender: TObject);
    procedure UniSFBitBtn2Click(Sender: TObject);
    procedure UniSFBitBtn3Click(Sender: TObject);
    procedure UniSFBitBtn4Click(Sender: TObject);
    procedure UniSFBitBtn9Click(Sender: TObject);
    procedure UniSFBitBtn10Click(Sender: TObject);
    procedure UniSFBitBtn5Click(Sender: TObject);
    procedure UniSFBitBtn6Click(Sender: TObject);
    procedure UniSFBitBtn8Click(Sender: TObject);
    procedure UniSFBitBtn12Click(Sender: TObject);
    procedure UniSFBitBtn11Click(Sender: TObject);
    procedure UniSFBitBtn13Click(Sender: TObject);
    procedure UniSFBitBtn16Click(Sender: TObject);
    procedure UniSFBitBtn14Click(Sender: TObject);
    procedure UniSFBitBtn23Click(Sender: TObject);
    procedure UniSFBitBtn22Click(Sender: TObject);
    procedure UniSFBitBtn21Click(Sender: TObject);
    procedure UniSFBitBtn20Click(Sender: TObject);
    procedure UniSFBitBtn19Click(Sender: TObject);
    procedure UniSFBitBtn18Click(Sender: TObject);
    procedure UniSFBitBtn17Click(Sender: TObject);
    procedure UniSFBitBtn15Click(Sender: TObject);
    procedure UniSFBitBtn24Click(Sender: TObject);
  private
    { Private declarations }
    procedure callBackCliente(Sender: TComponent;
      AResult: Integer);
    procedure callBackBanco(Sender: TComponent;
      AResult: Integer);
    procedure callBackCCusto(Sender: TComponent;
      AResult: Integer);
    procedure callBackDepartamento(Sender: TComponent;
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

procedure TFrmRelCaixaConta.UniFormShow(Sender: TObject);
begin
  //impressão de caixa por cliente
  if UniPageControl1.ActivePageIndex = 0 then
  begin
    compDTINI.DateTime := date - 15;
    compDTFIN.DateTime := date;
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
    compCBIMPRIMIRORDEM.ItemIndex := 2;
    compCBTIPODERELATORIO.ItemIndex := 0;
    compCONSOLIDADO.ItemIndex := 1;
    compCBRESUMIDO.ItemIndex := 0;
  end
  //caixa por período
  else if UniPageControl1.ActivePageIndex = 3 then
  begin
    compDTINI_3.DateTime := date - 15;
    compDTFIN_3.DateTime := date;
    compCBDEBCRED.ItemIndex := 0;
  end
  //ABC cliente/fornecedor
  else if UniPageControl1.ActivePageIndex = 4 then
  begin
    compDTINI_4.DateTime := date - 15;
    compDTFIN_4.DateTime := date;
    compCBTIPODERELATORIOABC.ItemIndex := 0;
    compCBCONSOLIDADOABC.ItemIndex := 0;
    compCODCLA.Text := 'CL';
  end
  //caixa por centro de custo
  else if UniPageControl1.ActivePageIndex = 5 then
  begin
    compDTINI_5.DateTime := date - 15;
    compDTFIN_5.DateTime := date;
    compCBTIPODERELATORIO_4.ItemIndex := 0;
    compDATA.ItemIndex := 0;
    compCONSOLIDADO_4.ItemIndex := 0;
    compORDENACAO.ItemIndex := 1;
    compORDENACAOASCDESC.ItemIndex := 0;
  end;

end;

procedure TFrmRelCaixaConta.UniSFBitBtn10Click(Sender: TObject);
begin
  alertam.Warning('Em manutenção');
end;

procedure TFrmRelCaixaConta.UniSFBitBtn11Click(Sender: TObject);
begin
  alertam.Warning('Em manutenção');

end;

procedure TFrmRelCaixaConta.UniSFBitBtn12Click(Sender: TObject);
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
      jsonBody.AddPair('codCli', compCODCLI3.Text);
      //crédito
      if compCBDEBCRED.ItemIndex = 1 then
        jsonBody.AddPair('debCred', 'C')
      //débito
      else if compCBDEBCRED.ItemIndex = 2 then
        jsonBody.AddPair('debCred', 'D')
      else
        jsonBody.AddPair('debCred', '');
      jsonBody.AddPair('codBan', compCODBAN3.Text);
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
  alertam.Warning('Em manutenção');

end;

procedure TFrmRelCaixaConta.UniSFBitBtn14Click(Sender: TObject);
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
      jsonBody.AddPair('consolidado', compCBCONSOLIDADOABC.ItemIndex.ToString);
      jsonBody.AddPair('tipoDeRelatorio', compCBTIPODERELATORIOABC.ItemIndex.ToString);
      jsonBody.AddPair('codCla', compCODCLA.Text);
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
  alertam.Warning('Em manutenção');

end;

procedure TFrmRelCaixaConta.UniSFBitBtn16Click(Sender: TObject);
begin
  alertam.Warning('Em manutenção');

end;

procedure TFrmRelCaixaConta.UniSFBitBtn17Click(Sender: TObject);
begin
  alertam.Warning('Em manutenção');

end;

procedure TFrmRelCaixaConta.UniSFBitBtn18Click(Sender: TObject);
begin
  alertam.Warning('Em manutenção');

end;

procedure TFrmRelCaixaConta.UniSFBitBtn19Click(Sender: TObject);
begin
  alertam.Warning('Em manutenção');

end;

procedure TFrmRelCaixaConta.UniSFBitBtn1Click(Sender: TObject);
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
      if resp1.StatusCode = 200 then
      begin
        alertam.Success('Relatório gerado com sucesso.');

        var wResult : TJSONObject;
        wResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;

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
        alertam.Error(resp1.Content);
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
  alertam.Warning('Em manutenção');

end;

procedure TFrmRelCaixaConta.UniSFBitBtn21Click(Sender: TObject);
begin
  alertam.Warning('Em manutenção');

end;

procedure TFrmRelCaixaConta.UniSFBitBtn22Click(Sender: TObject);
begin
  alertam.Warning('Em manutenção');

end;

procedure TFrmRelCaixaConta.UniSFBitBtn23Click(Sender: TObject);
begin
  alertam.Warning('Em manutenção');
end;

procedure TFrmRelCaixaConta.UniSFBitBtn24Click(Sender: TObject);
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
      jsonBody.AddPair('tipoDeRelatorio', compCBTIPODERELATORIO_4.ItemIndex.ToString);
      jsonBody.AddPair('consolidado', compCONSOLIDADO_4.ItemIndex.ToString);
      jsonBody.AddPair('codCcustoIni', compCodCcIni_4.Text);
      jsonBody.AddPair('codCcustoFin', compCodCcFin_4.Text);
      jsonBody.AddPair('codCcustoIgnorarIni', compCodCcIni_5.Text);
      jsonBody.AddPair('codCcustoIgnorarFin', compCodCcFin_5.Text);
      jsonBody.AddPair('data', compDATA.ItemIndex.ToString);
      jsonBody.AddPair('codPr', compCODPR_4.Text);
      jsonBody.AddPair('codCli', compCODCLI_4.Text);
      jsonBody.AddPair('codBan', compCODBAN_4.Text);
      jsonBody.AddPair('ordenacaoAscDesc', compORDENACAOASCDESC.ItemIndex.ToString);
      jsonBody.AddPair('ordenacao', compORDENACAO.ItemIndex.ToString);
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

procedure TFrmRelCaixaConta.UniSFBitBtn2Click(Sender: TObject);
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
      jsonBody.AddPair('tipoDeRelatorio', compCBTIPODERELATORIO.ItemIndex.ToString);
      jsonBody.AddPair('consolidado', compCONSOLIDADO.ItemIndex.ToString);
      jsonBody.AddPair('dtIni', datetostr(compDTINI_2.DateTime));
      jsonBody.AddPair('dtFin', datetostr(compDTFIN_2.DateTime));
      jsonBody.AddPair('codCli', compCodCliPagRec.Text);
      jsonBody.AddPair('codCcIni', compCodCcIni.Text);
      jsonBody.AddPair('codCcFin', compCodCcFin.Text);
      jsonBody.AddPair('codPr', compCODPR_2.Text);
      jsonBody.AddPair('codBanIni', compCODBANINI.Text);
      jsonBody.AddPair('codBanFin', compCODBANFIN.Text);
      jsonBody.AddPair('codVen', compCODVEN.Text);
      jsonBody.AddPair('imprimirOrdem', compCBIMPRIMIRORDEM.ItemIndex.ToString);

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
  alertam.Warning('Em manutenção');
end;

procedure TFrmRelCaixaConta.UniSFBitBtn4Click(Sender: TObject);
begin
  alertam.Warning('Em manutenção');
end;

procedure TFrmRelCaixaConta.UniSFBitBtn5Click(Sender: TObject);
begin
  alertam.Warning('Em manutenção');
end;

procedure TFrmRelCaixaConta.UniSFBitBtn6Click(Sender: TObject);
begin
  alertam.Warning('Em manutenção');
end;

procedure TFrmRelCaixaConta.UniSFBitBtn7Click(Sender: TObject);
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
  alertam.Warning('Em manutenção');
end;

procedure TFrmRelCaixaConta.UniSFBitBtn9Click(Sender: TObject);
begin
  alertam.Warning('Em manutenção');
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
