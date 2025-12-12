unit ufraCadProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Data.DB, uniRadioButton, UniSFComboBox, uniPanel,
  UniFSToggle, uniEdit, UniSFLabel, uniBasicGrid, uniDBGrid, uniPageControl,
  uniScrollBox, uniTimer, URGLayoutUnigui, uniImage, uniButton, uniBitBtn,
  UniSFButton, UniSFBitBtn, uniLabel, uniGUIBaseClasses, Datasnap.DBClient,
  UniSFiGrowl, UniSFSweetAlert, uniMemo;

type
  TfraCadProdutos = class(TUniFrame)
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
    pgcTelaDtl: TUniPageControl;
    tab0: TUniTabSheet;
    pn1: TUniPanel;
    sBox1: TUniScrollBox;
    UniPanel13: TUniPanel;
    compDESCR: TUniEdit;
    UniContainerPanel11: TUniContainerPanel;
    UniLabel13: TUniLabel;
    UniPanel28: TUniPanel;
    compCODPRO: TUniEdit;
    UniContainerPanel34: TUniContainerPanel;
    UniLabel28: TUniLabel;
    UniPanel29: TUniPanel;
    compCODPROCONSUMIDOR: TUniEdit;
    UniContainerPanel35: TUniContainerPanel;
    UniLabel29: TUniLabel;
    UniPanel30: TUniPanel;
    UniContainerPanel36: TUniContainerPanel;
    UniLabel30: TUniLabel;
    UniPanel1: TUniPanel;
    compCODFOR: TUniEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniPanel2: TUniPanel;
    compUNIDADE: TUniEdit;
    UniContainerPanel8: TUniContainerPanel;
    UniLabel3: TUniLabel;
    UniPanel3: TUniPanel;
    compCOMPLEMENTAR: TUniEdit;
    UniContainerPanel15: TUniContainerPanel;
    UniLabel12: TUniLabel;
    UniPanel5: TUniPanel;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniPanel6: TUniPanel;
    compMEDIO: TUniEdit;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel4: TUniLabel;
    UniPanel12: TUniPanel;
    compGRADE2: TUniEdit;
    UniContainerPanel14: TUniContainerPanel;
    UniLabel11: TUniLabel;
    UniPanel14: TUniPanel;
    compCEANTRIB: TUniEdit;
    UniContainerPanel13: TUniContainerPanel;
    UniLabel14: TUniLabel;
    UniPanel15: TUniPanel;
    UniContainerPanel16: TUniContainerPanel;
    UniLabel15: TUniLabel;
    compLISFDV: TUniSFComboBox;
    UniPanel4: TUniPanel;
    UniContainerPanel7: TUniContainerPanel;
    UniLabel1: TUniLabel;
    compLISPRE: TUniSFComboBox;
    UniPanel22: TUniPanel;
    compLOCAL: TUniEdit;
    UniContainerPanel28: TUniContainerPanel;
    UniLabel9: TUniLabel;
    UniPanel23: TUniPanel;
    compEAN13: TUniEdit;
    UniContainerPanel29: TUniContainerPanel;
    UniLabel22: TUniLabel;
    UniPanel24: TUniPanel;
    compNGRUPO: TUniEdit;
    UniContainerPanel30: TUniContainerPanel;
    UniLabel23: TUniLabel;
    UniPanel26: TUniPanel;
    tab1: TUniTabSheet;
    pn2: TUniPanel;
    sBox2: TUniScrollBox;
    UniPanel41: TUniPanel;
    compCODCLI1: TUniEdit;
    UniContainerPanel40: TUniContainerPanel;
    UniLabel33: TUniLabel;
    UniSFBitBtn2: TUniSFBitBtn;
    UniPanel42: TUniPanel;
    compNOMECLI1: TUniEdit;
    UniContainerPanel41: TUniContainerPanel;
    UniPanel43: TUniPanel;
    UniPanel44: TUniPanel;
    compCODCLI2: TUniEdit;
    UniContainerPanel42: TUniContainerPanel;
    UniLabel34: TUniLabel;
    btnVendedorers: TUniSFBitBtn;
    UniPanel45: TUniPanel;
    compNOMECLI2: TUniEdit;
    UniContainerPanel43: TUniContainerPanel;
    UniPanel47: TUniPanel;
    compCODCLI3: TUniEdit;
    UniContainerPanel44: TUniContainerPanel;
    UniLabel35: TUniLabel;
    UniSFBitBtn4: TUniSFBitBtn;
    UniPanel48: TUniPanel;
    compNOMECLI3: TUniEdit;
    UniContainerPanel45: TUniContainerPanel;
    UniPanel50: TUniPanel;
    compEMPENHO: TUniEdit;
    UniContainerPanel46: TUniContainerPanel;
    UniLabel36: TUniLabel;
    UniPanel52: TUniPanel;
    UniPanel57: TUniPanel;
    UniEdit15: TUniEdit;
    UniContainerPanel51: TUniContainerPanel;
    UniLabel40: TUniLabel;
    UniSFBitBtn7: TUniSFBitBtn;
    UniPanel58: TUniPanel;
    UniEdit16: TUniEdit;
    UniContainerPanel52: TUniContainerPanel;
    UniPanel59: TUniPanel;
    UniPanel60: TUniPanel;
    UniEdit17: TUniEdit;
    UniContainerPanel53: TUniContainerPanel;
    UniLabel41: TUniLabel;
    UniSFBitBtn8: TUniSFBitBtn;
    UniPanel61: TUniPanel;
    UniEdit18: TUniEdit;
    UniContainerPanel54: TUniContainerPanel;
    tab2: TUniTabSheet;
    pn3: TUniPanel;
    sBox3: TUniScrollBox;
    UniPanel62: TUniPanel;
    compCODNUM: TUniEdit;
    UniContainerPanel56: TUniContainerPanel;
    UniLabel42: TUniLabel;
    UniPanel65: TUniPanel;
    tab3: TUniTabSheet;
    pn4: TUniPanel;
    sBox4: TUniScrollBox;
    tab4: TUniTabSheet;
    pn5: TUniPanel;
    sBox5: TUniScrollBox;
    tab5: TUniTabSheet;
    pn6: TUniPanel;
    sBox6: TUniScrollBox;
    tab6: TUniTabSheet;
    pn7: TUniPanel;
    sBox7: TUniScrollBox;
    UniPanel66: TUniPanel;
    UniContainerPanel59: TUniContainerPanel;
    UniLabel45: TUniLabel;
    UniFSToggle1: TUniFSToggle;
    UniPanel67: TUniPanel;
    UniContainerPanel60: TUniContainerPanel;
    UniLabel46: TUniLabel;
    UniFSToggle2: TUniFSToggle;
    DSTela: TDataSource;
    compFPRODCOMP: TUniSFComboBox;
    UniPanel68: TUniPanel;
    UniContainerPanel61: TUniContainerPanel;
    UniLabel47: TUniLabel;
    UniSFBitBtn3: TUniSFBitBtn;
    UniLabel48: TUniLabel;
    UniPanel69: TUniPanel;
    UniSFBitBtn6: TUniSFBitBtn;
    compFAIXAST: TUniSFComboBox;
    UniPanel70: TUniPanel;
    compNUM: TUniEdit;
    UniContainerPanel62: TUniContainerPanel;
    UniLabel49: TUniLabel;
    UniSFBitBtn11: TUniSFBitBtn;
    UniPanel71: TUniPanel;
    compCOMPROD: TUniEdit;
    UniContainerPanel63: TUniContainerPanel;
    UniLabel50: TUniLabel;
    UniPanel72: TUniPanel;
    compGRADE1: TUniEdit;
    UniContainerPanel64: TUniContainerPanel;
    UniLabel51: TUniLabel;
    UniSFBitBtn12: TUniSFBitBtn;
    UniSFBitBtn9: TUniSFBitBtn;
    UniPanel7: TUniPanel;
    UniPanel8: TUniPanel;
    UniPanel9: TUniPanel;
    compPRECO1: TUniEdit;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniPanel10: TUniPanel;
    compPRECO2: TUniEdit;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel5: TUniLabel;
    UniPanel11: TUniPanel;
    compREAJUSTA2: TUniEdit;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniPanel16: TUniPanel;
    compPRECO3: TUniEdit;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel7: TUniLabel;
    UniPanel17: TUniPanel;
    compREAJUSTA3: TUniEdit;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel8: TUniLabel;
    UniPanel18: TUniPanel;
    UniPanel19: TUniPanel;
    UniContainerPanel17: TUniContainerPanel;
    UniLabel16: TUniLabel;
    compTIPOPROD: TUniSFComboBox;
    UniPanel20: TUniPanel;
    compEANOP: TUniEdit;
    UniContainerPanel18: TUniContainerPanel;
    UniLabel17: TUniLabel;
    UniPanel21: TUniPanel;
    UniPanel25: TUniPanel;
    compPRECO4: TUniEdit;
    UniContainerPanel19: TUniContainerPanel;
    UniLabel18: TUniLabel;
    UniPanel27: TUniPanel;
    compREAJUSTA1: TUniEdit;
    UniContainerPanel20: TUniContainerPanel;
    UniLabel19: TUniLabel;
    UniPanel31: TUniPanel;
    compREAJUSTA4: TUniEdit;
    UniContainerPanel21: TUniContainerPanel;
    UniLabel20: TUniLabel;
    UniPanel32: TUniPanel;
    compPRECO5: TUniEdit;
    UniContainerPanel25: TUniContainerPanel;
    UniLabel21: TUniLabel;
    UniPanel33: TUniPanel;
    compPRECO6: TUniEdit;
    UniContainerPanel31: TUniContainerPanel;
    UniLabel24: TUniLabel;
    UniPanel34: TUniPanel;
    compREAJUSTA5: TUniEdit;
    UniContainerPanel32: TUniContainerPanel;
    UniLabel25: TUniLabel;
    UniPanel35: TUniPanel;
    compREAJUSTA6: TUniEdit;
    UniContainerPanel33: TUniContainerPanel;
    UniLabel26: TUniLabel;
    UniPanel55: TUniPanel;
    UniContainerPanel55: TUniContainerPanel;
    UniSFBitBtn13: TUniSFBitBtn;
    UniPanel73: TUniPanel;
    UniPanel74: TUniPanel;
    UniPanel75: TUniPanel;
    UniContainerPanel65: TUniContainerPanel;
    UniSFBitBtn14: TUniSFBitBtn;
    UniPanel76: TUniPanel;
    UniContainerPanel66: TUniContainerPanel;
    UniSFBitBtn15: TUniSFBitBtn;
    UniPanel77: TUniPanel;
    compDESCRGRADE1: TUniEdit;
    UniContainerPanel67: TUniContainerPanel;
    UniPanel78: TUniPanel;
    compDESCRGRADE2: TUniEdit;
    UniContainerPanel68: TUniContainerPanel;
    UniPanel79: TUniPanel;
    compNOMEGRU: TUniEdit;
    UniContainerPanel69: TUniContainerPanel;
    UniPanel36: TUniPanel;
    compCOMPRA: TUniEdit;
    UniContainerPanel37: TUniContainerPanel;
    UniLabel27: TUniLabel;
    UniPanel37: TUniPanel;
    compMINIMO: TUniEdit;
    UniContainerPanel38: TUniContainerPanel;
    UniLabel31: TUniLabel;
    UniPanel38: TUniPanel;
    compMAXIMO: TUniEdit;
    UniContainerPanel39: TUniContainerPanel;
    UniLabel32: TUniLabel;
    UniPanel39: TUniPanel;
    compSALDO: TUniEdit;
    UniContainerPanel70: TUniContainerPanel;
    UniLabel52: TUniLabel;
    UniPanel40: TUniPanel;
    compMARKUP: TUniEdit;
    UniContainerPanel71: TUniContainerPanel;
    UniLabel53: TUniLabel;
    UniPanel46: TUniPanel;
    compDEMONSTRA: TUniEdit;
    UniContainerPanel72: TUniContainerPanel;
    UniLabel54: TUniLabel;
    UniPanel49: TUniPanel;
    UniContainerPanel47: TUniContainerPanel;
    UniLabel37: TUniLabel;
    UniSFBitBtn5: TUniSFBitBtn;
    UniPanel53: TUniPanel;
    compREDUCAO: TUniEdit;
    UniContainerPanel49: TUniContainerPanel;
    UniLabel38: TUniLabel;
    UniPanel54: TUniPanel;
    compPESOPROD: TUniEdit;
    UniContainerPanel50: TUniContainerPanel;
    UniLabel39: TUniLabel;
    UniPanel56: TUniPanel;
    compPESOPRODBRUTO: TUniEdit;
    UniContainerPanel57: TUniContainerPanel;
    UniLabel43: TUniLabel;
    UniPanel63: TUniPanel;
    compALIQAPRO: TUniEdit;
    UniContainerPanel58: TUniContainerPanel;
    UniLabel44: TUniLabel;
    UniPanel64: TUniPanel;
    UniContainerPanel73: TUniContainerPanel;
    UniLabel55: TUniLabel;
    compPRODCOMPL: TUniSFComboBox;
    UniPanel80: TUniPanel;
    compICMS: TUniEdit;
    UniContainerPanel74: TUniContainerPanel;
    UniLabel56: TUniLabel;
    UniPanel81: TUniPanel;
    UniContainerPanel75: TUniContainerPanel;
    UniLabel57: TUniLabel;
    compCLIPI: TUniSFComboBox;
    UniPanel82: TUniPanel;
    compICMSC: TUniEdit;
    UniContainerPanel76: TUniContainerPanel;
    UniLabel58: TUniLabel;
    UniPanel83: TUniPanel;
    UniContainerPanel77: TUniContainerPanel;
    UniLabel59: TUniLabel;
    compSTICMSC: TUniSFComboBox;
    UniPanel84: TUniPanel;
    compCOFINSV: TUniEdit;
    UniContainerPanel78: TUniContainerPanel;
    UniLabel60: TUniLabel;
    UniPanel85: TUniPanel;
    compSTCOFINSV: TUniEdit;
    UniContainerPanel79: TUniContainerPanel;
    UniLabel61: TUniLabel;
    UniSFBitBtn10: TUniSFBitBtn;
    UniPanel86: TUniPanel;
    compCOFINSC: TUniEdit;
    UniContainerPanel80: TUniContainerPanel;
    UniLabel62: TUniLabel;
    UniPanel87: TUniPanel;
    compSTCOFINSC: TUniEdit;
    UniContainerPanel81: TUniContainerPanel;
    UniLabel63: TUniLabel;
    UniSFBitBtn16: TUniSFBitBtn;
    UniPanel88: TUniPanel;
    compDESCRSTCOFINSC: TUniEdit;
    UniContainerPanel82: TUniContainerPanel;
    UniPanel89: TUniPanel;
    compDESCRSTCOFINSV: TUniEdit;
    UniContainerPanel83: TUniContainerPanel;
    UniPanel90: TUniPanel;
    UniPanel91: TUniPanel;
    compIPI: TUniEdit;
    UniContainerPanel84: TUniContainerPanel;
    UniLabel64: TUniLabel;
    UniPanel92: TUniPanel;
    compSTIPIV: TUniEdit;
    UniContainerPanel85: TUniContainerPanel;
    UniLabel65: TUniLabel;
    UniSFBitBtn17: TUniSFBitBtn;
    UniPanel93: TUniPanel;
    compDESCRSTIPIV: TUniEdit;
    UniContainerPanel86: TUniContainerPanel;
    UniPanel94: TUniPanel;
    compIPICMP: TUniEdit;
    UniContainerPanel87: TUniContainerPanel;
    UniLabel66: TUniLabel;
    UniPanel95: TUniPanel;
    compSTIPIC: TUniEdit;
    UniContainerPanel88: TUniContainerPanel;
    UniLabel67: TUniLabel;
    UniSFBitBtn18: TUniSFBitBtn;
    UniPanel96: TUniPanel;
    compDESCRSTIPIC: TUniEdit;
    UniContainerPanel89: TUniContainerPanel;
    UniPanel97: TUniPanel;
    compPISV: TUniEdit;
    UniContainerPanel90: TUniContainerPanel;
    UniLabel68: TUniLabel;
    UniPanel98: TUniPanel;
    compSTPISV: TUniEdit;
    UniContainerPanel91: TUniContainerPanel;
    UniLabel69: TUniLabel;
    UniSFBitBtn19: TUniSFBitBtn;
    UniPanel99: TUniPanel;
    compDESCRSTPISV: TUniEdit;
    UniContainerPanel92: TUniContainerPanel;
    UniPanel100: TUniPanel;
    compPISC: TUniEdit;
    UniContainerPanel93: TUniContainerPanel;
    UniLabel70: TUniLabel;
    UniPanel101: TUniPanel;
    compSTPISC: TUniEdit;
    UniContainerPanel94: TUniContainerPanel;
    UniLabel71: TUniLabel;
    UniSFBitBtn20: TUniSFBitBtn;
    UniPanel102: TUniPanel;
    compDESCRSTPISC: TUniEdit;
    UniContainerPanel95: TUniContainerPanel;
    UniPanel103: TUniPanel;
    UniPanel104: TUniPanel;
    UniPanel105: TUniPanel;
    UniPanel106: TUniPanel;
    compPDIF: TUniEdit;
    UniContainerPanel96: TUniContainerPanel;
    UniLabel72: TUniLabel;
    UniPanel107: TUniPanel;
    compFLT_DIVISORVOLUMES: TUniEdit;
    UniContainerPanel97: TUniContainerPanel;
    UniLabel73: TUniLabel;
    UniPanel108: TUniPanel;
    UniEdit22: TUniEdit;
    UniContainerPanel98: TUniContainerPanel;
    UniLabel74: TUniLabel;
    UniSFBitBtn21: TUniSFBitBtn;
    UniPanel109: TUniPanel;
    UniEdit23: TUniEdit;
    UniContainerPanel99: TUniContainerPanel;
    UniPanel110: TUniPanel;
    compCFOPSAIDA: TUniEdit;
    UniContainerPanel100: TUniContainerPanel;
    UniLabel75: TUniLabel;
    UniSFBitBtn22: TUniSFBitBtn;
    UniPanel111: TUniPanel;
    compDESCRCFOPSAIDA: TUniEdit;
    UniContainerPanel101: TUniContainerPanel;
    UniPanel112: TUniPanel;
    compCFOPENTRADA: TUniEdit;
    UniContainerPanel102: TUniContainerPanel;
    UniLabel76: TUniLabel;
    UniSFBitBtn23: TUniSFBitBtn;
    UniPanel113: TUniPanel;
    compDESCRCFOPENTRADA: TUniEdit;
    UniContainerPanel103: TUniContainerPanel;
    UniPanel114: TUniPanel;
    UniPanel115: TUniPanel;
    compDESCRNFCE_CODCFOP: TUniEdit;
    UniContainerPanel104: TUniContainerPanel;
    UniPanel116: TUniPanel;
    compNFCE_CODCFOP: TUniEdit;
    UniContainerPanel105: TUniContainerPanel;
    UniLabel77: TUniLabel;
    UniSFBitBtn24: TUniSFBitBtn;
    UniPanel117: TUniPanel;
    compUNIDADET: TUniEdit;
    UniContainerPanel106: TUniContainerPanel;
    UniLabel78: TUniLabel;
    UniPanel118: TUniPanel;
    compVALORT: TUniEdit;
    UniContainerPanel107: TUniContainerPanel;
    UniLabel79: TUniLabel;
    UniPanel119: TUniPanel;
    compINFADPROD: TUniEdit;
    UniContainerPanel108: TUniContainerPanel;
    UniLabel80: TUniLabel;
    UniPanel120: TUniPanel;
    UniSFBitBtn25: TUniSFBitBtn;
    UniSFBitBtn26: TUniSFBitBtn;
    UniSFBitBtn27: TUniSFBitBtn;
    UniPanel51: TUniPanel;
    compDESCRCLF: TUniEdit;
    UniContainerPanel48: TUniContainerPanel;
    UniPanel121: TUniPanel;
    UniContainerPanel109: TUniContainerPanel;
    UniLabel81: TUniLabel;
    compOBS: TUniMemo;
    UniPanel122: TUniPanel;
    compCPRODANP: TUniEdit;
    UniContainerPanel110: TUniContainerPanel;
    UniLabel82: TUniLabel;
    UniPanel123: TUniPanel;
    compDESCANP: TUniEdit;
    UniContainerPanel111: TUniContainerPanel;
    UniLabel83: TUniLabel;
    UniPanel124: TUniPanel;
    compUFCONS: TUniEdit;
    UniContainerPanel112: TUniContainerPanel;
    UniLabel84: TUniLabel;
    UniPanel125: TUniPanel;
    compPGLP: TUniEdit;
    UniContainerPanel113: TUniContainerPanel;
    UniLabel85: TUniLabel;
    procedure UniFrameReady(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure edPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSTelaiconeAtivoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure compATIVOToggled(const Value: Boolean);
    procedure UniSFBitBtn6Click(Sender: TObject);
    procedure UniSFBitBtn12Click(Sender: TObject);
    procedure UniSFBitBtn9Click(Sender: TObject);
    procedure UniSFBitBtn2Click(Sender: TObject);
    procedure btnVendedorersClick(Sender: TObject);
    procedure UniSFBitBtn4Click(Sender: TObject);
    procedure UniSFBitBtn10Click(Sender: TObject);
    procedure UniSFBitBtn16Click(Sender: TObject);
    procedure UniSFBitBtn17Click(Sender: TObject);
    procedure UniSFBitBtn19Click(Sender: TObject);
    procedure UniSFBitBtn20Click(Sender: TObject);
    procedure UniSFBitBtn18Click(Sender: TObject);
    procedure UniSFBitBtn22Click(Sender: TObject);
    procedure UniSFBitBtn23Click(Sender: TObject);
    procedure UniSFBitBtn24Click(Sender: TObject);
    procedure UniSFBitBtn25Click(Sender: TObject);
  private
    { Private declarations }
    alterando :boolean;
    id        :string;
    ativo     :string;
    Procedure carregaDados;
    procedure retornar;
    procedure listar(pDado :string = '');
    procedure limpaCampos;
    procedure callBackGrupos(Sender: TComponent;
      AResult: Integer);
    procedure callBackGrade1(Sender: TComponent;
      AResult: Integer);
    procedure callBackGrade2(Sender: TComponent;
      AResult: Integer);
    procedure callBackClientes1(Sender: TComponent;
      AResult: Integer);
    procedure callBackClientes2(Sender: TComponent;
      AResult: Integer);
    procedure callBackClientes3(Sender: TComponent;
      AResult: Integer);

    procedure callBackStCofinsVenda(Sender: TComponent;
      AResult: Integer);
    procedure callBackStCofinsCompra(Sender: TComponent;
      AResult: Integer);

    procedure callBackStPisVenda(Sender: TComponent;
      AResult: Integer);
    procedure callBackStPisCompra(Sender: TComponent;
      AResult: Integer);
    procedure callBackStIpiVenda(Sender: TComponent;
      AResult: Integer);
    procedure callBackStIpiCompra(Sender: TComponent;
      AResult: Integer);

    procedure callBackCfopSaida(Sender: TComponent;
      AResult: Integer);
    procedure callBackCfopEntrada(Sender: TComponent;
      AResult: Integer);
    procedure callBackCfopNfce(Sender: TComponent;
      AResult: Integer);

    procedure callBackClassificacoes(Sender: TComponent;
      AResult: Integer);

  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uConstantes, uUtils, RESTRequest4D.Response.Intf, System.JSON,
  RESTRequest4D.Request, MainModule, ufrmListaGlobal;

procedure TfraCadProdutos.callBackClassificacoes(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODNUM.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    compDESCRCLF.Text  := frmListaGlobal.CDSTela.FieldByName('descrclf').AsString;
    alertaM.info('Classificação selecionada: <b>' + frmListaGlobal.CDSTela.FieldByName('descrclf').AsString + '</b>');
  end;
end;

procedure TfraCadProdutos.callBackCfopNfce(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compNFCE_CODCFOP.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    compDESCRNFCE_CODCFOP.Text  := frmListaGlobal.CDSTela.FieldByName('natureza').AsString;
    alertaM.info('CFOP Selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('natureza').AsString + '</b>');
  end;
end;

procedure TfraCadProdutos.callBackCfopEntrada(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCFOPENTRADA.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    compDESCRCFOPENTRADA.Text  := frmListaGlobal.CDSTela.FieldByName('natureza').AsString;
    alertaM.info('CFOP Selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('natureza').AsString + '</b>');
  end;
end;

procedure TfraCadProdutos.callBackCfopSaida(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCFOPSAIDA.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    compDESCRCFOPSAIDA.Text  := frmListaGlobal.CDSTela.FieldByName('natureza').AsString;
    alertaM.info('CFOP Selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('natureza').AsString + '</b>');
  end;
end;

procedure TfraCadProdutos.callBackStIpiVenda(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compSTIPIV.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    compDESCRSTIPIV.Text  := frmListaGlobal.CDSTela.FieldByName('descr').AsString;
    alertaM.info('Selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('descr').AsString + '</b>');
  end;
end;

procedure TfraCadProdutos.callBackStIpiCompra(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compSTIPIC.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    compDESCRSTIPIC.Text  := frmListaGlobal.CDSTela.FieldByName('descr').AsString;
    alertaM.info('Selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('descr').AsString + '</b>');
  end;
end;

procedure TfraCadProdutos.callBackStPisCompra(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compSTPISC.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    compDESCRSTPISC.Text  := frmListaGlobal.CDSTela.FieldByName('descr').AsString;
    alertaM.info('Selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('descr').AsString + '</b>');
  end;
end;

procedure TfraCadProdutos.callBackStPisVenda(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compSTPISV.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    compDESCRSTPISV.Text  := frmListaGlobal.CDSTela.FieldByName('descr').AsString;
    alertaM.info('Selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('descr').AsString + '</b>');
  end;
end;

procedure TfraCadProdutos.callBackStCofinsCompra(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compSTCOFINSC.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    compDESCRSTCOFINSC.Text  := frmListaGlobal.CDSTela.FieldByName('descr').AsString;
    alertaM.info('Selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('descr').AsString + '</b>');
  end;
end;

procedure TfraCadProdutos.callBackStCofinsVenda(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compSTCOFINSV.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    compDESCRSTCOFINSV.Text  := frmListaGlobal.CDSTela.FieldByName('descr').AsString;
    alertaM.info('Selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('descr').AsString + '</b>');
  end;
end;

procedure TfraCadProdutos.callBackClientes3(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODCLI3.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    compNOMECLI3.Text  := frmListaGlobal.CDSTela.FieldByName('nome').AsString;
    alertaM.info('Fornecedor selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TfraCadProdutos.callBackClientes2(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODCLI2.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    compNOMECLI2.Text  := frmListaGlobal.CDSTela.FieldByName('nome').AsString;
    alertaM.info('Fornecedor selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TfraCadProdutos.callBackClientes1(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODCLI1.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    compNOMECLI1.Text  := frmListaGlobal.CDSTela.FieldByName('nome').AsString;
    alertaM.info('Fornecedor selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;


procedure TfraCadProdutos.callBackGrade2(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compGRADE2.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    compDESCRGRADE2.Text  := frmListaGlobal.CDSTela.FieldByName('descrGrade').AsString;
    alertaM.info('Grade selecionada: <b>' + frmListaGlobal.CDSTela.FieldByName('descrGrade').AsString + '</b>');
  end;
end;

procedure TfraCadProdutos.callBackGrade1(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compGRADE1.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    compDESCRGRADE1.Text  := frmListaGlobal.CDSTela.FieldByName('descrGrade').AsString;
    alertaM.info('Grade selecionada: <b>' + frmListaGlobal.CDSTela.FieldByName('descrGrade').AsString + '</b>');
  end;
end;

procedure TfraCadProdutos.callBackGrupos(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compNGrupo.text     := frmListaGlobal.CDSTela.FieldByName('id').AsString;
    compNOMEGRU.Text  := frmListaGlobal.CDSTela.FieldByName('nomeGru').AsString;
    alertaM.info('Grupo selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nomeGru').AsString + '</b>');
  end;
end;

procedure TfraCadProdutos.carregaDados;
var
  resp1         :IResponse;
  jsonResp      :TJSONObject;
begin
  alterando := true;
  id        := gridTela.Columns[0].Field.AsString;

  resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .resource(getProduto)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddParam('id', id)
                .AddParam('codpro', '')
                .AddParam('descr', '')
                .timeOut(12000)
                .Get;

  if resp1.StatusCode = 200 then
  begin
    jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
    JsonToDataset(CDSDados, jsonResp.GetValue('Result').ToString);

    PreencherCamposDoForm(Self, ativo, nil, CDSDados, 'ALTERA REGISTRO');
    jsonResp.free;
  end;
end;

procedure TfraCadProdutos.retornar;
begin
  pgcTela.ActivePageIndex := 0;
  listar;
end;

procedure TfraCadProdutos.listar(pDado :string = '');
var
  resp1     :IResponse;
  jsonResp  :TJSONObject;
  ehNumero  :Boolean;
  i         :Integer;
  req       :IRequest;
begin
  pgcTela.ActivePageIndex := 0;
  //Verifica se o valor é numérico
  ehNumero := TryStrToInt(pDado, i);

  //Aqui sim: usamos IRequest até o Get
  req := TRequest.New.BaseURL(baseurlCadastros)
                   .resource(getProduto)
                   .AddParam('nomeBanco', uniMainModule.nomebanco);

  if pDado <> '' then
  begin
    if ehNumero then
    begin
      req.AddParam('id', pDado);
      req.AddParam('codpro', pDado);
    end else
      req.AddParam('descr', pDado);
  end;

  req.timeOut(12000);
  resp1 := req.Get; //Aqui muda de IRequest IResponse

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

procedure TfraCadProdutos.limpaCampos;
begin
  alterando := false;
  limpaCookiesEditRecursivo(self);
  PreencherCamposDoForm(Self, ativo, nil, nil, 'NOVO REGISTRO');
end;

procedure TfraCadProdutos.btnCancelarClick(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  DefinirTodasAbasNaPrimeiraPagina(self);
end;

procedure TfraCadProdutos.btnNovoClick(Sender: TObject);
begin
  limpaCampos;
  pgcTela.ActivePageIndex := 1;
end;

procedure TfraCadProdutos.btnSalvarClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
begin
  try
    jsonBody := TJSONObject.Create;
    jsonBody.AddPair('codpro', compCODPRO.Text);
    jsonBody.AddPair('descr', compDESCR.Text);
    jsonBody.AddPair('unidade', compUNIDADE.Text);
    jsonBody.AddPair('preco1', compPRECO1.Text);
    jsonBody.AddPair('preco2', compPRECO2.Text);
    jsonBody.AddPair('preco3', compPRECO3.Text);
    jsonBody.AddPair('preco4', compPRECO4.Text);
    jsonBody.AddPair('preco5', compPRECO5.Text);
    jsonBody.AddPair('preco6', compPRECO6.Text);
    jsonBody.AddPair('pcusto', '');
    jsonBody.AddPair('medio', compMEDIO.Text);
    jsonBody.AddPair('pesoprod', compPESOPROD.Text);
    jsonBody.AddPair('pesoprodbruto', compPESOPRODBRUTO.Text);
    jsonBody.AddPair('maximo', compMAXIMO.Text);
    jsonBody.AddPair('minimo', compMINIMO.Text);
    jsonBody.AddPair('codnum', compCODNUM.Text);
    jsonBody.AddPair('icm', '');
    jsonBody.AddPair('ipi', compIPI.Text);
    jsonBody.AddPair('ipicmp', compIPICMP.Text);
    jsonBody.AddPair('fprodcomp', compFPRODCOMP.Text);
    jsonBody.AddPair('fmo', '');
    jsonBody.AddPair('fdgf', '');
    jsonBody.AddPair('imposto', '');
    jsonBody.AddPair('codcli1', compCODCLI1.Text);
    jsonBody.AddPair('codcli2', compCODCLI2.Text);
    jsonBody.AddPair('codcli3', compCODCLI3.Text);
    jsonBody.AddPair('dalt', '');
    jsonBody.AddPair('ngrupo', compNGRUPO.Text);
    jsonBody.AddPair('local', compLOCAL.Text);
    jsonBody.AddPair('markup', compMARKUP.Text);
    jsonBody.AddPair('q07', '');
    jsonBody.AddPair('q08', '');
    jsonBody.AddPair('q09', '');
    jsonBody.AddPair('q10', '');
    jsonBody.AddPair('q11', '');
    jsonBody.AddPair('q12', '');
    jsonBody.AddPair('codfor', compCODFOR.Text);
    jsonBody.AddPair('obs', compOBS.Lines.Text);
    jsonBody.AddPair('icms', compICMS.Text);
    jsonBody.AddPair('reducao', compREDUCAO.Text);
    jsonBody.AddPair('codpal', '');
    jsonBody.AddPair('aliqsg', '');
    jsonBody.AddPair('pisv', compPISV.Text);
    jsonBody.AddPair('pisc', compPISC.Text);
    jsonBody.AddPair('cofinsv', compCOFINSV.Text);
    jsonBody.AddPair('cofinsc', compCOFINSC.Text);
    jsonBody.AddPair('aliqapro', compALIQAPRO.Text);
    jsonBody.AddPair('clipi', copy(compCLIPI.Text,1,3));
    jsonBody.AddPair('prodcompl', compPRODCOMPL.Text);
    jsonBody.AddPair('stpisv', compSTPISV.Text);
    jsonBody.AddPair('stpisc', compSTPISC.Text);
    jsonBody.AddPair('stcofinsv', compSTCOFINSV.Text);
    jsonBody.AddPair('stcofinsc', compSTCOFINSC.Text);
    jsonBody.AddPair('stipiv', compSTIPIV.Text);
    jsonBody.AddPair('stipic', compSTIPIC.Text);
    jsonBody.AddPair('icmsc', compICMSC.Text);
    jsonBody.AddPair('sticmsc', copy(compSTICMSC.Text,1,3));
    jsonBody.AddPair('ean13', compEAN13.Text);
    jsonBody.AddPair('pdif', compPDIF.Text);
    jsonBody.AddPair('nfce_codcfop', compNFCE_CODCFOP.Text);
    jsonBody.AddPair('reajusta1', compREAJUSTA1.Text);
    jsonBody.AddPair('reajusta2', compREAJUSTA2.Text);
    jsonBody.AddPair('reajusta3', compREAJUSTA3.Text);
    jsonBody.AddPair('reajusta4', compREAJUSTA4.Text);
    jsonBody.AddPair('reajusta5', compREAJUSTA5.Text);
    jsonBody.AddPair('reajusta6', compREAJUSTA6.Text);
    jsonBody.AddPair('grade1', compGRADE1.Text);
    jsonBody.AddPair('grade2', compGRADE2.Text);
    jsonBody.AddPair('ceantrib', compCEANTRIB.Text);
    jsonBody.AddPair('infadprod', compINFADPROD.Text);
    jsonBody.AddPair('complementar', compCOMPLEMENTAR.Text);
    jsonBody.AddPair('cfopsaida', compCFOPSAIDA.Text);
    jsonBody.AddPair('cfopentrada', compCFOPENTRADA.Text);
    jsonBody.AddPair('flt_ii', '');
    jsonBody.AddPair('demonstra', compDEMONSTRA.Text);
    jsonBody.AddPair('flt_divisorvolumes', compFLT_DIVISORVOLUMES.Text);
    jsonBody.AddPair('codproconsumidor', compCODPROCONSUMIDOR.Text);
    jsonBody.AddPair('emptemp', '');
    jsonBody.AddPair('fdv', '');
    jsonBody.AddPair('ultdthora', '');
    jsonBody.AddPair('prodfdv', '');
    jsonBody.AddPair('fci', '');
    jsonBody.AddPair('unidadet', compUNIDADET.Text);
    jsonBody.AddPair('valort', compVALORT.Text);
    jsonBody.AddPair('lisfdv', compLISFDV.Text);
    jsonBody.AddPair('tipoprod', copy(compTIPOPROD.Text,1,2));
    jsonBody.AddPair('markup3', '');
    jsonBody.AddPair('markup4', '');
    jsonBody.AddPair('markup5', '');
    jsonBody.AddPair('markup6', '');
    jsonBody.AddPair('cprodanp', compCPRODANP.text);
    jsonBody.AddPair('descanp', compDESCANP.Text);
    jsonBody.AddPair('ufcons', compUFCONS.Text);
    jsonBody.AddPair('pglp', compPGLP.Text);
    jsonBody.AddPair('dataatualizacao', '');
    jsonBody.AddPair('cbarra', '');
    jsonBody.AddPair('cbarratrib', '');
    jsonBody.AddPair('eanop', compEANOP.Text);
    jsonBody.AddPair('ultimasincronizacaosellentt', '');
    jsonBody.AddPair('produtosellentt', '');
    jsonBody.AddPair('idsellent', '');
    jsonBody.AddPair('produtosellenttativo', '');
    jsonBody.AddPair('idsellentimg', '');
    jsonBody.AddPair('idsellentimgxprod', '');

    jsonBody.AddPair('lispre', compLISPRE.Text);
    jsonBody.AddPair('comprod', compCOMPROD.Text);
    jsonBody.AddPair('faixast', copy(compFAIXAST.Text,1,1));
    jsonBody.AddPair('num', compNUM.Text);
    jsonBody.AddPair('empenho', compEMPENHO.Text);
    jsonBody.AddPair('compra', compCOMPRA.Text);
    jsonBody.AddPair('saldo', compSALDO.Text);

    jsonBody.AddPair('ativo', ativo);

    if alterando then
    begin
      resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(putProduto)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddParam('id', id)
                .AddBody(jsonBody.ToString)
                .Timeout(12000)
                .Put;
    end else
      begin
        resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(postProduto)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddBody(jsonBody.ToString)
                .Timeout(12000)
                .Post;
      end;

    if resp1.StatusCode = 200 then
      begin
        if alterando then
          begin
            alerta.Info('Cadastro alterado com sucesso!');
          end
        else
          begin
            alerta.Info('Cadastro incluido com sucesso!');
          end;
        retornar;
      end
    else
      begin
        alerta.Info(resp1.StatusCode.ToString + ' ' + resp1.Content)
      end;
  finally
    jsonBody.Free;
  end;
end;

procedure TfraCadProdutos.btnVendedorersClick(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CLIENTES2';
  frmListaGlobal.lblDescricao.Caption := 'CLIENTES';
  frmListaGlobal.showModal(callBackClientes2);
end;

procedure TfraCadProdutos.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Editar', 'editar', 'dc3545');
end;

procedure TfraCadProdutos.CDSTelaiconeAtivoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTela.FieldByName('ativo').AsString, Text, DisplayText);
end;

procedure TfraCadProdutos.compATIVOToggled(const Value: Boolean);
begin
  if value then
    ativo := 'S' else
    ativo := 'N';
end;

procedure TfraCadProdutos.edPesquisarKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    listar(edPesquisar.Text);
end;

procedure TfraCadProdutos.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    pgcTela.ActivePageIndex := 1;
    carregaDados;
  end;
end;

procedure TfraCadProdutos.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfraCadProdutos.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
  ConfigurarAlignComboBoxes(self, 10);
  listar;
end;

procedure TfraCadProdutos.UniFrameReady(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  //MarcarTodosCheckBox(self);
  rg1.Start;
  rg2.Start;
  rg3.Start;
  rg4.Start;
  rg5.Start;
  rg6.Start;
//  rg7.Start;
//  rg8.Start;
//  rg9.Start;
end;

procedure TfraCadProdutos.UniSFBitBtn10Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'COFINSVENDA';
  frmListaGlobal.lblDescricao.Caption := 'COFINS VENDA';
  frmListaGlobal.showModal(callBackStCofinsVenda);
end;

procedure TfraCadProdutos.UniSFBitBtn12Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'GRADE1';
  frmListaGlobal.lblDescricao.Caption := 'GRADE1';
  frmListaGlobal.showModal(callBackGrade1);
end;

procedure TfraCadProdutos.UniSFBitBtn16Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'COFINSCOMPRA';
  frmListaGlobal.lblDescricao.Caption := 'COFINS COMPRA';
  frmListaGlobal.showModal(callBackStCofinsCompra);
end;

procedure TfraCadProdutos.UniSFBitBtn17Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'IPIVENDA';
  frmListaGlobal.lblDescricao.Caption := 'IPI VENDA';
  frmListaGlobal.showModal(callBackStIpiVenda);
end;

procedure TfraCadProdutos.UniSFBitBtn18Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'IPICOMPRA';
  frmListaGlobal.lblDescricao.Caption := 'IPI COMPRA';
  frmListaGlobal.showModal(callBackStIpiCompra);
end;

procedure TfraCadProdutos.UniSFBitBtn19Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'PISVENDA';
  frmListaGlobal.lblDescricao.Caption := 'PIS VENDA';
  frmListaGlobal.showModal(callBackStPisVenda);
end;

procedure TfraCadProdutos.UniSFBitBtn20Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'PISCOMPRA';
  frmListaGlobal.lblDescricao.Caption := 'PIS COMPRA';
  frmListaGlobal.showModal(callBackStPisCompra);
end;

procedure TfraCadProdutos.UniSFBitBtn22Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CFOPSAIDA';
  frmListaGlobal.lblDescricao.Caption := 'CFOP SAÍDA';
  frmListaGlobal.showModal(callBackCfopSaida);
end;

procedure TfraCadProdutos.UniSFBitBtn23Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CFOPENTRADA';
  frmListaGlobal.lblDescricao.Caption := 'CFOP ENTRADA';
  frmListaGlobal.showModal(callBackCfopEntrada);
end;

procedure TfraCadProdutos.UniSFBitBtn24Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CFOPNFCE';
  frmListaGlobal.lblDescricao.Caption := 'CFOP NFC-e';
  frmListaGlobal.showModal(callBackCfopNfce);
end;

procedure TfraCadProdutos.UniSFBitBtn25Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CLASSIFICACOES';
  frmListaGlobal.lblDescricao.Caption := 'CLASSIFICAÇÕES';
  frmListaGlobal.showModal(callBackClassificacoes);
end;

procedure TfraCadProdutos.UniSFBitBtn2Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CLIENTES1';
  frmListaGlobal.lblDescricao.Caption := 'CLIENTES';
  frmListaGlobal.showModal(callBackClientes1);
end;

procedure TfraCadProdutos.UniSFBitBtn4Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CLIENTES3';
  frmListaGlobal.lblDescricao.Caption := 'CLIENTES';
  frmListaGlobal.showModal(callBackClientes3);
end;

procedure TfraCadProdutos.UniSFBitBtn6Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'GRUPOS';
  frmListaGlobal.lblDescricao.Caption := 'GRUPOS';
  frmListaGlobal.showModal(callBackGrupos);
end;

procedure TfraCadProdutos.UniSFBitBtn9Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'GRADE2';
  frmListaGlobal.lblDescricao.Caption := 'GRADE2';
  frmListaGlobal.showModal(callBackGrade2);
end;

end.
