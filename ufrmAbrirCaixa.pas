unit ufrmAbrirCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniEdit, uniScrollBox, uniPanel, uniButton,
  uniBitBtn, UniSFButton, UniSFBitBtn, uniLabel, uniGUIBaseClasses,
  uniDateTimePicker, UniSFSweetAlert;

type
  TfrmAbrirCaixa = class(TUniForm)
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
    compUSUARIO: TUniEdit;
    UniContainerPanel36: TUniContainerPanel;
    UniLabel36: TUniLabel;
    UniPanel48: TUniPanel;
    compVALOREMCAIXA: TUniEdit;
    UniContainerPanel38: TUniContainerPanel;
    UniLabel37: TUniLabel;
    UniPanel49: TUniPanel;
    UniContainerPanel39: TUniContainerPanel;
    UniLabel38: TUniLabel;
    cpMenuRodape: TUniContainerPanel;
    btnCancelar: TUniSFBitBtn;
    btConcluir: TUniSFBitBtn;
    compDATAABERTURA: TUniDateTimePicker;
    alerta: TUniSFSweetAlert;
    compSENHA: TUniEdit;
    procedure UniFormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure btConcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmAbrirCaixa: TfrmAbrirCaixa;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uUtils, RESTRequest4D.Response.Intf,
  System.JSON, RESTRequest4D.Request, uConstantes;

function frmAbrirCaixa: TfrmAbrirCaixa;
begin
  Result := TfrmAbrirCaixa(UniMainModule.GetFormInstance(TfrmAbrirCaixa));
end;

procedure TfrmAbrirCaixa.btConcluirClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody   :TJSONObject;
begin
  try
    jsonBody := TJSONObject.Create;
    try
      if (trim(compSENHA.Text) = '') then
      begin
        alerta.Error('Campo senha não podem ser vazio.');
        exit;
      end;
      jsonBody.AddPair('usuario', compUSUARIO.Text);
      jsonBody.AddPair('senha', compSENHA.Text);


      resp1 := TRequest
              .New
              .BaseURL(baseurlCadastros)
              .Resource(postAbrirCaixa)
              .AddParam('nomeBanco', uniMainModule.nomebanco)
              .AddBody(jsonBody.ToString)
              .Timeout(12000)
              .Post;

      if resp1.StatusCode = 200 then
      begin
        var jTmp : TJSONObject; jTmp := TJSONObject.Create;
        var aTmp : TJSONArray; aTmp := TJSONArray.Create;

        jTmp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
        aTmp := jTmp.GetValue('usuarioPdv') as TJSONArray;

//        //objecto que armazena informações do usuário da tabela wbNfceConfig
//        vvjUsuarioPdv := aTmp.Items[0] as TJSONObject;

        alerta.Success('Caixa aberto com sucesso.');
        close;
      end
      else
      begin
        alerta.Error('ERRO.: '+resp1.Content);
      end;
    except on e:exception do
      begin
        alerta.Error('ERRO: '+e.Message);
      unisession.Synchronize();
      end;
    end;
  finally

    jsonBody.Free;
  end;
end;

procedure TfrmAbrirCaixa.btnCancelarClick(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  close;
end;

procedure TfrmAbrirCaixa.btnFecharClick(Sender: TObject);
begin
 btnCancelar.Click;
end;

procedure TfrmAbrirCaixa.UniFormReady(Sender: TObject);
begin
  compDATAABERTURA.DateTime := now;
  compUSUARIO.Text := UniMainModule.wUsuario;
  compVALOREMCAIXA.Text := '0';
  compSENHA.Text := ' ';
  compVALOREMCAIXA.SetFocus;
end;

procedure TfrmAbrirCaixa.UniFormShow(Sender: TObject);
begin
//  frmAbrirCaixa.Top := 5;
//  frmAbrirCaixa.Height := uniMainModule.screenHeigth - 10;
//  frmAbrirCaixa.Width  := uniMainModule.screenWidth  - 15;
//  frmAbrirCaixa.Left   := 7;
end;

end.
