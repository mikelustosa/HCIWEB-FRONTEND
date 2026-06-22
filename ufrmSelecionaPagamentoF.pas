unit ufrmSelecionaPagamentoF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniLabel, uniEdit, uniPanel, uniScrollBox,
  uniGUIBaseClasses, uniTimer, URGLayoutUnigui, uniButton, uniBitBtn,
  UniSFButton, UniSFBitBtn, UniSFComboBox, UniSFSweetAlert, system.json;

type
  TfrmSelecionaPagamentoF = class(TUniForm)
    cpMenuRodape: TUniContainerPanel;
    UniSFBitBtn26: TUniSFBitBtn;
    UniSFBitBtn27: TUniSFBitBtn;
    rg1: TRGLayoutUnigui;
    UniScrollBox1: TUniScrollBox;
    PN1: TUniPanel;
    UniScrollBox2: TUniScrollBox;
    UniPanel1: TUniPanel;
    compTOTALGERAL: TUniEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel48: TUniLabel;
    UniPanel13: TUniPanel;
    UniPanel2: TUniPanel;
    compVALORPAGO: TUniEdit;
    UniContainerPanel8: TUniContainerPanel;
    UniLabel3: TUniLabel;
    UniPanel3: TUniPanel;
    compTROCO: TUniEdit;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniPanel83: TUniPanel;
    UniContainerPanel77: TUniContainerPanel;
    UniLabel59: TUniLabel;
    compTIPOPAGAMENTO: TUniSFComboBox;
    UniSFBitBtn1: TUniSFBitBtn;
    alerta: TUniSFSweetAlert;
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniFormReady(Sender: TObject);
    procedure compVALORPAGOChange(Sender: TObject);
    procedure UniSFBitBtn1Click(Sender: TObject);
    procedure UniSFBitBtn27Click(Sender: TObject);
    procedure UniSFBitBtn26Click(Sender: TObject);
  private
    { Private declarations }
    faturar  :boolean;

  public
    { Public declarations }
    totalGeral :real;
  end;

function frmSelecionaPagamentoF: TfrmSelecionaPagamentoF;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uUtils, ufrmPagamentoParceladoF, ufrmPDV,
  uConstantes;

function frmSelecionaPagamentoF: TfrmSelecionaPagamentoF;
begin
  Result := TfrmSelecionaPagamentoF(UniMainModule.GetFormInstance(TfrmSelecionaPagamentoF));
end;

procedure TfrmSelecionaPagamentoF.compVALORPAGOChange(Sender: TObject);
begin
  if (strToFloatDef(compVALORPAGO.Text,0) >= totalGeral) then
  begin
    compTROCO.Text := FormatFloat('#,0.00', strtoFloatDef(compVALORPAGO.Text,0) - totalGeral);
//    vvpago := convfloat(ed_valorPago.text);
//    vvtroco := convfloat(ed_valorPago.text) - valorTotal;
  end
  else
  begin
    compTROCO.Text := '0,00';
//    vvpago := convfloat(ed_valorPago.text);
//    vvtroco := 0;
//    lb_troco.Caption := '0,00';
  end;
end;

procedure TfrmSelecionaPagamentoF.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  if canClose then
  modalResult := mrOk;
end;

procedure TfrmSelecionaPagamentoF.UniFormReady(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
//  rg1.Start;
  compTOTALGERAL.Text := FormatFloatHci(totalGeral,2);
//  compTOTALGERAL.Text := FloatToStrF(totalGeral, ffFixed, 10, 2);
//  compVALORPAGO.Text := floattostr(totalGeral);
//  compTROCO.Text := floattostrF(0, ffFixed, 10, 2);
  compTIPOPAGAMENTO.ItemIndex := 0;
  faturar := false;
end;

procedure TfrmSelecionaPagamentoF.UniSFBitBtn1Click(Sender: TObject);
begin
  faturar := false;
  limpaCookiesEditRecursivo(self);
  close;
end;

procedure TfrmSelecionaPagamentoF.UniSFBitBtn26Click(Sender: TObject);
begin
  frmPagamentoParceladoF.wTOTALGERALF := strtofloatdef(compTOTALGERAL.Text,0);
  frmPagamentoParceladoF.showmodal();
  close;
//  frmSelecionaPagamentoF.compVALORPAGO.SetFocus;
end;

procedure TfrmSelecionaPagamentoF.UniSFBitBtn27Click(Sender: TObject);
begin
  if (StrToFloatDef(compVALORPAGO.Text,0) < StrToFloatDef(compTOTALGERAL.Text,0))
  or (StrToFloatDef(compVALORPAGO.Text,0) = 0) then
  begin
    alerta.Error('O valor pago é menor do que valor da compra. '+#13+
                 'Total restante: R$ '+FloatToStr((StrToFloatDef(compVALORPAGO.Text,0) - StrToFloatDef(compTOTALGERAL.Text,0))) );
    compVALORPAGO.SetFocus;
  end
  else
  begin
//    jsonArray := TJSONArray.Create;
//
//    codigoCondPag := compCODPAG.Text;
//
//    for y := 1 to 12 do
//    begin
//      StrDias := FormatFloat('00', y);
//      compLabel := TUniLabel(FindComponent('compLN' + StrDias));
//
//      if (compLabel <> nil) and (compLabel.Visible) then
//      begin
//        jsonObject := TJSONObject.Create;
//
//        // DATA
//        compData := TUniDateTimePicker(FindComponent('compDATA' + StrDias));
//        if compData <> nil then
//          jsonObject.AddPair('data', DateToJSON(compData.DateTime))
//        else
//          jsonObject.AddPair('data', '');
//
//        // VALOR
//        compValor := TUniEdit(FindComponent('compVAL' + StrDias));
//        if compValor <> nil then
//          jsonObject.AddPair('valor', StringReplace(compValor.Text, 'R$ ', '', []))
//        else
//          jsonObject.AddPair('valor', '');
//
//        // FORMA DE PAGAMENTO
//        compPagto := TUniSFComboBox(FindComponent('compED_PAGTO' + StrDias));
//        if compPagto <> nil then
//          jsonObject.AddPair('formaPagamento', IntToStr(compPagto.ItemIndex))
//        else
//          jsonObject.AddPair('formaPagamento', '');
//
//        // CÓDIGO DA CONDIÇÃO DE PAGAMENTO
//        jsonObject.AddPair('codigoCondicaoPagamento', codigoCondPag);
//
//        // NÚMERO DA PARCELA
//        jsonObject.AddPair('parcela', IntToStr(y));
//
//        jsonArray.AddElement(jsonObject);
//      end;
//    end;
    var jTmp : TJSONObject; jTmp := TJSONObject.Create;
    var aTmp : TJSONArray; aTmp := TJSONArray.Create;

    jTmp.AddPair('data', DateToJSON(now));
    jTmp.AddPair('valor', StringReplace(compTOTALGERAL.Text, 'R$ ', '', []));
    jTmp.AddPair('formaPagamento', IntToStr(compTIPOPAGAMENTO.ItemIndex));
    jTmp.AddPair('codigoCondicaoPagamento', '0');// codigoCondPag);
    jTmp.AddPair('tipoPagamento', copy(compTIPOPAGAMENTO.Text,1,2));
    aTmp.AddElement(jTmp);

    frmPDV.JParcelasCaixa := aTmp;

    faturar := true;
    modalResult := mrOk;
  end;
end;

end.
