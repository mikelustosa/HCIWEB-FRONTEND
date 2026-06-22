unit uFraDescontoPdv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniBitBtn, UniSFButton, UniSFBitBtn,
  uniLabel, uniPanel, uniEdit, uniGUIBaseClasses, uniScrollBox;

type
  TFraDescontoPdv = class(TUniFrame)
    UniScrollBox3: TUniScrollBox;
    UniPanel8: TUniPanel;
    UniPanel9: TUniPanel;
    compTOTALGERAL: TUniEdit;
    UniContainerPanel15: TUniContainerPanel;
    UniLabel5: TUniLabel;
    UniPanel13: TUniPanel;
    compDESCONTOPER: TUniEdit;
    UniContainerPanel24: TUniContainerPanel;
    UniLabel9: TUniLabel;
    UniPanel16: TUniPanel;
    UniContainerPanel5: TUniContainerPanel;
    UniSFBitBtn2: TUniSFBitBtn;
    UniSFBitBtn1: TUniSFBitBtn;
    UniPanel6: TUniPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniPanel1: TUniPanel;
    compDESCONTOVALOR: TUniEdit;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniPanel2: TUniPanel;
    compTOTALCOMDESCONTO: TUniEdit;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel3: TUniLabel;
    procedure UniFrameReady(Sender: TObject);
    procedure UniSFBitBtn2Click(Sender: TObject);
    procedure compDESCONTOPERChange(Sender: TObject);
    procedure compDESCONTOVALORChange(Sender: TObject);
    procedure UniSFBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, uUtils;

procedure TFraDescontoPdv.compDESCONTOPERChange(Sender: TObject);
begin
  compDESCONTOVALOR.Text := '0,00';
  compTOTALCOMDESCONTO.Text := FormatFloatHci(strtofloatdef(compTOTALGERAL.Text,0) -
                               (strtofloatdef(compTOTALGERAL.Text,0) * strtofloatdef(compDESCONTOPER.Text,0) /100),2);
end;

procedure TFraDescontoPdv.compDESCONTOVALORChange(Sender: TObject);
begin
  compDESCONTOPER.Text := '0,00';
  compTOTALCOMDESCONTO.Text := FormatFloatHci(strtofloatdef(compTOTALGERAL.Text,0) - strtofloatdef(compDESCONTOVALOR.Text,0),2);
end;

procedure TFraDescontoPdv.UniFrameReady(Sender: TObject);
begin
  compTOTALGERAL.Text := FormatFloatHci(uniMainModule.vTotalSemDesc,2);
  compDESCONTOPER.Text := '0,00';
  compDESCONTOVALOR.Text := '0,00';
  compTOTALCOMDESCONTO.Text := FormatFloatHci(uniMainModule.vTotalSemDesc,2);
end;

procedure TFraDescontoPdv.UniSFBitBtn1Click(Sender: TObject);
begin
  uniMainModule.pDesc := 0;
  uniMainModule.vDesc := 0;
  compDESCONTOPER.Text := '0,00';
  compDESCONTOVALOR.Text := '0,00';
  compTOTALCOMDESCONTO.Text := FormatFloatHci(uniMainModule.vTotalSemDesc,2);
end;

procedure TFraDescontoPdv.UniSFBitBtn2Click(Sender: TObject);
begin
  if strToFloatDef(compDESCONTOPER.Text,0) > 0 then
  begin
    uniMainModule.pDesc := strToFloatDef(compDESCONTOPER.Text,0);
    uniMainModule.vDesc := 0;
  end
  else if strToFloatDef(compDESCONTOVALOR.Text,0) > 0 then
  begin
    uniMainModule.pDesc := 0;
    uniMainModule.vDesc := strToFloatDef(compDESCONTOVALOR.Text,0);
  end
  else
  begin
    uniMainModule.pDesc := 0;
    uniMainModule.vDesc := 0;
  end;
end;

end.
