unit ufraConfiguracoesNfceF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Data.DB, Datasnap.DBClient, UniSFiGrowl,
  UniSFSweetAlert, uniGUIBaseClasses, uniTimer, URGLayoutUnigui, uniPanel,
  uniLabel, UniFSToggle, uniButton, uniBitBtn, UniSFButton, UniSFBitBtn,
  uniEdit, UniSFLabel, uniBasicGrid, uniDBGrid, uniPageControl, uniScrollBox,
  UniSFComboBox, uniGroupBox;

type
  TfraConfiguracoesNfceF = class(TUniFrame)
    scrFundo: TUniScrollBox;
    cpMenuTopo: TUniContainerPanel;
    lblDescricao: TUniLabel;
    btnNovo: TUniSFBitBtn;
    UniContainerPanel27: TUniContainerPanel;
    btnFechar: TUniSFBitBtn;
    rg1: TRGLayoutUnigui;
    rg2: TRGLayoutUnigui;
    rg3: TRGLayoutUnigui;
    rg4: TRGLayoutUnigui;
    rg5: TRGLayoutUnigui;
    rg6: TRGLayoutUnigui;
    rg7: TRGLayoutUnigui;
    alerta: TUniSFSweetAlert;
    alertaM: TUniSFiGrowl;
    CDSDados: TClientDataSet;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    CDSTela: TClientDataSet;
    CDSTelabotaoEditar: TAggregateField;
    CDSTelaiconeAtivo: TAggregateField;
    pgcTela: TUniPageControl;
    tsListagem: TUniTabSheet;
    tsDetalhe: TUniTabSheet;
    cpPesquisa: TUniContainerPanel;
    UniContainerPanel22: TUniContainerPanel;
    lblFiltro: TUniSFLabel;
    UniContainerPanel23: TUniContainerPanel;
    UniSFLabel2: TUniSFLabel;
    edPesquisar: TUniEdit;
    gridTela: TUniDBGrid;
    UniPanel2: TUniPanel;
    UniScrollBox1: TUniScrollBox;
    UniContainerPanel1: TUniContainerPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniSFLabel3: TUniSFLabel;
    UniContainerPanel3: TUniContainerPanel;
    UniSFLabel4: TUniSFLabel;
    compUSUARIO: TUniEdit;
    UniPanel3: TUniPanel;
    UniSFBitBtn3: TUniSFBitBtn;
    pgcTelaDetalhe: TUniPageControl;
    tsGeral: TUniTabSheet;
    tsFechamentoCaixa: TUniTabSheet;
    tsImpressora: TUniTabSheet;
    tsPermissao: TUniTabSheet;
    cpMenuRodape: TUniContainerPanel;
    btnSalvar: TUniSFBitBtn;
    btnCancelar: TUniSFBitBtn;
    compATIVO: TUniFSToggle;
    UniPanel14: TUniPanel;
    UniScrollBox2: TUniScrollBox;
    UniPanel15: TUniPanel;
    UniScrollBox3: TUniScrollBox;
    UniPanel16: TUniPanel;
    UniScrollBox4: TUniScrollBox;
    UniPanel17: TUniPanel;
    UniScrollBox5: TUniScrollBox;
    UniPanel1: TUniPanel;
    compNUMEROCAIXA: TUniEdit;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniPanel11: TUniPanel;
    UniPanel12: TUniPanel;
    UniPanel13: TUniPanel;
    UniPanel23: TUniPanel;
    compVENDEDOR: TUniEdit;
    UniContainerPanel29: TUniContainerPanel;
    UniLabel22: TUniLabel;
    UniSFBitBtn10: TUniSFBitBtn;
    UniPanel24: TUniPanel;
    UniContainerPanel30: TUniContainerPanel;
    UniLabel23: TUniLabel;
    compPONTODEVENDA: TUniFSToggle;
    UniPanel26: TUniPanel;
    UniPanel4: TUniPanel;
    compNOMVEND: TUniEdit;
    UniContainerPanel5: TUniContainerPanel;
    UniPanel5: TUniPanel;
    compCODCC: TUniEdit;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniSFBitBtn2: TUniSFBitBtn;
    UniPanel6: TUniPanel;
    UniContainerPanel7: TUniContainerPanel;
    UniLabel3: TUniLabel;
    compTABELA: TUniSFComboBox;
    UniPanel7: TUniPanel;
    compCODBAN: TUniEdit;
    UniContainerPanel8: TUniContainerPanel;
    UniLabel4: TUniLabel;
    UniSFBitBtn4: TUniSFBitBtn;
    UniPanel8: TUniPanel;
    compCODCFOP: TUniEdit;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel5: TUniLabel;
    UniSFBitBtn5: TUniSFBitBtn;
    UniPanel9: TUniPanel;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel6: TUniLabel;
    compTIPODESCONTO: TUniSFComboBox;
    UniPanel18: TUniPanel;
    UniContainerPanel12: TUniContainerPanel;
    UniLabel8: TUniLabel;
    compCONTACONCILIADA: TUniFSToggle;
    UniPanel19: TUniPanel;
    compDIASALTF12VENDAS: TUniEdit;
    UniContainerPanel13: TUniContainerPanel;
    UniLabel9: TUniLabel;
    UniPanel20: TUniPanel;
    DSTela: TDataSource;
    UniContainerPanel19: TUniContainerPanel;
    UniSFLabel5: TUniSFLabel;
    UniContainerPanel20: TUniContainerPanel;
    UniSFLabel6: TUniSFLabel;
    compID: TUniEdit;
    UniContainerPanel21: TUniContainerPanel;
    UniLabel15: TUniLabel;
    UniPanel32: TUniPanel;
    compSTR_CODPRSANGRIA: TUniEdit;
    UniContainerPanel25: TUniContainerPanel;
    UniLabel16: TUniLabel;
    UniSFBitBtn7: TUniSFBitBtn;
    UniPanel33: TUniPanel;
    UniEdit2: TUniEdit;
    UniContainerPanel28: TUniContainerPanel;
    UniPanel34: TUniPanel;
    UniPanel35: TUniPanel;
    UniPanel36: TUniPanel;
    UniEdit3: TUniEdit;
    UniContainerPanel31: TUniContainerPanel;
    UniPanel37: TUniPanel;
    compSTR_CODCCSANGRIA: TUniEdit;
    UniContainerPanel32: TUniContainerPanel;
    UniLabel17: TUniLabel;
    UniSFBitBtn8: TUniSFBitBtn;
    UniPanel38: TUniPanel;
    UniPanel39: TUniPanel;
    UniEdit5: TUniEdit;
    UniContainerPanel33: TUniContainerPanel;
    UniPanel40: TUniPanel;
    compINT_CODBANSANGRIA: TUniEdit;
    UniContainerPanel34: TUniContainerPanel;
    UniLabel18: TUniLabel;
    UniSFBitBtn9: TUniSFBitBtn;
    UniPanel41: TUniPanel;
    UniPanel42: TUniPanel;
    UniEdit7: TUniEdit;
    UniContainerPanel35: TUniContainerPanel;
    UniPanel43: TUniPanel;
    compINT_CODCLISANGRIA: TUniEdit;
    UniContainerPanel36: TUniContainerPanel;
    UniLabel19: TUniLabel;
    UniSFBitBtn11: TUniSFBitBtn;
    UniContainerPanel37: TUniContainerPanel;
    UniLabel20: TUniLabel;
    UniPanel44: TUniPanel;
    UniPanel45: TUniPanel;
    UniPanel46: TUniPanel;
    UniPanel47: TUniPanel;
    UniEdit9: TUniEdit;
    UniContainerPanel38: TUniContainerPanel;
    UniPanel48: TUniPanel;
    compSTR_CODPRREFORCO: TUniEdit;
    UniContainerPanel39: TUniContainerPanel;
    UniLabel21: TUniLabel;
    UniSFBitBtn12: TUniSFBitBtn;
    UniPanel49: TUniPanel;
    compSTR_CODCCREFORCO: TUniEdit;
    UniContainerPanel40: TUniContainerPanel;
    UniLabel24: TUniLabel;
    UniSFBitBtn13: TUniSFBitBtn;
    UniPanel50: TUniPanel;
    UniEdit12: TUniEdit;
    UniContainerPanel41: TUniContainerPanel;
    UniPanel51: TUniPanel;
    UniEdit13: TUniEdit;
    UniContainerPanel42: TUniContainerPanel;
    UniPanel52: TUniPanel;
    compINT_CODBANREFORCO: TUniEdit;
    UniContainerPanel43: TUniContainerPanel;
    UniLabel25: TUniLabel;
    UniSFBitBtn14: TUniSFBitBtn;
    UniPanel53: TUniPanel;
    UniEdit15: TUniEdit;
    UniContainerPanel44: TUniContainerPanel;
    UniPanel54: TUniPanel;
    compINT_CODCLIREFORCO: TUniEdit;
    UniContainerPanel45: TUniContainerPanel;
    UniLabel26: TUniLabel;
    UniSFBitBtn15: TUniSFBitBtn;
    UniPanel55: TUniPanel;
    UniPanel56: TUniPanel;
    UniContainerPanel46: TUniContainerPanel;
    UniLabel27: TUniLabel;
    compIMPRESSORA: TUniSFComboBox;
    UniPanel57: TUniPanel;
    UniContainerPanel47: TUniContainerPanel;
    UniLabel28: TUniLabel;
    UniPanel58: TUniPanel;
    UniContainerPanel48: TUniContainerPanel;
    UniLabel29: TUniLabel;
    compSTR_DESTACACLI: TUniFSToggle;
    UniPanel59: TUniPanel;
    UniContainerPanel49: TUniContainerPanel;
    UniLabel30: TUniLabel;
    compSTR_DESTACAENDCLI: TUniFSToggle;
    UniPanel60: TUniPanel;
    UniContainerPanel50: TUniContainerPanel;
    UniLabel31: TUniLabel;
    compSTR_DESTACAVEND: TUniFSToggle;
    UniPanel61: TUniPanel;
    UniPanel62: TUniPanel;
    UniPanel63: TUniPanel;
    UniContainerPanel51: TUniContainerPanel;
    UniLabel32: TUniLabel;
    UniPanel64: TUniPanel;
    UniContainerPanel52: TUniContainerPanel;
    UniLabel33: TUniLabel;
    compIMPRNAOFISCAL: TUniSFComboBox;
    UniPanel65: TUniPanel;
    UniContainerPanel53: TUniContainerPanel;
    UniLabel34: TUniLabel;
    compIMPRGAVETA: TUniSFComboBox;
    UniPanel66: TUniPanel;
    UniContainerPanel54: TUniContainerPanel;
    UniLabel35: TUniLabel;
    compMARCAIMPRESSORA: TUniSFComboBox;
    UniPanel67: TUniPanel;
    UniContainerPanel55: TUniContainerPanel;
    UniLabel36: TUniLabel;
    compTEMGUILHOTINA: TUniFSToggle;
    UniPanel68: TUniPanel;
    UniPanel69: TUniPanel;
    UniContainerPanel56: TUniContainerPanel;
    UniLabel37: TUniLabel;
    UniPanel70: TUniPanel;
    UniContainerPanel57: TUniContainerPanel;
    UniLabel38: TUniLabel;
    compTIPOIMPRESSAONF: TUniSFComboBox;
    UniPanel71: TUniPanel;
    UniContainerPanel58: TUniContainerPanel;
    UniLabel39: TUniLabel;
    compIMPPDFDIRTSPLUS: TUniFSToggle;
    UniPanel72: TUniPanel;
    UniPanel73: TUniPanel;
    UniContainerPanel59: TUniContainerPanel;
    UniLabel40: TUniLabel;
    UniPanel74: TUniPanel;
    UniContainerPanel60: TUniContainerPanel;
    UniLabel41: TUniLabel;
    compNCOLUNASPDF: TUniSFComboBox;
    UniPanel75: TUniPanel;
    UniContainerPanel61: TUniContainerPanel;
    UniLabel42: TUniLabel;
    compMARGEMNF: TUniSFComboBox;
    UniPanel76: TUniPanel;
    UniPanel77: TUniPanel;
    UniContainerPanel62: TUniContainerPanel;
    UniLabel43: TUniLabel;
    UniPanel78: TUniPanel;
    UniContainerPanel63: TUniContainerPanel;
    UniLabel44: TUniLabel;
    compMODELOIMPRESSORANF: TUniSFComboBox;
    UniPanel79: TUniPanel;
    UniContainerPanel64: TUniContainerPanel;
    UniLabel45: TUniLabel;
    compNCOLUNAS: TUniSFComboBox;
    UniPanel81: TUniPanel;
    UniContainerPanel66: TUniContainerPanel;
    UniLabel47: TUniLabel;
    compAlteraValorUnitario: TUniFSToggle;
    UniPanel82: TUniPanel;
    UniContainerPanel67: TUniContainerPanel;
    UniLabel48: TUniLabel;
    compAlteraConfiguracao: TUniFSToggle;
    UniPanel83: TUniPanel;
    UniContainerPanel68: TUniContainerPanel;
    UniLabel49: TUniLabel;
    compAlteraQuantidade: TUniFSToggle;
    UniPanel84: TUniPanel;
    UniContainerPanel69: TUniContainerPanel;
    UniLabel50: TUniLabel;
    compTrocaVendedor: TUniFSToggle;
    UniPanel85: TUniPanel;
    UniPanel86: TUniPanel;
    UniContainerPanel70: TUniContainerPanel;
    UniLabel51: TUniLabel;
    compF6HABILITADO: TUniFSToggle;
    UniPanel87: TUniPanel;
    UniContainerPanel71: TUniContainerPanel;
    UniLabel52: TUniLabel;
    compFechaPontoDeVenda: TUniFSToggle;
    UniContainerPanel72: TUniContainerPanel;
    UniLabel53: TUniLabel;
    UniPanel88: TUniPanel;
    UniPanel89: TUniPanel;
    UniPanel90: TUniPanel;
    UniContainerPanel73: TUniContainerPanel;
    UniLabel54: TUniLabel;
    compCANCELARCUPOM: TUniFSToggle;
    UniPanel91: TUniPanel;
    UniContainerPanel74: TUniContainerPanel;
    UniLabel55: TUniLabel;
    compAPLICADESCONTO: TUniFSToggle;
    UniContainerPanel75: TUniContainerPanel;
    UniLabel56: TUniLabel;
    UniPanel30: TUniPanel;
    UniPanel31: TUniPanel;
    UniPanel29: TUniPanel;
    UniContainerPanel18: TUniContainerPanel;
    UniLabel14: TUniLabel;
    compCONFIRMACONCLUIRVENDA: TUniSFComboBox;
    UniPanel28: TUniPanel;
    UniContainerPanel17: TUniContainerPanel;
    UniLabel13: TUniLabel;
    compCONFIRMAIMPRIMIRVENDA: TUniSFComboBox;
    UniPanel27: TUniPanel;
    UniContainerPanel16: TUniContainerPanel;
    UniLabel12: TUniLabel;
    compconfirmaGerarCupom: TUniSFComboBox;
    UniPanel22: TUniPanel;
    UniContainerPanel14: TUniContainerPanel;
    UniLabel10: TUniLabel;
    compCONFIRMAGERARCAIXA: TUniSFComboBox;
    UniPanel25: TUniPanel;
    UniContainerPanel15: TUniContainerPanel;
    UniLabel11: TUniLabel;
    compCONFIRMAGERARESTOQUE: TUniSFComboBox;
    UniPanel21: TUniPanel;
    UniPanel92: TUniPanel;
    UniContainerPanel76: TUniContainerPanel;
    UniLabel57: TUniLabel;
    compQRCODELATERAL: TUniFSToggle;
    UniPanel80: TUniPanel;
    btnPesquisar: TUniSFBitBtn;
    UniPanel10: TUniPanel;
    compCODDEP: TUniEdit;
    UniContainerPanel11: TUniContainerPanel;
    UniLabel7: TUniLabel;
    UniSFBitBtn6: TUniSFBitBtn;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameReady(Sender: TObject);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure gridTelaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSTelaiconeAtivoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btnCancelarClick(Sender: TObject);
    procedure UniSFBitBtn3Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure UniSFBitBtn2Click(Sender: TObject);
    procedure UniSFBitBtn5Click(Sender: TObject);
    procedure UniSFBitBtn10Click(Sender: TObject);
    procedure UniSFBitBtn4Click(Sender: TObject);
    procedure UniSFBitBtn6Click(Sender: TObject);
    procedure UniSFBitBtn7Click(Sender: TObject);
    procedure UniSFBitBtn8Click(Sender: TObject);
    procedure UniSFBitBtn9Click(Sender: TObject);
    procedure UniSFBitBtn11Click(Sender: TObject);
    procedure UniSFBitBtn12Click(Sender: TObject);
    procedure UniSFBitBtn13Click(Sender: TObject);
    procedure UniSFBitBtn14Click(Sender: TObject);
    procedure UniSFBitBtn15Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    ativo:string;
    procedure hGetPdvConfiguracao;
    procedure carregaDados;

    procedure callBackVendedores(Sender: TComponent;
      AResult: Integer);
    procedure callBackCompCODCC(Sender: TComponent;
      AResult: Integer);
    procedure callBackCompCODBAN(Sender: TComponent;
      AResult: Integer);
    procedure callBackCompCODCFOP(Sender: TComponent;
      AResult: Integer);
    procedure callBackCompCODDEP(Sender: TComponent;
      AResult: Integer);
    procedure callBackCompSTR_CODPRSANGRIA(Sender: TComponent;
      AResult: Integer);
    procedure callBackCompSTR_CODCCSANGRIA(Sender: TComponent;
      AResult: Integer);
    procedure callBackCompINT_CODBANSANGRIA(Sender: TComponent;
      AResult: Integer);
    procedure callBackCompINT_CODCLISANGRIA(Sender: TComponent;
      AResult: Integer);
    procedure callBackCompSTR_CODPRREFORCO(Sender: TComponent;
      AResult: Integer);
    procedure callBackcompSTR_CODCCREFORCO(Sender: TComponent;
      AResult: Integer);
    procedure callBackcompINT_CODBANREFORCO(Sender: TComponent;
      AResult: Integer);
    procedure callBackcompINT_CODCLIREFORCO(Sender: TComponent;
      AResult: Integer);

  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uConstantes, uUtils, RESTRequest4D.Request, System.JSON, MainModule,
  ufrmListaGlobal;


procedure TfraConfiguracoesNfceF.callBackcompINT_CODCLIREFORCO(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compINT_CODCLIREFORCO.Text     := frmListaGlobal.CDSTela.FieldByName('codcli').AsString;
    UniEdit15.Text     := frmListaGlobal.CDSTela.FieldByName('nome').AsString;
    alertaM.info('Cliente selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TfraConfiguracoesNfceF.callBackcompINT_CODBANREFORCO(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compINT_CODBANREFORCO.Text     := frmListaGlobal.CDSTela.FieldByName('codban').AsString;
    UniEdit13.Text     := frmListaGlobal.CDSTela.FieldByName('nome').AsString;
    alertaM.info('Centro de custo selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TfraConfiguracoesNfceF.callBackcompSTR_CODCCREFORCO(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compSTR_CODCCREFORCO.Text     := frmListaGlobal.CDSTela.FieldByName('codcc').AsString;
    UniEdit12.Text     := frmListaGlobal.CDSTela.FieldByName('descr').AsString;
    alertaM.info('Centro de custo selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('descr').AsString + '</b>');
  end;
end;

procedure TfraConfiguracoesNfceF.callBackCompSTR_CODPRREFORCO(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compSTR_CODPRREFORCO.Text     := frmListaGlobal.CDSTela.FieldByName('codPr').AsString;
    UniEdit9.Text     := frmListaGlobal.CDSTela.FieldByName('descrPr').AsString;
    alertaM.info('Departamento selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('descrPr').AsString + '</b>');
  end;
end;

procedure TfraConfiguracoesNfceF.callBackCompINT_CODCLISANGRIA(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compINT_CODCLISANGRIA.Text     := frmListaGlobal.CDSTela.FieldByName('codcli').AsString;
    UniEdit7.Text     := frmListaGlobal.CDSTela.FieldByName('nome').AsString;
    alertaM.info('Cliente selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TfraConfiguracoesNfceF.callBackCompINT_CODBANSANGRIA(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compINT_CODBANSANGRIA.Text     := frmListaGlobal.CDSTela.FieldByName('codban').AsString;
    UniEdit5.Text     := frmListaGlobal.CDSTela.FieldByName('nome').AsString;
    alertaM.info('Centro de custo selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TfraConfiguracoesNfceF.callBackCompSTR_CODCCSANGRIA(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compSTR_CODCCSANGRIA.Text     := frmListaGlobal.CDSTela.FieldByName('codcc').AsString;
    UniEdit3.Text     := frmListaGlobal.CDSTela.FieldByName('descr').AsString;
    alertaM.info('Centro de custo selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('descr').AsString + '</b>');
  end;
end;

procedure TfraConfiguracoesNfceF.callBackCompSTR_CODPRSANGRIA(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compSTR_CODPRSANGRIA.Text     := frmListaGlobal.CDSTela.FieldByName('codPr').AsString;
    UniEdit2.Text     := frmListaGlobal.CDSTela.FieldByName('descrPr').AsString;
    alertaM.info('Departamento selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('descrPr').AsString + '</b>');
  end;
end;

procedure TfraConfiguracoesNfceF.callBackCompCODDEP(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODDEP.Text     := frmListaGlobal.CDSTela.FieldByName('codPr').AsString;
    alertaM.info('Departamento selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('descrPr').AsString + '</b>');
  end;
end;

procedure TfraConfiguracoesNfceF.callBackCompCODCFOP(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODCFOP.Text     := frmListaGlobal.CDSTela.FieldByName('CODCFOP').AsString;
    alertaM.info('CFOP selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('NATUREZA').AsString + '</b>');
  end;
end;

procedure TfraConfiguracoesNfceF.callBackCompCODBAN(Sender: TComponent;
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

procedure TfraConfiguracoesNfceF.callBackCompCODCC(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODCC.Text     := frmListaGlobal.CDSTela.FieldByName('codcc').AsString;
    alertaM.info('Centro de custo selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('descr').AsString + '</b>');
  end;
end;

procedure TfraConfiguracoesNfceF.callBackVendedores(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compVENDEDOR.Text     := frmListaGlobal.CDSTela.FieldByName('CODVEND').AsString;
    compNOMVEND.Text     := frmListaGlobal.CDSTela.FieldByName('NOMEVEND').AsString;
    alertaM.info('Vendedor selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nomeVend').AsString + '</b>');
  end;
end;

procedure TfraConfiguracoesNfceF.btnCancelarClick(Sender: TObject);
begin
  pgcTela.ActivePage := tsListagem;
end;

procedure TfraConfiguracoesNfceF.btnPesquisarClick(Sender: TObject);
begin
  hGetPdvConfiguracao;
end;

procedure TfraConfiguracoesNfceF.btnSalvarClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody   :TJSONObject;
  jsonResp :TJSONObject;
begin
  try
    jsonBody := TJSONObject.Create;
    jsonResp := TJSONObject.Create;


    jsonBody.AddPair('int_Caixa', vvCaixa);

    jsonBody.AddPair('usuario',compusuario.Text);
    jsonBody.AddPair('pontodevenda', ToggledToString(compPONTODEVENDA.Toggled));
    jsonBody.AddPair('fechapontodevenda', ToggledToString(compFechaPontoDeVenda.Toggled));
    jsonBody.AddPair('trocavendedor', ToggledToString(compTrocaVendedor.Toggled));
    jsonBody.AddPair('alteraquantidade', ToggledToString(compAlteraQuantidade.Toggled));
    jsonBody.AddPair('alteravalorunitario', ToggledToString(compAlteraValorUnitario.Toggled));
    jsonBody.AddPair('alteraconfiguracao', ToggledToString(compAlteraConfiguracao.Toggled));
    jsonBody.AddPair('vendedor', compVENDEDOR.Text);
    jsonBody.AddPair('codcc', compCODCC.Text);
    jsonBody.AddPair('codcfop', compCODCFOP.Text);
    jsonBody.AddPair('codban', compCODBAN.Text);
    jsonBody.AddPair('tabela', compTABELA.Text);
    jsonBody.AddPair('numerocaixa', compNUMEROCAIXA.Text);
    jsonBody.AddPair('f6habilitado', ToggledtostringNum(compF6HABILITADO.Toggled));
    jsonBody.AddPair('confirmagerarcupom', compconfirmaGerarCupom.ItemIndex.ToString);
    jsonBody.AddPair('confirmagerarcaixa', compCONFIRMAGERARCAIXA.ItemIndex.ToString);
    jsonBody.AddPair('confirmagerarestoque', compCONFIRMAGERARESTOQUE.ItemIndex.ToString);
    jsonBody.AddPair('confirmaimprimirvenda', compCONFIRMAIMPRIMIRVENDA.ItemIndex.ToString);
    jsonBody.AddPair('confirmaconcluirvenda', compCONFIRMACONCLUIRVENDA.ItemIndex.ToString);
    jsonBody.AddPair('imprgaveta', compIMPRGAVETA.Text);
    jsonBody.AddPair('contaconciliada', ToggledToString(compCONTACONCILIADA.Toggled));
    jsonBody.AddPair('impressora', compIMPRESSORA.Text);
    jsonBody.AddPair('str_destacavend', ToggledToString(compSTR_DESTACAVEND.Toggled));
    jsonBody.AddPair('str_destacacli', ToggledToString(compSTR_DESTACACLI.Toggled));
    jsonBody.AddPair('str_destacaendcli', ToggledToString(compSTR_DESTACAENDCLI.Toggled));
    jsonBody.AddPair('str_codccsangria', compSTR_CODCCSANGRIA.Text);
    jsonBody.AddPair('str_codprsangria', compSTR_CODPRSANGRIA.Text);
    jsonBody.AddPair('int_codbansangria', compINT_CODBANSANGRIA.Text);
    jsonBody.AddPair('int_codclisangria', compINT_CODCLISANGRIA.Text);
    jsonBody.AddPair('str_codccreforco', compSTR_CODCCREFORCO.Text);
    jsonBody.AddPair('str_codprreforco', compSTR_CODPRREFORCO.Text);
    jsonBody.AddPair('int_codbanreforco', compINT_CODBANREFORCO.Text);
    jsonBody.AddPair('int_codclireforco', compINT_CODCLIREFORCO.Text);
    jsonBody.AddPair('temguilhotina', ToggledToString(compTEMGUILHOTINA.Toggled));
    jsonBody.AddPair('marcaimpressora', compMARCAIMPRESSORA.Text);
    jsonBody.AddPair('imprnaofiscal', compIMPRNAOFISCAL.Text);
    jsonBody.AddPair('ocultarutilidades', '');
    jsonBody.AddPair('codpr', '');
    jsonBody.AddPair('coddep', compCODDEP.Text);
    jsonBody.AddPair('diasaltf12vendas', compDIASALTF12VENDAS.Text);
    jsonBody.AddPair('tipodesconto', copy(compTIPODESCONTO.Text,1,1));
    jsonBody.AddPair('aplicadesconto', ToggledtostringNum(compAPLICADESCONTO.Toggled));
    jsonBody.AddPair('cancelarcupom', ToggledtostringNum(compCANCELARCUPOM.Toggled));
    jsonBody.AddPair('modeloimpressoranf', compMODELOIMPRESSORANF.ItemIndex.ToString);
    jsonBody.AddPair('ncolunas', compNCOLUNAS.Text);
    jsonBody.AddPair('impressaonf', '');
    jsonBody.AddPair('margemnf', compMARGEMNF.Text);
    jsonBody.AddPair('tipoimpressaonf', copy(compTIPOIMPRESSAONF.Text,1,1));
    jsonBody.AddPair('ncolunaspdf', compNCOLUNASPDF.Text);
    jsonBody.AddPair('qrcodelateral', ToggledtostringNum(compQRCODELATERAL.Toggled));
    jsonBody.AddPair('imppdfdirtsplus', ToggledtostringNum(compIMPPDFDIRTSPLUS.Toggled));
    jsonBody.AddPair('ativo', ToggledToString(compATIVO.Toggled));
    jsonBody.AddPair('id', compID.Text);

    resp1 := TRequest
            .New
            .BaseURL(baseurlCadastros)
            .Resource(putPdvConfiguracao)
            .AddParam('nomeBanco', uniMainModule.nomebanco)
            .AddBody(jsonBody.ToString)
            .Timeout(12000)
            .Put;

    sleep(2000);
    jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;

    if resp1.StatusCode = 200 then
    begin
      alertam.Success('Atualizado com sucesso.');
      pgcTela.ActivePage := tsListagem;
      btnPesquisar.Click;
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

procedure TfraConfiguracoesNfceF.carregaDados;
var
  resp1         :IResponse;
  jsonResp      :TJSONObject;
  jBody : TJSONObject;
begin
  try
    jBody := nil;
    try
      jBody := TJSONObject.Create;
      jBody.AddPair('id',CDSTela.FieldByName('id').AsString);
      jBody.AddPair('usuario','');
      jBody.AddPair('ativo','');
    //  alterando := true;
    //  id        := gridTela.Columns[0].Field.AsString;

      resp1 := TRequest
                    .New
                    .BaseURL(baseurlCadastros)
                    .resource(getPdvConfiguracao)
                    .AddParam('nomeBanco', uniMainModule.nomebanco)
//                    .AddParam('id', CDSTela.FieldByName('id').AsString)
                    .AddBody(jBody.ToString)
                    .timeOut(12000)
                    .Get;

      if resp1.StatusCode = 200 then
      begin
        jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
        JsonToDataset(CDSDados, jsonResp.GetValue('Result').ToString);

        PreencherCamposDoForm(Self, ativo, nil, CDSDados, 'ALTERA REGISTRO');

        compCONFIRMAGERARCAIXA.ItemIndex := StrToIntDef(CDSDados.FieldByName('CONFIRMAGERARCAIXA').AsString,-1);
        compCONFIRMAGERARESTOQUE.ItemIndex := StrToIntDef(CDSDados.FieldByName('CONFIRMAGERARESTOQUE').AsString,-1);
        compconfirmaGerarCupom.ItemIndex := StrToIntDef(CDSDados.FieldByName('confirmaGerarCupom').AsString,-1);
        compCONFIRMAIMPRIMIRVENDA.ItemIndex := StrToIntDef(CDSDados.FieldByName('CONFIRMAIMPRIMIRVENDA').AsString,-1);
        compCONFIRMACONCLUIRVENDA.ItemIndex := StrToIntDef(CDSDados.FieldByName('CONFIRMACONCLUIRVENDA').AsString,-1);
        compTABELA.ItemIndex := StrToIntDef(CDSDados.FieldByName('CONFIRMACONCLUIRVENDA').AsString,-1);

        if CDSDados.FieldByName('TIPODESCONTO').AsString = 'P' then
          compTABELA.ItemIndex := 0
        else if CDSDados.FieldByName('TIPODESCONTO').AsString = 'V' then
          compTIPODESCONTO.ItemIndex := 1
        else if CDSDados.FieldByName('TIPODESCONTO').AsString = 'T' then
          compTIPODESCONTO.ItemIndex := 1
        else
          compTIPODESCONTO.ItemIndex := -1;

        compIMPRESSORA.SetPositionFromValue(CDSDados.FieldByName('IMPRESSORA').AsString);
        compIMPRNAOFISCAL.SetPositionFromValue(CDSDados.FieldByName('IMPRNAOFISCAL').AsString);
        compIMPRGAVETA.SetPositionFromValue(CDSDados.FieldByName('IMPRGAVETA').AsString);
        compMARCAIMPRESSORA.SetPositionFromValue(CDSDados.FieldByName('MARCAIMPRESSORA').AsString);

        if CDSDados.FieldByName('TIPOIMPRESSAONF').AsString = 'P' then
          compTIPOIMPRESSAONF.ItemIndex := 0
        else if CDSDados.FieldByName('TIPOIMPRESSAONF').AsString = 'C' then
          compTIPOIMPRESSAONF.ItemIndex := 1
        else
          compTIPOIMPRESSAONF.ItemIndex := -1;

        compNCOLUNASPDF.SetPositionFromValue(CDSDados.FieldByName('NCOLUNASPDF').AsString);
        compMARGEMNF.SetPositionFromValue(CDSDados.FieldByName('MARGEMNF').AsString);
        compMODELOIMPRESSORANF.ItemIndex := StrToIntDef(CDSDados.FieldByName('MODELOIMPRESSORANF').AsString,-1);
        compNCOLUNAS.SetPositionFromValue(CDSDados.FieldByName('NCOLUNAS').AsString);
        jsonResp.free;
        pgcTelaDetalhe.ActivePage := tsGeral;
      end
      else
      begin
        alertam.Warning(resp1.Content);
      end;
    except on e:exception do
      begin
        alertam.Error('Erro: '+e.Message);
      end;

    end;
  finally
    FreeAndNil(jBody);
  end;
end;

procedure TfraConfiguracoesNfceF.CDSTelabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Editar', 'editar', 'dc3545');
end;

procedure TfraConfiguracoesNfceF.CDSTelaiconeAtivoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTela.FieldByName('ativo').AsString, Text, DisplayText);
end;

procedure TfraConfiguracoesNfceF.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    pgcTela.ActivePageIndex := 1;

    carregaDados;
  end;
end;

procedure TfraConfiguracoesNfceF.gridTelaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfraConfiguracoesNfceF.hGetPdvConfiguracao;
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
    jsonBody.AddPair('id','');
    jsonBody.AddPair('usuario', edPesquisar.Text);
    jsonBody.AddPair('ativo', '');

    try
      resp1 := TRequest.New.BaseURL(baseurlCadastros)
             .resource(getPdvConfiguracao)
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
        try
          CDSTela.EmptyDataSet;
        except
        end;
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


procedure TfraConfiguracoesNfceF.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
  ConfigurarAlignComboBoxes(self, 10);
end;

procedure TfraConfiguracoesNfceF.UniFrameReady(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
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
  hGetPdvConfiguracao;
end;

procedure TfraConfiguracoesNfceF.UniSFBitBtn10Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'VENDEDORES_PDV_CONFIGURACOES';
  frmListaGlobal.lblDescricao.Caption := 'VENDEDORES';
  frmListaGlobal.showModal(callBackVendedores);
end;

procedure TfraConfiguracoesNfceF.UniSFBitBtn11Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CLIENTE';
  frmListaGlobal.lblDescricao.Caption := 'CLIENTES';
  frmListaGlobal.showModal(callBackCompINT_CODCLISANGRIA);
end;

procedure TfraConfiguracoesNfceF.UniSFBitBtn12Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'DEPARTAMENTO';
  frmListaGlobal.lblDescricao.Caption := 'DEPARTAMENTOS';
  frmListaGlobal.showModal(callBackCompSTR_CODPRREFORCO);
end;

procedure TfraConfiguracoesNfceF.UniSFBitBtn13Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTOS';
  frmListaGlobal.showModal(callBackCompSTR_CODCCREFORCO);
end;

procedure TfraConfiguracoesNfceF.UniSFBitBtn14Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'BANCO';
  frmListaGlobal.lblDescricao.Caption := 'BANCOS';
  frmListaGlobal.showModal(callBackCompINT_CODBANREFORCO);
end;

procedure TfraConfiguracoesNfceF.UniSFBitBtn15Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CLIENTE';
  frmListaGlobal.lblDescricao.Caption := 'CLIENTES';
  frmListaGlobal.showModal(callBackcompINT_CODCLIREFORCO);
end;

procedure TfraConfiguracoesNfceF.UniSFBitBtn2Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO_PDV_CONFIGURACOES';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTOS';
  frmListaGlobal.showModal(callBackCompCODCC);
end;

procedure TfraConfiguracoesNfceF.UniSFBitBtn3Click(Sender: TObject);
begin
  alertam.Warning('Rotina em manutenção.');
end;

procedure TfraConfiguracoesNfceF.UniSFBitBtn4Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'BANCOS';
  frmListaGlobal.lblDescricao.Caption := 'BANCOS';
  frmListaGlobal.showModal(callBackCompCODBAN);
end;

procedure TfraConfiguracoesNfceF.UniSFBitBtn5Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CFOP';
  frmListaGlobal.lblDescricao.Caption := 'CFOP';
  frmListaGlobal.showModal(callBackCompCODCFOP);
end;

procedure TfraConfiguracoesNfceF.UniSFBitBtn6Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'DEPARTAMENTO';
  frmListaGlobal.lblDescricao.Caption := 'DEPARTAMENTOS';
  frmListaGlobal.showModal(callBackCompCODDEP);
end;

procedure TfraConfiguracoesNfceF.UniSFBitBtn7Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'DEPARTAMENTO';
  frmListaGlobal.lblDescricao.Caption := 'DEPARTAMENTOS';
  frmListaGlobal.showModal(callBackCompSTR_CODPRSANGRIA);
end;

procedure TfraConfiguracoesNfceF.UniSFBitBtn8Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CCUSTO';
  frmListaGlobal.lblDescricao.Caption := 'CENTRO DE CUSTOS';
  frmListaGlobal.showModal(callBackCompSTR_CODCCSANGRIA);
end;

procedure TfraConfiguracoesNfceF.UniSFBitBtn9Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'BANCO';
  frmListaGlobal.lblDescricao.Caption := 'BANCOS';
  frmListaGlobal.showModal(callBackCompINT_CODBANSANGRIA);
end;

end.
