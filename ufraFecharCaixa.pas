unit ufraFecharCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniFSToggle, uniButton, uniBitBtn, UniSFButton,
  UniSFBitBtn, uniPanel, uniGUIBaseClasses, uniScrollBox, uniTimer,
  URGLayoutUnigui, UniSFiGrowl, UniSFSweetAlert, uniEdit, uniLabel, UniSFLabel,
  uniBasicGrid, uniDBGrid, Data.DB, Datasnap.DBClient, uniMultiItem,
  uniComboBox, uniDateTimePicker;

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
    UniPanel18: TUniPanel;
    scrFundo: TUniScrollBox;
    cpMenuRodape: TUniContainerPanel;
    btnSalvar: TUniSFBitBtn;
    btnCancelar: TUniSFBitBtn;
    compATIVO: TUniFSToggle;
    gridTela: TUniDBGrid;
    cpPesquisa: TUniContainerPanel;
    UniPanel49: TUniPanel;
    compTOTAL: TUniEdit;
    UniContainerPanel39: TUniContainerPanel;
    UniLabel38: TUniLabel;
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
    UniPanel10: TUniPanel;
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
    UniPanel15: TUniPanel;
    UniPanel16: TUniPanel;
    UniEdit14: TUniEdit;
    UniContainerPanel15: TUniContainerPanel;
    UniLabel15: TUniLabel;
    UniPanel17: TUniPanel;
    UniEdit15: TUniEdit;
    UniContainerPanel16: TUniContainerPanel;
    UniLabel16: TUniLabel;
    UniContainerPanel19: TUniContainerPanel;
    UniLabel19: TUniLabel;
    UniContainerPanel17: TUniContainerPanel;
    UniSFLabel3: TUniSFLabel;
    UniContainerPanel18: TUniContainerPanel;
    UniSFLabel4: TUniSFLabel;
    compCAIXA: TUniEdit;
    UniContainerPanel21: TUniContainerPanel;
    UniSFLabel5: TUniSFLabel;
    UniContainerPanel25: TUniContainerPanel;
    UniSFLabel6: TUniSFLabel;
    UniContainerPanel27: TUniContainerPanel;
    UniSFLabel7: TUniSFLabel;
    UniContainerPanel28: TUniContainerPanel;
    UniSFLabel8: TUniSFLabel;
    UniEdit18: TUniEdit;
    UniContainerPanel29: TUniContainerPanel;
    UniSFLabel9: TUniSFLabel;
    UniContainerPanel30: TUniContainerPanel;
    UniSFLabel10: TUniSFLabel;
    UniContainerPanel31: TUniContainerPanel;
    UniSFLabel11: TUniSFLabel;
    UniContainerPanel32: TUniContainerPanel;
    UniSFLabel12: TUniSFLabel;
    compDtIni: TUniDateTimePicker;
    compDtFim: TUniDateTimePicker;
    UniComboBox1: TUniComboBox;
    UniPanel19: TUniPanel;
    UniSFBitBtn1: TUniSFBitBtn;
    procedure btnCancelarClick(Sender: TObject);
    procedure UniFrameReady(Sender: TObject);
    procedure UniSFBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  RESTRequest4D.Request, System.JSON, uConstantes, MainModule;

{$R *.dfm}



procedure TfraFecharCaixa.btnCancelarClick(Sender: TObject);
begin
  FreeAndNil(self);
end;

procedure TfraFecharCaixa.UniFrameReady(Sender: TObject);
begin
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

procedure TfraFecharCaixa.UniSFBitBtn1Click(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody,wJsonResult    :TJSONObject;
begin

//  result := '';
  resp1 := nil;
  wJsonResult := nil;
  try
    jsonBody := TJSONObject.Create;
    try
      try
        jsonBody.AddPair('empresa', vvCodEmp);
        jsonBody.AddPair('caixa', compCAIXA.Text);
        jsonBody.AddPair('dtIni', datetostr(compDtIni.DateTime));
        jsonBody.AddPair('dtFim', datetostr(compDtFim.DateTime));
        jsonBody.AddPair('usuario', vvNomeUsuarioLogin);

        resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(getFechaCaixaAbrirPesquisa)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddBody(jsonBody.ToString)
                .Timeout(12000)
                .Get;
        if RESP1.StatusCode = 200 then          sdf
          begin
            wJsonResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
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
          end
        else
          begin
            alerta.Error(wJsonResult.ToString);
//            weMsgOut := resp1.Content;
//            result := 'Erro na emissão da nfce. '+resp1.content;
          end;
      except on e:exception do
        begin
//          result := e.Message;
        end;
      end;
    finally
      jsonBody.Free;
    end;
  except on e:exception do
    begin
//      result := e.Message;
    end;
  end;
end;

end.
