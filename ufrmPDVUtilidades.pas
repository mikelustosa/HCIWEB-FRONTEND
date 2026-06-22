unit ufrmPDVUtilidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniPanel, uniPageControl, uniGUIBaseClasses,
  uniScrollBox, uniTimer, URGLayoutUnigui, UniSFiGrowl, UniSFSweetAlert,
  uniButton, uniBitBtn, UniSFButton, UniSFBitBtn, ufraCadClientes, ufraCadEmpresas,
  ufraCadProdutos, ufraCadVendedores, ufraFecharCaixa, ufraReceberContaCliente,
  ufraSangria, ufraGerenciamentoCupons, uFraDescontoPdv,
  ufraConfiguracoesNfceF;

type
  TfrmPDVUtilidades = class(TUniForm)
    alerta: TUniSFSweetAlert;
    alertaM: TUniSFiGrowl;
    RG1: TRGLayoutUnigui;
    UniScrollBox1: TUniScrollBox;
    PgcPrincipal: TUniPageControl;
    TsPrincipal: TUniTabSheet;
    TsClientes: TUniTabSheet;
    TsEmpresas: TUniTabSheet;
    cpMenuRodape: TUniContainerPanel;
    btnCancelar: TUniSFBitBtn;
    UniPanel1: TUniPanel;
    UniScrollBox2: TUniScrollBox;
    UniPanel19: TUniPanel;
    UniSFBitBtn1: TUniSFBitBtn;
    UniPanel2: TUniPanel;
    UniSFBitBtn2: TUniSFBitBtn;
    UniPanel3: TUniPanel;
    UniSFBitBtn3: TUniSFBitBtn;
    UniPanel4: TUniPanel;
    UniSFBitBtn4: TUniSFBitBtn;
    UniPanel5: TUniPanel;
    UniSFBitBtn5: TUniSFBitBtn;
    UniPanel6: TUniPanel;
    UniSFBitBtn6: TUniSFBitBtn;
    UniPanel7: TUniPanel;
    UniSFBitBtn7: TUniSFBitBtn;
    UniPanel8: TUniPanel;
    UniSFBitBtn8: TUniSFBitBtn;
    UniPanel9: TUniPanel;
    UniSFBitBtn9: TUniSFBitBtn;
    UniPanel10: TUniPanel;
    UniSFBitBtn10: TUniSFBitBtn;
    UniPanel11: TUniPanel;
    UniSFBitBtn11: TUniSFBitBtn;
    UniPanel12: TUniPanel;
    UniSFBitBtn12: TUniSFBitBtn;
    TsProdutos: TUniTabSheet;
    TsVendedores: TUniTabSheet;
    TsFecharCaixa: TUniTabSheet;
    tsReceberContaCliente: TUniTabSheet;
    tsSangria: TUniTabSheet;
    tsGerenciamentoCupons: TUniTabSheet;
    tsDescontoPdv: TUniTabSheet;
    TsfraConfiguracoesNfceF: TUniTabSheet;
    procedure btnCancelarClick(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniFormShow(Sender: TObject);
    procedure UniSFBitBtn6Click(Sender: TObject);
    procedure UniSFBitBtn8Click(Sender: TObject);
    procedure UniSFBitBtn7Click(Sender: TObject);
    procedure UniSFBitBtn9Click(Sender: TObject);
    procedure UniSFBitBtn1Click(Sender: TObject);
    procedure UniSFBitBtn2Click(Sender: TObject);
    procedure UniSFBitBtn4Click(Sender: TObject);
    procedure UniSFBitBtn5Click(Sender: TObject);
    procedure UniSFBitBtn10Click(Sender: TObject);
    procedure UniSFBitBtn11Click(Sender: TObject);
    procedure UniSFBitBtn3Click(Sender: TObject);
    procedure UniSFBitBtn12Click(Sender: TObject);
  private
    { Private declarations }
    fraClientes: TfraCadClientes;
    fraCadEmpresas: tfraCadEmpresas;
    fraCadProdutos: TfraCadProdutos;
    fraCadVendedores: TfraCadVendedores;
    fraFecharCaixa: TfraFecharCaixa;
    fraReceberContaCliente: TfraReceberContaCliente;
    fraSangria: TfraSangria;
    fraGerenciamentoCupons: TfraGerenciamentoCupons;
    fraDescontoPdv: TfraDescontoPdv;
    fraConfiguracoesNfceF: TfraConfiguracoesNfceF;

  public
    { Public declarations }
  end;

function frmPDVUtilidades: TfrmPDVUtilidades;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uUtils;

function frmPDVUtilidades: TfrmPDVUtilidades;
begin
  Result := TfrmPDVUtilidades(UniMainModule.GetFormInstance(TfrmPDVUtilidades));
end;

procedure TfrmPDVUtilidades.btnCancelarClick(Sender: TObject);
begin
  if PgcPrincipal.ActivePageIndex <> 0 then
    DefinirTodasAbasNaPrimeiraPagina(self)
  else
    close;
end;

procedure TfrmPDVUtilidades.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  if canClose then
//    modalResult := mrOk;
end;

procedure TfrmPDVUtilidades.UniFormShow(Sender: TObject);
begin
  frmPDVUtilidades.Top := 5;
  frmPDVUtilidades.Height := uniMainModule.screenHeigth - 10;
  frmPDVUtilidades.Width  := uniMainModule.screenWidth  - 15;
  frmPDVUtilidades.Left   := 7;
  DefinirTodasAbasNaPrimeiraPagina(self)
end;

procedure TfrmPDVUtilidades.UniSFBitBtn10Click(Sender: TObject);
begin
  if not Assigned(fraConfiguracoesNfceF) then
    fraConfiguracoesNfceF := TfraConfiguracoesNfceF.Create(Self);
  fraConfiguracoesNfceF.Parent := TsfraConfiguracoesNfceF;
  fraConfiguracoesNfceF.Align := alClient;
  PgcPrincipal.ActivePage := TsfraConfiguracoesNfceF;

end;

procedure TfrmPDVUtilidades.UniSFBitBtn11Click(Sender: TObject);
begin

  alertam.Warning('Rotina em manutenção.');
end;

procedure TfrmPDVUtilidades.UniSFBitBtn12Click(Sender: TObject);
begin
  alertam.Warning('Rotina em manutenção.');
end;

procedure TfrmPDVUtilidades.UniSFBitBtn1Click(Sender: TObject);
begin
  if not Assigned(fraFecharCaixa) then
    fraFecharCaixa := TfraFecharCaixa.Create(Self);
  fraFecharCaixa.Parent := tsFecharCaixa;
  fraFecharCaixa.Align := alClient;
  PgcPrincipal.ActivePage := TsFecharCaixa;
end;

procedure TfrmPDVUtilidades.UniSFBitBtn2Click(Sender: TObject);
begin
  if not Assigned(fraReceberContaCliente) then
    fraReceberContaCliente := TfraReceberContaCliente.Create(Self);
  fraReceberContaCliente.Parent := TsReceberContaCliente;
  fraReceberContaCliente.Align := alClient;
  PgcPrincipal.ActivePage := TsReceberContaCliente;
end;

procedure TfrmPDVUtilidades.UniSFBitBtn3Click(Sender: TObject);
begin
  if not Assigned(fraDescontoPdv) then
    fraDescontoPdv := TfraDescontoPdv.Create(Self);

  uniMainModule.pDesc := 0;
  uniMainModule.vDesc := 0;
  fraDescontoPdv.Parent := tsDescontoPdv;
//  fraDescontoPdv.Align := alClient;
  PgcPrincipal.ActivePage := TsDescontoPdv;
end;

procedure TfrmPDVUtilidades.UniSFBitBtn4Click(Sender: TObject);
begin
  if not Assigned(fraSangria) then
    fraSangria := TfraSangria.Create(Self);
  fraSangria.Parent := TsSangria;
  fraSangria.Align := alClient;
  PgcPrincipal.ActivePage := TsSangria;
end;

procedure TfrmPDVUtilidades.UniSFBitBtn5Click(Sender: TObject);
begin
  if not Assigned(fraGerenciamentoCupons) then
    fraGerenciamentoCupons := TfraGerenciamentoCupons.Create(Self);
  fraGerenciamentoCupons.Parent := TsGerenciamentoCupons;
  fraGerenciamentoCupons.Align := alClient;
  PgcPrincipal.ActivePage := TsGerenciamentoCupons;
end;

procedure TfrmPDVUtilidades.UniSFBitBtn6Click(Sender: TObject);
begin
  if not Assigned(fraClientes) then
    fraClientes := TfraCadClientes.Create(Self);
  fraClientes.Parent := tsClientes;
  fraClientes.Align := alClient;
  PgcPrincipal.ActivePage := TsClientes;
end;

procedure TfrmPDVUtilidades.UniSFBitBtn7Click(Sender: TObject);
begin
  if not Assigned(fraCadProdutos) then
    fraCadProdutos := TfraCadProdutos.Create(Self);
  fraCadProdutos.Parent := tsProdutos;
  fraCadProdutos.Align := alClient;
  PgcPrincipal.ActivePage := TsProdutos;
end;

procedure TfrmPDVUtilidades.UniSFBitBtn8Click(Sender: TObject);
begin
  if not Assigned(fraCadEmpresas) then
    fraCadEmpresas := TfraCadEmpresas.Create(Self);
  fraCadEmpresas.Parent := tsEmpresas;
  fraCadEmpresas.Align := alClient;
  PgcPrincipal.ActivePage := TsEmpresas;
end;

procedure TfrmPDVUtilidades.UniSFBitBtn9Click(Sender: TObject);
begin
  if not Assigned(fraCadVendedores) then
    fraCadVendedores := TfraCadVendedores.Create(Self);
  fraCadVendedores.Parent := tsVendedores;
  fraCadVendedores.Align := alClient;
  PgcPrincipal.ActivePage := TsVendedores;
end;

end.
