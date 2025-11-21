unit ufraCadEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniSFiGrowl, uniTimer, Data.DB,
  Datasnap.DBClient, uniGUIBaseClasses, UniSFSweetAlert, uniCheckBox,
  uniHTMLFrame, uniPanel, uniLabel, UniFSToggle, uniButton, uniBitBtn,
  UniSFButton, UniSFBitBtn, uniEdit, UniSFLabel, uniBasicGrid, uniDBGrid,
  uniPageControl, uniScrollBox, uniImage, UniSFComboBox, URGLayoutUnigui, RESTRequest4D.request,
  system.JSON, Vcl.Imaging.pngimage, uniGroupBox, uUtils;

type
  TArrayStringsDiasDoMes      = array[1..31] of string;
type
  TArrayStringsDiasDaSemana   = array[1..7] of string;
type
  TArrayStringsEnviarResumoDe = array[1..8] of string;

type
  TfraCadEmpresas = class(TUniFrame)
    imgFundo: TUniImage;
    scrFundo: TUniScrollBox;
    pgcTela: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    gridTela: TUniDBGrid;
    cpPesquisa: TUniContainerPanel;
    UniContainerPanel22: TUniContainerPanel;
    lblFiltro: TUniSFLabel;
    UniContainerPanel23: TUniContainerPanel;
    UniSFLabel2: TUniSFLabel;
    edPesquisar: TUniEdit;
    UniContainerPanel24: TUniContainerPanel;
    UniSFLabel1: TUniSFLabel;
    UniContainerPanel26: TUniContainerPanel;
    UniSFBitBtn1: TUniSFBitBtn;
    tabNovo: TUniTabSheet;
    cpMenuRodape: TUniContainerPanel;
    btnSalvar: TUniSFBitBtn;
    btnCancelar: TUniSFBitBtn;
    compATIVO: TUniFSToggle;
    UniContainerPanel12: TUniContainerPanel;
    compTitulo: TUniLabel;
    cpMenuTopo: TUniContainerPanel;
    lblDescricao: TUniLabel;
    btnNovo: TUniSFBitBtn;
    UniContainerPanel27: TUniContainerPanel;
    alerta: TUniSFSweetAlert;
    DSTela: TDataSource;
    CDSTela: TClientDataSet;
    CDSTelabotaoEditar: TAggregateField;
    CDSTelaiconeAtivo: TAggregateField;
    alertaM: TUniSFiGrowl;
    btnFechar: TUniSFBitBtn;
    rg1: TRGLayoutUnigui;
    pgcTelaDtl: TUniPageControl;
    tab0: TUniTabSheet;
    tab1: TUniTabSheet;
    pn1: TUniPanel;
    sBox1: TUniScrollBox;
    UniPanel1: TUniPanel;
    compBAIEMP: TUniEdit;
    UniContainerPanel15: TUniContainerPanel;
    UniLabel12: TUniLabel;
    UniPanel2: TUniPanel;
    compCEPEMP: TUniEdit;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniPanel3: TUniPanel;
    compENDEMP: TUniEdit;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniPanel6: TUniPanel;
    compCOMPLEMENTO: TUniEdit;
    UniContainerPanel14: TUniContainerPanel;
    UniLabel3: TUniLabel;
    UniPanel5: TUniPanel;
    compNUMERO: TUniEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel4: TUniLabel;
    pn2: TUniPanel;
    sBox2: TUniScrollBox;
    UniPanel8: TUniPanel;
    tab2: TUniTabSheet;
    tab3: TUniTabSheet;
    tab4: TUniTabSheet;
    tab5: TUniTabSheet;
    tab6: TUniTabSheet;
    tab7: TUniTabSheet;
    tab8: TUniTabSheet;
    rg2: TRGLayoutUnigui;
    UniPanel4: TUniPanel;
    UniContainerPanel7: TUniContainerPanel;
    UniLabel9: TUniLabel;
    compESTEMP: TUniSFComboBox;
    UniPanel12: TUniPanel;
    UniContainerPanel8: TUniContainerPanel;
    UniLabel11: TUniLabel;
    compCIDEMP: TUniSFComboBox;
    UniPanel13: TUniPanel;
    compAREA: TUniEdit;
    UniContainerPanel11: TUniContainerPanel;
    UniLabel13: TUniLabel;
    btnArea: TUniSFBitBtn;
    UniPanel16: TUniPanel;
    compTELEMP: TUniEdit;
    UniContainerPanel17: TUniContainerPanel;
    UniLabel16: TUniLabel;
    UniPanel17: TUniPanel;
    compFAXEMP: TUniEdit;
    UniContainerPanel18: TUniContainerPanel;
    UniLabel17: TUniLabel;
    UniPanel18: TUniPanel;
    UniContainerPanel19: TUniContainerPanel;
    UniLabel18: TUniLabel;
    compREGIME: TUniSFComboBox;
    UniPanel19: TUniPanel;
    compCGCEMP: TUniEdit;
    UniContainerPanel20: TUniContainerPanel;
    UniLabel19: TUniLabel;
    UniPanel20: TUniPanel;
    compIEEMP: TUniEdit;
    UniContainerPanel21: TUniContainerPanel;
    UniLabel20: TUniLabel;
    UniPanel22: TUniPanel;
    compCNAE: TUniEdit;
    UniContainerPanel28: TUniContainerPanel;
    UniLabel22: TUniLabel;
    UniPanel23: TUniPanel;
    UniContainerPanel29: TUniContainerPanel;
    UniLabel23: TUniLabel;
    compPARCELACONSIDERA: TUniSFComboBox;
    UniPanel24: TUniPanel;
    UniContainerPanel30: TUniContainerPanel;
    UniLabel24: TUniLabel;
    compMOVENTR: TUniSFComboBox;
    UniPanel28: TUniPanel;
    compCODEMP: TUniEdit;
    UniContainerPanel34: TUniContainerPanel;
    UniLabel28: TUniLabel;
    UniPanel29: TUniPanel;
    compNOMEMP: TUniEdit;
    UniContainerPanel35: TUniContainerPanel;
    UniLabel29: TUniLabel;
    UniPanel30: TUniPanel;
    compNOMEFEMP: TUniEdit;
    UniContainerPanel36: TUniContainerPanel;
    UniLabel30: TUniLabel;
    UniPanel21: TUniPanel;
    compINSCRMUN: TUniEdit;
    UniContainerPanel25: TUniContainerPanel;
    UniLabel21: TUniLabel;
    UniContainerPanel42: TUniContainerPanel;
    btnEsscolherImagem: TUniSFBitBtn;
    imgLogoEmpresa: TUniImage;
    btnRemoveLogo: TUniSFBitBtn;
    UniSFLabel3: TUniSFLabel;
    UniPanel7: TUniPanel;
    UniContainerPanel1: TUniContainerPanel;
    UniSFBitBtn3: TUniSFBitBtn;
    UniImage1: TUniImage;
    UniSFBitBtn4: TUniSFBitBtn;
    UniSFLabel4: TUniSFLabel;
    UniPanel9: TUniPanel;
    UniContainerPanel3: TUniContainerPanel;
    UniSFBitBtn5: TUniSFBitBtn;
    UniImage2: TUniImage;
    UniSFBitBtn6: TUniSFBitBtn;
    UniSFLabel5: TUniSFLabel;
    UniPanel10: TUniPanel;
    pn3: TUniPanel;
    sBox3: TUniScrollBox;
    UniPanel11: TUniPanel;
    compEMAILHOST: TUniEdit;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniPanel31: TUniPanel;
    compEMAILPORT: TUniEdit;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel5: TUniLabel;
    UniPanel32: TUniPanel;
    compEMAILFROM: TUniEdit;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniPanel33: TUniPanel;
    compEMAILUSER: TUniEdit;
    UniContainerPanel37: TUniContainerPanel;
    UniLabel7: TUniLabel;
    UniPanel34: TUniPanel;
    compEMAILPASSWORD: TUniEdit;
    UniContainerPanel38: TUniContainerPanel;
    UniLabel8: TUniLabel;
    UniPanel35: TUniPanel;
    UniContainerPanel39: TUniContainerPanel;
    UniLabel31: TUniLabel;
    compEMAILAUT: TUniSFComboBox;
    UniPanel36: TUniPanel;
    UniContainerPanel40: TUniContainerPanel;
    UniLabel32: TUniLabel;
    compLOGMAIL: TUniSFComboBox;
    UniPanel37: TUniPanel;
    UniContainerPanel41: TUniContainerPanel;
    UniLabel33: TUniLabel;
    compSTARTTLS: TUniFSToggle;
    UniPanel38: TUniPanel;
    UniContainerPanel43: TUniContainerPanel;
    UniLabel34: TUniLabel;
    compCONECTAPOP3: TUniFSToggle;
    UniPanel39: TUniPanel;
    compENDERECOPOP3: TUniEdit;
    UniContainerPanel44: TUniContainerPanel;
    UniLabel35: TUniLabel;
    UniPanel40: TUniPanel;
    UniContainerPanel45: TUniContainerPanel;
    UniSFBitBtn7: TUniSFBitBtn;
    UniImage3: TUniImage;
    UniSFBitBtn8: TUniSFBitBtn;
    UniSFLabel6: TUniSFLabel;
    UniPanel41: TUniPanel;
    rg3: TRGLayoutUnigui;
    UniPanel42: TUniPanel;
    compPORTAPOP3: TUniEdit;
    UniContainerPanel46: TUniContainerPanel;
    UniLabel36: TUniLabel;
    pn4: TUniPanel;
    sBox4: TUniScrollBox;
    UniPanel44: TUniPanel;
    UniContainerPanel47: TUniContainerPanel;
    UniLabel37: TUniLabel;
    UniPanel45: TUniPanel;
    UniPanel43: TUniPanel;
    UniContainerPanel48: TUniContainerPanel;
    UniLabel38: TUniLabel;
    compMODELOBOB: TUniSFComboBox;
    UniPanel46: TUniPanel;
    UniContainerPanel49: TUniContainerPanel;
    UniLabel39: TUniLabel;
    compNLINHASBOB: TUniSFComboBox;
    UniPanel47: TUniPanel;
    compTOKENIBPT: TUniEdit;
    UniContainerPanel50: TUniContainerPanel;
    UniLabel40: TUniLabel;
    rg4: TRGLayoutUnigui;
    UniContainerPanel51: TUniContainerPanel;
    UniLabel41: TUniLabel;
    compINT_BAIXACOMPOSICAO: TUniFSToggle;
    compINT_TIPOBAIXA: TUniSFComboBox;
    UniSFButton1: TUniSFButton;
    UniLabel42: TUniLabel;
    pn5: TUniPanel;
    sBox5: TUniScrollBox;
    UniPanel48: TUniPanel;
    UniContainerPanel52: TUniContainerPanel;
    UniLabel43: TUniLabel;
    UniPanel49: TUniPanel;
    UniContainerPanel53: TUniContainerPanel;
    UniLabel44: TUniLabel;
    rg5: TRGLayoutUnigui;
    UniScrollBox1: TUniScrollBox;
    chkSab: TUniCheckBox;
    chkSex: TUniCheckBox;
    chkQui: TUniCheckBox;
    chkQua: TUniCheckBox;
    chkTer: TUniCheckBox;
    chkSeg: TUniCheckBox;
    chkDom: TUniCheckBox;
    UniScrollBox2: TUniScrollBox;
    UniContainerPanel54: TUniContainerPanel;
    chkDia15: TUniCheckBox;
    chkDia14: TUniCheckBox;
    chkDia13: TUniCheckBox;
    chkDia12: TUniCheckBox;
    chkDia11: TUniCheckBox;
    chkDia10: TUniCheckBox;
    chkDia9: TUniCheckBox;
    chkDia8: TUniCheckBox;
    chkDia7: TUniCheckBox;
    chkDia6: TUniCheckBox;
    chkDia5: TUniCheckBox;
    chkDia4: TUniCheckBox;
    chkDia3: TUniCheckBox;
    chkDia2: TUniCheckBox;
    chkDia1: TUniCheckBox;
    UniContainerPanel55: TUniContainerPanel;
    chkDia30: TUniCheckBox;
    chkDia29: TUniCheckBox;
    chkDia28: TUniCheckBox;
    chkDia27: TUniCheckBox;
    chkDia26: TUniCheckBox;
    chkDia25: TUniCheckBox;
    chkDia24: TUniCheckBox;
    chkDia23: TUniCheckBox;
    chkDia22: TUniCheckBox;
    chkDia21: TUniCheckBox;
    chkDia20: TUniCheckBox;
    chkDia19: TUniCheckBox;
    chkDia18: TUniCheckBox;
    chkDia17: TUniCheckBox;
    chkDia16: TUniCheckBox;
    chkDia31: TUniCheckBox;
    UniPanel50: TUniPanel;
    UniContainerPanel56: TUniContainerPanel;
    UniLabel45: TUniLabel;
    chkRes1: TUniCheckBox;
    chkRes2: TUniCheckBox;
    chkRes3: TUniCheckBox;
    chkRes4: TUniCheckBox;
    chkRes5: TUniCheckBox;
    chkRes6: TUniCheckBox;
    chkRes7: TUniCheckBox;
    chkRes8: TUniCheckBox;
    UniPanel51: TUniPanel;
    UniContainerPanel57: TUniContainerPanel;
    UniLabel46: TUniLabel;
    compQUERRECEBER: TUniFSToggle;
    UniPanel52: TUniPanel;
    UniContainerPanel58: TUniContainerPanel;
    UniLabel47: TUniLabel;
    compSM: TUniSFComboBox;
    UniPanel53: TUniPanel;
    UniContainerPanel59: TUniContainerPanel;
    UniLabel48: TUniLabel;
    compRESULTDIAS: TUniEdit;
    UniPanel54: TUniPanel;
    UniContainerPanel60: TUniContainerPanel;
    UniLabel49: TUniLabel;
    compAPOS: TUniEdit;
    UniPanel55: TUniPanel;
    UniEdit23: TUniEdit;
    UniContainerPanel61: TUniContainerPanel;
    UniLabel50: TUniLabel;
    pn6: TUniPanel;
    sBox6: TUniScrollBox;
    UniPanel61: TUniPanel;
    UniEdit24: TUniEdit;
    UniContainerPanel66: TUniContainerPanel;
    UniLabel56: TUniLabel;
    rg6: TRGLayoutUnigui;
    pn7: TUniPanel;
    sBox7: TUniScrollBox;
    UniPanel56: TUniPanel;
    compNOMECONTADOR: TUniEdit;
    UniContainerPanel62: TUniContainerPanel;
    UniLabel51: TUniLabel;
    UniPanel57: TUniPanel;
    compCPFCONTADOR: TUniEdit;
    UniContainerPanel63: TUniContainerPanel;
    UniLabel52: TUniLabel;
    UniPanel58: TUniPanel;
    compCRCCONTADOR: TUniEdit;
    UniContainerPanel64: TUniContainerPanel;
    UniLabel53: TUniLabel;
    UniPanel59: TUniPanel;
    compCNPJCONTADOR: TUniEdit;
    UniContainerPanel65: TUniContainerPanel;
    UniLabel54: TUniLabel;
    UniPanel60: TUniPanel;
    compENDERECOCONTADOR: TUniEdit;
    UniContainerPanel67: TUniContainerPanel;
    UniLabel55: TUniLabel;
    UniPanel62: TUniPanel;
    compNUMEROCONTADOR: TUniEdit;
    UniContainerPanel68: TUniContainerPanel;
    UniLabel57: TUniLabel;
    UniPanel63: TUniPanel;
    compCOMPLCONTADOR: TUniEdit;
    UniContainerPanel69: TUniContainerPanel;
    UniLabel58: TUniLabel;
    UniPanel64: TUniPanel;
    compCODMUNCONTADOR: TUniEdit;
    UniContainerPanel70: TUniContainerPanel;
    UniLabel59: TUniLabel;
    UniPanel65: TUniPanel;
    compBAIRROCONTADOR: TUniEdit;
    UniContainerPanel71: TUniContainerPanel;
    UniLabel60: TUniLabel;
    UniPanel66: TUniPanel;
    compCEPCONTADOR: TUniEdit;
    UniContainerPanel72: TUniContainerPanel;
    UniLabel61: TUniLabel;
    UniPanel67: TUniPanel;
    compFONECONTADOR: TUniEdit;
    UniContainerPanel73: TUniContainerPanel;
    UniLabel62: TUniLabel;
    UniPanel68: TUniPanel;
    compFAXCONTADOR: TUniEdit;
    UniContainerPanel74: TUniContainerPanel;
    UniLabel63: TUniLabel;
    UniPanel69: TUniPanel;
    compEMAILCONTADOR: TUniEdit;
    UniContainerPanel75: TUniContainerPanel;
    UniLabel64: TUniLabel;
    rg7: TRGLayoutUnigui;
    pn8: TUniPanel;
    sBox8: TUniScrollBox;
    UniPanel72: TUniPanel;
    UniContainerPanel77: TUniContainerPanel;
    UniLabel66: TUniLabel;
    compTEMINTERMEDIADOR: TUniFSToggle;
    UniPanel75: TUniPanel;
    UniEdit38: TUniEdit;
    UniDBGrid1: TUniDBGrid;
    UniDBGrid2: TUniDBGrid;
    tab9: TUniTabSheet;
    tab10: TUniTabSheet;
    tab11: TUniTabSheet;
    pn9: TUniPanel;
    sBox9: TUniScrollBox;
    UniPanel71: TUniPanel;
    compURLWHATSAPP: TUniEdit;
    UniContainerPanel76: TUniContainerPanel;
    UniLabel65: TUniLabel;
    UniPanel73: TUniPanel;
    compPORTAWHATSAPP: TUniEdit;
    UniContainerPanel78: TUniContainerPanel;
    UniLabel67: TUniLabel;
    UniPanel74: TUniPanel;
    compTOKENWHATSAPP: TUniEdit;
    UniContainerPanel79: TUniContainerPanel;
    UniLabel68: TUniLabel;
    UniPanel70: TUniPanel;
    UniContainerPanel80: TUniContainerPanel;
    UniImage4: TUniImage;
    pn10: TUniPanel;
    sBox10: TUniScrollBox;
    UniPanel77: TUniPanel;
    UniContainerPanel81: TUniContainerPanel;
    UniLabel69: TUniLabel;
    UniSFButton2: TUniSFButton;
    UniDBGrid3: TUniDBGrid;
    UniPanel76: TUniPanel;
    UniScrollBox3: TUniScrollBox;
    UniDBGrid4: TUniDBGrid;
    UniPanel79: TUniPanel;
    UniContainerPanel83: TUniContainerPanel;
    UniLabel71: TUniLabel;
    UniSFButton4: TUniSFButton;
    UniPanel80: TUniPanel;
    UniContainerPanel84: TUniContainerPanel;
    UniLabel72: TUniLabel;
    UniSFButton5: TUniSFButton;
    UniSFButton6: TUniSFButton;
    UniSFButton7: TUniSFButton;
    rg8: TRGLayoutUnigui;
    rg9: TRGLayoutUnigui;
    CDSDados: TClientDataSet;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    UniPanel26: TUniPanel;
    compEMAIL: TUniEdit;
    UniContainerPanel32: TUniContainerPanel;
    UniLabel26: TUniLabel;
    procedure UniFrameCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure UniFrameReady(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure CDSTelaiconeAtivoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure imgFundoResize(Sender: TUniControl; OldWidth, OldHeight: Integer);
    procedure UniSFButton1Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure compSTARTTLSToggled(const Value: Boolean);
    procedure compCONECTAPOP3Toggled(const Value: Boolean);
    procedure compQUERRECEBERToggled(const Value: Boolean);
    procedure compTEMINTERMEDIADORToggled(const Value: Boolean);
    procedure chkDia1Change(Sender: TObject);
    procedure chkDia2Change(Sender: TObject);
    procedure lblDescricaoClick(Sender: TObject);
    procedure chkDia3Change(Sender: TObject);
    procedure chkDia4Change(Sender: TObject);
    procedure chkDia5Change(Sender: TObject);
    procedure chkDia6Change(Sender: TObject);
    procedure chkDia7Change(Sender: TObject);
    procedure chkDia8Change(Sender: TObject);
    procedure chkDia9Change(Sender: TObject);
    procedure chkDia10Change(Sender: TObject);
    procedure chkDia11Change(Sender: TObject);
    procedure chkDia12Change(Sender: TObject);
    procedure chkDia13Change(Sender: TObject);
    procedure chkDia14Change(Sender: TObject);
    procedure chkDia15Change(Sender: TObject);
    procedure chkDia16Change(Sender: TObject);
    procedure chkDia17Change(Sender: TObject);
    procedure chkDia18Change(Sender: TObject);
    procedure chkDia19Change(Sender: TObject);
    procedure chkDia20Change(Sender: TObject);
    procedure chkDia21Change(Sender: TObject);
    procedure chkDia22Change(Sender: TObject);
    procedure chkDia23Change(Sender: TObject);
    procedure chkDia24Change(Sender: TObject);
    procedure chkDia25Change(Sender: TObject);
    procedure chkDia26Change(Sender: TObject);
    procedure chkDia27Change(Sender: TObject);
    procedure chkDia28Change(Sender: TObject);
    procedure chkDia29Change(Sender: TObject);
    procedure chkDia30Change(Sender: TObject);
    procedure chkDia31Change(Sender: TObject);
    procedure chkDomChange(Sender: TObject);
    procedure chkSegChange(Sender: TObject);
    procedure chkTerChange(Sender: TObject);
    procedure chkQuaChange(Sender: TObject);
    procedure chkQuiChange(Sender: TObject);
    procedure chkSexChange(Sender: TObject);
    procedure chkSabChange(Sender: TObject);
    procedure chkRes1Change(Sender: TObject);
    procedure chkRes2Change(Sender: TObject);
    procedure chkRes3Change(Sender: TObject);
    procedure chkRes4Change(Sender: TObject);
    procedure chkRes5Change(Sender: TObject);
    procedure chkRes6Change(Sender: TObject);
    procedure chkRes7Change(Sender: TObject);
    procedure chkRes8Change(Sender: TObject);
    procedure compATIVOToggled(const Value: Boolean);
    procedure compCEPEMPExit(Sender: TObject);
    procedure compCEPEMPKeyPress(Sender: TObject; var Key: Char);
  private
    alterando :boolean;
    id        :string;
    ativo     :string;

    STARTTLS            :string;
    CONECTAPOP3         :string;
    QUERRECEBER         :string;
    TEMINTERMEDIADOR    :string;
    ArrayDiasDaSemana   :TArrayStringsDiasDaSemana;
    ArrayDiasDoMes      :TArrayStringsDiasDoMes;
    ArrayEnviarResumoDe :TArrayStringsEnviarResumoDe;

    procedure listar(pDado :string = '');
    procedure limpaCampos;
    procedure carregaDados;
    procedure retornar;

    procedure preencherArrayDefault;
    procedure preencheDadosCEP(resp: TEndereco);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses UniSFCore, Main, uConstantes, MainModule, System.StrUtils;


//Obtendo o retorno dos dias da semana e preenchendo o array
procedure preencheArrayStringsDiasDaSemana(const Texto: string; var Arr: TArrayStringsDiasDaSemana; TamanhoFixo: Integer);
var
  I: Integer;
begin
  // Limpa o array antes
  for I := Low(Arr) to High(Arr) do
    Arr[I] := '';

  // Copia caractere por caractere até o limite de 31
  for I := 1 to Length(Texto) do
  begin
    if I > High(Arr) then
      Break; // evita estouro
    Arr[I] := Texto[I];
  end;
end;

//Obtendo o retorno dos dias do mês e preenchendo o array
procedure preencheArrayStringsDiasDoMes(const Texto: string; var Arr: TArrayStringsDiasDoMes; TamanhoFixo: Integer);
var
  I: Integer;
begin
  // Limpa o array antes
  for I := Low(Arr) to High(Arr) do
    Arr[I] := '';

  // Copia caractere por caractere até o limite de 31
  for I := 1 to Length(Texto) do
  begin
    if I > High(Arr) then
      Break; // evita estouro
    Arr[I] := Texto[I];
  end;
end;

//Obtendo o retorno do EnviarResumoDe e preenchendo o array
procedure preencheArrayStringsEnviarResumoDe(const Texto: string; var Arr: TArrayStringsEnviarResumoDe; TamanhoFixo: Integer);
var
  I: Integer;
begin
  // Limpa o array antes
  for I := Low(Arr) to High(Arr) do
    Arr[I] := '';

  // Copia caractere por caractere até o limite de 31
  for I := 1 to Length(Texto) do
  begin
    if I > High(Arr) then
      Break; // evita estouro
    Arr[I] := Texto[I];
  end;
end;

procedure PreencherArrayDiasDoMes(var Arr: TArrayStringsDiasDoMes; Numero: Integer; Valor: string);
begin
  if (Numero >= Low(Arr)) and (Numero <= High(Arr)) then
    Arr[Numero] := Valor
  else
    raise Exception.CreateFmt('Número %d fora do intervalo permitido (1..31)', [Numero]);
end;

procedure PreencherArrayDiasDaSemana(var Arr: TArrayStringsDiasDaSemana; Numero: Integer; Valor: string);
begin
  if (Numero >= Low(Arr)) and (Numero <= High(Arr)) then
    Arr[Numero] := Valor
  else
    raise Exception.CreateFmt('Número %d fora do intervalo permitido (1..7)', [Numero]);
end;

procedure PreencherArrayEnviarResumoDe(var Arr: TArrayStringsEnviarResumoDe; Numero: Integer; Valor: string);
begin
  if (Numero >= Low(Arr)) and (Numero <= High(Arr)) then
    Arr[Numero] := Valor
  else
    raise Exception.CreateFmt('Número %d fora do intervalo permitido (1..8)', [Numero]);
end;

// Função para concatenar todo o conteúdo do array em uma string
function ArrayToStringDiasDoMes(const Arr: TArrayStringsDiasDoMes): string;
var
  I: Integer;
begin
  Result := '';
  for I := Low(Arr) to High(Arr) do
    Result := Result + Arr[I];
end;

// Função para concatenar todo o conteúdo do array em uma string
function ArrayToStringDiasDaSemana(const Arr: TArrayStringsDiasDaSemana): string;
var
  I: Integer;
begin
  Result := '';
  for I := Low(Arr) to High(Arr) do
    Result := Result + Arr[I];
end;

// Função para concatenar todo o conteúdo do array em uma string
function ArrayToStringEnviarResumoDe(const Arr: TArrayStringsEnviarResumoDe): string;
var
  I: Integer;
begin
  Result := '';
  for I := Low(Arr) to High(Arr) do
    Result := Result + Arr[I];
end;

procedure TfraCadEmpresas.btnCancelarClick(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  DefinirTodasAbasNaPrimeiraPagina(self);
end;

procedure TfraCadEmpresas.btnFecharClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente fechar esta aba?', mtConfirmation, mbYesNo) = mrYes then
    FecharAbaAtualComSeguranca(frmPrincipal.pagePrincipal);
end;

procedure TfraCadEmpresas.lblDescricaoClick(Sender: TObject);
//var
  //TextoFinal :string;
begin
  //TextoFinal := ArrayToString(ArrayDiasDoMes);

  //ShowMessage(TextoFinal);
end;

procedure TfraCadEmpresas.limpaCampos;
begin
  alterando := false;
  limpaCookiesEditRecursivo(self);
  PreencherCamposDoForm(Self, ativo, nil, nil, 'NOVO REGISTRO');
end;

procedure TfraCadEmpresas.btnNovoClick(Sender: TObject);
begin
  limpaCampos;
  preencherArrayDefault;
  pgcTela.ActivePageIndex := 1;
end;

procedure TfraCadEmpresas.preencherArrayDefault;
var
  i, j, k :integer;
begin
  for i := 1 to 31 do
    PreencherArrayDiasDoMes(ArrayDiasDoMes, i, 'X');

  for j := 1 to 7 do
    PreencherArrayDiasDaSemana(ArrayDiasDaSemana, j, 'X');

  for k := 1 to 8 do
    PreencherArrayEnviarResumoDe(ArrayEnviarResumoDe, k, 'X');
end;

procedure TfraCadEmpresas.btnSalvarClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
  stringDiasDaSemana    :string;
  stringDiasDoMes       :string;
  stringEnviarResumoDe  :string;
begin
  try

    stringDiasDaSemana    := ArrayToStringDiasDaSemana(ArrayDiasDaSemana);
	  stringDiasDoMes       := ArrayToStringDiasDoMes(ArrayDiasDoMes);
    stringEnviarResumoDe  := ArrayToStringEnviarResumoDe(ArrayEnviarResumoDe);

    jsonBody := TJSONObject.Create;

    jsonBody.AddPair('CODEMP', compCODEMP.Text);
    jsonBody.AddPair('NOMEMP', compNOMEMP.Text);
    jsonBody.AddPair('NOMEFEMP', compNOMEFEMP.Text);
    jsonBody.AddPair('TELEMP', compTELEMP.Text);
    jsonBody.AddPair('FAXEMP', compFAXEMP.Text);
    jsonBody.AddPair('ENDEMP', compENDEMP.Text);
    jsonBody.AddPair('CEPEMP', compCEPEMP.Text);
    jsonBody.AddPair('ESTEMP', compESTEMP.Text);
    jsonBody.AddPair('CGCEMP', compCGCEMP.Text);
    jsonBody.AddPair('IEEMP', compIEEMP.Text);

    //Estes campos Não devem ser alterados aqui...
    jsonBody.AddPair('DALT', '');
    jsonBody.AddPair('ULTPEDV', '');
    jsonBody.AddPair('ULTPEDC', '');
    jsonBody.AddPair('ULTOS', '');
    jsonBody.AddPair('FOTO', '');
    jsonBody.AddPair('FOTO1', '');
    jsonBody.AddPair('ULTFAT', '');
    jsonBody.AddPair('SERIE', '');
    jsonBody.AddPair('TIPOIMP', '');
    //Estes campos Não devem ser alterados aqui...

    jsonBody.AddPair('AREA', compAREA.Text);
    jsonBody.AddPair('BAIEMP', compBAIEMP.Text);
    jsonBody.AddPair('CNAE', compCNAE.Text);
    jsonBody.AddPair('INSCRMUN', compINSCRMUN.Text);
    jsonBody.AddPair('REGIME', compREGIME.Text);//Verificar o tamanho
    jsonBody.AddPair('CIDEMP', compCIDEMP.Text);
    jsonBody.AddPair('NUMERO', compNUMERO.Text);
    jsonBody.AddPair('COMPLEMENTO', compCOMPLEMENTO.Text);


    //Estes campos Não devem ser alterado aqui...
    jsonBody.AddPair('GRAF', '');
    jsonBody.AddPair('HOMOLPROD', '');
    jsonBody.AddPair('EMISSOR', '');
    jsonBody.AddPair('SERIENFSE', '');
    jsonBody.AddPair('SERIENFCE', '');
    jsonBody.AddPair('TIPOIMPDANFE', '');
    jsonBody.AddPair('TIPOEMISSAO', '');
    jsonBody.AddPair('OPTATIVO', '');
    jsonBody.AddPair('DIRNFE', '');
    jsonBody.AddPair('FUSO', '');
    jsonBody.AddPair('TPAMB', '');
    jsonBody.AddPair('AGUARDANFE', '');
    jsonBody.AddPair('IPISEG', '');
    jsonBody.AddPair('IPIFRETE', '');
    jsonBody.AddPair('IPIOUTRO', '');
    jsonBody.AddPair('IPIDESC', '');
    jsonBody.AddPair('ICMSSEG', '');
    jsonBody.AddPair('ICMSFRETE', '');
    jsonBody.AddPair('ICMSOUTRO', '');
    jsonBody.AddPair('ICMSDESC', '');
    jsonBody.AddPair('ICMSIPI', '');
    jsonBody.AddPair('ICMSSTSEG', '');
    jsonBody.AddPair('ICMSSTFRETE', '');
    jsonBody.AddPair('ICMSSTOUTRO', '');
    jsonBody.AddPair('ICMSSTDESC', '');
    jsonBody.AddPair('ICMSSTIPI', '');
    jsonBody.AddPair('PISCOFINSSEG', '');
    jsonBody.AddPair('PISCOFINSFRETE', '');
    jsonBody.AddPair('PISCOFINSOUTRO', '');
    jsonBody.AddPair('PISCOFINSDESC', '');
    jsonBody.AddPair('PISCOFINSIPI', '');
    jsonBody.AddPair('ULTNFCE', '');
    jsonBody.AddPair('DIRNFCE', '');
    jsonBody.AddPair('TPAMBNFCE', '');
    jsonBody.AddPair('CONTRIBUINTEIPI', '');
    //Estes campos Não devem ser alterado aqui...

    jsonBody.AddPair('EMAILHOST', compEMAILHOST.Text);
    jsonBody.AddPair('EMAILPORT', compEMAILPORT.Text);
    jsonBody.AddPair('EMAILFROM', compEMAILFROM.Text);
    jsonBody.AddPair('EMAILUSER', compEMAILUSER.Text);
    jsonBody.AddPair('EMAILPASSWORD', compEMAILPASSWORD.Text);
    jsonBody.AddPair('EMAILAUT', copy(compEMAILAUT.Text, 0, 1));


    //Estes campos Não devem ser alterado aqui...
    jsonBody.AddPair('CONTRIBUINTEIPICOMPRA', '');
    jsonBody.AddPair('VALIDANFE', '');
    jsonBody.AddPair('PCREDSN', '');
    //Estes campos Não devem ser alterado aqui...

    jsonBody.AddPair('PARCELACONSIDERA', copy(compPARCELACONSIDERA.Text, 0, 1));

    //Estes campos Não devem ser alterado aqui...
    jsonBody.AddPair('UTILIZATEF', '');
    jsonBody.AddPair('MODFRETE', '');
    jsonBody.AddPair('CODSERV', '');
    jsonBody.AddPair('LOTENFS', '');
    jsonBody.AddPair('RPS', '');
    jsonBody.AddPair('DIRNFSE', '');
    jsonBody.AddPair('TIPOTRIBUTACAO', '');
    jsonBody.AddPair('REGIMEESPECIALTRIBUTACAO', '');
    jsonBody.AddPair('IRRF', '');
    jsonBody.AddPair('IRRFVALAC', '');
    jsonBody.AddPair('INSS', '');
    jsonBody.AddPair('ISS', '');
    jsonBody.AddPair('ISSRET', '');
    jsonBody.AddPair('PIS', '');
    jsonBody.AddPair('COFINS', '');
    jsonBody.AddPair('CSLL', '');
    jsonBody.AddPair('PIMPOSTO', '');
    jsonBody.AddPair('NATUREZATRIBUTACAO', '');
    jsonBody.AddPair('NAOINFORMARMUNICIPIO', '');
    jsonBody.AddPair('REDUCAOINSS', '');
    jsonBody.AddPair('LAYOUTCID', '');
    jsonBody.AddPair('VERSAONFCE', '');
    jsonBody.AddPair('VERSAOSAT', '');
    jsonBody.AddPair('SERIESAT', '');
    jsonBody.AddPair('VERSAONFE', '');
    //Estes campos Não devem ser alterado aqui...

    jsonBody.AddPair('MODELOBOB', compMODELOBOB.Text);
    jsonBody.AddPair('NLINHASBOB', compNLINHASBOB.Text);

    //Estes campos Não devem ser alterado aqui...
    jsonBody.AddPair('INT_CODOBS', '');
    jsonBody.AddPair('PASTAXMLCOMPRA', '');
    jsonBody.AddPair('PASTAXMLVENDA', '');
    jsonBody.AddPair('INT_BAIXACOMPOSICAO', ToggledtostringNum(compINT_BAIXACOMPOSICAO.Toggled));
    jsonBody.AddPair('INT_TIPOBAIXA', copy(compINT_TIPOBAIXA.Text, 0, 1));
    jsonBody.AddPair('DESTACADHSAIENT', '');
    //Estes campos Não devem ser alterado aqui...

    //IMPLEMENTAR NO FRONT...
    jsonBody.AddPair('DIASSEMANA', stringDiasDaSemana);
    jsonBody.AddPair('DIASMES', stringDiasDoMes);
    jsonBody.AddPair('MOSTRAR', stringEnviarResumoDe);
    jsonBody.AddPair('QUERRECEBER', QUERRECEBER);
    jsonBody.AddPair('SM', copy(compSM.Text, 0, 1));
    jsonBody.AddPair('RESULTDIAS', compRESULTDIAS.Text);
    jsonBody.AddPair('APOS', compAPOS.Text);
    jsonBody.AddPair('MOVENTR', copy(compMOVENTR.Text, 0, 1));

    //Estes campos Não devem ser alterado aqui...
    jsonBody.AddPair('TOKENEMP', '');

    jsonBody.AddPair('CONTATO', '');
    //Estes campos Não devem ser alterado aqui...

    jsonBody.AddPair('NOMECONTADOR', compNOMECONTADOR.text);
    jsonBody.AddPair('CPFCONTADOR', compCPFCONTADOR.text);
    jsonBody.AddPair('CRCCONTADOR', compCRCCONTADOR.text);
    jsonBody.AddPair('CNPJCONTADOR', compCNPJCONTADOR.text);
    jsonBody.AddPair('ENDERECOCONTADOR', compENDERECOCONTADOR.text);
    jsonBody.AddPair('CODMUNCONTADOR', compCODMUNCONTADOR.text);
    jsonBody.AddPair('BAIRROCONTADOR', compBAIRROCONTADOR.text);
    jsonBody.AddPair('CEPCONTADOR', compCEPCONTADOR.text);
    jsonBody.AddPair('COMPLCONTADOR', compCOMPLCONTADOR.text);
    jsonBody.AddPair('FONECONTADOR', compFONECONTADOR.text);
    jsonBody.AddPair('FAXCONTADOR', compFAXCONTADOR.text);
    jsonBody.AddPair('EMAILCONTADOR', compEMAILCONTADOR.text);
    jsonBody.AddPair('CONTATOCLIENTE', '');
    jsonBody.AddPair('NUMEROCONTADOR', compNUMEROCONTADOR.Text);


    jsonBody.AddPair('LOGMAIL', copy(compLOGMAIL.Text, 0, 1));
    jsonBody.AddPair('STARTTLS', STARTTLS);
    jsonBody.AddPair('CONECTAPOP3', CONECTAPOP3);
    jsonBody.AddPair('ENDERECOPOP3', compENDERECOPOP3.Text);
    jsonBody.AddPair('PORTAPOP3', compPORTAPOP3.Text);

    jsonBody.AddPair('CODVEND', '');//Não utilizado

    jsonBody.AddPair('TOKENIBPT', compTOKENIBPT.Text);
    jsonBody.AddPair('TEMINTERMEDIADOR', TEMINTERMEDIADOR);
    jsonBody.AddPair('TOKENWHATSAPP', compTOKENWHATSAPP.Text);

    //Estes campos Não devem ser alterado aqui...
    jsonBody.AddPair('TIRAICMSPISCOFINS', '');
    jsonBody.AddPair('LOGEMAIL', '');
    jsonBody.AddPair('GNFCE', '');
    jsonBody.AddPair('SELDEMORES', '');
    //Estes campos Não devem ser alterado aqui...

    jsonBody.AddPair('URLWHATSAPP', compURLWHATSAPP.Text);
    jsonBody.AddPair('PORTAWHATSAPP', compPORTAWHATSAPP.Text);
    jsonBody.AddPair('EMAIL', compEMAIL.Text);

    //Estes campos Não devem ser alterado aqui...
    jsonBody.AddPair('VIASTEF', '');
    jsonBody.AddPair('NUMEROCUPOM', '');
    jsonBody.AddPair('NF_TRANSMISSOR', '');
    jsonBody.AddPair('TOKENNF', '');
    jsonBody.AddPair('CLIENTIDNF', '');
    jsonBody.AddPair('CLIENTSECRETNF', '');
    jsonBody.AddPair('DATAREFRESHNF', '');
    jsonBody.AddPair('DATAEXPIRANF', '');
    jsonBody.AddPair('SENHACERTIFICADO', '');
    jsonBody.AddPair('IDCSC', '');
    jsonBody.AddPair('TIPONFE', '');
    jsonBody.AddPair('CSC', '');
    jsonBody.AddPair('TPAMBNFSE', '');
    jsonBody.AddPair('TPEMIT_7', '');
    jsonBody.AddPair('SITSIMPLESNAC', '');
    jsonBody.AddPair('TPAMBCTE', '');
    jsonBody.AddPair('TPAMBMDFE', '');
    jsonBody.AddPair('NFCESAT', '');
    jsonBody.AddPair('CAMINHODLLSAT', '');
    jsonBody.AddPair('ASSINATURASAT', '');
    jsonBody.AddPair('REGTRIBISSQN', '');
    jsonBody.AddPair('INDRATISSQN', '');
    jsonBody.AddPair('MODELO', '');
    jsonBody.AddPair('REDETIPOINTER', '');
    jsonBody.AddPair('REDETIPOLAN', '');
    jsonBody.AddPair('REDESSID', '');
    jsonBody.AddPair('REDESEG', '');
    jsonBody.AddPair('REDECODIGO', '');
    jsonBody.AddPair('REDEIP', '');
    jsonBody.AddPair('REDEMASK', '');
    jsonBody.AddPair('REDEGW', '');
    jsonBody.AddPair('REDEDNS1', '');
    jsonBody.AddPair('REDEDNS2', '');
    jsonBody.AddPair('REDEPROXY', '');
    jsonBody.AddPair('REDEPROXYIP', '');
    jsonBody.AddPair('REDEPROXYPORTA', '');
    jsonBody.AddPair('REDEPROXYUSER', '');
    jsonBody.AddPair('REDEPROXYSENHA', '');
    jsonBody.AddPair('CODIGOATIVACAO', '');
    jsonBody.AddPair('PAGCOD', '');
    jsonBody.AddPair('UNCHECKED', '');
    jsonBody.AddPair('FORMATXML', '');
    jsonBody.AddPair('REMOVERACENTOS', '');
    jsonBody.AddPair('SALVARENVIO', '');
    jsonBody.AddPair('SALVARCFE', '');
    jsonBody.AddPair('SALVARCFECANC', '');
    jsonBody.AddPair('SEPARARPORCNPJ', '');
    jsonBody.AddPair('SEPARARPORMODELO', '');
    jsonBody.AddPair('SEPARARPORDIA', '');
    jsonBody.AddPair('SEPARARPORMES', '');
    jsonBody.AddPair('SEPARARPORANO', '');
    jsonBody.AddPair('LARGURACUPSAT', '');
    jsonBody.AddPair('MARGEMTOPOCUPSAT', '');
    jsonBody.AddPair('MARGEMFUNDOCUPSAT', '');
    jsonBody.AddPair('MARGEMESQUERDACUPSAT', '');
    jsonBody.AddPair('MARGEMDIREITACUPSAT', '');
    jsonBody.AddPair('LOGOLATERALCUPSAT', '');
    jsonBody.AddPair('QRCODELATERALCUPSAT', '');
    jsonBody.AddPair('IMPRIMIR1LINHACUPSAT', '');
    jsonBody.AddPair('IMPRIMIRDESCACRESCUPSAT', '');
    jsonBody.AddPair('IMPRIMIRCHAVE1LINHACUPSAT', '');
    jsonBody.AddPair('VALDADOSNFE', '');
    jsonBody.AddPair('VALDADOSNFCE', '');
    jsonBody.AddPair('DIRMDFE', '');
    jsonBody.AddPair('EMAIL_40', '');
    jsonBody.AddPair('SERIE_9', '');
    jsonBody.AddPair('TPAMB_6', '');
    jsonBody.AddPair('VERSAO_2', '');
    jsonBody.AddPair('NMDF_10', '');
    jsonBody.AddPair('CMDF_11', '');
    //Estes campos Não devem ser alterado aqui...

    jsonBody.AddPair('ATIVO', ativo);

    if alterando then
    begin
      resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(putEmpresa)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddParam('id', id)
                .AddBody(jsonBody.ToString)
                .Timeout(12000)
                .Put;

      alerta.Info('Cadastro alterado com sucesso!');
    end else
      begin
        resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(postEmpresa)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddBody(jsonBody.ToString)
                .Timeout(12000)
                .Post;

        if resp1.StatusCode = 200 then
          alerta.Info('Cadastro incluido com sucesso!') else
          alerta.error(resp1.StatusCode.ToString + ' - ' + resp1.Content)
      end;

    retornar;

  finally
    jsonBody.Free;
  end;

end;

procedure TfraCadEmpresas.retornar;
begin
  limpaCookiesEditRecursivo(self);
  DefinirTodasAbasNaPrimeiraPagina(self);
  listar;
end;

procedure TfraCadEmpresas.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Editar', 'editar', 'dc3545');
end;

procedure TfraCadEmpresas.CDSTelaiconeAtivoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTela.FieldByName('ativo').AsString, Text, DisplayText);
end;

procedure TfraCadEmpresas.compATIVOToggled(const Value: Boolean);
begin
  if value then
    ativo := 'S' else
    ativo := 'N';
end;

procedure TfraCadEmpresas.compCEPEMPExit(Sender: TObject);
begin
  try
    preencheDadosCEP(buscaCEP(compCEPEMP.text));
  except
  end;
end;

procedure TfraCadEmpresas.compCEPEMPKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  try
    preencheDadosCEP(buscaCEP(compCEPEMP.text));
  except
  end;
end;

procedure TfraCadEmpresas.preencheDadosCEP(resp: TEndereco);
var
  _endereco: TEndereco;
begin
  _endereco := resp;
  compENDEMP.Text := _endereco.Logradouro;
  compESTEMP.SetPositionFromValue(_endereco.UF);
  compBAIEMP.Text := _endereco.Bairro;
  compCIDEMP.SetPositionFromValue(_endereco.Localidade);
end;

procedure TfraCadEmpresas.compCONECTAPOP3Toggled(const Value: Boolean);
begin
  if value then
    CONECTAPOP3 := 'S' else
    CONECTAPOP3 := 'N';
end;

procedure TfraCadEmpresas.compQUERRECEBERToggled(const Value: Boolean);
begin
  if value then
    QUERRECEBER := 'S' else
    QUERRECEBER := 'N';
end;

procedure TfraCadEmpresas.compSTARTTLSToggled(const Value: Boolean);
begin
  if value then
    STARTTLS := 'S' else
    STARTTLS := 'N';
end;

procedure TfraCadEmpresas.compTEMINTERMEDIADORToggled(const Value: Boolean);
begin
  if value then
    TEMINTERMEDIADOR := 'S' else
    TEMINTERMEDIADOR := 'N';
end;

procedure TfraCadEmpresas.carregaDados;
var
  resp1         :IResponse;
  jsonResp      :TJSONObject;
  diasDaSemana  :TArrayStringsDiasDaSemana;
  dias          :string;
  meses         :string;
  enviaResumoDe :string;
begin
  alterando := true;
  id        := gridTela.Columns[0].Field.AsString;

  resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .resource(getEmpresa)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddParam('empresa', gridTela.Columns[2].Field.AsString)
                .timeOut(12000)
                .Get;

  if resp1.StatusCode = 200 then
  begin
    jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
    JsonToDataset(CDSDados, jsonResp.GetValue('Result').ToString);

    //Preenchendo os dias da semana
    dias := GetJsonArrayValue(jsonResp, 'Result', 'DIASSEMANA');
    preencheArrayStringsDiasDaSemana(dias, ArrayDiasDaSemana, 7);

    chkDom.Checked := marcaCheckbox(ArrayDiasDaSemana[1]);
    chkSeg.Checked := marcaCheckbox(ArrayDiasDaSemana[2]);
    chkTer.Checked := marcaCheckbox(ArrayDiasDaSemana[3]);
    chkQua.Checked := marcaCheckbox(ArrayDiasDaSemana[4]);
    chkQui.Checked := marcaCheckbox(ArrayDiasDaSemana[5]);
    chkSex.Checked := marcaCheckbox(ArrayDiasDaSemana[6]);
    chkSab.Checked := marcaCheckbox(ArrayDiasDaSemana[7]);
    //Preenchendo os dias da semana

    //Preenchendo os dias do mês
    meses := GetJsonArrayValue(jsonResp, 'Result', 'DIASMES');
    preencheArrayStringsDiasDoMes(meses, ArrayDiasDoMes, 31);

    chkDia1.Checked := marcaCheckbox(ArrayDiasDoMes[1]);
    chkDia2.Checked := marcaCheckbox(ArrayDiasDoMes[2]);
    chkDia3.Checked := marcaCheckbox(ArrayDiasDoMes[3]);
    chkDia4.Checked := marcaCheckbox(ArrayDiasDoMes[4]);
    chkDia5.Checked := marcaCheckbox(ArrayDiasDoMes[5]);
    chkDia6.Checked := marcaCheckbox(ArrayDiasDoMes[6]);
    chkDia7.Checked := marcaCheckbox(ArrayDiasDoMes[7]);
    chkDia8.Checked := marcaCheckbox(ArrayDiasDoMes[8]);
    chkDia9.Checked := marcaCheckbox(ArrayDiasDoMes[9]);
    chkDia10.Checked := marcaCheckbox(ArrayDiasDoMes[10]);
    chkDia11.Checked := marcaCheckbox(ArrayDiasDoMes[11]);
    chkDia12.Checked := marcaCheckbox(ArrayDiasDoMes[12]);
    chkDia13.Checked := marcaCheckbox(ArrayDiasDoMes[13]);
    chkDia14.Checked := marcaCheckbox(ArrayDiasDoMes[14]);
    chkDia15.Checked := marcaCheckbox(ArrayDiasDoMes[15]);
    chkDia16.Checked := marcaCheckbox(ArrayDiasDoMes[16]);
    chkDia17.Checked := marcaCheckbox(ArrayDiasDoMes[17]);
    chkDia18.Checked := marcaCheckbox(ArrayDiasDoMes[18]);
    chkDia19.Checked := marcaCheckbox(ArrayDiasDoMes[19]);
    chkDia20.Checked := marcaCheckbox(ArrayDiasDoMes[20]);
    chkDia21.Checked := marcaCheckbox(ArrayDiasDoMes[21]);
    chkDia22.Checked := marcaCheckbox(ArrayDiasDoMes[22]);
    chkDia23.Checked := marcaCheckbox(ArrayDiasDoMes[23]);
    chkDia24.Checked := marcaCheckbox(ArrayDiasDoMes[24]);
    chkDia25.Checked := marcaCheckbox(ArrayDiasDoMes[25]);
    chkDia26.Checked := marcaCheckbox(ArrayDiasDoMes[26]);
    chkDia27.Checked := marcaCheckbox(ArrayDiasDoMes[27]);
    chkDia28.Checked := marcaCheckbox(ArrayDiasDoMes[28]);
    chkDia29.Checked := marcaCheckbox(ArrayDiasDoMes[29]);
    chkDia30.Checked := marcaCheckbox(ArrayDiasDoMes[30]);
    chkDia31.Checked := marcaCheckbox(ArrayDiasDoMes[31]);
    //Preenchendo os dias do mês

    //Preenchendo o enviaResumoDe
    enviaResumoDe := GetJsonArrayValue(jsonResp, 'Result', 'MOSTRAR');
    preencheArrayStringsEnviarResumoDe(enviaResumoDe, ArrayEnviarResumoDe, 8);

    chkRes1.Checked := marcaCheckbox(ArrayEnviarResumoDe[1]);
    chkRes2.Checked := marcaCheckbox(ArrayEnviarResumoDe[2]);
    chkRes3.Checked := marcaCheckbox(ArrayEnviarResumoDe[3]);
    chkRes4.Checked := marcaCheckbox(ArrayEnviarResumoDe[4]);
    chkRes5.Checked := marcaCheckbox(ArrayEnviarResumoDe[5]);
    chkRes6.Checked := marcaCheckbox(ArrayEnviarResumoDe[6]);
    chkRes7.Checked := marcaCheckbox(ArrayEnviarResumoDe[7]);
    chkRes8.Checked := marcaCheckbox(ArrayEnviarResumoDe[8]);
    //Preenchendo o enviaResumoDe


    PreencherCamposDoForm(Self, ativo, nil, CDSDados, 'ALTERA REGISTRO');
    jsonResp.free;
  end;
end;

procedure TfraCadEmpresas.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    pgcTela.ActivePageIndex := 1;
    carregaDados;
  end;
end;

procedure TfraCadEmpresas.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfraCadEmpresas.imgFundoResize(Sender: TUniControl; OldWidth,
  OldHeight: Integer);
begin
  AjustarColunasGrid(gridTela, 2, 38, 2, 37, 38);
end;

procedure TfraCadEmpresas.listar(pDado :string = '');
var
  resp1       :IResponse;
  body        :string;
  jsonResp    :TJSONObject;
begin
  pgcTela.ActivePageIndex := 0;

  resp1 := TRequest.New.BaseURL(baseurlCadastros)
            .resource(getEmpresa)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddParam('empresa', pDado)
            .timeOut(12000)
            .Get;

  if resp1.StatusCode = 200 then
  begin
    try
      jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
      JsonToDataset(CDSTela, jsonResp.getValue('Result').toJson);
    finally
      jsonResp.Free;
    end;
  end;
end;

procedure TfraCadEmpresas.chkDia10Change(Sender: TObject);
begin
  if chkDia10.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 10, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 10, ' ');
end;

procedure TfraCadEmpresas.chkDia11Change(Sender: TObject);
begin
  if chkDia11.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 11, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 11, ' ');
end;

procedure TfraCadEmpresas.chkDia12Change(Sender: TObject);
begin
  if chkDia12.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 12, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 12, ' ');
end;

procedure TfraCadEmpresas.chkDia13Change(Sender: TObject);
begin
  if chkDia13.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 13, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 13, ' ');
end;

procedure TfraCadEmpresas.chkDia14Change(Sender: TObject);
begin
  if chkDia14.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 14, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 14, ' ');
end;

procedure TfraCadEmpresas.chkDia15Change(Sender: TObject);
begin
  if chkDia15.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 15, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 15, ' ');
end;

procedure TfraCadEmpresas.chkDia16Change(Sender: TObject);
begin
  if chkDia16.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 16, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 16, ' ');
end;

procedure TfraCadEmpresas.chkDia17Change(Sender: TObject);
begin
  if chkDia17.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 17, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 17, ' ');
end;

procedure TfraCadEmpresas.chkDia18Change(Sender: TObject);
begin
  if chkDia18.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 18, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 18, ' ');
end;

procedure TfraCadEmpresas.chkDia19Change(Sender: TObject);
begin
  if chkDia19.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 19, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 19, ' ');
end;

procedure TfraCadEmpresas.chkDia1Change(Sender: TObject);
begin
  if chkDia1.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 1, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 1, ' ');
end;

procedure TfraCadEmpresas.chkDia20Change(Sender: TObject);
begin
  if chkDia20.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 20, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 20, ' ');
end;

procedure TfraCadEmpresas.chkDia21Change(Sender: TObject);
begin
  if chkDia21.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 21, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 21, ' ');
end;

procedure TfraCadEmpresas.chkDia22Change(Sender: TObject);
begin
  if chkDia22.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 22, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 22, ' ');
end;

procedure TfraCadEmpresas.chkDia23Change(Sender: TObject);
begin
  if chkDia23.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 23, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 23, ' ');
end;

procedure TfraCadEmpresas.chkDia24Change(Sender: TObject);
begin
  if chkDia24.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 24, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 24, ' ');
end;

procedure TfraCadEmpresas.chkDia25Change(Sender: TObject);
begin
  if chkDia25.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 25, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 25, ' ');
end;

procedure TfraCadEmpresas.chkDia26Change(Sender: TObject);
begin
  if chkDia26.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 26, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 26, ' ');
end;

procedure TfraCadEmpresas.chkDia27Change(Sender: TObject);
begin
  if chkDia27.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 27, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 27, ' ');
end;

procedure TfraCadEmpresas.chkDia28Change(Sender: TObject);
begin
  if chkDia28.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 28, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 28, ' ');
end;

procedure TfraCadEmpresas.chkDia29Change(Sender: TObject);
begin
  if chkDia29.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 29, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 29, ' ');
end;

procedure TfraCadEmpresas.chkDia2Change(Sender: TObject);
begin
  if chkDia2.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 2, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 2, ' ');
end;

procedure TfraCadEmpresas.chkDia30Change(Sender: TObject);
begin
  if chkDia30.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 30, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 30, ' ');
end;

procedure TfraCadEmpresas.chkDia31Change(Sender: TObject);
begin
  if chkDia31.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 31, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 31, ' ');
end;

procedure TfraCadEmpresas.chkDia3Change(Sender: TObject);
begin
  if chkDia3.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 3, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 3, ' ');
end;

procedure TfraCadEmpresas.chkDia4Change(Sender: TObject);
begin
  if chkDia4.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 4, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 4, ' ');
end;

procedure TfraCadEmpresas.chkDia5Change(Sender: TObject);
begin
  if chkDia5.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 5, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 5, ' ');
end;

procedure TfraCadEmpresas.chkDia6Change(Sender: TObject);
begin
  if chkDia6.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 6, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 6, ' ');
end;

procedure TfraCadEmpresas.chkDia7Change(Sender: TObject);
begin
  if chkDia7.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 7, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 7, ' ');
end;

procedure TfraCadEmpresas.chkDia8Change(Sender: TObject);
begin
  if chkDia8.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 8, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 8, ' ');
end;

procedure TfraCadEmpresas.chkDia9Change(Sender: TObject);
begin
  if chkDia9.Checked then
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 9, 'X') else
    PreencherArrayDiasDoMes(ArrayDiasDoMes, 9, ' ');
end;

procedure TfraCadEmpresas.chkDomChange(Sender: TObject);
begin
  if chkDom.Checked then
    PreencherArrayDiasDaSemana(ArrayDiasDaSemana, 1, 'X') else
    PreencherArrayDiasDaSemana(ArrayDiasDaSemana, 1, ' ');
end;

procedure TfraCadEmpresas.chkSegChange(Sender: TObject);
begin
  if chkSeg.Checked then
    PreencherArrayDiasDaSemana(ArrayDiasDaSemana, 2, 'X') else
    PreencherArrayDiasDaSemana(ArrayDiasDaSemana, 2, ' ');
end;

procedure TfraCadEmpresas.chkTerChange(Sender: TObject);
begin
  if chkTer.Checked then
    PreencherArrayDiasDaSemana(ArrayDiasDaSemana, 3, 'X') else
    PreencherArrayDiasDaSemana(ArrayDiasDaSemana, 3, ' ');
end;

procedure TfraCadEmpresas.chkQuaChange(Sender: TObject);
begin
  if chkQua.Checked then
    PreencherArrayDiasDaSemana(ArrayDiasDaSemana, 4, 'X') else
    PreencherArrayDiasDaSemana(ArrayDiasDaSemana, 4, ' ');
end;

procedure TfraCadEmpresas.chkQuiChange(Sender: TObject);
begin
  if chkQui.Checked then
    PreencherArrayDiasDaSemana(ArrayDiasDaSemana, 5, 'X') else
    PreencherArrayDiasDaSemana(ArrayDiasDaSemana, 5, ' ');
end;

procedure TfraCadEmpresas.chkSexChange(Sender: TObject);
begin
  if chkSex.Checked then
    PreencherArrayDiasDaSemana(ArrayDiasDaSemana, 6, 'X') else
    PreencherArrayDiasDaSemana(ArrayDiasDaSemana, 6, ' ');
end;

procedure TfraCadEmpresas.chkSabChange(Sender: TObject);
begin
  if chkSab.Checked then
    PreencherArrayDiasDaSemana(ArrayDiasDaSemana, 7, 'X') else
    PreencherArrayDiasDaSemana(ArrayDiasDaSemana, 7, ' ');
end;

procedure TfraCadEmpresas.chkRes1Change(Sender: TObject);
begin
  if chkRes1.Checked then
    PreencherArrayEnviarResumoDe (ArrayEnviarResumoDe, 1, 'X') else
    PreencherArrayEnviarResumoDe(ArrayEnviarResumoDe, 1, ' ');
end;

procedure TfraCadEmpresas.chkRes2Change(Sender: TObject);
begin
  if chkRes2.Checked then
    PreencherArrayEnviarResumoDe(ArrayEnviarResumoDe, 2, 'X') else
    PreencherArrayEnviarResumoDe(ArrayEnviarResumoDe, 2, ' ');
end;

procedure TfraCadEmpresas.chkRes3Change(Sender: TObject);
begin
  if chkRes3.Checked then
    PreencherArrayEnviarResumoDe(ArrayEnviarResumoDe, 3, 'X') else
    PreencherArrayEnviarResumoDe(ArrayEnviarResumoDe, 3, ' ');
end;

procedure TfraCadEmpresas.chkRes4Change(Sender: TObject);
begin
  if chkRes4.Checked then
    PreencherArrayEnviarResumoDe(ArrayEnviarResumoDe, 4, 'X') else
    PreencherArrayEnviarResumoDe(ArrayEnviarResumoDe, 4, ' ');
end;

procedure TfraCadEmpresas.chkRes5Change(Sender: TObject);
begin
  if chkRes5.Checked then
    PreencherArrayEnviarResumoDe(ArrayEnviarResumoDe, 5, 'X') else
    PreencherArrayEnviarResumoDe(ArrayEnviarResumoDe, 5, ' ');
end;

procedure TfraCadEmpresas.chkRes6Change(Sender: TObject);
begin
  if chkRes6.Checked then
    PreencherArrayEnviarResumoDe(ArrayEnviarResumoDe, 6, 'X') else
    PreencherArrayEnviarResumoDe(ArrayEnviarResumoDe, 6, ' ');
end;

procedure TfraCadEmpresas.chkRes7Change(Sender: TObject);
begin
  if chkRes7.Checked then
    PreencherArrayEnviarResumoDe(ArrayEnviarResumoDe, 7, 'X') else
    PreencherArrayEnviarResumoDe(ArrayEnviarResumoDe, 7, ' ');
end;

procedure TfraCadEmpresas.chkRes8Change(Sender: TObject);
begin
  if chkRes8.Checked then
    PreencherArrayEnviarResumoDe(ArrayEnviarResumoDe, 8, 'X') else
    PreencherArrayEnviarResumoDe(ArrayEnviarResumoDe, 8, ' ');
end;

procedure TfraCadEmpresas.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
  ConfigurarAlignComboBoxes(self, 10);
  listar;
end;

procedure TfraCadEmpresas.UniFrameReady(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  MarcarTodosCheckBox(self);
  rg1.Start;
  rg2.Start;
  rg3.Start;
  rg4.Start;
  rg5.Start;
  rg6.Start;
  rg7.Start;
  rg8.Start;
  rg9.Start;
end;

procedure TfraCadEmpresas.UniSFButton1Click(Sender: TObject);
begin
  alerta.QuestionBasic('Atenção: Deseja realmente zerar os valores de UF por produto de todos os produtos? Esta alteração é irreversível, faça um backup antes. Continuar?',
  procedure(const ButtonClicked: TAButton)
  begin
    if ButtonClicked = abConfirm then
    begin
      limpaCookiesEditRecursivo(self);
      pgcTela.ActivePageIndex := 0;
      alertaM.Info(msgOperacaoSucesso);
    end;
  end);
end;

end.
