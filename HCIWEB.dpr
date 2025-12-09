{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  HCIWEB;

uses
  uniGUIISAPI,
  midasLib,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {frmPrincipal: TUniForm},
  ufrmLogin in 'ufrmLogin.pas' {frmLogin: TUniLoginForm},
  ufraCadUsuarios in 'ufraCadUsuarios.pas' {fraCadUsuarios: TUniFrame},
  uUtils in 'uUtils.pas',
  uConstantes in 'uConstantes.pas',
  TCustomIdHTTPUnit in 'TCustomIdHTTPUnit.pas',
  ufrmListaEmpresas in 'ufrmListaEmpresas.pas' {frmListaEmpresas: TUniForm},
  ufraCadEmpresas in 'ufraCadEmpresas.pas' {fraCadEmpresas: TUniFrame},
  ufraCadAtividades in 'ufraCadAtividades.pas' {fraCadAtividades: TUniFrame},
  ufraCadGrupos in 'ufraCadGrupos.pas' {fraCadGrupos: TUniFrame},
  ufraCadClassificacoes in 'ufraCadClassificacoes.pas' {fraCadClassificacoes: TUniFrame},
  ufraCadArea in 'ufraCadArea.pas' {fraCadArea: TUniFrame},
  ufraCadPais in 'ufraCadPais.pas' {fraCadPais: TUniFrame},
  ufraCadRegioes in 'ufraCadRegioes.pas' {fraCadRegioes: TUniFrame},
  ufraCadCentroCustos in 'ufraCadCentroCustos.pas' {fraCadCentroCustos: TUniFrame},
  ufraCadDepartamentos in 'ufraCadDepartamentos.pas' {fraCadDepartamentos: TUniFrame},
  ufraCadBancos in 'ufraCadBancos.pas' {fraCadBancos: TUniFrame},
  ufraCadCartoes in 'ufraCadCartoes.pas' {fraCadCartoes: TUniFrame},
  ufraCadCondPag in 'ufraCadCondPag.pas' {fraCadCondPag: TUniFrame},
  ufrmListaCentroDeCusto in 'ufrmListaCentroDeCusto.pas' {frmListaCentroDeCusto: TUniForm},
  ufrmListaBancos in 'ufrmListaBancos.pas' {frmListaBancos: TUniForm},
  ufraCadClientes in 'ufraCadClientes.pas' {fraCadClientes: TUniFrame},
  ufraCadVendedores in 'ufraCadVendedores.pas' {fraCadVendedores: TUniFrame},
  ufrmListaGlobal in 'ufrmListaGlobal.pas' {frmListaGlobal: TUniForm},
  ufraCadCfop in 'ufraCadCfop.pas' {fraCadCfop: TUniFrame},
  ufraCadIcmsInterno in 'ufraCadIcmsInterno.pas' {fraCadIcmsInterno: TUniFrame},
  ufraCadProdutos in 'ufraCadProdutos.pas' {fraCadProdutos: TUniFrame};

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$endif}
end.
