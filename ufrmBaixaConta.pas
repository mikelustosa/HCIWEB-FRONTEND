unit ufrmBaixaConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniTimer, URGLayoutUnigui, UniSFComboBox, uniLabel,
  uniEdit, uniPanel, uniScrollBox, uniButton, uniBitBtn, UniSFButton,
  UniSFBitBtn, uniGUIBaseClasses, UniSFSweetAlert, uniDateTimePicker;

type
  TfrmBaixaConta = class(TUniForm)
    alerta: TUniSFSweetAlert;
    cpMenuRodape: TUniContainerPanel;
    UniSFBitBtn27: TUniSFBitBtn;
    UniSFBitBtn1: TUniSFBitBtn;
    UniScrollBox1: TUniScrollBox;
    PN1: TUniPanel;
    UniScrollBox2: TUniScrollBox;
    UniPanel1: TUniPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel48: TUniLabel;
    UniPanel2: TUniPanel;
    compVALORREAL: TUniEdit;
    UniContainerPanel8: TUniContainerPanel;
    UniLabel3: TUniLabel;
    rg1: TRGLayoutUnigui;
    compDATAREAL: TUniDateTimePicker;
    UniSFSweetAlert1: TUniSFSweetAlert;
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniFormReady(Sender: TObject);
    procedure UniSFBitBtn1Click(Sender: TObject);
    procedure UniSFBitBtn27Click(Sender: TObject);
  private
    { Private declarations }
    canClose  :boolean;
  public
    { Public declarations }
  end;

function frmBaixaConta: TfrmBaixaConta;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uUtils;

function frmBaixaConta: TfrmBaixaConta;
begin
  Result := TfrmBaixaConta(UniMainModule.GetFormInstance(TfrmBaixaConta));
end;

procedure TfrmBaixaConta.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if canClose then
  modalResult := mrOk;
end;

procedure TfrmBaixaConta.UniFormReady(Sender: TObject);
begin
//  limpaCookiesEditRecursivo(self);
//  rg1.Start;
//  compTOTALGERAL.Text := FloatToStrF(totalGeral, ffFixed, 10, 2);
//  compVALORPAGO.Text := floattostrF(0, ffFixed, 10, 2);
//  compTROCO.Text := floattostrF(0, ffFixed, 10, 2);
//  compTIPOPAGAMENTO.ItemIndex := 0;
//  faturar := false;
end;

procedure TfrmBaixaConta.UniSFBitBtn1Click(Sender: TObject);
begin
  canClose := false;
  close;
end;

procedure TfrmBaixaConta.UniSFBitBtn27Click(Sender: TObject);
begin
  if trim(compVALORREAL.Text) = '' then
  begin
    alerta.Error('Digite um valor.');
    exit;
  end;
  canClose := true;
  frmBaixaConta.close;
end;

end.
