unit ufrmSelecionaPagamentoF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniLabel, uniEdit, uniPanel, uniScrollBox,
  uniGUIBaseClasses, uniTimer, URGLayoutUnigui, uniButton, uniBitBtn,
  UniSFButton, UniSFBitBtn, UniSFComboBox;

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
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniFormReady(Sender: TObject);
    procedure compVALORPAGOChange(Sender: TObject);
    procedure UniSFBitBtn1Click(Sender: TObject);
    procedure UniSFBitBtn27Click(Sender: TObject);
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
  MainModule, uniGUIApplication, uUtils;

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
  compTOTALGERAL.Text := FloatToStrF(totalGeral, ffFixed, 10, 2);
//  compVALORPAGO.Text := floattostrF(0, ffFixed, 10, 2);
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

procedure TfrmSelecionaPagamentoF.UniSFBitBtn27Click(Sender: TObject);
begin
  faturar := true;
  modalResult := mrOk;
end;

end.
