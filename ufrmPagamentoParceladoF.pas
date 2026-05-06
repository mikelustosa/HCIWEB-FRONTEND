unit ufrmPagamentoParceladoF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, UniSFComboBox, uniLabel, uniEdit, uniPanel,
  uniScrollBox, uniGUIBaseClasses, uniTimer, URGLayoutUnigui, uniButton,
  uniBitBtn, UniSFButton, UniSFBitBtn, uniDateTimePicker, UniSFiGrowl, math,
  System.JSON;

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
    compLN01: TUniPanel;
    UniPanel11: TUniPanel;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel9: TUniLabel;
    compED_PAGTO01: TUniSFComboBox;
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
    compVAL01: TUniEdit;
    UniContainerPanel11: TUniContainerPanel;
    UniPanel3: TUniPanel;
    UniContainerPanel1: TUniContainerPanel;
    compDATA01: TUniDateTimePicker;
    UniPanel89: TUniPanel;
    UniContainerPanel77: TUniContainerPanel;
    UniLabel29: TUniLabel;
    UniEdit62: TUniEdit;
    UniPanel2: TUniPanel;
    compDIAS01: TUniEdit;
    UniContainerPanel8: TUniContainerPanel;
    UniPanel1: TUniPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel48: TUniLabel;
    UniEdit61: TUniEdit;
    compLN02: TUniPanel;
    UniPanel8: TUniPanel;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel1: TUniLabel;
    compED_PAGTO02: TUniSFComboBox;
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
    compVAL02: TUniEdit;
    UniContainerPanel16: TUniContainerPanel;
    UniPanel18: TUniPanel;
    UniContainerPanel17: TUniContainerPanel;
    compDATA02: TUniDateTimePicker;
    UniPanel19: TUniPanel;
    UniContainerPanel18: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniEdit12: TUniEdit;
    UniPanel20: TUniPanel;
    compDIAS02: TUniEdit;
    UniContainerPanel19: TUniContainerPanel;
    UniPanel21: TUniPanel;
    UniContainerPanel20: TUniContainerPanel;
    UniLabel11: TUniLabel;
    UniEdit14: TUniEdit;
    compLN03: TUniPanel;
    UniPanel23: TUniPanel;
    UniContainerPanel21: TUniContainerPanel;
    UniLabel12: TUniLabel;
    compED_PAGTO03: TUniSFComboBox;
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
    compVAL03: TUniEdit;
    UniContainerPanel27: TUniContainerPanel;
    UniPanel32: TUniPanel;
    UniContainerPanel28: TUniContainerPanel;
    compDATA03: TUniDateTimePicker;
    UniPanel33: TUniPanel;
    UniContainerPanel29: TUniContainerPanel;
    UniLabel17: TUniLabel;
    UniEdit21: TUniEdit;
    UniPanel34: TUniPanel;
    compDIAS03: TUniEdit;
    UniContainerPanel30: TUniContainerPanel;
    UniPanel35: TUniPanel;
    UniContainerPanel31: TUniContainerPanel;
    UniLabel18: TUniLabel;
    UniEdit23: TUniEdit;
    compLN04: TUniPanel;
    UniPanel37: TUniPanel;
    UniContainerPanel32: TUniContainerPanel;
    UniLabel19: TUniLabel;
    compED_PAGTO04: TUniSFComboBox;
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
    compVAL04: TUniEdit;
    UniContainerPanel38: TUniContainerPanel;
    UniPanel47: TUniPanel;
    UniContainerPanel39: TUniContainerPanel;
    compDATA04: TUniDateTimePicker;
    UniPanel48: TUniPanel;
    UniContainerPanel41: TUniContainerPanel;
    UniLabel24: TUniLabel;
    UniEdit30: TUniEdit;
    UniPanel49: TUniPanel;
    compDIAS04: TUniEdit;
    UniContainerPanel42: TUniContainerPanel;
    UniPanel50: TUniPanel;
    UniContainerPanel43: TUniContainerPanel;
    UniLabel25: TUniLabel;
    UniEdit32: TUniEdit;
    compLN05: TUniPanel;
    UniPanel52: TUniPanel;
    UniContainerPanel44: TUniContainerPanel;
    UniLabel26: TUniLabel;
    compED_PAGTO05: TUniSFComboBox;
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
    compVAL05: TUniEdit;
    UniContainerPanel50: TUniContainerPanel;
    UniPanel61: TUniPanel;
    UniContainerPanel51: TUniContainerPanel;
    compDATA05: TUniDateTimePicker;
    UniPanel62: TUniPanel;
    UniContainerPanel52: TUniContainerPanel;
    UniLabel37: TUniLabel;
    UniEdit39: TUniEdit;
    UniPanel63: TUniPanel;
    compDIAS05: TUniEdit;
    UniContainerPanel53: TUniContainerPanel;
    UniPanel64: TUniPanel;
    UniContainerPanel54: TUniContainerPanel;
    UniLabel38: TUniLabel;
    UniEdit41: TUniEdit;
    compLN06: TUniPanel;
    UniPanel66: TUniPanel;
    UniContainerPanel55: TUniContainerPanel;
    UniLabel39: TUniLabel;
    compED_PAGTO06: TUniSFComboBox;
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
    compVAL06: TUniEdit;
    UniContainerPanel61: TUniContainerPanel;
    UniPanel75: TUniPanel;
    UniContainerPanel62: TUniContainerPanel;
    compDATA06: TUniDateTimePicker;
    UniPanel76: TUniPanel;
    UniContainerPanel63: TUniContainerPanel;
    UniLabel44: TUniLabel;
    UniEdit48: TUniEdit;
    UniPanel77: TUniPanel;
    compDIAS06: TUniEdit;
    UniContainerPanel64: TUniContainerPanel;
    UniPanel78: TUniPanel;
    UniContainerPanel65: TUniContainerPanel;
    UniLabel45: TUniLabel;
    UniEdit50: TUniEdit;
    compLN07: TUniPanel;
    UniPanel80: TUniPanel;
    UniContainerPanel66: TUniContainerPanel;
    UniLabel46: TUniLabel;
    compED_PAGTO07: TUniSFComboBox;
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
    compVAL07: TUniEdit;
    UniContainerPanel72: TUniContainerPanel;
    UniPanel94: TUniPanel;
    UniContainerPanel73: TUniContainerPanel;
    compDATA07: TUniDateTimePicker;
    UniPanel95: TUniPanel;
    UniContainerPanel74: TUniContainerPanel;
    UniLabel52: TUniLabel;
    UniEdit57: TUniEdit;
    UniPanel96: TUniPanel;
    compDIAS07: TUniEdit;
    UniContainerPanel75: TUniContainerPanel;
    UniPanel97: TUniPanel;
    UniContainerPanel76: TUniContainerPanel;
    UniLabel53: TUniLabel;
    UniEdit59: TUniEdit;
    compLN08: TUniPanel;
    UniPanel99: TUniPanel;
    UniContainerPanel82: TUniContainerPanel;
    UniLabel54: TUniLabel;
    compED_PAGTO08: TUniSFComboBox;
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
    compVAL08: TUniEdit;
    UniContainerPanel88: TUniContainerPanel;
    UniPanel106: TUniPanel;
    UniContainerPanel89: TUniContainerPanel;
    compDATA08: TUniDateTimePicker;
    UniPanel107: TUniPanel;
    UniContainerPanel90: TUniContainerPanel;
    UniLabel59: TUniLabel;
    UniEdit71: TUniEdit;
    UniPanel108: TUniPanel;
    compDIAS08: TUniEdit;
    UniContainerPanel91: TUniContainerPanel;
    UniPanel109: TUniPanel;
    UniContainerPanel92: TUniContainerPanel;
    UniLabel60: TUniLabel;
    UniEdit73: TUniEdit;
    compLN09: TUniPanel;
    UniPanel111: TUniPanel;
    UniContainerPanel93: TUniContainerPanel;
    UniLabel61: TUniLabel;
    compED_PAGTO09: TUniSFComboBox;
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
    compVAL09: TUniEdit;
    UniContainerPanel99: TUniContainerPanel;
    UniPanel118: TUniPanel;
    UniContainerPanel100: TUniContainerPanel;
    compDATA09: TUniDateTimePicker;
    UniPanel119: TUniPanel;
    UniContainerPanel101: TUniContainerPanel;
    UniLabel66: TUniLabel;
    UniEdit80: TUniEdit;
    UniPanel120: TUniPanel;
    compDIAS09: TUniEdit;
    UniContainerPanel102: TUniContainerPanel;
    UniPanel121: TUniPanel;
    UniContainerPanel103: TUniContainerPanel;
    UniLabel67: TUniLabel;
    UniEdit82: TUniEdit;
    compLN10: TUniPanel;
    UniPanel123: TUniPanel;
    UniContainerPanel104: TUniContainerPanel;
    UniLabel68: TUniLabel;
    compED_PAGTO10: TUniSFComboBox;
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
    compVAL10: TUniEdit;
    UniContainerPanel110: TUniContainerPanel;
    UniPanel130: TUniPanel;
    UniContainerPanel111: TUniContainerPanel;
    compDATA10: TUniDateTimePicker;
    UniPanel131: TUniPanel;
    UniContainerPanel112: TUniContainerPanel;
    UniLabel73: TUniLabel;
    UniEdit89: TUniEdit;
    UniPanel132: TUniPanel;
    compDIAS10: TUniEdit;
    UniContainerPanel113: TUniContainerPanel;
    UniPanel133: TUniPanel;
    UniContainerPanel114: TUniContainerPanel;
    UniLabel74: TUniLabel;
    UniEdit91: TUniEdit;
    compLN11: TUniPanel;
    UniPanel135: TUniPanel;
    UniContainerPanel115: TUniContainerPanel;
    UniLabel75: TUniLabel;
    compED_PAGTO11: TUniSFComboBox;
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
    compVAL11: TUniEdit;
    UniContainerPanel121: TUniContainerPanel;
    UniPanel142: TUniPanel;
    UniContainerPanel122: TUniContainerPanel;
    compDATA11: TUniDateTimePicker;
    UniPanel143: TUniPanel;
    UniContainerPanel123: TUniContainerPanel;
    UniLabel80: TUniLabel;
    UniEdit98: TUniEdit;
    UniPanel144: TUniPanel;
    compDIAS11: TUniEdit;
    UniContainerPanel124: TUniContainerPanel;
    UniPanel145: TUniPanel;
    UniContainerPanel125: TUniContainerPanel;
    UniLabel81: TUniLabel;
    UniEdit100: TUniEdit;
    compLN12: TUniPanel;
    UniPanel147: TUniPanel;
    UniContainerPanel126: TUniContainerPanel;
    UniLabel82: TUniLabel;
    compED_PAGTO12: TUniSFComboBox;
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
    compVAL12: TUniEdit;
    UniContainerPanel132: TUniContainerPanel;
    UniPanel154: TUniPanel;
    UniContainerPanel133: TUniContainerPanel;
    compDATA12: TUniDateTimePicker;
    UniPanel155: TUniPanel;
    UniContainerPanel134: TUniContainerPanel;
    UniLabel87: TUniLabel;
    UniEdit107: TUniEdit;
    UniPanel156: TUniPanel;
    compDIAS12: TUniEdit;
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
    procedure compDIAS01Change(Sender: TObject);
    procedure compCODPAGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UniSFBitBtn27Click(Sender: TObject);
  private
    { Private declarations }
    VAR
    Panels: array[0..11] of TUniPanel;
    JCondPag  : TJSONObject;
    procedure callBackCCusto(Sender: TComponent;
      AResult: Integer);
    procedure callBackCondPag(Sender: TComponent;
      AResult: Integer);
    procedure exibeParcelas(weQtdPar: string; JCondPag: TJSONObject);
    procedure AtualizarVencimentoPorDias(ParcelaNum: Integer);
    function pesquisaCondPag(out weJson:TJSONObject; weId,weCodPag,weDescrPg :string): boolean;

  public
    { Public declarations }
    wTOTALGERALF : real;
  end;

function frmPagamentoParceladoF: TfrmPagamentoParceladoF;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uUtils, ufrmListaGlobal,
  RESTRequest4D.Request, uConstantes, ufrmPDV;



function TfrmPagamentoParceladoF.pesquisaCondPag(out weJson:TJSONObject; weId,weCodPag,weDescrPg :string): boolean;
var
  resp1     :IResponse;
  req       :IRequest;
  wAItemTmp :TJSONArray;
  wJItemTmp :TJSONObject;
begin
  try
    FreeAndNil(weJson);
    weJson := TJSONObject.Create;
    result := false;

    resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getCondPag)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('id', '')
            .AddParam('codPag', compCODPAG.text)
            .AddParam('descrPg', '')
            .AddParam('ativo', '')
            .timeOut(12000)
            .Get;

    if resp1.StatusCode = 200 then
    begin
      FreeAndNil(weJson);
      weJson := TJSONObject.Create;
      wJItemTmp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
      wAItemTmp := wJItemTmp.GetValue('Result') as TJSONArray;
      weJson := wAItemTmp.Items[0] as TJSONObject;

      result := true;
    end;
  finally

  end;
end;

procedure TfrmPagamentoParceladoF.AtualizarVencimentoPorDias(ParcelaNum: Integer);
var
  StrDias: string;
  compDias: TUniEdit;
  compData: TUniDateTimePicker;
begin
  StrDias := FormatFloat('00', ParcelaNum);

  compDias := TUniEdit(FindComponent('compDIAS' + StrDias));
  compData := TUniDateTimePicker(FindComponent('compDATA' + StrDias));

  if (compDias <> nil) and (compData <> nil) then
    compData.DateTime := Date + StrToIntDef(compDias.Text, 0);
end;

procedure TfrmPagamentoParceladoF.exibeParcelas(weQtdPar: string; JCondPag: TJSONObject);
var
  y, n: Integer;
  StrDias: string;
  SomaTotalParcelado: Currency;
  valorTotal: Currency;
  valorParcela: Currency;
  diferenca: Currency;
  QtdDias: Integer;
  DataVencimento: TDateTime;
  compData: TUniDateTimePicker;
  compDias: TUniEdit;
  compPagto: TUniSFComboBox;
begin
  UniScrollBox2.Visible := true;
  // Valor total
  valorTotal := StrToCurrDef(compTOTALGERALF.Text, 0);

  // Quantidade de parcelas
  n := StrToIntDef(weQtdPar, 1);

  if (n < 1) or (n > 12) then
    n := 1;

  SomaTotalParcelado := 0;

  for y := 1 to 12 do
  begin
    StrDias := FormatFloat('00', y);

    // Exibe apenas as parcelas necessárias
    TUniLabel(FindComponent('compLN' + StrDias)).Visible := (y <= n);

    if (y <= n) then
    begin
      // 1. VALOR DA PARCELA
      if y < n then
        valorParcela := SimpleRoundTo(valorTotal / n, -2)
      else
        valorParcela := valorTotal - SomaTotalParcelado;

      SomaTotalParcelado := SomaTotalParcelado + valorParcela;
      TUniEdit(FindComponent('compVAL' + StrDias)).Text := FormatFloat('R$ #,##0.00', valorParcela);

      // 2. DIAS DA PARCELA
      compDias := TUniEdit(FindComponent('compDIAS' + StrDias));
      if (compDias <> nil) and (JCondPag <> nil) then
      begin
        QtdDias := JCondPag.GetValue<Integer>('parc' + FormatFloat('00', y), 0);

        if QtdDias > 0 then
          compDias.Text := IntToStr(QtdDias)
        else
          compDias.Text := '';

        compDias.Visible := True;
      end;

      // 3. DATA DE VENCIMENTO
      compData := TUniDateTimePicker(FindComponent('compDATA' + StrDias));
      if (compData <> nil) and (JCondPag <> nil) then
      begin
        QtdDias := JCondPag.GetValue<Integer>('parc' + FormatFloat('00', y), 0);

        if QtdDias > 0 then
        begin
          DataVencimento := Date + QtdDias;
          compData.DateTime := DataVencimento;
          compData.Visible := True;
        end
        else
        begin
          compData.DateTime := 0;
          compData.Visible := True;
        end;
      end;

      // 4. VALIDAR FORMA DE PAGAMENTO
      compPagto := TUniSFComboBox(FindComponent('compED_PAGTO' + StrDias));
      if compPagto <> nil then
      begin
        if compPagto.ItemIndex <= -1 then
          compPagto.ItemIndex := 0;
        compPagto.Visible := True;
      end;
    end
    else
    begin
      // Limpa parcelas não usadas
      TUniEdit(FindComponent('compVAL' + StrDias)).Text := '';

      compDias := TUniEdit(FindComponent('compDIAS' + StrDias));
      if compDias <> nil then
      begin
        compDias.Text := '';
        compDias.Visible := False;
      end;

      compData := TUniDateTimePicker(FindComponent('compDATA' + StrDias));
      if compData <> nil then
      begin
        compData.DateTime := 0;
        compData.Visible := False;
      end;

      compPagto := TUniSFComboBox(FindComponent('compED_PAGTO' + StrDias));
      if compPagto <> nil then
        compPagto.Visible := False;
    end;
  end;

  // Ajuste da última parcela por diferença de arredondamento
  diferenca := valorTotal - SomaTotalParcelado;
  if diferenca <> 0 then
  begin
    TUniEdit(FindComponent('compVAL' + FormatFloat('00', n))).Text :=
      FormatFloat('R$ #,##0.00',
        StrToCurrDef(
          TUniEdit(FindComponent('compVAL' + FormatFloat('00', n))).Text, 0
        ) + diferenca
      );
  end;
end;

//procedure TfrmPagamentoParceladoF.exibeParcelas(weQtdPar: string; JCondPag: TJSONObject);
//var
//  y, n: Integer;
//  StrDias: string;
//  SomaTotalParcelado: Currency;
//  valorTotal: Currency;
//  valorParcela: Currency;
//  diferenca: Currency;
//  QtdDias: Integer;
//  DataVencimento: TDateTime;
//  compData: TUniDateTimePicker;
//  compDias: TUniEdit;
//begin
//  // Valor total
//  valorTotal := StrToCurrDef(compTOTALGERALF.Text, 0);
//
//  // Quantidade de parcelas
//  n := StrToIntDef(weQtdPar, 1);
//
//  if (n < 1) or (n > 12) then
//    n := 1;
//
//  SomaTotalParcelado := 0;
//
//  for y := 1 to 12 do
//  begin
//    StrDias := FormatFloat('00', y);
//
//    // Exibe apenas as parcelas necessárias
//    TUniLabel(FindComponent('compLN' + StrDias)).Visible := (y <= n);
//
//    if (y <= n) then
//    begin
//      // 1. VALOR DA PARCELA (sempre calculado proporcionalmente)
//      if y < n then
//        valorParcela := SimpleRoundTo(valorTotal / n, -2)
//      else
//        valorParcela := valorTotal - SomaTotalParcelado;
//
//      SomaTotalParcelado := SomaTotalParcelado + valorParcela;
//      TUniEdit(FindComponent('compVAL' + StrDias)).Text := FormatFloat('R$ #,##0.00', valorParcela);
//
//      // 2. DIAS DA PARCELA (apenas se existir no JSON)
//      compDias := TUniEdit(FindComponent('compDIAS' + StrDias));
//      if (compDias <> nil) and (JCondPag <> nil) then
//      begin
//        QtdDias := JCondPag.GetValue<Integer>('parc' + FormatFloat('00', y), 0);
//
//        if QtdDias > 0 then
//          compDias.Text := IntToStr(QtdDias)
//        else
//          compDias.Text := '';  // Dias em branco para parcelas extras
//
//        compDias.Visible := True;
//      end;
//
//      // 3. DATA DE VENCIMENTO (apenas se existir dias no JSON)
//      compData := TUniDateTimePicker(FindComponent('compDATA' + StrDias));
//      if (compData <> nil) and (JCondPag <> nil) then
//      begin
//        QtdDias := JCondPag.GetValue<Integer>('parc' + FormatFloat('00', y), 0);
//
//        if QtdDias > 0 then
//        begin
//          DataVencimento := Date + QtdDias;
//          compData.DateTime := DataVencimento;
//          compData.Visible := True;
//        end
//        else
//        begin
//          compData.DateTime := 0;  // Data em branco
//          compData.Visible := True; // Continua visível, mas vazia
//        end;
//      end;
//    end
//    else
//    begin
//      // Limpa parcelas não usadas
//      TUniEdit(FindComponent('compVAL' + StrDias)).Text := '';
//
//      compDias := TUniEdit(FindComponent('compDIAS' + StrDias));
//      if compDias <> nil then
//      begin
//        compDias.Text := '';
//        compDias.Visible := False;
//      end;
//
//      compData := TUniDateTimePicker(FindComponent('compDATA' + StrDias));
//      if compData <> nil then
//      begin
//        compData.DateTime := 0;
//        compData.Visible := False;
//      end;
//    end;
//  end;
//
//  // Ajuste da última parcela por diferença de arredondamento
//  diferenca := valorTotal - SomaTotalParcelado;
//  if diferenca <> 0 then
//  begin
//    TUniEdit(FindComponent('compVAL' + FormatFloat('00', n))).Text :=
//      FormatFloat('R$ #,##0.00',
//        StrToCurrDef(
//          TUniEdit(FindComponent('compVAL' + FormatFloat('00', n))).Text, 0
//        ) + diferenca
//      );
//  end;
//end;//procedure TfrmPagamentoParceladoF.exibeParcelas_ant(weQtdPar:string);


//var
//  I, Qtd: Integer;
//begin
//  Qtd := StrToIntDef(weQtdPar, 0);
//
//  if Qtd > Length(Panels) then
//    Qtd := Length(Panels);
//
//  for I := 0 to High(Panels) do
//    begin
//      Panels[I].Visible := I < Qtd;
//    end;
//end;

procedure TfrmPagamentoParceladoF.callBackCondPag(Sender: TComponent;
  AResult: Integer);
var i:integer;
begin 
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODPAG.Text := frmListaGlobal.CDSTela.FieldByName('codPag').AsString;
    compDESCRPG.Text := frmListaGlobal.CDSTela.FieldByName('descrPg').AsString;
    compNUMPARC.Text := frmListaGlobal.CDSTela.FieldByName('numParc').AsString;
    alertaM.info('Condição de pagamento selecionada: <b>' + frmListaGlobal.CDSTela.FieldByName('descrPg').AsString + '</b>');

    //pupula um json com os dados da condição de pagamento
    FreeAndNil(JCondPag);
    JCondPag := TJSONObject.Create;
    for i := 0 to frmListaGlobal.CDSTela.FieldCount - 1 do
      begin
        if frmListaGlobal.CDSTela.Fields[i].IsNull then
          JCondPag.AddPair(frmListaGlobal.CDSTela.Fields[i].FieldName, TJSONNull.Create)
        else
          JCondPag.AddPair(
            frmListaGlobal.CDSTela.Fields[i].FieldName,
            frmListaGlobal.CDSTela.Fields[i].AsString
          );
      end;

    exibeParcelas(JCondPag.GetValue('numParc').Value,JCondPag);
    compDESCRPG.caption := JCondPag.GetValue('descrPg').Value;
    compNUMPARC.Text := JCondPag.GetValue('numParc').Value;

//    compCODPAG.WebFocus;

//27042026    exibeParcelas(compNUMPARC.Text);
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


procedure TfrmPagamentoParceladoF.compCODPAGKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if  (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    if trim(compCODPAG.Text) <> '' then
    begin
      if pesquisaCondPag(JCondPag,'',compCODPAG.Text,'') then
      begin
        exibeParcelas(JCondPag.GetValue('numParc').Value,JCondPag);
        compDESCRPG.caption := JCondPag.GetValue('descrPg').Value;
        compNUMPARC.Text := JCondPag.GetValue('numParc').Value;
      end
      else
      begin
        compDESCRPG.caption := '';
        compNUMPARC.Text := '';
      end;
    end;
  end;
end;

procedure TfrmPagamentoParceladoF.compDIAS01Change(Sender: TObject);
var
  ParcelaNum: Integer;
  NomeComponente: string;
begin
  if Sender is TUniEdit then
  begin
    NomeComponente := TUniEdit(Sender).Name;
    ParcelaNum := StrToIntDef(Copy(NomeComponente, 9, 2), 0); // 'compDIAS' tem 8 caracteres

    if ParcelaNum > 0 then
      AtualizarVencimentoPorDias(ParcelaNum);
  end;
end;

procedure TfrmPagamentoParceladoF.compNUMPARCChange(Sender: TObject);
begin
  exibeParcelas(compNUMPARC.Text,JCondPag);
end;

//procedure TfrmPagamentoParceladoF.compNUMPARCChange(Sender: TObject);
//var
//  I, Qtd: Integer;
//  y, n: integer;
//  StrDias: string;
//  SomaTotalParcelado: double;
//  const
//  dias: array [1 .. 12] of integer = (0, 30, 60, 90, 120, 150, 180, 210, 240, 270, 300, 330);
//begin
//  //26042026 exibeParcelas(compNUMPARC.Text);
//
//  var valorTotal:real;
//  valorTotal := strtoFloatDef(compTOTALGERALF.text,0);
//
//  if (StrToIntDef(compNUMPARC.text,0) > 0) then
//    n := StrToIntDef(compNUMPARC.text,0);
//
//  if (n < 1) or (n > 12) then
//    n := 1;
//
//  SomaTotalParcelado := 0;
//
//  for y := 1 to 12 do
//  begin
//    StrDias := StrZero(y, 2, 0);
//
//    TUniLabel(FindComponent('compLN' + StrDias)).Visible := iff(y <= n, true, false);
////    TNumInp(FindComponent('dias' + StrDias)).Visible := iff(y <= n, true, false);
////
////    TLabel(FindComponent('llabel' + StrDias)).Visible := iff(y <= n, true, false);
////    TDatehci(FindComponent('data' + StrDias)).Visible := iff(y <= n, true, false);
////
////    TNumInp(FindComponent('val' + StrDias)).Visible := iff(y <= n, true, false);
////
////    TLabel(FindComponent('Labelche' + StrDias)).Visible := iff(y <= n, true, false);
////    TEdit(FindComponent('cheque' + StrDias)).Visible := iff(y <= n, true, false);
////
////    TLabel(FindComponent('lcodcc' + StrDias)).Visible := iff(y <= n, true, false);
////    TBedit(FindComponent('codcc' + StrDias)).Visible := iff(y <= n, true, false);
////
////    TLabel(FindComponent('lpagto' + StrDias)).Visible := iff(y <= n, true, false);
////    TComboBox(FindComponent('ed_pagto' + StrDias)).Visible := iff(y <= n, true, false);
//
//    if (y <= n) then
//    begin
//      SomaTotalParcelado := SomaTotalParcelado + red_cent(valorTotal / n);
//      TUniEdit(FindComponent('compVAL' + StrDias)).Text := FloatToStrF(red_cent(valorTotal / n), ffCurrency,10,2);
//
////      if (StrToIntDef(compCODPAG.text,0) = 0) then
////      begin
////        TNumInp(FindComponent('dias' + StrDias)).Value := dias[y];
////        TDatehci(FindComponent('data' + StrDias)).text := FormatDateTime('dd/mm/yyyy', now + dias[y]);
////      end;
////
////      // Alexandre - 28/11/2019
////      // - Correção : #14822 - Centro de custo - cupom, não estava aparecendo informação de centro de custo em todas as parcelas.
////      if (findkeySQLAD(tbcdpag, ['codpag'], [convint(codpag.text)], fdmbase.tblcdpag)) then
////        TBedit(FindComponent('codcc' + StrDias)).text := fdmbase.tblcdpag.FieldByName('codccv').AsString;
////
////      TComboBox(FindComponent('ed_pagto' + strdias)).ItemIndex := int_pagto;
////      // **
//    end;
//
//  end;
//
//  if (abs(valorTotal - SomaTotalParcelado) > 0) then
//    TUniEdit(FindComponent('compVAL01')).text := TUniEdit(FindComponent('compVAL01')).text + FloatToStr((valorTotal - SomaTotalParcelado));
//
//end;

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
  Panels[0]  := compLN01;
  Panels[1]  := compLN02;
  Panels[2]  := compLN03;
  Panels[3]  := compLN04;
  Panels[4]  := compLN05;
  Panels[5]  := compLN06;
  Panels[6]  := compLN07;
  Panels[7]  := compLN08;
  Panels[8]  := compLN09;
  Panels[9]  := compLN10;
  Panels[10] := compLN11;
  Panels[11] := compLN12;
end;

procedure TfrmPagamentoParceladoF.UniFormReady(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  compTOTALGERALF.Text := FormatFloat('#,0.00', wTOTALGERALF);
  UniScrollBox2.Visible := false;
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

procedure TfrmPagamentoParceladoF.UniSFBitBtn27Click(Sender: TObject);
var
  y: Integer;
  StrDias: string;
  jsonArray: TJSONArray;
  jsonObject: TJSONObject;
  compData: TUniDateTimePicker;
  compValor: TUniEdit;
  compPagto: TUniSFComboBox;
  compLabel: TUniLabel;
  codigoCondPag: string;
begin
  jsonArray := TJSONArray.Create;

  codigoCondPag := compCODPAG.Text;

  for y := 1 to 12 do
  begin
    StrDias := FormatFloat('00', y);
    compLabel := TUniLabel(FindComponent('compLN' + StrDias));

    if (compLabel <> nil) and (compLabel.Visible) then
    begin
      jsonObject := TJSONObject.Create;

      // DATA
      compData := TUniDateTimePicker(FindComponent('compDATA' + StrDias));
      if compData <> nil then
        jsonObject.AddPair('data', DateToJSON(compData.DateTime))
      else
        jsonObject.AddPair('data', '');

      // VALOR
      compValor := TUniEdit(FindComponent('compVAL' + StrDias));
      if compValor <> nil then
        jsonObject.AddPair('valor', StringReplace(compValor.Text, 'R$ ', '', []))
      else
        jsonObject.AddPair('valor', '');

      // FORMA DE PAGAMENTO
      compPagto := TUniSFComboBox(FindComponent('compED_PAGTO' + StrDias));
      if compPagto <> nil then
        jsonObject.AddPair('formaPagamento', IntToStr(compPagto.ItemIndex))
      else
        jsonObject.AddPair('formaPagamento', '');

      // CÓDIGO DA CONDIÇÃO DE PAGAMENTO
      jsonObject.AddPair('codigoCondicaoPagamento', codigoCondPag);

      // NÚMERO DA PARCELA
      jsonObject.AddPair('parcela', IntToStr(y));

      jsonArray.AddElement(jsonObject);
    end;
  end;

  // A property chama o SetJParcelasCaixa automaticamente
  frmPDV.JParcelasCaixa := jsonArray;
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
