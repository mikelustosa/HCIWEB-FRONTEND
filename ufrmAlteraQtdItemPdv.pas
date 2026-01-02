unit ufrmAlteraQtdItemPdv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniTimer, URGLayoutUnigui,
  uniLabel, uniEdit, uniPanel, uniButton, uniBitBtn, UniSFButton, UniSFBitBtn,
  uniScrollBox;

type
  TfrmAlteraQtdItemPdv = class(TUniForm)
    cpMenuRodape: TUniContainerPanel;
    UniSFBitBtn26: TUniSFBitBtn;
    UniSFBitBtn27: TUniSFBitBtn;
    rg1: TRGLayoutUnigui;
    UniScrollBox1: TUniScrollBox;
    PN1: TUniPanel;
    UniScrollBox2: TUniScrollBox;
    UniPanel1: TUniPanel;
    compQTDRETIRA: TUniEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel48: TUniLabel;
    UniPanel2: TUniPanel;
    compTOTAL: TUniEdit;
    UniContainerPanel8: TUniContainerPanel;
    UniLabel3: TUniLabel;
    procedure UniFormReady(Sender: TObject);
    procedure UniSFBitBtn26Click(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniSFBitBtn27Click(Sender: TObject);
  private
      canClose  :boolean;
    { Private declarations }
  public
    qtdRetira : real;
    { Public declarations }
  end;

function frmAlteraQtdItemPdv: TfrmAlteraQtdItemPdv;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uUtils;

function frmAlteraQtdItemPdv: TfrmAlteraQtdItemPdv;
begin
  Result := TfrmAlteraQtdItemPdv(UniMainModule.GetFormInstance(TfrmAlteraQtdItemPdv));
end;

procedure TfrmAlteraQtdItemPdv.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if canClose then
    modalResult := mrOk;
end;

procedure TfrmAlteraQtdItemPdv.UniFormReady(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
//  rg1.Start;
  compQTDRETIRA.Text := FloatToStrF(qtdRetira, ffFixed, 10, 2);
  compTOTAL.Text := floattostrF(qtdRetira, ffFixed, 10, 2);
end;

procedure TfrmAlteraQtdItemPdv.UniSFBitBtn26Click(Sender: TObject);
begin
  canClose := false;
  close;
end;

procedure TfrmAlteraQtdItemPdv.UniSFBitBtn27Click(Sender: TObject);
begin
  canClose := true;
  frmAlteraQtdItemPdv.Close;
end;

end.
