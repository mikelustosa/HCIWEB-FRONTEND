unit ufraTrocaCodCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniEdit, uniPanel, uniScrollBox, uniTimer,
  URGLayoutUnigui, uniImage, uniButton, uniBitBtn, UniSFButton, UniSFBitBtn,
  uniLabel, uniGUIBaseClasses, Data.DB, Datasnap.DBClient, UniSFiGrowl,
  UniSFSweetAlert;

type
  TfraTrocaCodCli = class(TUniFrame)
    alerta: TUniSFSweetAlert;
    alertaM: TUniSFiGrowl;
    CDSTela: TClientDataSet;
    CDSTelabotaoEditar: TAggregateField;
    CDSTelaiconeAtivo: TAggregateField;
    cpMenuTopo: TUniContainerPanel;
    lblDescricao: TUniLabel;
    btnNovo: TUniSFBitBtn;
    UniContainerPanel27: TUniContainerPanel;
    btnFechar: TUniSFBitBtn;
    imgFundo: TUniImage;
    RG1: TRGLayoutUnigui;
    scrFundo: TUniScrollBox;
    UniContainerPanel12: TUniContainerPanel;
    compTitulo: TUniLabel;
    pn1: TUniPanel;
    sBoxFundoRegistro: TUniScrollBox;
    UniPanel2: TUniPanel;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniPanel3: TUniPanel;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel1: TUniLabel;
    cpMenuRodape: TUniContainerPanel;
    btnSalvar: TUniSFBitBtn;
    btnCancelar: TUniSFBitBtn;
    UniPanel65: TUniPanel;
    UniPanel1: TUniPanel;
    compCONT: TUniEdit;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniSFBitBtn2: TUniSFBitBtn;
    compCODCLIINI: TUniEdit;
    UniSFBitBtn1: TUniSFBitBtn;
    compCODCLIFIN: TUniEdit;
    procedure btnCancelarClick(Sender: TObject);
    procedure UniSFBitBtn2Click(Sender: TObject);
    procedure UniSFBitBtn1Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    procedure callBackCodCliIni(Sender: TComponent;
      AResult: Integer);
    procedure callBackCodCliFin(Sender: TComponent;
      AResult: Integer);
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses ufrmListaGlobal, RESTRequest4D.Request, System.JSON, uConstantes,
  MainModule, UniSFCore;


procedure TfraTrocaCodCli.callBackCodCliIni(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODCLIINI.text     := frmListaGlobal.CDSTela.FieldByName('codCli').AsString;// idClassificacao;
//    compdescrat.Text  := frmListaGlobal.CDSTela.FieldByName('descrAt').AsString;//frmListaClassificacoes.nome;
    alertaM.info('Cliente selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TfraTrocaCodCli.btnSalvarClick(Sender: TObject);
var
  resp1       :IResponse;
//  jsonBody    :TJSONObject;
begin
  if (trim(compCODCLIINI.Text) = '') or (trim(compCODCLIFIN.Text) = '') then
  begin
    alerta.Warning('Cliente origem/destino é obrigatório.');
    exit;
  end;
  if (trim(compCONT.Text) = '') then
  begin
    alerta.Warning('Gerar a partir de é obrigatório.');
    exit;
  end;


  alerta.QuestionBasic('Prosseguir?',
  procedure(const ButtonClicked: TAButton)
  begin
    if ButtonClicked = abConfirm then
    begin
      try
//        jsonBody := TJSONObject.Create;

    //    jsonBody.AddPair('cliI', compCODCLIINI.Text);
    //    jsonBody.AddPair('cliF', compCODCLIFIN.Text);
    //    jsonBody.AddPair('cliCont', compCONT.Text);

        resp1 := TRequest
                  .New
                  .BaseURL(baseurlCadastros)
                  .Resource(putTrocaCodCli)
                  .AddParam('nomeBanco', uniMainModule.nomebanco)
                  .AddParam('cliI', compCODCLIINI.Text)
                  .AddParam('cliF', compCODCLIFIN.Text)
                  .AddParam('cliCont', compCONT.Text)
//                  .AddBody(jsonBody.ToString)
                  .Timeout(120000)
                  .Put;


        if resp1.StatusCode = 200 then
          begin
            alerta.Info('Alteração realizada com sucesso!');
          end
        else
          begin
            alerta.Info(resp1.StatusCode.ToString + ' ' + resp1.Content)
          end;
      finally
//        jsonBody.Free;
      end;
    end;
  end);
end;

procedure TfraTrocaCodCli.callBackCodCliFin(Sender: TComponent;
  AResult: Integer);
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compCODCLIFIN.text     := frmListaGlobal.CDSTela.FieldByName('codCli').AsString;// idClassificacao;
//    compdescrat.Text  := frmListaGlobal.CDSTela.FieldByName('descrAt').AsString;//frmListaClassificacoes.nome;
    alertaM.info('Cliente selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
  end;
end;

procedure TfraTrocaCodCli.btnCancelarClick(Sender: TObject);
begin
//  close;
end;

procedure TfraTrocaCodCli.UniSFBitBtn1Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CLIENTES_TROCA_COD_CLI_FIN';
  frmListaGlobal.lblDescricao.Caption := 'TROCA CÓDIGO DE CLIENTES';
  frmListaGlobal.showModal(callBackCodCliFin);
end;

procedure TfraTrocaCodCli.UniSFBitBtn2Click(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CLIENTES_TROCA_COD_CLI_INI';
  frmListaGlobal.lblDescricao.Caption := 'TROCA CÓDIGO DE CLIENTES';
  frmListaGlobal.showModal(callBackCodCliIni);
end;

end.
