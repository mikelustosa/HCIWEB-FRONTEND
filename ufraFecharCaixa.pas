unit ufraFecharCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniFSToggle, uniButton, uniBitBtn, UniSFButton,
  UniSFBitBtn, uniPanel, uniGUIBaseClasses, uniScrollBox, uniTimer,
  URGLayoutUnigui, UniSFiGrowl, UniSFSweetAlert, uniEdit, uniLabel, UniSFLabel,
  uniBasicGrid, uniDBGrid, Data.DB, Datasnap.DBClient, uniMultiItem,
  uniComboBox, uniDateTimePicker, System.JSON, UniSFComboBox;

type
  TfraFecharCaixa = class(TUniFrame)
    alerta: TUniSFSweetAlert;
    alertaM: TUniSFiGrowl;
    rg1: TRGLayoutUnigui;
    rg2: TRGLayoutUnigui;
    rg3: TRGLayoutUnigui;
    rg4: TRGLayoutUnigui;
    rg5: TRGLayoutUnigui;
    rg6: TRGLayoutUnigui;
    rg7: TRGLayoutUnigui;
    CDSDados: TClientDataSet;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    CDSTela: TClientDataSet;
    CDSTelabotaoEditar: TAggregateField;
    CDSTelaiconeAtivo: TAggregateField;
    DSTela: TDataSource;
    scrFundo: TUniScrollBox;
    UniPanel18: TUniPanel;
    cpPesquisa: TUniContainerPanel;
    UniContainerPanel17: TUniContainerPanel;
    UniSFLabel3: TUniSFLabel;
    UniContainerPanel18: TUniContainerPanel;
    UniSFLabel4: TUniSFLabel;
    compCAIXA: TUniEdit;
    UniContainerPanel21: TUniContainerPanel;
    UniSFLabel5: TUniSFLabel;
    UniContainerPanel25: TUniContainerPanel;
    UniSFLabel6: TUniSFLabel;
    compDtIni: TUniDateTimePicker;
    UniContainerPanel27: TUniContainerPanel;
    UniSFLabel7: TUniSFLabel;
    UniContainerPanel28: TUniContainerPanel;
    UniSFLabel8: TUniSFLabel;
    UniEdit18: TUniEdit;
    UniContainerPanel29: TUniContainerPanel;
    UniSFLabel9: TUniSFLabel;
    UniContainerPanel30: TUniContainerPanel;
    UniSFLabel10: TUniSFLabel;
    compDtFim: TUniDateTimePicker;
    UniContainerPanel31: TUniContainerPanel;
    UniSFLabel11: TUniSFLabel;
    UniContainerPanel32: TUniContainerPanel;
    UniSFLabel12: TUniSFLabel;
    UniPanel19: TUniPanel;
    btnPesquisar: TUniSFBitBtn;
    cpMenuRodape: TUniContainerPanel;
    btnFecharCaixa: TUniSFBitBtn;
    btnCancelar: TUniSFBitBtn;
    compATIVO: TUniFSToggle;
    UniScrollBox1: TUniScrollBox;
    UniPanel20: TUniPanel;
    UniScrollBox2: TUniScrollBox;
    gridTela: TUniDBGrid;
    pnlEntradasDeCaixa: TUniPanel;
    UniPanel1: TUniPanel;
    compFLTDINHEIRO: TUniEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniPanel2: TUniPanel;
    compFLTPRAZO: TUniEdit;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel3: TUniLabel;
    UniPanel3: TUniPanel;
    compCARTAODEBITO: TUniEdit;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel4: TUniLabel;
    UniPanel4: TUniPanel;
    compCARTAOCREDITO: TUniEdit;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel5: TUniLabel;
    UniPanel5: TUniPanel;
    compCHEQUEAVISTA: TUniEdit;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniPanel6: TUniPanel;
    compCHEQUEAPRAZO: TUniEdit;
    UniContainerPanel7: TUniContainerPanel;
    UniLabel7: TUniLabel;
    UniPanel7: TUniPanel;
    compREFORCO: TUniEdit;
    UniContainerPanel8: TUniContainerPanel;
    UniLabel8: TUniLabel;
    UniPanel8: TUniPanel;
    compPIX: TUniEdit;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel9: TUniLabel;
    UniPanel9: TUniPanel;
    compOUTROS: TUniEdit;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    pnlSaidas: TUniPanel;
    UniPanel11: TUniPanel;
    compSANGRIASDINHEIRO: TUniEdit;
    UniContainerPanel11: TUniContainerPanel;
    UniLabel11: TUniLabel;
    UniPanel12: TUniPanel;
    compSANGRIASCHEQUE: TUniEdit;
    UniContainerPanel12: TUniContainerPanel;
    UniLabel12: TUniLabel;
    UniPanel13: TUniPanel;
    compDESCONTOS: TUniEdit;
    UniContainerPanel13: TUniContainerPanel;
    UniLabel13: TUniLabel;
    UniPanel14: TUniPanel;
    compDEVOLUCOES: TUniEdit;
    UniContainerPanel14: TUniContainerPanel;
    UniLabel14: TUniLabel;
    UniContainerPanel20: TUniContainerPanel;
    UniLabel20: TUniLabel;
    pnlTotais: TUniPanel;
    UniPanel16: TUniPanel;
    compDISPONIVEL: TUniEdit;
    UniContainerPanel15: TUniContainerPanel;
    UniLabel15: TUniLabel;
    UniPanel17: TUniPanel;
    compTOTALDECLARADO: TUniEdit;
    UniContainerPanel16: TUniContainerPanel;
    UniLabel16: TUniLabel;
    UniContainerPanel19: TUniContainerPanel;
    UniLabel19: TUniLabel;
    pnlValorInicial: TUniPanel;
    compVALORINICIAL: TUniEdit;
    UniContainerPanel39: TUniContainerPanel;
    UniLabel38: TUniLabel;
    cbUsuario: TUniSFComboBox;
    procedure btnCancelarClick(Sender: TObject);
    procedure UniFrameReady(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnFecharCaixaClick(Sender: TObject);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
  private
    { Private declarations }
    wIdWbFechamentoCaixa : string;
    function hFecharCaixa(weId: string; weValorDeclarado: string; out wejRet: TJSONObject): boolean;
    procedure fechaCaixaAbrirPesquisaDetalhe;
    procedure movCaixa;

  public
    { Public declarations }
  end;

implementation

uses
  RESTRequest4D.Request, uConstantes, MainModule, uUtils;

{$R *.dfm}
function TfraFecharCaixa.hFecharCaixa(weId: string; weValorDeclarado: string; out wejRet: TJSONObject): boolean;
var
  resp1       : IResponse;
  jsonBody    : TJSONObject;
begin
  Result := false;
  wejRet := nil;

  // Validações
  if weId.Trim.IsEmpty or weValorDeclarado.Trim.IsEmpty then
  begin
    wejRet := TJSONObject.Create;
    wejRet.AddPair('Erro', 'Parâmetros (id: '+weId+', valor declarado: '+weValorDeclarado+') inválidos');
    Exit;
  end;

  if baseurlCadastros.IsEmpty then
  begin
    wejRet := TJSONObject.Create;
    wejRet.AddPair('erro', 'URL base não configurada');
    Exit;
  end;
  try
    jsonBody := TJSONObject.Create;
    try
      jsonBody.AddPair('empresa', vvCodEmp);
      jsonBody.AddPair('id', weId);
      jsonBody.AddPair('fltValorDeclarado', weValorDeclarado);

      resp1 := TRequest
              .New
              .BaseURL(baseurlCadastros)
              .Resource(postFecharCaixa)
              .AddParam('nomeBanco', uniMainModule.nomebanco)
              .AddBody(jsonBody.ToString)
              .Timeout(15000)
              .Post;

      if (resp1 <> nil) and (resp1.StatusCode = 200) then
      begin
        wejRet := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;

        if wejRet <> nil then
        begin
          Result := true;
        end
        else
        begin
          wejRet := TJSONObject.Create;
          wejRet.AddPair('erro', 'Resposta inválida do servidor');
          wejRet.AddPair('detalhes', resp1.Content);
        end;
      end
      else
      begin
        wejRet := TJSONObject.Create;
        wejRet.AddPair('erro', Format('HTTP %d', [resp1.StatusCode]));
        wejRet.AddPair('detalhes', resp1.Content);
      end;

    except
      on e: Exception do
      begin
        wejRet := TJSONObject.Create;
        wejRet.AddPair('erro', 'Exceção: ' + e.Message);
        Result := false;
      end;
    end;
  finally
    jsonBody.Free;
  end;
end;

//function hFecharCaixa(weId: string; weValorDeclarado: string; out wejRet: TJSONObject): boolean;
//var
//  resp1       : IResponse;
//  jsonBody    : TJSONObject;
//  wJsonResult : TJSONObject;
//begin
//  Result := false;
//  wejRet := nil;  // IMPORTANTE: inicializar out parameter
//  resp1 := nil;
//
//  // Validações (não comente!)
//  if weId.Trim.IsEmpty or weValorDeclarado.Trim.IsEmpty then
//    Exit;
//
//  if baseurlCadastros.IsEmpty then
//    Exit;
//
//  jsonBody := TJSONObject.Create;
//  try
//    try
//      jsonBody.AddPair('empresa', vvCodEmp);
//      jsonBody.AddPair('id', weId);
//      jsonBody.AddPair('fltValorDeclarado', weValorDeclarado);
//
//      resp1 := TRequest
//              .New
//              .BaseURL(baseurlCadastros)
//              .Resource(postFecharCaixa)
//              .AddParam('nomeBanco', uniMainModule.nomebanco)
//              .AddBody(jsonBody.ToString)
//              .Timeout(15000)
//              .Post;
//
//      if (resp1 <> nil) and (resp1.StatusCode = 200) then
//      begin
//        wJsonResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
//
//        if wJsonResult <> nil then
//        begin
//          wejRet := wJsonResult;  //  transfere a propriedade
//          Result := true;
//        end
//        else
//        begin
//          // Cria um objeto de erro
//          wejRet := TJSONObject.Create;
//          wejRet.AddPair('erro', 'Resposta inválida do servidor');
//          wejRet.AddPair('conteudo', resp1.Content);
//        end;
//      end
//      else
//      begin
//        wejRet := TJSONObject.Create;
//        wejRet.AddPair('erro', Format('HTTP %d', [resp1.StatusCode]));
//      end;
//
//    except
//      on e: Exception do
//      begin
//        wejRet := TJSONObject.Create;
//        wejRet.AddPair('erro', 'Exceção: ' + e.Message);
//        Result := false;
//      end;
//    end;
//  finally
//    jsonBody.Free;
//    // NÃO libere wJsonResult aqui!
//  end;
//end;

//function hFecharCaixa(weId,weValorDeclarado:string):boolean;
//var
//  resp1       :IResponse;
//  jsonBody,wJsonResult    :TJSONObject;
//begin
//  result := false;
//  resp1 := nil;
//  wJsonResult := nil;
//  try
//    jsonBody := TJSONObject.Create;
//    try
//      try
//        jsonBody.AddPair('empresa', vvCodEmp);
//        jsonBody.AddPair('id', weId);
//        jsonBody.AddPair('fltValorDeclarado', weValorDeclarado);
//
//        resp1 := TRequest
//                .New
//                .BaseURL(baseurlCadastros)
//                .Resource(postFecharCaixa)
//                .AddParam('nomeBanco', uniMainModule.nomebanco)
//                .AddBody(jsonBody.ToString)
//                .Timeout(12000)
//                .Get;

//        if RESP1.StatusCode = 200 then
//          begin
//            result := true;
//          end;
//      except on e:exception do
//        begin
////          alerta.Error('Erro: '+e.Message);
//        end;
//      end;
//    finally
//      jsonBody.Free;
//    end;
//  except on e:exception do
//    begin
////      alerta.Error('Erro: '+e.Message);
//    end;
//  end;
//end;
procedure TfraFecharCaixa.btnCancelarClick(Sender: TObject);
begin
  FreeAndNil(self);
end;

procedure TfraFecharCaixa.UniFrameReady(Sender: TObject);
begin
  cbUsuario.Text := vvNomeUsuarioLogin;
  compCAIXA.Text := vvCaixa;
//  compCAIXA.Text := UniMainModule.vvcaixa;
  populaCombo(cbUsuario,uniMainModule.wUsuario);
  compDtIni.DateTime := now - 30;// .Text := '';
  compDtFim.DateTime := now + 1;
  btnPesquisar.Click;

//  rg1.Start;
//  rg2.Start;
//  rg3.Start;
//  rg4.Start;
//  rg5.Start;
//  rg6.Start;
//  rg7.Start;
//  rg8.Start;
//  rg9.Start;
end;

procedure TfraFecharCaixa.movCaixa;
var
  resp1       :IResponse;
  jsonBody,wJsonResult    :TJSONObject;
begin
  resp1 := nil;
  wJsonResult := nil;
  try
//    wIdWbFechamentoCaixa := '';

    gridTela.Visible := false;

//    compVALORINICIAL.Text := FormatFloat('0.00',0);
//    compFLTDINHEIRO.Text := FormatFloat('0.00',0);
//    compFLTPRAZO.Text := FormatFloat('0.00',0);
//    compCARTAODEBITO.Text := FormatFloat('0.00',0);
//    compCARTAOCREDITO.Text := '0,00';
//    compCHEQUEAVISTA.Text := FormatFloat('0.00',0);
//    compCHEQUEAPRAZO.Text := FormatFloat('0.00',0);
//    compREFORCO.Text := FormatFloat('0.00',0);
//    compPIX.Text := FormatFloat('0.00',0);
//    compOUTROS.Text := FormatFloat('0.00',0);
//    compSANGRIASDINHEIRO.Text := FormatFloat('0.00',0);
//    compSANGRIASCHEQUE.Text := FormatFloat('0.00',0);
//    compDESCONTOS.Text := FormatFloat('0.00',0);
//    compDEVOLUCOES.Text := FormatFloat('0.00',0);
//    compDISPONIVEL.Text := FormatFloat('0.00',0);
//    compTOTALDECLARADO.Text := FormatFloat('0.00',0);

    jsonBody := TJSONObject.Create;
    try
      try
//        jsonBody.AddPair('empresa', vvCodEmp);
//        jsonBody.AddPair('caixa', compCAIXA.Text);
//        jsonBody.AddPair('dtIni', datetostr(compDtIni.DateTime));
//        jsonBody.AddPair('dtFim', datetostr(compDtFim.DateTime));
        jsonBody.AddPair('usuario', vvNomeUsuarioLogin);

        resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(getMovCaixa)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddBody(jsonBody.ToString)
                .Timeout(12000)
                .Get;
        if RESP1.StatusCode = 200 then
        begin
          wJsonResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;

          if (not Assigned(wJsonResult.GetValue('Result'))) or (wJsonResult.GetValue<TJSONArray>('Result').Count = 0 ) then
          begin
            gridTela.Visible := false;
            exit;
          end;

//          wIdWbFechamentoCaixa := (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('id');

          gridTela.Visible := true;

//          compVALORINICIAL.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('valorInicial')
//                                    ,0)
//                                  );
//
//          //ENTRADAS DE CAIXA
//          compFLTDINHEIRO.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltDinheiro')
//                                    ,0)
//                                  );
//
//          compFLTPRAZO.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltPrazo')
//                                    ,0)
//                                  );
//
//          compCARTAODEBITO.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltCartaoDebito')
//                                    ,0)
//                                  );
//
//          compCARTAOCREDITO.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltCartaoCredito')
//                                    ,0)
//                                  );
//
//          compCHEQUEAVISTA.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltChequeAvista')
//                                    ,0)
//                                  );
//
//          compCHEQUEAPRAZO.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltChequeAprazo')
//                                    ,0)
//                                  );
//
//          compREFORCO.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltReforcosDinheiro')
//                                    ,0)
//                                  );
//
//          compPIX.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltPix')
//                                    ,0)
//                                  );
//
//          compOUTROS.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltOutros')
//                                    ,0)
//                                  );
//          //SAÍDAS
//          compSANGRIASDINHEIRO.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltSangriasDinheiro')
//                                    ,0)
//                                  );
//
//          compSANGRIASCHEQUE.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltSangriasCheque')
//                                    ,0)
//                                  );
//
//          compDESCONTOS.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltDescontos')
//                                    ,0)
//                                  );
//
//          compDEVOLUCOES.Text := '0.00';
          JsonToDataset(CDSTela, wJsonResult.getValue('Result').toJson);
        end
        else
        begin
          alerta.Error(wJsonResult.ToString);
        end;
      except on e:exception do
        begin
          alerta.Error('Erro: '+e.Message);
        end;
      end;
    finally
      jsonBody.Free;
    end;
  except on e:exception do
    begin
      alerta.Error('Erro: '+e.Message);
    end;
  end;
end;

procedure TfraFecharCaixa.fechaCaixaAbrirPesquisaDetalhe;
var
  resp1       :IResponse;
  jsonBody,wJsonResult    :TJSONObject;
begin
  resp1 := nil;
  wJsonResult := nil;
  try
    wIdWbFechamentoCaixa := '';

//    gridTela.Visible := false;

    compVALORINICIAL.Text := FormatFloat('0.00',0);
    compFLTDINHEIRO.Text := FormatFloat('0.00',0);
    compFLTPRAZO.Text := FormatFloat('0.00',0);
    compCARTAODEBITO.Text := FormatFloat('0.00',0);
    compCARTAOCREDITO.Text := '0,00';
    compCHEQUEAVISTA.Text := FormatFloat('0.00',0);
    compCHEQUEAPRAZO.Text := FormatFloat('0.00',0);
    compREFORCO.Text := FormatFloat('0.00',0);
    compPIX.Text := FormatFloat('0.00',0);
    compOUTROS.Text := FormatFloat('0.00',0);
    compSANGRIASDINHEIRO.Text := FormatFloat('0.00',0);
    compSANGRIASCHEQUE.Text := FormatFloat('0.00',0);
    compDESCONTOS.Text := FormatFloat('0.00',0);
    compDEVOLUCOES.Text := FormatFloat('0.00',0);
    compDISPONIVEL.Text := FormatFloat('0.00',0);
    compTOTALDECLARADO.Text := FormatFloat('0.00',0);

    jsonBody := TJSONObject.Create;
    try
      try
        jsonBody.AddPair('empresa', vvCodEmp);
        jsonBody.AddPair('caixa', CDSTela.FieldByName('incr').AsString);// compCAIXA.Text);
        jsonBody.AddPair('dtIni', '');//datetostr(compDtIni.DateTime));
        jsonBody.AddPair('dtFim', '');//datetostr(compDtFim.DateTime));
        jsonBody.AddPair('usuario', '');//vvNomeUsuarioLogin);

        resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(getFechaCaixaAbrirPesquisaDetalhe)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddBody(jsonBody.ToString)
                .Timeout(12000)
                .Get;
        if RESP1.StatusCode = 200 then
        begin
          wJsonResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;

          if (not Assigned(wJsonResult.GetValue('Result'))) or (wJsonResult.GetValue<TJSONArray>('Result').Count = 0 ) then
          begin
//            gridTela.Visible := false;
            exit;
          end;

          wIdWbFechamentoCaixa := (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('id');

//          gridTela.Visible := true;

          compVALORINICIAL.Text := FormatFloat('0.00',
                                    strtofloatDef(
                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('valorInicial')
                                    ,0)
                                  );

          //ENTRADAS DE CAIXA
          compFLTDINHEIRO.Text := FormatFloat('0.00',
                                    strtofloatDef(
                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltDinheiro')
                                    ,0)
                                  );

          compFLTPRAZO.Text := FormatFloat('0.00',
                                    strtofloatDef(
                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltPrazo')
                                    ,0)
                                  );

          compCARTAODEBITO.Text := FormatFloat('0.00',
                                    strtofloatDef(
                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltCartaoDebito')
                                    ,0)
                                  );

          compCARTAOCREDITO.Text := FormatFloat('0.00',
                                    strtofloatDef(
                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltCartaoCredito')
                                    ,0)
                                  );

          compCHEQUEAVISTA.Text := FormatFloat('0.00',
                                    strtofloatDef(
                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltChequeAvista')
                                    ,0)
                                  );

          compCHEQUEAPRAZO.Text := FormatFloat('0.00',
                                    strtofloatDef(
                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltChequeAprazo')
                                    ,0)
                                  );

          compREFORCO.Text := FormatFloat('0.00',
                                    strtofloatDef(
                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltReforcosDinheiro')
                                    ,0)
                                  );

          compPIX.Text := FormatFloat('0.00',
                                    strtofloatDef(
                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltPix')
                                    ,0)
                                  );

          compOUTROS.Text := FormatFloat('0.00',
                                    strtofloatDef(
                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltOutros')
                                    ,0)
                                  );
          //SAÍDAS
          compSANGRIASDINHEIRO.Text := FormatFloat('0.00',
                                    strtofloatDef(
                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltSangriasDinheiro')
                                    ,0)
                                  );

          compSANGRIASCHEQUE.Text := FormatFloat('0.00',
                                    strtofloatDef(
                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltSangriasCheque')
                                    ,0)
                                  );

          compDESCONTOS.Text := FormatFloat('0.00',
                                    strtofloatDef(
                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltDescontos')
                                    ,0)
                                  );

          compDEVOLUCOES.Text := '0.00';
//          JsonToDataset(CDSTela, wJsonResult.getValue('Result').toJson);
        end
        else
        begin
          alerta.Error(wJsonResult.ToString);
        end;
      except on e:exception do
        begin
          alerta.Error('Erro: '+e.Message);
        end;
      end;
    finally
      jsonBody.Free;
    end;
  except on e:exception do
    begin
      alerta.Error('Erro: '+e.Message);
    end;
  end;
end;

procedure TfraFecharCaixa.btnPesquisarClick(Sender: TObject);
//var
//  resp1       :IResponse;
//  jsonBody,wJsonResult    :TJSONObject;
begin
  movCaixa;
//  fechaCaixaAbrirPesquisa;
//  resp1 := nil;
//  wJsonResult := nil;
//  try
//    wIdWbFechamentoCaixa := '';
//
//    gridTela.Visible := false;
//
//    compVALORINICIAL.Text := FormatFloat('0.00',0);
//    compFLTDINHEIRO.Text := FormatFloat('0.00',0);
//    compFLTPRAZO.Text := FormatFloat('0.00',0);
//    compCARTAODEBITO.Text := FormatFloat('0.00',0);
//    compCARTAOCREDITO.Text := '0,00';
//    compCHEQUEAVISTA.Text := FormatFloat('0.00',0);
//    compCHEQUEAPRAZO.Text := FormatFloat('0.00',0);
//    compREFORCO.Text := FormatFloat('0.00',0);
//    compPIX.Text := FormatFloat('0.00',0);
//    compOUTROS.Text := FormatFloat('0.00',0);
//    compSANGRIASDINHEIRO.Text := FormatFloat('0.00',0);
//    compSANGRIASCHEQUE.Text := FormatFloat('0.00',0);
//    compDESCONTOS.Text := FormatFloat('0.00',0);
//    compDEVOLUCOES.Text := FormatFloat('0.00',0);
//    compDISPONIVEL.Text := FormatFloat('0.00',0);
//    compTOTALDECLARADO.Text := FormatFloat('0.00',0);
//
//    jsonBody := TJSONObject.Create;
//    try
//      try
//        jsonBody.AddPair('empresa', vvCodEmp);
//        jsonBody.AddPair('caixa', compCAIXA.Text);
//        jsonBody.AddPair('dtIni', datetostr(compDtIni.DateTime));
//        jsonBody.AddPair('dtFim', datetostr(compDtFim.DateTime));
//        jsonBody.AddPair('usuario', vvNomeUsuarioLogin);
//
//        resp1 := TRequest
//                .New
//                .BaseURL(baseurlCadastros)
//                .Resource(getFechaCaixaAbrirPesquisa)
//                .AddParam('nomeBanco', uniMainModule.nomebanco)
//                .AddBody(jsonBody.ToString)
//                .Timeout(12000)
//                .Get;
//        if RESP1.StatusCode = 200 then
//        begin
//          wJsonResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
//
//          if (not Assigned(wJsonResult.GetValue('Result'))) or (wJsonResult.GetValue<TJSONArray>('Result').Count = 0 ) then
//          begin
//            gridTela.Visible := false;
//            exit;
//          end;
//
//          wIdWbFechamentoCaixa := (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('id');
//
//          gridTela.Visible := true;
//
//          compVALORINICIAL.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('valorInicial')
//                                    ,0)
//                                  );
//
//          //ENTRADAS DE CAIXA
//          compFLTDINHEIRO.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltDinheiro')
//                                    ,0)
//                                  );
//
//          compFLTPRAZO.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltPrazo')
//                                    ,0)
//                                  );
//
//          compCARTAODEBITO.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltCartaoDebito')
//                                    ,0)
//                                  );
//
//          compCARTAOCREDITO.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltCartaoCredito')
//                                    ,0)
//                                  );
//
//          compCHEQUEAVISTA.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltChequeAvista')
//                                    ,0)
//                                  );
//
//          compCHEQUEAPRAZO.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltChequeAprazo')
//                                    ,0)
//                                  );
//
//          compREFORCO.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltReforcosDinheiro')
//                                    ,0)
//                                  );
//
//          compPIX.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltPix')
//                                    ,0)
//                                  );
//
//          compOUTROS.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltOutros')
//                                    ,0)
//                                  );
//          //SAÍDAS
//          compSANGRIASDINHEIRO.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltSangriasDinheiro')
//                                    ,0)
//                                  );
//
//          compSANGRIASCHEQUE.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltSangriasCheque')
//                                    ,0)
//                                  );
//
//          compDESCONTOS.Text := FormatFloat('0.00',
//                                    strtofloatDef(
//                                      (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltDescontos')
//                                    ,0)
//                                  );
//
//          compDEVOLUCOES.Text := '0.00';
//          JsonToDataset(CDSTela, wJsonResult.getValue('Result').toJson);
//        end
//        else
//        begin
//          alerta.Error(wJsonResult.ToString);
//        end;
//      except on e:exception do
//        begin
//          alerta.Error('Erro: '+e.Message);
//        end;
//      end;
//    finally
//      jsonBody.Free;
//    end;
//  except on e:exception do
//    begin
//      alerta.Error('Erro: '+e.Message);
//    end;
//  end;
end;

procedure TfraFecharCaixa.btnFecharCaixaClick(Sender: TObject);
var
wjRet : TJSONObject;
begin
  if CDSTela.FieldByName('Status').AsString.ToUpper = 'FECHADO' then
  begin
    alerta.Warning('O Caixa já está fechado.');
    exit;
  end;

  try
    wjRet := TJSONObject.Create;
    if hFecharCaixa(CDSTela.FieldByName('id').AsString.Trim, compTOTALDECLARADO.Text, wjRet) then
    begin
      alerta.Success('Caixa fechado com sucesso.');
      btnPesquisar.Click;
    end
    else
    begin
      alerta.Error(wjRet.ToString);
    end;
  finally
    if Assigned(wjRet) then
      wjRet.Free;
  end;
//  resp1 := nil;
//  wJsonResult := nil;
//  try
//    jsonBody := TJSONObject.Create;
//    try
//      try
//        jsonBody.AddPair('empresa', vvCodEmp);
//        jsonBody.AddPair('caixa', compCAIXA.Text);
//        jsonBody.AddPair('dtIni', datetostr(compDtIni.DateTime));
//        jsonBody.AddPair('dtFim', datetostr(compDtFim.DateTime));
//        jsonBody.AddPair('usuario', vvNomeUsuarioLogin);
//
//        resp1 := TRequest
//                .New
//                .BaseURL(baseurlCadastros)
//                .Resource(getFechaCaixaAbrirPesquisa)
//                .AddParam('nomeBanco', uniMainModule.nomebanco)
//                .AddBody(jsonBody.ToString)
//                .Timeout(12000)
//                .Get;
//        if RESP1.StatusCode = 200 then
//          begin
//            wJsonResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
//
//            wIdWbFechamentoCaixa := (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('id');
//
//            compVALORINICIAL.Text := FormatFloat('0.00',
//                                      strtofloatDef(
//                                        (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('valorInicial')
//                                      ,0)
//                                    );
//
//            //ENTRADAS DE CAIXA
//            compFLTDINHEIRO.Text := FormatFloat('0.00',
//                                      strtofloatDef(
//                                        (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltDinheiro')
//                                      ,0)
//                                    );
//
//            compFLTPRAZO.Text := FormatFloat('0.00',
//                                      strtofloatDef(
//                                        (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltPrazo')
//                                      ,0)
//                                    );
//
//            compCARTAODEBITO.Text := FormatFloat('0.00',
//                                      strtofloatDef(
//                                        (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltCartaoDebito')
//                                      ,0)
//                                    );
//
//            compCARTAOCREDITO.Text := FormatFloat('0.00',
//                                      strtofloatDef(
//                                        (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltCartaoCredito')
//                                      ,0)
//                                    );
//
//            compCHEQUEAVISTA.Text := FormatFloat('0.00',
//                                      strtofloatDef(
//                                        (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltChequeAvista')
//                                      ,0)
//                                    );
//
//            compCHEQUEAPRAZO.Text := FormatFloat('0.00',
//                                      strtofloatDef(
//                                        (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltChequeAprazo')
//                                      ,0)
//                                    );
//
//            compREFORCO.Text := FormatFloat('0.00',
//                                      strtofloatDef(
//                                        (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltReforcosDinheiro')
//                                      ,0)
//                                    );
//
//            compPIX.Text := FormatFloat('0.00',
//                                      strtofloatDef(
//                                        (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltPix')
//                                      ,0)
//                                    );
//
//            compOUTROS.Text := FormatFloat('0.00',
//                                      strtofloatDef(
//                                        (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltOutros')
//                                      ,0)
//                                    );
//            //SAÍDAS
//            compSANGRIASDINHEIRO.Text := FormatFloat('0.00',
//                                      strtofloatDef(
//                                        (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltSangriasDinheiro')
//                                      ,0)
//                                    );
//
//            compSANGRIASCHEQUE.Text := FormatFloat('0.00',
//                                      strtofloatDef(
//                                        (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltSangriasCheque')
//                                      ,0)
//                                    );
//
//            compDESCONTOS.Text := FormatFloat('0.00',
//                                      strtofloatDef(
//                                        (wJsonResult.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('fltDescontos')
//                                      ,0)
//                                    );
//
//            compDEVOLUCOES.Text := '0.00';
//          end
//        else
//          begin
//            alerta.Error(wJsonResult.ToString);
//          end;
//      except on e:exception do
//        begin
//          alerta.Error('Erro: '+e.Message);
//        end;
//      end;
//    finally
//      jsonBody.Free;
//    end;
//  except on e:exception do
//    begin
//      alerta.Error('Erro: '+e.Message);
//    end;
//  end;
end;

procedure TfraFecharCaixa.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Detalhe', 'editar', 'dc3545');
end;

procedure TfraFecharCaixa.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if CDSTela.FieldByName('status').AsString.Trim.ToUpper = 'ABERTO' then
  begin
    compTOTALDECLARADO.Enabled := true;
  end
  else
  begin
    compTOTALDECLARADO.Enabled := false;
  end;

  if column.Field = CDSTelabotaoEditar then
  begin
    fechaCaixaAbrirPesquisaDetalhe;

//    pgcTela.ActivePageIndex := 1;
//    carregaDados;
  end;
end;

procedure TfraFecharCaixa.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

end.
