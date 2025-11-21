unit ufrmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniHTMLFrame, uniURLFrame, system.json, Soap.EncdDecd, uniScrollBox, uniTimer,
  URGLayoutUnigui, UniSFSweetAlert, RESTREQUEST4D.request;

type
  TfrmLogin = class(TUniLoginForm)
    UniTimer1: TUniTimer;
    htmlLogin: TUniURLFrame;
    alerta: TUniSFSweetAlert;
    exibeLogin: TUniTimer;
    procedure htmlLoginAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UniTimer1Timer(Sender: TObject);
    procedure UniLoginFormScreenResize(Sender: TObject; AWidth,
      AHeight: Integer);
    procedure UniLoginFormCreate(Sender: TObject);
    procedure UniURLFrame1AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure exibeLoginTimer(Sender: TObject);
  private
    FLastWidth, FLastHeight: Integer;
    FPendingWidth, FPendingHeight: Integer;
    FInitSizes: Boolean;
    function SizeChangedEnough: Boolean;
    function BreakpointForWidth(const W: Integer): Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

function frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uConstantes, ServerModule;

function frmLogin: TfrmLogin;
begin
  Result := TfrmLogin(UniMainModule.GetFormInstance(TfrmLogin));
end;

procedure TfrmLogin.exibeLoginTimer(Sender: TObject);
begin
  exibeLogin.Enabled  := false;
  htmlLogin.Visible   := true;
end;

procedure TfrmLogin.htmlLoginAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
var
  mMenuEvento :TStringList;
  jsonLogin   :TJSONObject;
begin
  try
//    mMenuEvento := TStringList.Create;
//    mMenuEvento.Delimiter := ':';
//    mMenuEvento.DelimitedText := EventName;
    showmessage('clicou');
    if mMenuEvento[0] = 'login' then
    begin

      showmessage('clicou')
//      try
//        jsonLogin := TJSONObject.ParseJSONValue(decodeString( mMenuEvento[1])) as TJSONObject;
//      finally
//        jsonLogin.Free;
//      end;
    end;

  finally
    mMenuEvento.Free;
  end;
end;

function TfrmLogin.BreakpointForWidth(const W: Integer): Integer;
begin
  // Faixas estilo Bootstrap (ajuste se quiser)
  // Retorna um índice de faixa para comparar mudanças significativas
  if      W < 576  then Result := 0  // xs
  else if W < 768  then Result := 1  // sm
  else if W < 992  then Result := 2  // md
  else if W < 1200 then Result := 3  // lg
  else if W < 1400 then Result := 4  // xl
  else                   Result := 5; // xxl
end;

function TfrmLogin.SizeChangedEnough: Boolean;
const
  MIN_DELTA = 48; // px – ignora ajustes muito pequenos
begin
  Result :=
    (Abs(FPendingWidth - FLastWidth) >= MIN_DELTA) or
    (Abs(FPendingHeight - FLastHeight) >= MIN_DELTA) or
    (BreakpointForWidth(FPendingWidth) <> BreakpointForWidth(FLastWidth));
end;

//procedure TfrmLogin.UniLoginFormCreate(Sender: TObject);
//var
//  html: string;
//  teste:string;
//begin
//  teste := 'mike';
//
//  html :=
//  '<!DOCTYPE html> ' +
//  '<html lang="pt-br"> ' +
//  '<head> ' +
//    '<meta charset="UTF-8"> ' +
//    '<meta http-equiv="X-UA-Compatible" content="IE=edge"> ' +
//    '<meta name="viewport" content="width=device-width, initial-scale=1.0"> ' +
//    '<link rel="stylesheet" href="./files/css/styleLogin.css?'+ FormatDateTime('ddmmyyyyhhmmss', Now)+'"> ' +
//    '<title>Formulário Personalizado</title> ' +
//  '</head> ' +
//  '<body> ' +
//    '<section class="form-container"> ' +
//      '<div class="container"> ' +
//        '<form id="frmLogin"> ' +
//          '<img id="logo-form" src="./files/img/logo.png" alt="Logo" ' +
//            'style="display:block; margin: 0 auto 15px auto; width:190px; height:auto;"> ' +
//          '<p>Preencha o formulário abaixo para entrar no sistema</p> ' +
//          '<div class="input-single"> ' +
//            '<input class="input" type="text" id="usuario" required> ' +
//            '<label for="usuario">&nbsp;&nbsp;&nbsp; Usuário</label> ' +
//          '</div> ' +
//          '<div class="input-single"> ' +
//            '<input class="input" type="password" id="senha" required> ' +
//            '<label for="senha">&nbsp;&nbsp;&nbsp; Senha</label> ' +
//          '</div> ' +
//          '<div class="text-center mt-3""> ' +
//            '<button type="button" class="btn btn-danger" value="Entrar" style="background-color:#dc3545; border-radius:8px; padding:8px 20px; border:none; color:white" onclick="login()"> Entrar' +
//          '</div> ' +
//          '<div style="text-align:center; margin-top:10px;"> ' +
//            '<a href="#" style="color:#2D5966; text-decoration:none;">Esqueci minha senha</a> ' +
//          '</div> ' +
//        '</form> ' +
//      '</div> ' +
//    '</section> ' +
//
//        '<script> ' +
//          'function toBase64Utf8(str) { ' +
//            'if (window.TextEncoder) { ' +
//              'const bytes = new TextEncoder().encode(str); ' +
//              'let bin = ""; ' +
//              'for (let i = 0; i < bytes.length; i++) bin += String.fromCharCode(bytes[i]); ' +
//              'return btoa(bin); ' +
//            '} else { ' +
//              'return btoa(unescape(encodeURIComponent(str))); ' +
//            '} ' +
//          '} ' +
//
//
//          'function login(){ '+
//            'var usuario = document.getElementById("usuario").value; ' +
//            'var senha = document.getElementById("senha").value; ' +
//            'var jsonString = JSON.stringify({ usuario: usuario, senha: senha }); ' +
//            'const usuarioESenhaBase64 = toBase64Utf8(jsonString); '+
//            'top.ajaxRequest(top.frmLogin.htmlLogin, "login:"+usuarioESenhaBase64, []);  '+
//          '} '+
//        '</script> ' +
//  '</body> ' +
//  '</html> ';
//
//  htmlLogin.HTML.Clear;
//  htmlLogin.HTML.Text := html;
//  htmlLogin.Refresh;
//end;

procedure TfrmLogin.UniLoginFormCreate(Sender: TObject);
var
  html: string;
  htmlFilePath: string;
  htmlFile: TStringList;
  cacheBuster: string;
begin
  // Caminho do arquivo HTML
  htmlFilePath := UniServerModule.FilesFolderPath + 'login.html';

  if FileExists(htmlFilePath) then
  begin
    htmlFile := TStringList.Create;
    try
      htmlFile.LoadFromFile(htmlFilePath, TEncoding.UTF8);
      html := htmlFile.Text;
    finally
      htmlFile.Free;
    end;

    // Gera um "cache buster" com a data e hora atual
    cacheBuster := FormatDateTime('ddmmyyyyhhmmss', Now);

    // Substitui o marcador {{cachebuster}} no HTML
    html := StringReplace(html, '{{cachebuster}}', cacheBuster, [rfReplaceAll]);
  end
  else
    html := '<p>Arquivo HTML não encontrado.</p>';

  // Exibe o HTML no componente
  htmlLogin.HTML.Text := html;
  htmlLogin.Refresh;
end;


procedure TfrmLogin.UniLoginFormScreenResize(Sender: TObject; AWidth,
  AHeight: Integer);
begin
  // Na primeira chamada, apenas registra como base e sai
  if not FInitSizes then
  begin
    FLastWidth  := AWidth;
    FLastHeight := AHeight;
    FPendingWidth  := AWidth;
    FPendingHeight := AHeight;
    FInitSizes := True;
    Exit;
  end;

  // Se não mudou, não faz nada
  if (AWidth = FPendingWidth) and (AHeight = FPendingHeight) then
    Exit;

  // Atualiza o tamanho pendente e "debounce" com o timer
  FPendingWidth  := AWidth;
  FPendingHeight := AHeight;

  UniTimer1.Enabled := False; // reinicia o timer
  UniTimer1.Interval := 500;  // janela de "parou de redimensionar"
  UniTimer1.Enabled := True;
end;

procedure TfrmLogin.UniTimer1Timer(Sender: TObject);
begin
  UniTimer1.Enabled := False;

  // Só reinicia se a mudança for relevante
  if SizeChangedEnough then
  begin
    FLastWidth  := FPendingWidth;
    FLastHeight := FPendingHeight;
    UniApplication.Restart;
  end;
end;

procedure TfrmLogin.UniURLFrame1AjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
var
  mMenuEvento     :TStringList;
  jsonLogin       :TJSONObject;
  jsonBody        :TJSONObject;
  jsonStringLogin :string;
  usuario         :string;
  senha           :string;
  resp1           :IResponse;
begin
  try
    try
      mMenuEvento := TStringList.Create;
      mMenuEvento.Delimiter :=':';
      mMenuEvento.DelimitedText := EventName;

      if mMenuEvento[0] = 'login' then
      begin
        try
          jsonStringLogin := decodeString(mMenuEvento[1]);
          jsonLogin := TJSONObject.ParseJSONValue(jsonStringLogin) as TJSONObject;

          usuario := jsonLogin.getValue('usuario').value;
          senha   := jsonLogin.getValue('senha').value;

          if (usuario = '') or (senha = '') then
          begin
            alerta.Error('Por favor preencha usuário e senha.');
            exit;
          end else
            begin
              try
                jsonBody := TJSONObject.Create;
                jsonBody.AddPair('usuario', usuario);
                jsonBody.AddPair('senha', senha);

                resp1 := TRequest
                  .New
                  .BaseURL(baseurlCadastros)
                  .AddParam('nomeBanco', uniMainModule.nomebanco)
                  .Resource(postLogin)
                  .AddBody(jsonBody.ToString)
                  .Timeout(12000)
                  .Post;

                  if resp1.StatusCode = 200 then
                    modalResult := mrOK else
                    alerta.Error(resp1.Content);

                   //modalResult := mrOK

              finally
                jsonBody.Free;
              end;
            end;

          unisession.AddJS('console.log("Usuário: '+ usuario +'")');
          unisession.AddJS('console.log("Senha: '+ senha +'")');
        finally
          jsonLogin.Free;
        end;
      end;

    finally
      mMenuEvento.Free;
    end;
  except on e:exception do
    showmessage(e.Message);
  end;
end;

initialization
  RegisterAppFormClass(TfrmLogin);

end.
