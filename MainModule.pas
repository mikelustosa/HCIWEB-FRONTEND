unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, Inifiles, uniEdit;


type
  TpMask = (tpCelular, tpFixo, tpNenhum);

type
  TUniMainModule = class(TUniGUIMainModule)
    procedure UniGUIMainModuleBeforeLogin(Sender: TObject;
      var Handled: Boolean);
    procedure UniGUIMainModuleSessionTimeout(ASession: TObject;
      var ExtendTimeOut: Integer);
    procedure UniGUIMainModuleCreate(Sender: TObject);
  private

    { Private declarations }
  public
    nomeBanco     :string;
    urlHost       :string;
    screenHeigth  :integer;
    screenWidth   :integer;
    function aplicaMascara(Obj: TUniEdit; tipoMask: TpMask): string;
  end;

function UniMainModule: TUniMainModule;

//var frameQueChamou : string;
implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication, uniGUIClasses, uniGUITypes,
  uConstantes;


function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.UniGUIMainModuleBeforeLogin(Sender: TObject;
  var Handled: Boolean);
begin
  uniAddcssLibrary('/files/css/styleLogin.css?' + FormatDateTime('ddmmyyyyhhmmss', Now), true, [upoFolderFiles, upoPlatformBoth]);
  uniAddcssLibrary('/files/css/style.css?' + FormatDateTime('ddmmyyyyhhmmss', Now), true, [upoFolderFiles, upoPlatformBoth]);
end;

function TUniMainModule.aplicaMascara(Obj: TUniEdit; tipoMask: TpMask): string;
var
  mask: string;
begin
  if (Obj is TUniEdit) then
  if tipoMask = tpCelular then
    mask := '(99) 99999-9999' else

  if tipoMask = tpFixo then
    mask := '(99) 9999-9999';

  if tipoMask = tpNenhum then
  begin
    result := Format('jQuery(function(){jQuery("#%s_id-inputEl").mask("A", {'+
      'translation: {'+
        'A: { pattern: /^[A-Za-z·‡‚„ÈËÍÌÔÛÙıˆ˙ÁÒ¡¿¬√…»Õœ”‘’÷⁄«—0-9\s]+$/g, recursive: true },'+
      '},'+
    '});});', [Obj.JSName]);

    exit;
  end;

  result := Format('jQuery(function(){jQuery("#%s_id-inputEl").mask("%s");});', [Obj.JSName, mask]);
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
var
  arqIni  :TInifile;
begin
  nomeBanco := uniGUIApplication.UniApplication.Parameters.Values['instance'];//Base de dados
  urlHost   := uniGUIApplication.UniApplication.UniSession.URL + '?instance=' + nomeBanco;

  try
    arqIni  := Tinifile.Create(UniServerModule.StartPath+'config.ini'); // Caminho do arquivo.
    baseurlCadastros  := arqIni.ReadString('BACKEND', 'baseurlcadastros', '');   // base url api backend de cadastro
    nomeBanco         := uniGUIApplication.UniApplication.Parameters.Values['nomebanco'];//Base de dados
  finally
    arqIni.Free;
  end;
end;

procedure TUniMainModule.UniGUIMainModuleSessionTimeout(ASession: TObject;
  var ExtendTimeOut: Integer);
begin
  ExtendTimeOut := uniServerModule.SessionTimeout;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
