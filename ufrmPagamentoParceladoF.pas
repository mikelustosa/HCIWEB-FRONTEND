unit ufrmPagamentoParceladoF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, UniSFComboBox, uniLabel, uniEdit, uniPanel,
  uniScrollBox, uniGUIBaseClasses, uniTimer, URGLayoutUnigui, uniButton,
  uniBitBtn, UniSFButton, UniSFBitBtn;

type
  TfrmPagamentoParceladoF = class(TUniForm)
    cpMenuRodape: TUniContainerPanel;
    UniSFBitBtn26: TUniSFBitBtn;
    UniSFBitBtn27: TUniSFBitBtn;
    UniSFBitBtn1: TUniSFBitBtn;
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
    cpMenuTopo: TUniContainerPanel;
    UniPanel4: TUniPanel;
    UniEdit1: TUniEdit;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniPanel41: TUniPanel;
    compEMPRESA: TUniEdit;
    UniContainerPanel40: TUniContainerPanel;
    UniLabel33: TUniLabel;
    UniSFBitBtn2: TUniSFBitBtn;
    UniPanel5: TUniPanel;
    UniEdit2: TUniEdit;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel4: TUniLabel;
    UniPanel6: TUniPanel;
    UniEdit3: TUniEdit;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel5: TUniLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmPagamentoParceladoF: TfrmPagamentoParceladoF;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmPagamentoParceladoF: TfrmPagamentoParceladoF;
begin
  Result := TfrmPagamentoParceladoF(UniMainModule.GetFormInstance(TfrmPagamentoParceladoF));
end;

end.
