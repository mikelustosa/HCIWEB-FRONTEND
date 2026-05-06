unit ufrmConfirmacaoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, UniFSToggle, uniEdit, uniScrollBox, uniPanel,
  uniLabel, uniButton, uniBitBtn, UniSFButton, UniSFBitBtn, uniGUIBaseClasses;

type
  TfrmConfirmacaoVenda = class(TUniForm)
    cpMenuRodape: TUniContainerPanel;
    btnCancelar: TUniSFBitBtn;
    btConcluir: TUniSFBitBtn;
    cpMenuTopo: TUniContainerPanel;
    lblDescricao: TUniLabel;
    btnFechar: TUniSFBitBtn;
    UniContainerPanel27: TUniContainerPanel;
    UniPanel39: TUniPanel;
    UniScrollBox1: TUniScrollBox;
    UniContainerPanel2: TUniContainerPanel;
    UniPanel1: TUniPanel;
    UniPanel40: TUniPanel;
    UniContainerPanel23: TUniContainerPanel;
    UniLabel31: TUniLabel;
    UniPanel47: TUniPanel;
    UniContainerPanel36: TUniContainerPanel;
    UniLabel36: TUniLabel;
    UniPanel48: TUniPanel;
    UniContainerPanel38: TUniContainerPanel;
    UniLabel37: TUniLabel;
    compGERARCUPOM: TUniFSToggle;
    compGERARMOVCAIXA: TUniFSToggle;
    compGERARMOVESTOQUE: TUniFSToggle;
    UniPanel2: TUniPanel;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    procedure btConcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    canClose  :boolean;
  public
    { Public declarations }
  end;

function frmConfirmacaoVenda: TfrmConfirmacaoVenda;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmConfirmacaoVenda: TfrmConfirmacaoVenda;
begin
  Result := TfrmConfirmacaoVenda(UniMainModule.GetFormInstance(TfrmConfirmacaoVenda));
end;

procedure TfrmConfirmacaoVenda.btConcluirClick(Sender: TObject);
begin
  canClose := true;
  frmConfirmacaoVenda.close;
end;

procedure TfrmConfirmacaoVenda.btnFecharClick(Sender: TObject);
begin
  canClose := false;
  frmConfirmacaoVenda.close;
end;

procedure TfrmConfirmacaoVenda.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if canClose then
    modalResult := mrOk;
end;

end.
