unit ufraParamGerais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniFSToggle, uniPanel, uniPageControl,
  uniScrollBox, uniButton, uniBitBtn, UniSFButton, UniSFBitBtn, uniLabel,
  uniGUIBaseClasses;

type
  TfraParamGerais = class(TUniFrame)
    cpMenuTopo: TUniContainerPanel;
    lblDescricao: TUniLabel;
    btnNovo: TUniSFBitBtn;
    UniContainerPanel27: TUniContainerPanel;
    btnFechar: TUniSFBitBtn;
    UniScrollBox1: TUniScrollBox;
    pgcTela: TUniPageControl;
    tsGeral: TUniTabSheet;
    tsNotaFiscal: TUniTabSheet;
    UniPanel1: TUniPanel;
    UniScrollBox2: TUniScrollBox;
    tsVendas: TUniTabSheet;
    tsCompras: TUniTabSheet;
    tsFormularios: TUniTabSheet;
    tsProdutos: TUniTabSheet;
    tsEmail: TUniTabSheet;
    tsGrades: TUniTabSheet;
    tsOrdenacoes: TUniTabSheet;
    tsOrdemDeServico: TUniTabSheet;
    UniPanel2: TUniPanel;
    UniScrollBox3: TUniScrollBox;
    UniPanel3: TUniPanel;
    UniScrollBox4: TUniScrollBox;
    UniPanel4: TUniPanel;
    UniScrollBox5: TUniScrollBox;
    UniPanel5: TUniPanel;
    UniScrollBox6: TUniScrollBox;
    UniPanel6: TUniPanel;
    UniScrollBox7: TUniScrollBox;
    UniPanel7: TUniPanel;
    UniScrollBox8: TUniScrollBox;
    UniPanel8: TUniPanel;
    UniScrollBox9: TUniScrollBox;
    UniPanel9: TUniPanel;
    UniScrollBox10: TUniScrollBox;
    UniPanel10: TUniPanel;
    UniScrollBox11: TUniScrollBox;
    cpMenuRodape: TUniContainerPanel;
    btnSalvar: TUniSFBitBtn;
    btnCancelar: TUniSFBitBtn;
    compATIVO: TUniFSToggle;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameReady(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uUtils;



procedure TfraParamGerais.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
  ConfigurarAlignComboBoxes(self, 10);
end;

procedure TfraParamGerais.UniFrameReady(Sender: TObject);
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
end;

end.
