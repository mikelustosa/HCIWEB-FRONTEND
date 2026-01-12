unit ufrmPagamentoParceladoF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, UniSFComboBox, uniLabel, uniEdit, uniPanel,
  uniScrollBox, uniGUIBaseClasses, uniTimer, URGLayoutUnigui, uniButton,
  uniBitBtn, UniSFButton, UniSFBitBtn, uniDateTimePicker, UniSFiGrowl;

type
  TfrmPagamentoParceladoF = class(TUniForm)
    cpMenuRodape: TUniContainerPanel;
    UniSFBitBtn27: TUniSFBitBtn;
    UniSFBitBtn1: TUniSFBitBtn;
    rg1: TRGLayoutUnigui;
    UniScrollBox1: TUniScrollBox;
    PN1: TUniPanel;
    UniScrollBox2: TUniScrollBox;
    cpMenuTopo: TUniContainerPanel;
    UniPanel4: TUniPanel;
    compTOTALGERALF: TUniEdit;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniPanel41: TUniPanel;
    compCODPAG: TUniEdit;
    UniContainerPanel40: TUniContainerPanel;
    UniLabel33: TUniLabel;
    UniPanel5: TUniPanel;
    compDESCRPG: TUniEdit;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel4: TUniLabel;
    UniPanel6: TUniPanel;
    compNUMPARC: TUniEdit;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel5: TUniLabel;
    compLN1: TUniPanel;
    UniPanel11: TUniPanel;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel9: TUniLabel;
    UniSFComboBox1: TUniSFComboBox;
    UniPanel93: TUniPanel;
    UniContainerPanel81: TUniContainerPanel;
    UniLabel34: TUniLabel;
    UniEdit65: TUniEdit;
    UniPanel92: TUniPanel;
    compCODCC_L1: TUniEdit;
    UniContainerPanel80: TUniContainerPanel;
    UniLabel32: TUniLabel;
    UniPanel91: TUniPanel;
    UniContainerPanel79: TUniContainerPanel;
    UniLabel31: TUniLabel;
    UniEdit64: TUniEdit;
    UniPanel14: TUniPanel;
    UniEdit8: TUniEdit;
    UniContainerPanel12: TUniContainerPanel;
    UniPanel90: TUniPanel;
    UniContainerPanel78: TUniContainerPanel;
    UniLabel30: TUniLabel;
    UniEdit63: TUniEdit;
    UniPanel12: TUniPanel;
    UniEdit7: TUniEdit;
    UniContainerPanel11: TUniContainerPanel;
    UniPanel3: TUniPanel;
    UniContainerPanel1: TUniContainerPanel;
    UniDateTimePicker1: TUniDateTimePicker;
    UniPanel89: TUniPanel;
    UniContainerPanel77: TUniContainerPanel;
    UniLabel29: TUniLabel;
    UniEdit62: TUniEdit;
    UniPanel2: TUniPanel;
    compVALORPAGO: TUniEdit;
    UniContainerPanel8: TUniContainerPanel;
    UniPanel1: TUniPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel48: TUniLabel;
    UniEdit61: TUniEdit;
    compLN2: TUniPanel;
    UniPanel8: TUniPanel;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniSFComboBox2: TUniSFComboBox;
    UniPanel9: TUniPanel;
    UniContainerPanel7: TUniContainerPanel;
    UniLabel3: TUniLabel;
    UniEdit4: TUniEdit;
    UniPanel10: TUniPanel;
    compCODCC_L2: TUniEdit;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniSFBitBtn4: TUniSFBitBtn;
    UniPanel13: TUniPanel;
    UniContainerPanel13: TUniContainerPanel;
    UniLabel7: TUniLabel;
    UniEdit6: TUniEdit;
    UniPanel15: TUniPanel;
    UniEdit9: TUniEdit;
    UniContainerPanel14: TUniContainerPanel;
    UniPanel16: TUniPanel;
    UniContainerPanel15: TUniContainerPanel;
    UniLabel8: TUniLabel;
    UniEdit10: TUniEdit;
    UniPanel17: TUniPanel;
    UniEdit11: TUniEdit;
    UniContainerPanel16: TUniContainerPanel;
    UniPanel18: TUniPanel;
    UniContainerPanel17: TUniContainerPanel;
    UniDateTimePicker2: TUniDateTimePicker;
    UniPanel19: TUniPanel;
    UniContainerPanel18: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniEdit12: TUniEdit;
    UniPanel20: TUniPanel;
    UniEdit13: TUniEdit;
    UniContainerPanel19: TUniContainerPanel;
    UniPanel21: TUniPanel;
    UniContainerPanel20: TUniContainerPanel;
    UniLabel11: TUniLabel;
    UniEdit14: TUniEdit;
    compLN3: TUniPanel;
    UniPanel23: TUniPanel;
    UniContainerPanel21: TUniContainerPanel;
    UniLabel12: TUniLabel;
    UniSFComboBox3: TUniSFComboBox;
    UniPanel25: TUniPanel;
    UniContainerPanel22: TUniContainerPanel;
    UniLabel13: TUniLabel;
    UniEdit15: TUniEdit;
    UniPanel26: TUniPanel;
    compCODCC_L3: TUniEdit;
    UniContainerPanel23: TUniContainerPanel;
    UniLabel14: TUniLabel;
    UniSFBitBtn5: TUniSFBitBtn;
    UniPanel27: TUniPanel;
    UniContainerPanel24: TUniContainerPanel;
    UniLabel15: TUniLabel;
    UniEdit17: TUniEdit;
    UniPanel28: TUniPanel;
    UniEdit18: TUniEdit;
    UniContainerPanel25: TUniContainerPanel;
    UniPanel29: TUniPanel;
    UniContainerPanel26: TUniContainerPanel;
    UniLabel16: TUniLabel;
    UniEdit19: TUniEdit;
    UniPanel30: TUniPanel;
    UniEdit20: TUniEdit;
    UniContainerPanel27: TUniContainerPanel;
    UniPanel32: TUniPanel;
    UniContainerPanel28: TUniContainerPanel;
    UniDateTimePicker3: TUniDateTimePicker;
    UniPanel33: TUniPanel;
    UniContainerPanel29: TUniContainerPanel;
    UniLabel17: TUniLabel;
    UniEdit21: TUniEdit;
    UniPanel34: TUniPanel;
    UniEdit22: TUniEdit;
    UniContainerPanel30: TUniContainerPanel;
    UniPanel35: TUniPanel;
    UniContainerPanel31: TUniContainerPanel;
    UniLabel18: TUniLabel;
    UniEdit23: TUniEdit;
    compLN4: TUniPanel;
    UniPanel37: TUniPanel;
    UniContainerPanel32: TUniContainerPanel;
    UniLabel19: TUniLabel;
    UniSFComboBox4: TUniSFComboBox;
    UniPanel39: TUniPanel;
    UniContainerPanel33: TUniContainerPanel;
    UniLabel20: TUniLabel;
    UniEdit24: TUniEdit;
    UniPanel40: TUniPanel;
    compCODCC_L4: TUniEdit;
    UniContainerPanel34: TUniContainerPanel;
    UniLabel21: TUniLabel;
    UniSFBitBtn6: TUniSFBitBtn;
    UniPanel42: TUniPanel;
    UniContainerPanel35: TUniContainerPanel;
    UniLabel22: TUniLabel;
    UniEdit26: TUniEdit;
    UniPanel43: TUniPanel;
    UniEdit27: TUniEdit;
    UniContainerPanel36: TUniContainerPanel;
    UniPanel44: TUniPanel;
    UniContainerPanel37: TUniContainerPanel;
    UniLabel23: TUniLabel;
    UniEdit28: TUniEdit;
    UniPanel45: TUniPanel;
    UniEdit29: TUniEdit;
    UniContainerPanel38: TUniContainerPanel;
    UniPanel47: TUniPanel;
    UniContainerPanel39: TUniContainerPanel;
    UniDateTimePicker4: TUniDateTimePicker;
    UniPanel48: TUniPanel;
    UniContainerPanel41: TUniContainerPanel;
    UniLabel24: TUniLabel;
    UniEdit30: TUniEdit;
    UniPanel49: TUniPanel;
    UniEdit31: TUniEdit;
    UniContainerPanel42: TUniContainerPanel;
    UniPanel50: TUniPanel;
    UniContainerPanel43: TUniContainerPanel;
    UniLabel25: TUniLabel;
    UniEdit32: TUniEdit;
    compLN5: TUniPanel;
    UniPanel52: TUniPanel;
    UniContainerPanel44: TUniContainerPanel;
    UniLabel26: TUniLabel;
    UniSFComboBox5: TUniSFComboBox;
    UniPanel54: TUniPanel;
    UniContainerPanel45: TUniContainerPanel;
    UniLabel27: TUniLabel;
    UniEdit33: TUniEdit;
    UniPanel55: TUniPanel;
    compCODCC_L5: TUniEdit;
    UniContainerPanel46: TUniContainerPanel;
    UniLabel28: TUniLabel;
    UniSFBitBtn7: TUniSFBitBtn;
    UniPanel56: TUniPanel;
    UniContainerPanel47: TUniContainerPanel;
    UniLabel35: TUniLabel;
    UniEdit35: TUniEdit;
    UniPanel57: TUniPanel;
    UniEdit36: TUniEdit;
    UniContainerPanel48: TUniContainerPanel;
    UniPanel58: TUniPanel;
    UniContainerPanel49: TUniContainerPanel;
    UniLabel36: TUniLabel;
    UniEdit37: TUniEdit;
    UniPanel59: TUniPanel;
    UniEdit38: TUniEdit;
    UniContainerPanel50: TUniContainerPanel;
    UniPanel61: TUniPanel;
    UniContainerPanel51: TUniContainerPanel;
    UniDateTimePicker5: TUniDateTimePicker;
    UniPanel62: TUniPanel;
    UniContainerPanel52: TUniContainerPanel;
    UniLabel37: TUniLabel;
    UniEdit39: TUniEdit;
    UniPanel63: TUniPanel;
    UniEdit40: TUniEdit;
    UniContainerPanel53: TUniContainerPanel;
    UniPanel64: TUniPanel;
    UniContainerPanel54: TUniContainerPanel;
    UniLabel38: TUniLabel;
    UniEdit41: TUniEdit;
    compLN6: TUniPanel;
    UniPanel66: TUniPanel;
    UniContainerPanel55: TUniContainerPanel;
    UniLabel39: TUniLabel;
    UniSFComboBox6: TUniSFComboBox;
    UniPanel68: TUniPanel;
    UniContainerPanel56: TUniContainerPanel;
    UniLabel40: TUniLabel;
    UniEdit42: TUniEdit;
    UniPanel69: TUniPanel;
    compCODCC_L6: TUniEdit;
    UniContainerPanel57: TUniContainerPanel;
    UniLabel41: TUniLabel;
    UniSFBitBtn8: TUniSFBitBtn;
    UniPanel70: TUniPanel;
    UniContainerPanel58: TUniContainerPanel;
    UniLabel42: TUniLabel;
    UniEdit44: TUniEdit;
    UniPanel71: TUniPanel;
    UniEdit45: TUniEdit;
    UniContainerPanel59: TUniContainerPanel;
    UniPanel72: TUniPanel;
    UniContainerPanel60: TUniContainerPanel;
    UniLabel43: TUniLabel;
    UniEdit46: TUniEdit;
    UniPanel73: TUniPanel;
    UniEdit47: TUniEdit;
    UniContainerPanel61: TUniContainerPanel;
    UniPanel75: TUniPanel;
    UniContainerPanel62: TUniContainerPanel;
    UniDateTimePicker6: TUniDateTimePicker;
    UniPanel76: TUniPanel;
    UniContainerPanel63: TUniContainerPanel;
    UniLabel44: TUniLabel;
    UniEdit48: TUniEdit;
    UniPanel77: TUniPanel;
    UniEdit49: TUniEdit;
    UniContainerPanel64: TUniContainerPanel;
    UniPanel78: TUniPanel;
    UniContainerPanel65: TUniContainerPanel;
    UniLabel45: TUniLabel;
    UniEdit50: TUniEdit;
    compLN7: TUniPanel;
    UniPanel80: TUniPanel;
    UniContainerPanel66: TUniContainerPanel;
    UniLabel46: TUniLabel;
    UniSFComboBox7: TUniSFComboBox;
    UniPanel82: TUniPanel;
    UniContainerPanel67: TUniContainerPanel;
    UniLabel47: TUniLabel;
    UniEdit51: TUniEdit;
    UniPanel83: TUniPanel;
    compCODCC_L7: TUniEdit;
    UniContainerPanel68: TUniContainerPanel;
    UniLabel49: TUniLabel;
    UniSFBitBtn9: TUniSFBitBtn;
    UniPanel84: TUniPanel;
    UniContainerPanel69: TUniContainerPanel;
    UniLabel50: TUniLabel;
    UniEdit53: TUniEdit;
    UniPanel85: TUniPanel;
    UniEdit54: TUniEdit;
    UniContainerPanel70: TUniContainerPanel;
    UniPanel86: TUniPanel;
    UniContainerPanel71: TUniContainerPanel;
    UniLabel51: TUniLabel;
    UniEdit55: TUniEdit;
    UniPanel87: TUniPanel;
    UniEdit56: TUniEdit;
    UniContainerPanel72: TUniContainerPanel;
    UniPanel94: TUniPanel;
    UniContainerPanel73: TUniContainerPanel;
    UniDateTimePicker7: TUniDateTimePicker;
    UniPanel95: TUniPanel;
    UniContainerPanel74: TUniContainerPanel;
    UniLabel52: TUniLabel;
    UniEdit57: TUniEdit;
    UniPanel96: TUniPanel;
    UniEdit58: TUniEdit;
    UniContainerPanel75: TUniContainerPanel;
    UniPanel97: TUniPanel;
    UniContainerPanel76: TUniContainerPanel;
    UniLabel53: TUniLabel;
    UniEdit59: TUniEdit;
    compLN8: TUniPanel;
    UniPanel99: TUniPanel;
    UniContainerPanel82: TUniContainerPanel;
    UniLabel54: TUniLabel;
    UniSFComboBox8: TUniSFComboBox;
    UniPanel100: TUniPanel;
    UniContainerPanel83: TUniContainerPanel;
    UniLabel55: TUniLabel;
    UniEdit60: TUniEdit;
    UniPanel101: TUniPanel;
    compCODCC_L8: TUniEdit;
    UniContainerPanel84: TUniContainerPanel;
    UniLabel56: TUniLabel;
    UniSFBitBtn10: TUniSFBitBtn;
    UniPanel102: TUniPanel;
    UniContainerPanel85: TUniContainerPanel;
    UniLabel57: TUniLabel;
    UniEdit67: TUniEdit;
    UniPanel103: TUniPanel;
    UniEdit68: TUniEdit;
    UniContainerPanel86: TUniContainerPanel;
    UniPanel104: TUniPanel;
    UniContainerPanel87: TUniContainerPanel;
    UniLabel58: TUniLabel;
    UniEdit69: TUniEdit;
    UniPanel105: TUniPanel;
    UniEdit70: TUniEdit;
    UniContainerPanel88: TUniContainerPanel;
    UniPanel106: TUniPanel;
    UniContainerPanel89: TUniContainerPanel;
    UniDateTimePicker8: TUniDateTimePicker;
    UniPanel107: TUniPanel;
    UniContainerPanel90: TUniContainerPanel;
    UniLabel59: TUniLabel;
    UniEdit71: TUniEdit;
    UniPanel108: TUniPanel;
    UniEdit72: TUniEdit;
    UniContainerPanel91: TUniContainerPanel;
    UniPanel109: TUniPanel;
    UniContainerPanel92: TUniContainerPanel;
    UniLabel60: TUniLabel;
    UniEdit73: TUniEdit;
    compLN9: TUniPanel;
    UniPanel111: TUniPanel;
    UniContainerPanel93: TUniContainerPanel;
    UniLabel61: TUniLabel;
    UniSFComboBox9: TUniSFComboBox;
    UniPanel112: TUniPanel;
    UniContainerPanel94: TUniContainerPanel;
    UniLabel62: TUniLabel;
    UniEdit74: TUniEdit;
    UniPanel113: TUniPanel;
    compCODCC_L9: TUniEdit;
    UniContainerPanel95: TUniContainerPanel;
    UniLabel63: TUniLabel;
    UniSFBitBtn11: TUniSFBitBtn;
    UniPanel114: TUniPanel;
    UniContainerPanel96: TUniContainerPanel;
    UniLabel64: TUniLabel;
    UniEdit76: TUniEdit;
    UniPanel115: TUniPanel;
    UniEdit77: TUniEdit;
    UniContainerPanel97: TUniContainerPanel;
    UniPanel116: TUniPanel;
    UniContainerPanel98: TUniContainerPanel;
    UniLabel65: TUniLabel;
    UniEdit78: TUniEdit;
    UniPanel117: TUniPanel;
    UniEdit79: TUniEdit;
    UniContainerPanel99: TUniContainerPanel;
    UniPanel118: TUniPanel;
    UniContainerPanel100: TUniContainerPanel;
    UniDateTimePicker9: TUniDateTimePicker;
    UniPanel119: TUniPanel;
    UniContainerPanel101: TUniContainerPanel;
    UniLabel66: TUniLabel;
    UniEdit80: TUniEdit;
    UniPanel120: TUniPanel;
    UniEdit81: TUniEdit;
    UniContainerPanel102: TUniContainerPanel;
    UniPanel121: TUniPanel;
    UniContainerPanel103: TUniContainerPanel;
    UniLabel67: TUniLabel;
    UniEdit82: TUniEdit;
    compLN10: TUniPanel;
    UniPanel123: TUniPanel;
    UniContainerPanel104: TUniContainerPanel;
    UniLabel68: TUniLabel;
    UniSFComboBox10: TUniSFComboBox;
    UniPanel124: TUniPanel;
    UniContainerPanel105: TUniContainerPanel;
    UniLabel69: TUniLabel;
    UniEdit83: TUniEdit;
    UniPanel125: TUniPanel;
    compCODCC_L10: TUniEdit;
    UniContainerPanel106: TUniContainerPanel;
    UniLabel70: TUniLabel;
    UniSFBitBtn12: TUniSFBitBtn;
    UniPanel126: TUniPanel;
    UniContainerPanel107: TUniContainerPanel;
    UniLabel71: TUniLabel;
    UniEdit85: TUniEdit;
    UniPanel127: TUniPanel;
    UniEdit86: TUniEdit;
    UniContainerPanel108: TUniContainerPanel;
    UniPanel128: TUniPanel;
    UniContainerPanel109: TUniContainerPanel;
    UniLabel72: TUniLabel;
    UniEdit87: TUniEdit;
    UniPanel129: TUniPanel;
    UniEdit88: TUniEdit;
    UniContainerPanel110: TUniContainerPanel;
    UniPanel130: TUniPanel;
    UniContainerPanel111: TUniContainerPanel;
    UniDateTimePicker10: TUniDateTimePicker;
    UniPanel131: TUniPanel;
    UniContainerPanel112: TUniContainerPanel;
    UniLabel73: TUniLabel;
    UniEdit89: TUniEdit;
    UniPanel132: TUniPanel;
    UniEdit90: TUniEdit;
    UniContainerPanel113: TUniContainerPanel;
    UniPanel133: TUniPanel;
    UniContainerPanel114: TUniContainerPanel;
    UniLabel74: TUniLabel;
    UniEdit91: TUniEdit;
    compLN11: TUniPanel;
    UniPanel135: TUniPanel;
    UniContainerPanel115: TUniContainerPanel;
    UniLabel75: TUniLabel;
    UniSFComboBox11: TUniSFComboBox;
    UniPanel136: TUniPanel;
    UniContainerPanel116: TUniContainerPanel;
    UniLabel76: TUniLabel;
    UniEdit92: TUniEdit;
    UniPanel137: TUniPanel;
    compCODCC_L11: TUniEdit;
    UniContainerPanel117: TUniContainerPanel;
    UniLabel77: TUniLabel;
    UniSFBitBtn13: TUniSFBitBtn;
    UniPanel138: TUniPanel;
    UniContainerPanel118: TUniContainerPanel;
    UniLabel78: TUniLabel;
    UniEdit94: TUniEdit;
    UniPanel139: TUniPanel;
    UniEdit95: TUniEdit;
    UniContainerPanel119: TUniContainerPanel;
    UniPanel140: TUniPanel;
    UniContainerPanel120: TUniContainerPanel;
    UniLabel79: TUniLabel;
    UniEdit96: TUniEdit;
    UniPanel141: TUniPanel;
    UniEdit97: TUniEdit;
    UniContainerPanel121: TUniContainerPanel;
    UniPanel142: TUniPanel;
    UniContainerPanel122: TUniContainerPanel;
    UniDateTimePicker11: TUniDateTimePicker;
    UniPanel143: TUniPanel;
    UniContainerPanel123: TUniContainerPanel;
    UniLabel80: TUniLabel;
    UniEdit98: TUniEdit;
    UniPanel144: TUniPanel;
    UniEdit99: TUniEdit;
    UniContainerPanel124: TUniContainerPanel;
    UniPanel145: TUniPanel;
    UniContainerPanel125: TUniContainerPanel;
    UniLabel81: TUniLabel;
    UniEdit100: TUniEdit;
    compLN12: TUniPanel;
    UniPanel147: TUniPanel;
    UniContainerPanel126: TUniContainerPanel;
    UniLabel82: TUniLabel;
    UniSFComboBox12: TUniSFComboBox;
    UniPanel148: TUniPanel;
    UniContainerPanel127: TUniContainerPanel;
    UniLabel83: TUniLabel;
    UniEdit101: TUniEdit;
    UniPanel149: TUniPanel;
    compCODCC_L12: TUniEdit;
    UniContainerPanel128: TUniContainerPanel;
    UniLabel84: TUniLabel;
    UniSFBitBtn14: TUniSFBitBtn;
    UniPanel150: TUniPanel;
    UniContainerPanel129: TUniContainerPanel;
    UniLabel85: TUniLabel;
    UniEdit103: TUniEdit;
    UniPanel151: TUniPanel;
    UniEdit104: TUniEdit;
    UniContainerPanel130: TUniContainerPanel;
    UniPanel152: TUniPanel;
    UniContainerPanel131: TUniContainerPanel;
    UniLabel86: TUniLabel;
    UniEdit105: TUniEdit;
    UniPanel153: TUniPanel;
    UniEdit106: TUniEdit;
    UniContainerPanel132: TUniContainerPanel;
    UniPanel154: TUniPanel;
    UniContainerPanel133: TUniContainerPanel;
    UniDateTimePicker12: TUniDateTimePicker;
    UniPanel155: TUniPanel;
    UniContainerPanel134: TUniContainerPanel;
    UniLabel87: TUniLabel;
    UniEdit107: TUniEdit;
    UniPanel156: TUniPanel;
    UniEdit108: TUniEdit;
    UniContainerPanel135: TUniContainerPanel;
    UniPanel157: TUniPanel;
    UniContainerPanel136: TUniContainerPanel;
    UniLabel88: TUniLabel;
    UniEdit109: TUniEdit;
    UniSFBitBtn2: TUniSFBitBtn;
    UniSFBitBtn3: TUniSFBitBtn;
    alertaM: TUniSFiGrowl;
    procedure UniFormShow(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure UniSFBitBtn1Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure compNUMPARCChange(Sender: TObject);
    procedure UniSFBitBtn3Click(Sender: TObject);
    procedure UniSFBitBtn4Click(Sender: TObject);
    procedure UniSFBitBtn5Click(Sender: TObject);
    procedure UniSFBitBtn6Click(Sender: TObject);
    procedure UniSFBitBtn7Click(Sender: TObject);
    procedure UniSFBitBtn8Click(Sender: TObject);
    procedure UniSFBitBtn9Click(Sender: TObject);
    procedure UniSFBitBtn10Click(Sender: TObject);
    procedure UniSFBitBtn11Click(Sender: TObject);
    procedure UniSFBitBtn12Click(Sender: TObject);
    procedure UniSFBitBtn13Click(Sender: TObject);
    procedure UniSFBitBtn14Click(Sender: TObject);
    procedure UniSFBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    VAR
    Panels: array[0..11] of TUniPanel;
//    procedure exibeParcelas(wqtdPar:integer);
    procedure callBackCCusto(Sender: TComponent;
      AResult: Integer);
    procedure callBackCondPag(Sender: TComponent;
      AResult: Integer);
    procedure exibeParcelas(weQtdPar:string);
  public
    { Public declarations }
    wTOTALGERALF : real;
  end;

function frmPagamentoParceladoF: TfrmPagamentoParceladoF;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uUtils, ufrmListaGlobal;

procedure TfrmPagamentoParceladoF.exibeParcelas(weQtdPar:string);
var
  I, Qtd: Integer;
begin
  Qtd := StrToIntDef(weQtdPar, 0);

  if Qtd > Length(Panels) then
    Qtd := Length(Panels);

  for I := 0 to High(Panels) do
    begin
      Panels[I].Visible := I < Qtd;
    end;
end;

procedure TfrmPagamentoParceladoF.callBackCondPag(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODPAG.Text := frmListaGlobal.CDSTela.FieldByName('codPag').AsString;
    compDESCRPG.Text := frmListaGlobal.CDSTela.FieldByName('descrPg').AsString;
    compNUMPARC.Text := frmListaGlobal.CDSTela.FieldByName('numParc').AsString;
    exibeParcelas(compNUMPARC.Text);
    alertaM.info('Atividade selecionada: <b>' + frmListaGlobal.CDSTela.FieldByName('descrPg').AsString + '</b>');
  end;
end;

procedure TfrmPagamentoParceladoF.callBackCCusto(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    if (frmListaGlobal.wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L1') then
     compCODCC_L1.Text := frmListaGlobal.CDSTela.FieldByName('codCc').AsString
    else if (frmListaGlobal.wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L2') then
     compCODCC_L2.Text := frmListaGlobal.CDSTela.FieldByName('codCc').AsString
    else if (frmListaGlobal.wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L3') then
     compCODCC_L3.Text := frmListaGlobal.CDSTela.FieldByName('codCc').AsString
    else if (frmListaGlobal.wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L4') then
     compCODCC_L4.Text := frmListaGlobal.CDSTela.FieldByName('codCc').AsString
    else if (frmListaGlobal.wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L5') then
     compCODCC_L5.Text := frmListaGlobal.CDSTela.FieldByName('codCc').AsString
    else if (frmListaGlobal.wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L6') then
     compCODCC_L6.Text := frmListaGlobal.CDSTela.FieldByName('codCc').AsString
    else if (frmListaGlobal.wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L7') then
     compCODCC_L7.Text := frmListaGlobal.CDSTela.FieldByName('codCc').AsString
    else if (frmListaGlobal.wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L8') then
     compCODCC_L8.Text := frmListaGlobal.CDSTela.FieldByName('codCc').AsString
    else if (frmListaGlobal.wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L9') then
     compCODCC_L9.Text := frmListaGlobal.CDSTela.FieldByName('codCc').AsString
    else if (frmListaGlobal.wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L10') then
     compCODCC_L10.Text := frmListaGlobal.CDSTela.FieldByName('codCc').AsString
    else if (frmListaGlobal.wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L11') then
     compCODCC_L11.Text := frmListaGlobal.CDSTela.FieldByName('codCc').AsString
    else if (frmListaGlobal.wTabelaDePesquisa.ToUpper = 'CCUSTO_PDV_L12') then
     compCODCC_L12.Text := frmListaGlobal.CDSTela.FieldByName('codCc').AsString;

//    compativ.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;// idClassificacao;
//    compdescrat.Text  := frmListaGlobal.CDSTela.FieldByName('descrAt').AsString;//frmListaClassificacoes.nome;
    alertaM.info('Atividade selecionada: <b>' + frmListaGlobal.CDSTela.FieldByName('descr').AsString + '</b>');
  end;
end;

function frmPagamentoParceladoF: TfrmPagamentoParceladoF;
begin
  Result := TfrmPagamentoParceladoF(UniMainModule.GetFormInstance(TfrmPagamentoParceladoF));
end;




procedure TfrmPagamentoParceladoF.compNUMPARCChange(Sender: TObject);
var
  I, Qtd: Integer;
begin
  exibeParcelas(compNUMPARC.Text);
//  Qtd := StrToIntDef(compNUMPARC.Text, 0);
//
//  if Qtd > Length(Panels) then
//    Qtd := Length(Panels);
//
//  for I := 0 to High(Panels) do
//    begin
//      Panels[I].Visible := I < Qtd;
//    end;
end;

//procedure TfrmPagamentoParceladoF.exibeParcelas(wqtdPar:integer);
//var
//  I, Qtd: Integer;
//begin
////  Qtd := StrToIntDef(compQtdParcelas.Text, 0);
//  Qtd := wqtdPar;
//
//  if Qtd > Length(Panels) then
//    Qtd := Length(Panels);
//
//  for I := 0 to High(Panels) do
//    Panels[I].Visible := I < Qtd;
////  UniSession.Synchronize();
//end;

procedure TfrmPagamentoParceladoF.UniFormCreate(Sender: TObject);
begin
  Panels[0]  := compLN1;
  Panels[1]  := compLN2;
  Panels[2]  := compLN3;
  Panels[3]  := compLN4;
  Panels[4]  := compLN5;
  Panels[5]  := compLN6;
  Panels[6]  := compLN7;
  Panels[7]  := compLN8;
  Panels[8]  := compLN9;
  Panels[9]  := compLN10;
  Panels[10] := compLN11;
  Panels[11] := compLN12;
end;

procedure TfrmPagamentoParceladoF.UniFormReady(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  compTOTALGERALF.Text := FormatFloat('#,0.00', wTOTALGERALF);
  //MarcarTodosCheckBox(self);
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

procedure TfrmPagamentoParceladoF.UniFormShow(Sender: TObject);
var
i:integer;
begin
  frmPagamentoParceladoF.Top := 5;
  frmPagamentoParceladoF.Height := uniMainModule.screenHeigth - 10;
  frmPagamentoParceladoF.Width  := uniMainModule.screenWidth  - 15;
  frmPagamentoParceladoF.Left   := 7;
  UniScrollBox2.Align := alClient;

//  compTOTALGERALF.Text := floattostr(wTOTALGERALF);
//  for I := 0 to High(Panels) do
//    begin
//      Panels[I].Align := alTop;
//    end;
end;

procedure TfrmPagamentoParceladoF.UniSFBitBtn10Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO_PDV_L8';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTOS';
  frmListaGlobal.showModal(callBackCCusto);
end;

procedure TfrmPagamentoParceladoF.UniSFBitBtn11Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO_PDV_L9';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTOS';
  frmListaGlobal.showModal(callBackCCusto);
end;

procedure TfrmPagamentoParceladoF.UniSFBitBtn12Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO_PDV_L10';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTOS';
  frmListaGlobal.showModal(callBackCCusto);
end;

procedure TfrmPagamentoParceladoF.UniSFBitBtn13Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO_PDV_L11';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTOS';
  frmListaGlobal.showModal(callBackCCusto);
end;

procedure TfrmPagamentoParceladoF.UniSFBitBtn14Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO_PDV_L12';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTOS';
  frmListaGlobal.showModal(callBackCCusto);
end;

procedure TfrmPagamentoParceladoF.UniSFBitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPagamentoParceladoF.UniSFBitBtn2Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CONDPAG_PDV';
  frmListaGlobal.lblDescricao.Caption := 'CONDIÇÕES DE PAGAMENTO';
  frmListaGlobal.showModal(callBackCondPag);
end;

procedure TfrmPagamentoParceladoF.UniSFBitBtn3Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO_PDV_L1';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTOS';
  frmListaGlobal.showModal(callBackCCusto);
end;

procedure TfrmPagamentoParceladoF.UniSFBitBtn4Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO_PDV_L2';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTOS';
  frmListaGlobal.showModal(callBackCCusto);
end;

procedure TfrmPagamentoParceladoF.UniSFBitBtn5Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO_PDV_L3';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTOS';
  frmListaGlobal.showModal(callBackCCusto);
end;

procedure TfrmPagamentoParceladoF.UniSFBitBtn6Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO_PDV_L4';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTOS';
  frmListaGlobal.showModal(callBackCCusto);

end;

procedure TfrmPagamentoParceladoF.UniSFBitBtn7Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO_PDV_L5';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTOS';
  frmListaGlobal.showModal(callBackCCusto);

end;

procedure TfrmPagamentoParceladoF.UniSFBitBtn8Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO_PDV_L6';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTOS';
  frmListaGlobal.showModal(callBackCCusto);

end;

procedure TfrmPagamentoParceladoF.UniSFBitBtn9Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO_PDV_L7';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTOS';
  frmListaGlobal.showModal(callBackCCusto);
end;

end.
