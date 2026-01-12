unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniURLFrame,
  uniTimer, uniImageList, Vcl.Menus, uniMainMenu, uniButton, uniBitBtn,
  UniSFButton, UniSFBitBtn, uniTreeView, uniTreeMenu, uniPanel, uniHTMLFrame,
  uniPageControl, URGLayoutUnigui, UniSFSweetAlert, Vcl.Imaging.pngimage,
  uniImage;

type
  TfrmPrincipal = class(TUniForm)
    exibeDashboard: TUniTimer;
    PnlMenuEsquerda: TUniContainerPanel;
    pnTreeMenuPrincipal: TUniContainerPanel;
    TreeMenuPrincipal: TUniTreeMenu;
    btnMenuPrincipal: TUniSFBitBtn;
    MenuPrincipal: TUniMenuItems;
    cadastrosPrivado: TUniMenuItem;
    UniMenuItem3: TUniMenuItem;
    UniMenuItem15: TUniMenuItem;
    configuracoesPrivado: TUniMenuItem;
    FazerlogoffPrivado: TUniMenuItem;
    UniNativeImageList1: TUniNativeImageList;
    htmlMenuRodape: TUniHTMLFrame;
    pagePrincipal: TUniPageControl;
    paginaPrincipal: TUniTabSheet;
    UniURLFrame1: TUniURLFrame;
    Grficos1: TUniMenuItem;
    Parmetros1: TUniMenuItem;
    ADMTEP1: TUniMenuItem;
    Sistema1: TUniMenuItem;
    Sobre1: TUniMenuItem;
    HCI1: TUniMenuItem;
    Clientes1: TUniMenuItem;
    Conddepagamento1: TUniMenuItem;
    Clientes2: TUniMenuItem;
    Atividades1: TUniMenuItem;
    Classificao1: TUniMenuItem;
    Regies1: TUniMenuItem;
    rocacdclientesbl1: TUniMenuItem;
    rea1: TUniMenuItem;
    Pas1: TUniMenuItem;
    Integraes1: TUniMenuItem;
    Caixa1: TUniMenuItem;
    Centrodecustos1: TUniMenuItem;
    Departamentos1: TUniMenuItem;
    Bancos1: TUniMenuItem;
    CartesPIXTEF1: TUniMenuItem;
    Produtos1: TUniMenuItem;
    Agenda1: TUniMenuItem;
    Moedas1: TUniMenuItem;
    Vendedores1: TUniMenuItem;
    Foradevenda1: TUniMenuItem;
    Empresas1: TUniMenuItem;
    Fiscaisweb1: TUniMenuItem;
    Sistema2: TUniMenuItem;
    Senhas1: TUniMenuItem;
    alerta: TUniSFSweetAlert;
    Produtos2: TUniMenuItem;
    rocacdigo1: TUniMenuItem;
    Duplicaestoque1: TUniMenuItem;
    Grupos1: TUniMenuItem;
    Composio1: TUniMenuItem;
    Grades1: TUniMenuItem;
    N1: TUniMenuItem;
    NCM1: TUniMenuItem;
    ObsNF1: TUniMenuItem;
    ICMSinternoSubs1: TUniMenuItem;
    CFOP1: TUniMenuItem;
    N2: TUniMenuItem;
    rocaICMSCST1: TUniMenuItem;
    rocaIPICST1: TUniMenuItem;
    rocaPISCST1: TUniMenuItem;
    rocaCOFINSCST1: TUniMenuItem;
    rocaaliquotaaproveitamento1: TUniMenuItem;
    N3: TUniMenuItem;
    IncluiAlteraSTporproduto1: TUniMenuItem;
    N4: TUniMenuItem;
    Grade11: TUniMenuItem;
    Grade21: TUniMenuItem;
    logo1: TUniImage;
    logo2: TUniImage;
    NFCeSAT1: TUniMenuItem;
    Pontodevenda1: TUniMenuItem;
    Configuraes1: TUniMenuItem;
    procedure exibeDashboardTimer(Sender: TObject);
    procedure btnMenuPrincipalClick(Sender: TObject);
    procedure UniFormMouseEnter(Sender: TObject);
    procedure UniFormScreenResize(Sender: TObject; AWidth, AHeight: Integer);
    procedure FazerlogoffPrivadoClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure Senhas1Click(Sender: TObject);
    procedure paginaPrincipalClose(Sender: TObject; var AllowClose: Boolean);
    procedure Empresas1Click(Sender: TObject);
    procedure Atividades1Click(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure Classificao1Click(Sender: TObject);
    procedure rea1Click(Sender: TObject);
    procedure Pas1Click(Sender: TObject);
    procedure Regies1Click(Sender: TObject);
    procedure Centrodecustos1Click(Sender: TObject);
    procedure Departamentos1Click(Sender: TObject);
    procedure Bancos1Click(Sender: TObject);
    procedure CartesPIXTEF1Click(Sender: TObject);
    procedure Conddepagamento1Click(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
    procedure Vendedores1Click(Sender: TObject);
    procedure CFOP1Click(Sender: TObject);
    procedure ICMSinternoSubs1Click(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
    procedure Pontodevenda1Click(Sender: TObject);
    procedure Grade11Click(Sender: TObject);
    procedure Grade21Click(Sender: TObject);
    procedure rocacdclientesbl1Click(Sender: TObject);
  private
    procedure exibeIconesPrivado;
    procedure ocultaIconesPrivado;
    //function NovaAba(nomeFormFrame: TFrame; descFormFrame: string; Fechar: Boolean; iconTab: integer = -1; tabBar: boolean = false): boolean;
    procedure fechaAba(Sender: TObject);
    function NovaAba(nomeFormFrame: TFrame; descFormFrame: string; Fechar: Boolean;
    iconTab: integer = -1; tabBar: boolean = false): boolean;
    procedure ConfirmaFechamentoAba(Sender: TObject; var CanClose: Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

function frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uniGUIFrame, ufraCadUsuarios,
  uUtils, Vcl.Dialogs, UniSFCore, ufraCadEmpresas, ufraCadAtividades,
  ufraCadGrupos, ufraCadClassificacoes, ufraCadArea, ufraCadPais,
  ufraCadRegioes, ufraCadCentroCustos, ufraCadDepartamentos, ufraCadBancos,
  ufraCadCartoes, ufraCadCondPag, ufraCadClientes, ufraCadVendedores,
  ufraCadCfop, ufraCadIcmsInterno, ufraCadProdutos, ufraCadGrade,
  ufraCadGrade2, ufrmPDV, ufraTrocaCodCli;

function frmPrincipal: TfrmPrincipal;
begin
  Result := TfrmPrincipal(UniMainModule.GetFormInstance(TfrmPrincipal));
end;

procedure TfrmPrincipal.Atividades1Click(Sender: TObject);
begin
  NovaAba(TFrame(TfraCadAtividades),'Atividades', true, -1, true);
end;

procedure TfrmPrincipal.Bancos1Click(Sender: TObject);
begin
  NovaAba(TFrame(TfraCadBancos),'Bancos', true, -1, true);
end;

procedure TfrmPrincipal.btnMenuPrincipalClick(Sender: TObject);
begin
 TreeMenuPrincipal.Micro := not TreeMenuPrincipal.Micro;

 if not TreeMenuPrincipal.Micro then
 begin
    btnMenuPrincipal.Caption := 'Menu principal';
    ocultaIconesPrivado;
    PnlMenuEsquerda.Width := 290;
 end else
   begin
      btnMenuPrincipal.Caption := '';
      exibeIconesPrivado;
      PnlMenuEsquerda.Width := 44
   end;
end;

procedure TfrmPrincipal.exibeIconesPrivado;
begin
  cadastrosPrivado.ImageIndex          := -1;
  configuracoesPrivado.ImageIndex      := -1;
  logo2.Visible := true;
  logo1.Visible := false;
end;

procedure TfrmPrincipal.FazerlogoffPrivadoClick(Sender: TObject);
begin
  uniApplication.Restart;
end;

procedure TfrmPrincipal.ocultaIconesPrivado;
begin
  cadastrosPrivado.ImageIndex          := -1;
  configuracoesPrivado.ImageIndex      := -1;
  logo2.Visible := false;
  logo1.Visible := true;
end;
procedure TfrmPrincipal.paginaPrincipalClose(Sender: TObject;
  var AllowClose: Boolean);
begin
  if MessageDlg('Deseja realmente fechar esta aba?', mtConfirmation, mbYesNo) = mrYes then
    FecharAbaAtualComSeguranca(frmPrincipal.pagePrincipal);
end;

procedure TfrmPrincipal.Pas1Click(Sender: TObject);
begin
  NovaAba(TFrame(TfraCadPais),'Países', true, -1, true);
end;

procedure TfrmPrincipal.Pontodevenda1Click(Sender: TObject);
begin
//  NovaAba(TFrame(Tfrapdv),'PDV', true, -1, true);
  frmPDV.showModal();
end;

procedure TfrmPrincipal.Produtos2Click(Sender: TObject);
begin
  NovaAba(TFrame(TfraCadProdutos),'Produtos', true, -1, true);
end;

procedure TfrmPrincipal.rea1Click(Sender: TObject);
begin
  NovaAba(TFrame(TfraCadArea),'Área', true, -1, true);
end;

procedure TfrmPrincipal.Regies1Click(Sender: TObject);
begin
  NovaAba(TFrame(TfraCadRegioes),'Regiões', true, -1, true);
end;

procedure TfrmPrincipal.rocacdclientesbl1Click(Sender: TObject);
begin
  NovaAba(TFrame(TfraTrocaCodCli),'Troca Código de Clientes', true, -1, true);
end;

procedure TfrmPrincipal.Senhas1Click(Sender: TObject);
begin
  NovaAba(TFrame(TfraCadUsuarios),'Usuários e senhas', true, -1, true);
end;

procedure TfrmPrincipal.UniFormCreate(Sender: TObject);
begin
  btnMenuPrincipal.Caption := 'Menu principal';
  ocultaIconesPrivado;
  PnlMenuEsquerda.Width := 290;
end;

procedure TfrmPrincipal.UniFormMouseEnter(Sender: TObject);
begin

// TreeMenuPrincipal.Micro := true;
//
//  if not TreeMenuPrincipal.Micro then
//  begin
//    btnMenuPrincipal.Caption := 'Menu principal';
//    ocultaIconesPrivado;
//    PnlMenuEsquerda.Width := 290;
//  end else
//   begin
//    btnMenuPrincipal.Caption := '';
//    exibeIconesPrivado;
//    PnlMenuEsquerda.Width := 44;
//   end;
end;

procedure TfrmPrincipal.UniFormScreenResize(Sender: TObject; AWidth,
  AHeight: Integer);
begin
  if AWidth <= 768 then
  begin
    PnlMenuEsquerda.Visible := false;
    htmlMenuRodape.Visible := true;
  end else
    if AWidth > 768 then
    begin
      PnlMenuEsquerda.Visible := true;
      htmlMenuRodape.Visible := false;
    end;

  uniMainModule.screenHeigth  := AHeight;
  uniMainModule.screenWidth   := AWidth;
end;

procedure TfrmPrincipal.Vendedores1Click(Sender: TObject);
begin
  NovaAba(TFrame(TfraCadVendedores),'Vendedores', true, -1, true);
end;

procedure TfrmPrincipal.fechaAba(Sender: TObject);
begin
  if MessageDlg('Deseja realmente fechar esta aba?', mtConfirmation, mbYesNo) = mrYes then
    FecharAbaAtualComSeguranca(frmPrincipal.pagePrincipal);
end;

procedure TfrmPrincipal.Grade11Click(Sender: TObject);
begin
  NovaAba(TFrame(TfraCadGrade),'Grade 1', true, -1, true);
end;

procedure TfrmPrincipal.Grade21Click(Sender: TObject);
begin
  NovaAba(TFrame(TfraCadGrade2),'Grade 2', true, -1, true);
end;

procedure TfrmPrincipal.Grupos1Click(Sender: TObject);
begin
  NovaAba(TFrame(TfraCadGrupos),'Grupos', true, -1, true);
end;

procedure TfrmPrincipal.ICMSinternoSubs1Click(Sender: TObject);
begin
  NovaAba(TFrame(TfraCadIcmsInterno),'ICMS Interno', true, -1, true);
end;

procedure TfrmPrincipal.CartesPIXTEF1Click(Sender: TObject);
begin
  NovaAba(TFrame(TfraCadCartoes),'Cartões', true, -1, true);
end;

procedure TfrmPrincipal.Centrodecustos1Click(Sender: TObject);
begin
  NovaAba(TFrame(TfraCadCentroCustos),'Centro de Custos', true, -1, true);
end;

procedure TfrmPrincipal.CFOP1Click(Sender: TObject);
begin
  NovaAba(TFrame(TfraCadCfop),'CFOP', true, -1, true);
end;

procedure TfrmPrincipal.Classificao1Click(Sender: TObject);
begin
  NovaAba(TFrame(TfraCadClassificacoes),'Classificação', true, -1, true);
end;

procedure TfrmPrincipal.Clientes2Click(Sender: TObject);
begin
  NovaAba(TFrame(TfraCadClientes),'Clientes', true, -1, true);
end;

procedure TfrmPrincipal.Conddepagamento1Click(Sender: TObject);
begin
  NovaAba(TFrame(TfraCadCondPag),'Condição de pagamento', true, -1, true);
end;

procedure TfrmPrincipal.ConfirmaFechamentoAba(Sender: TObject; var CanClose: Boolean);
var
  Tab :TUniTabSheet;
begin
  // CanClose será False, e a aba não será fechada.
  if MessageDlg('Deseja realmente fechar esta aba?', mtConfirmation, mbYesNo) = mrYes then
  begin
    Tab := frmPrincipal.pagePrincipal.ActivePage;

    if Tab <> nil then
    begin
      //CanClose := true;
      //frmPrincipal.pagePrincipal.ActivePageIndex := 0;
      freeAndNil(Tab);
      //tab.Free;
      //CanClose := true;
    end;
  end;
  //CanClose := MessageDlg('Deseja realmente fechar esta aba?', mtConfirmation, mbYesNo) = mrYes;
end;

procedure TfrmPrincipal.Departamentos1Click(Sender: TObject);
begin
  NovaAba(TFrame(TfraCadDepartamentos),'Departamentos', true, -1, true);
end;

procedure TfrmPrincipal.Empresas1Click(Sender: TObject);
begin
  NovaAba(TFrame(TfraCadEmpresas),'Empresas', true, -1, true);
end;


function TfrmPrincipal.NovaAba(nomeFormFrame: TFrame; descFormFrame: string; Fechar: Boolean; iconTab: integer = -1; tabBar: boolean = false): boolean;
var TabSheet      :TUniTabSheet;
    FCurrentFrame :TUniFrame;
    I             :Integer;
begin

      pagePrincipal.Visible := True;

      {Verificando se a tela já está aberto e redireciona a ela}
      for I := 0 to pagePrincipal.PageCount - 1 do
        with pagePrincipal do
          if Pages[I].Caption = descFormFrame  then
            begin
              pagePrincipal.ActivePageIndex := I;
              result := true;
              Exit;
            end;

      TabSheet              := TUniTabSheet.Create(Self);
      TabSheet.PageControl  := pagePrincipal;
      TabSheet.Caption      := descFormFrame;
      TabSheet.Closable     := Fechar;
      TabSheet.ImageIndex   := iconTab;
      TabSheet.PageControl.TabBarVisible := tabBar;

      FCurrentFrame:= TUniFrameClass(nomeFormFrame).Create(Self);

      with FCurrentFrame do
        begin
          Align               := alClient;
          Parent              := TabSheet;
        end;

      Refresh;

      pagePrincipal.ActivePage := TabSheet;
      result := false;
end;


{
// --- Função NovaAba com a correção do evento OnClose ---
function TfrmPrincipal.NovaAba(nomeFormFrame: TFrame; descFormFrame: string; Fechar: Boolean;
  iconTab: integer = -1; tabBar: boolean = false): boolean;
var
  TabSheet      : TUniTabSheet;
  FCurrentFrame : TUniFrame;
  I             : Integer;
begin
  pagePrincipal.Visible := True;

  // Verificando se a tela já está aberta e redireciona a ela
  for I := 0 to pagePrincipal.PageCount - 1 do
    with pagePrincipal do
      if Pages[I].Caption = descFormFrame then
      begin
        pagePrincipal.ActivePageIndex := I;
        result := true;
        Exit;
      end;

  TabSheet              := TUniTabSheet.Create(Self);
  TabSheet.PageControl  := pagePrincipal;
  TabSheet.Caption      := descFormFrame;
  TabSheet.Closable     := Fechar;
  TabSheet.ImageIndex   := iconTab;
  TabSheet.PageControl.TabBarVisible := tabBar;

  //TabSheet.OnClose := ConfirmaFechamentoAba;

  FCurrentFrame := TUniFrameClass(nomeFormFrame).Create(Self);

  with FCurrentFrame do
  begin
    Align  := alClient;
    Parent := TabSheet;
  end;

  Refresh;

  pagePrincipal.ActivePage := TabSheet;
  result := false;
end;  }

procedure TfrmPrincipal.exibeDashboardTimer(Sender: TObject);
begin
  exibeDashboard.Enabled := false;
  //urlFrameDash.Visible := true;
end;

initialization
  RegisterAppFormClass(TfrmPrincipal);

end.
