unit ufrmPDV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniCheckBox, uniLabel, uniEdit, uniBasicGrid,
  uniDBGrid, uniScrollBox, uniPanel, uniGUIBaseClasses, uniButton, uniBitBtn,
  UniSFButton, UniSFBitBtn, UniSFSweetAlert, UniSFiGrowl, uniTimer,
  URGLayoutUnigui, Data.DB, Datasnap.DBClient, System.JSON, system.math,
  system.ioutils, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniImage, Vcl.Imaging.pngimage;

type
  TfrmPDV = class(TUniForm)
    UniPanel39: TUniPanel;
    UniScrollBox1: TUniScrollBox;
    UniPanel42: TUniPanel;
    gridTela: TUniDBGrid;
    UniPanel1: TUniPanel;
    UniPanel40: TUniPanel;
    compCODPRO: TUniEdit;
    UniContainerPanel23: TUniContainerPanel;
    UniLabel31: TUniLabel;
    UniPanel47: TUniPanel;
    compMOV: TUniEdit;
    UniContainerPanel36: TUniContainerPanel;
    UniLabel36: TUniLabel;
    UniPanel48: TUniPanel;
    compVALORU: TUniEdit;
    UniContainerPanel38: TUniContainerPanel;
    UniLabel37: TUniLabel;
    UniPanel49: TUniPanel;
    compTOTAL: TUniEdit;
    UniContainerPanel39: TUniContainerPanel;
    UniLabel38: TUniLabel;
    UniPanel2: TUniPanel;
    chAlteraQtd: TUniCheckBox;
    UniPanel50: TUniPanel;
    UniPanel3: TUniPanel;
    UniPanel46: TUniPanel;
    compNOMEVEND: TUniEdit;
    UniContainerPanel26: TUniContainerPanel;
    UniLabel35: TUniLabel;
    UniPanel45: TUniPanel;
    compINT_CODVEN: TUniEdit;
    UniContainerPanel24: TUniContainerPanel;
    UniLabel32: TUniLabel;
    UniPanel43: TUniPanel;
    compNOME: TUniEdit;
    UniContainerPanel37: TUniContainerPanel;
    UniLabel34: TUniLabel;
    UniPanel44: TUniPanel;
    compTOTALGERAL: TUniEdit;
    UniContainerPanel22: TUniContainerPanel;
    lb_desconto: TUniLabel;
    cpMenuRodape: TUniContainerPanel;
    btSalvar: TUniSFBitBtn;
    btnCancelar: TUniSFBitBtn;
    btFatura: TUniSFBitBtn;
    btCliente: TUniSFBitBtn;
    btUtilidades: TUniSFBitBtn;
    btLimpaVenda: TUniSFBitBtn;
    btProduto: TUniSFBitBtn;
    cpMenuTopo: TUniContainerPanel;
    lblDescricao: TUniLabel;
    UniSFBitBtn3: TUniSFBitBtn;
    UniContainerPanel27: TUniContainerPanel;
    UniContainerPanel1: TUniContainerPanel;
    UniPanel36: TUniPanel;
    UniPanel37: TUniPanel;
    compDESCR: TUniPanel;
    alertaM: TUniSFiGrowl;
    alerta: TUniSFSweetAlert;
    CDSTela_ant: TClientDataSet;
    CDSTela_antbotaoEditar: TAggregateField;
    CDSTela_anticoneAtivo: TAggregateField;
    DSTela: TDataSource;
    CDSDados: TClientDataSet;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    RG1: TRGLayoutUnigui;
    btnVendedor: TUniSFBitBtn;
    btConcluir: TUniSFBitBtn;
    CDSTela_antid: TIntegerField;
    CDSTela_antcodpro: TStringField;
    CDSTela_antdescr: TStringField;
    CDSTela_antmov: TFloatField;
    CDSTela_antvaloru: TFloatField;
    CDSTela_anttotal: TFloatField;
    CDSTela_antativo: TStringField;
    CDSTela: TFDMemTable;
    CDSTelaid: TStringField;
    CDSTelacodpro: TStringField;
    CDSTeladescr: TStringField;
    CDSTelamov: TStringField;
    CDSTelavaloru: TStringField;
    CDSTelatotal: TStringField;
    CDSTelaativo: TStringField;
    CDSTelabotaoEditar: TAggregateField;
    CDSTelaiconeAtivo: TAggregateField;
    CDSTelavDesc: TFloatField;
    UniImage1: TUniImage;
    UniImage2: TUniImage;
    UniContainerPanel2: TUniContainerPanel;
    UniContainerPanel3: TUniContainerPanel;
    UniScrollBox2: TUniScrollBox;
    timerFocoItem: TUniTimer;
    CDSTelaidCodPro: TStringField;
    procedure UniSFBitBtn3Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure btProdutoClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure chAlteraQtdClick(Sender: TObject);
    procedure compMOVChange(Sender: TObject);
    procedure btnVendedorClick(Sender: TObject);
    procedure btClienteClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure CDSTela_anticoneAtivoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSTela_antbotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure gridTelaCellClick(Column: TUniDBGridColumn);
    procedure btSalvarClick(Sender: TObject);
    procedure btConcluirClick(Sender: TObject);
    procedure btFaturaClick(Sender: TObject);
    procedure UniFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSTelaiconeAtivoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btLimpaVendaClick(Sender: TObject);
    procedure compCODPROKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure timerFocoItemTimer(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure compMOVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure compMOVEnter(Sender: TObject);
    procedure btUtilidadesClick(Sender: TObject);
  private
    { Private declarations }
    JProduto : TJSONObject;
    JCliente : TJSONObject;
    JVendedor : TJSONObject;
    JUsuarioPdv : TJSONObject;
//    FJParcelasCaixa: TJSONArray;

    wGerarNfce : string;
    wGerarMovCaixa : string;
    wGerarMovEstoque : string;


//    procedure SetJParcelasCaixa(Value: TJSONArray);

    procedure callBackProduto(Sender: TComponent;
      AResult: Integer);
    procedure callBackVendedores(Sender: TComponent;
      AResult: Integer);
    procedure callBackCliente(Sender: TComponent;
      AResult: Integer);
    procedure listar(pDado :string = '');
    procedure callBackQtdRetiraItem(Sender: TComponent;
      AResult: Integer);
    procedure callBackFatura(Sender: TComponent;
      AResult: Integer);
    procedure callBackUtilidades(Sender: TComponent;
      AResult: Integer);

    function HenviaNfce(out weMsgOut:string; weIdEmp,weNumNf,weTipoNfeNfce,weUsuario,weHoraNfe:string):string;

    function pesquisaItem(out weJson:TJSONObject; weId,weCodPro,weDescr :string): boolean;
    procedure limpaCupom;
    procedure calculaCupom;
    procedure retornar;

  public
    { Public declarations }
    totalCupom, totalProdutos: Double;
//    pDesc, vDesc,
    vDescTotal: Double;
    wTotalCupom : real;
    JParcelasCaixa : TJSONArray;
//    property JParcelasCaixa: TJSONArray read FJParcelasCaixa write SetJParcelasCaixa;
//    destructor Destroy; override;
  end;

function frmPDV: TfrmPDV;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ufrmListaGlobal, uUtils,
  RESTRequest4D.Response.Intf, RESTRequest4D.Request.Intf,
  RESTRequest4D.Request, uConstantes, ufrmAlteraQtdItemPdv,
  ufrmSelecionaPagamentoF, UniSFCore, ServerModule, ufrmConfirmacaoVenda,
  ufrmPDVUtilidades;

procedure TfrmPDV.callBackUtilidades(Sender: TComponent;
  AResult: Integer);
begin
  calculaCupom;
end;

procedure TfrmPDV.retornar;
begin
  listar;
end;

//procedure TfrmPDV.SetJParcelasCaixa(Value: TJSONArray);
//begin
//  // Limpa o existente se houver
//  if JParcelasCaixa <> nil then
//    FreeAndNil(JParcelasCaixa);
//
//  // Se veio um JSON válido, cria um clone (ou assume a responsabilidade)
//  if Value <> nil then
//    JParcelasCaixa := Value.Clone as TJSONArray
//  else
//    JParcelasCaixa := nil;
//end;

function TfrmPDV.HenviaNfce(out weMsgOut:string; weIdEmp,weNumNf,weTipoNfeNfce,weUsuario,weHoraNfe:string):string;
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
  wJsonResult: TJSONObject;
begin
  result := '';
  resp1 := nil;
  wJsonResult := nil;
  try
    jsonBody := TJSONObject.Create;
    try
      try
        jsonBody.AddPair('idEmp', weIdEmp);
        jsonBody.AddPair('numNf', weNumNf);
        jsonBody.AddPair('tipoNfeNfCe', weTipoNfeNfce);
        jsonBody.AddPair('usuario', weUsuario);
        jsonBody.AddPair('horaNfe', weHoraNfe);
        resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(enviaNfce)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddBody(jsonBody.ToString)
                .Timeout(12000)
                .Get;
        if RESP1.StatusCode = 200 then
          begin
            wJsonResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
            result := wJsonResult.GetValue<string>('urlNfcePdf');
          end
        else
          begin
            weMsgOut := resp1.Content;
            result := 'Erro na emissão da nfce. '+resp1.content;
          end;
      except on e:exception do
        begin
          result := e.Message;
        end;
      end;
    finally
      jsonBody.Free;
    end;
  except on e:exception do
    begin
      result := e.Message;
    end;
  end;
end;

procedure TfrmPDV.timerFocoItemTimer(Sender: TObject);
begin
  compCODPRO.WebFocus;
  timerFocoItem.Enabled := false;
end;

function red_unit(Num: double; casa: integer): double;
var
  n1: extended;
  n2, n3: double;
begin
  n2 := power(10, casa);
  n1 := Num * n2;
  n3 := Frac(n1);
  if (n3 >= 0.4999) and (n3 < 0.9) then
    n1 := round(n1 + 0.1)
  else
    n1 := round(n1);
  red_unit := n1 / n2;
end;

procedure TfrmPDV.calculaCupom;
var
  f: textFile;
  str_log: string;
  str_arquivo_log: string;
  flt_porcentagemDoTotal, flt_valorDescontoProduto, flt_valorDescontoProdutoSoma: Double;
  ytiprel : string;

  dc:string;
begin
  dc :=  ExtractFilePath(ParamStr(0));
  totalCupom := 0;
  totalProdutos := 0;
  vDescTotal := 0;

  if (uniMainModule.pDesc <> 0) then
    lb_desconto.Caption := 'Total geral com ' + FormatFloatHci(uniMainModule.pDesc, 2) + ' % de desconto:'
  else if (uniMainModule.vDesc <> 0) then
    lb_desconto.Caption := 'Total geral com ' + FormatFloatHci(uniMainModule.vDesc, 2) + ' R$ de desconto:'
  else
    lb_desconto.Caption := 'Total geral:';

  str_log := '-------------------------------------------------------' + sLineBreak;

  if (uniMainModule.pDesc <> 0) then
    str_log := str_log + 'RecordCount : ' + intToStr(CDSTela.recordcount) + '    Desconto %% : ' + FloatToStr(uniMainModule.pDesc) + sLineBreak
  else if (uniMainModule.vDesc <> 0) then
    str_log := str_log + 'RecordCount : ' + intToStr(CDSTela.recordcount) + '    Desconto R$ : ' + FloatToStr(uniMainModule.vDesc) + sLineBreak;

  CDSTela.DisableControls;
  if (CDSTela.recordcount > 0) then
  begin
    CDSTela.first;
    while not(CDSTela.eof) do
    begin

      // **12679
      totalProdutos := totalProdutos + red_unit((CDSTela.fieldbyname('total').asfloat), 2 { vvdecpreco } );

      ytiprel := 'V';

      // Alexandre - 26/11/2018
      // - Correção : #12658 - Correção de arredondamento quando é emitido pelo pedido
      if (ytiprel = 'V') or (ytiprel = 'C') then
        totalCupom := totalCupom + CDSTela.fieldbyname('total').asfloat
      else
        totalCupom := totalCupom + red_cent((CDSTela.fieldbyname('total').asfloat - (red_cent((CDSTela.fieldbyname('total').asfloat / 100) * uniMainModule.pDesc))) { , 2vvdecpreco } );
      // **

      str_log := str_log
        + estr(CDSTela.fieldbyname('codpro').AsString, 15) + ' '
        + formata(red_cent(CDSTela.fieldbyname('total').asfloat), 15, 2) + ' '
        + formata(red_cent(CDSTela.fieldbyname('total').asfloat - (red_cent((CDSTela.fieldbyname('total').asfloat / 100) * uniMainModule.pDesc))), 15, 2) + sLineBreak;

      CDSTela.next;
    end;

    // Alexandre - 26/11/2018
    // - Correção : #12658 - Correção de arredondamento quando é emitido pelo pedido
    // if (ytiprel = 'V') or (ytiprel = 'C') then
    // totalCupom := red_unit((totalCupom - (((totalCupom / 100) * pDesc))), 2 { vvdecpreco } );
    // **

    flt_valorDescontoProdutoSoma := 0;

    if (uniMainModule.vDesc <> 0) then
    begin
      CDSTela.first;
      while not(CDSTela.eof) do
      begin
        flt_porcentagemDoTotal := (CDSTela.fieldbyname('total').asfloat / totalProdutos) * 100;
        flt_valorDescontoProduto := red_cent((uniMainModule.vDesc / 100) * flt_porcentagemDoTotal);

        flt_valorDescontoProdutoSoma := flt_valorDescontoProdutoSoma + flt_valorDescontoProduto;

        CDSTela.edit;
        CDSTela.fieldbyname('vDesc').asfloat := flt_valorDescontoProduto;
        CDSTela.post;

        CDSTela.next;
      end;

      if not(SameValue(uniMainModule.vDesc, flt_valorDescontoProdutoSoma)) then
      begin
        CDSTela.first;
        CDSTela.edit;
        CDSTela.fieldbyname('vDesc').asfloat := CDSTela.fieldbyname('vDesc').asfloat + (uniMainModule.vDesc - flt_valorDescontoProdutoSoma);
        CDSTela.post;
      end;

      //18062026totalCupom := totalCupom - uniMainModule.vDesc;
      vDescTotal := uniMainModule.vDesc;
    end
    else if (uniMainModule.pDesc > 0) then
    begin
      CDSTela.first;
      while not(CDSTela.eof) do
      begin
        flt_valorDescontoProduto := red_cent((CDSTela.fieldbyname('total').asfloat / 100) * uniMainModule.pDesc);
        vDescTotal := vDescTotal + flt_valorDescontoProduto;

        CDSTela.edit;
        CDSTela.fieldbyname('vDesc').asfloat := flt_valorDescontoProduto;
        CDSTela.post;

        CDSTela.next;
      end;
    end
    // Alexandre - 21/03/2019
    // - Correção : #13478 - Desconto PDV, cliente não estava conseguindo tirar o desconto.
    else if (uniMainModule.vDesc = 0) and (uniMainModule.pDesc = 0) then
    begin
      CDSTela.first;

      while not(CDSTela.eof) do
      begin
        flt_valorDescontoProduto := red_cent((CDSTela.fieldbyname('total').asfloat / 100) * uniMainModule.pDesc);
        vDescTotal := vDescTotal + flt_valorDescontoProduto;

        CDSTela.edit;
        CDSTela.fieldbyname('vDesc').asfloat := flt_valorDescontoProduto;
        CDSTela.post;

        CDSTela.next;
      end;
    end;
    // **
  end;
  CDSTela.EnableControls;

  if (ytiprel = 'V') or (ytiprel = 'C') then
    totalCupom := totalCupom - vDescTotal;

  str_log := str_log + 'TOTAL ' +
  FormatFloatHci(totalCupom, JParGer.GetValue<integer>('DECPRECO')) +
  ' (' + FloatToStr(totalCupom) +')' + sLineBreak;

  compTOTALGERAL.text := FormatFloatHci(totalCupom, 2);
//   lb_total.Caption := FormatFloat('#,0.00', totalCupom);
  compCODPRO.Text := '';
  compMOV.Text := FormatFloatHci(0, JParGer.GetValue<integer>('PICEST'));;
  compVALORU.Text := FormatFloatHci(0, JParGer.GetValue<integer>('DECPRECO'));
  compTOTAL.Text := FormatFloatHci(0, JParGer.GetValue<integer>('DECPRECO'));


//  try
//    if not DirectoryExists(dc + '\log') then
//      CreateDir(dc + '\log');
//
//    if not DirectoryExists(dc + '\log\PDV') then
//      CreateDir(dc + '\log\PDV');
//
//    str_arquivo_log := dc + '\log\PDV\' + FormatDateTime('yyyy-mm-dd', now) + '.txt';
//    tfile.AppendAllText(str_arquivo_log, str_log);
//  finally
//
//  end;
end;

procedure TfrmPDV.limpaCupom;
begin
  while (CDSTela.recordcount > 0) do
    CDSTela.Delete;
  sleep(200);
  compCODPRO.Text := '';
  compDESCR.Caption := 'CAIXA LIVRE';
  compMOV.Text := '';
  compVALORU.Text :='';
  compTOTAL.Text := '';
  compNOME.Text := '';
  compTOTALGERAL.Text := '';
//  compINT_CODVEN.Text := '';
//  compNOMEVEND.Text := '';

  FreeAndNil(JProduto);
  JProduto := nil;

  FreeAndNil(JCliente);
  JCliente := nil;

  uniMainModule.pDesc := 0;
  uniMainModule.vDesc := 0;

  calculaCupom;
end;

function TfrmPDV.pesquisaItem(out weJson:TJSONObject; weId,weCodPro,weDescr :string): boolean;
var
  resp1     :IResponse;
  wAItemTmp :TJSONArray;
  wJItemTmp :TJSONObject;
begin
  try
    FreeAndNil(weJson);
    weJson := TJSONObject.Create;
    result := false;

    resp1 := TRequest.New.BaseURL(baseurlCadastros)
           .resource(getProduto)
           .AddParam('nomeBanco', uniMainModule.nomebanco)
           .AddParam('id', weId)
           .AddParam('codpro', weCodPro)
           .AddParam('descr', weDescr)
           .AddParam('empresa', vvcodemp)
           .timeOut(12000)
           .Get;
    if resp1.StatusCode = 200 then
    begin
      FreeAndNil(weJson);
      weJson := TJSONObject.Create;
      wJItemTmp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
      wAItemTmp := wJItemTmp.GetValue('Result') as TJSONArray;
      weJson := wAItemTmp.Items[0] as TJSONObject;

      result := true;
    end;
  finally

  end;
end;

procedure TfrmPDV.callBackFatura(Sender: TComponent;
  AResult: Integer);
var
  resp1       :IResponse;
  jsonBody,jsonBodyNfce   :TJSONObject;
  wMsgOut:string;
  wUrlPdfCupom:string;
begin
  if frmSelecionaPagamentoF.ModalResult = mrOk then
  begin
    alerta.QuestionBasic('Prosseguir?',
    procedure(const ButtonClicked: TAButton)
    begin
      if ButtonClicked = abConfirm then
      begin
        try
          try
            jsonBody := TJSONObject.Create;

            //dados gerais
            jsonBody.AddPair('empresa', vvcodemp);
            jsonBody.AddPair('gerarMovEstoque', wGerarMovEstoque);
            jsonBody.AddPair('gerarMovCaixa', wGerarMovCaixa);
            jsonBody.AddPair('gerarNfce', wGerarNfce);
            jsonBody.AddPair('usuario', JUsuarioPdv.GetValue('usuario').Value);

            //pedido (wbCupomFisc)
            var aPedido : TJSONArray; aPedido := TJSONArray.Create;
            var jPedido : TJSONObject; jPedido := TJSONObject.Create;
            jPedido.AddPair('int_CodCli',JCliente.GetValue<string>('CODCLI'));
            jPedido.AddPair('int_TipoPagamento','');
            jPedido.AddPair('int_Caixa',vvCaixa);
            jPedido.AddPair('int_CodVen',JVendedor.GetValue<string>('CODVEND'));

            //quando desconto é em valor, transforma esse valor em percentual
            if (UniMainModule.pDesc = 0) and (UniMainModule.vDesc <> 0) then
              jPedido.AddPair('flt_Pdesc', floattostr((uniMainModule.vDesc * 100) / uniMainModule.vTotalSemDesc))


//              jPedido.AddPair('flt_Pdesc', floattostr(((uniMainModule.vTotalSemDesc * uniMainModule.pDesc) /100)))
            else
              jPedido.AddPair('flt_Pdesc',floattostr(uniMainModule.pDesc));

            jPedido.AddPair('flt_Vdesc','0');//obsoleto em 18062026floattostr(uniMainModule.vDesc));

            aPedido.AddElement(jPedido);
            jsonBody.AddPair('pedido',aPedido);

            //itens do pedido (wbCupomFiscP)
            CDSTela.First;
            var aItensPedido : TJSONArray; aItensPedido := TJSONArray.Create;
            while not CDSTela.Eof do
            begin
              var jItensPedido : TJSONObject; jItensPedido := TJSONObject.Create;
              jItensPedido.AddPair('codPro',CDSTela.FieldByName('codpro').AsString);
              jItensPedido.AddPair('descr',CDSTela.FieldByName('descr').AsString);
              jItensPedido.AddPair('mov',CDSTela.FieldByName('mov').AsString);
              aItensPedido.AddElement(jItensPedido);
              CDSTela.Next;
            end;
            jsonBody.AddPair('itensPedido',aItensPedido);

            //parcelas - caixa
            jsonBody.AddPair('parcelasCaixa',JParcelasCaixa);


            resp1 := TRequest
                    .New
                    .BaseURL(baseurlCadastros)
                    .Resource(postFinalizaPdv)
                    .AddParam('nomeBanco', uniMainModule.nomebanco)
                    .AddBody(jsonBody.ToString)
                    .Timeout(12000)
                    .Post;
//-----------------------------------------------------------------

//            sleep(2000);
            //gera,envia e exibe nfce
            if resp1.StatusCode = 200 then
            begin
              if (wGerarNfce.ToUpper = 'S') or (wGerarNfce.ToUpper = '1') then
              begin
                try
                  var wResp:tjsonobject;
                  wResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;

                  wUrlPdfCupom := hEnviaNfce(wMsgOut,
                                             vvcodemp,
                                             wResp.GetValue<string>('NUMNFCE'),
                                             'NFCE',
                                             JUsuarioPdv.GetValue<string>('usuario'),
//                                             uniMainModule.wUsuario,
                                             wResp.GetValue<string>('HORANF'));
//                    wUrlPdfCupom := hEnviaNfce('2','28251','NFCE',uniMainModule.wUsuario,'08:32:58');
                  sleep(1000);
                  if wMsgOut.Trim = '' then
                    begin
                      try
//                        limpacupom;
//                        frmListaGlobal.wTabelaDePesquisa := 'CLIENTES_PDV';
//                        frmListaGlobal.lblDescricao.Caption := 'CLIENTES';
//                        frmListaGlobal.showModal(callBackCliente);
//                        sleep(1000);
                        UniSession.AddJS( 'window.open(' + QuotedStr(wUrlPdfCupom) + ', ''_blank'');');
//                        unisession.Synchronize();
                      except on e:exception do
                        begin
//                          sleep(1000);
                          alerta.Error(e.Message);
//                          unisession.Synchronize();
                        end;
                      end;
                    end
                  else
                    begin
//                      sleep(1000);
                      alerta.Error(wmsgOut);
                    end;
                  unisession.Synchronize();
                except on e:exception do
                  begin
                    alerta.Error('ERRO: '+E.Message);
                    unisession.Synchronize();
                  end;
                end;
              end;
              limpacupom;
              frmListaGlobal.wTabelaDePesquisa := 'CLIENTES_PDV';
              frmListaGlobal.lblDescricao.Caption := 'CLIENTES';
              frmListaGlobal.showModal(callBackCliente);
            end
            else
            begin
              alerta.Error('ERRO.: '+resp1.Content);
              unisession.Synchronize();
            end;
          except on e:exception do
            begin
              alerta.Error('ERRO: '+e.Message);
              unisession.Synchronize();
            end;
          end;
        finally
          jsonBody.Free;
          jsonBodyNfce.Free;
        end;
      end;
    end);
  end;
end;

procedure TfrmPDV.callBackQtdRetiraItem(Sender: TComponent;
  AResult: Integer);
begin
  if frmAlteraQtdItemPdv.ModalResult = mrOk then
  begin
//    cdsTela.locate('id',
    if CDSTela.FieldByName('mov').AsFloat = StrToFloatDef(frmAlteraQtdItemPdv.compQTDRETIRA.Text,0)  then
      CDSTela.Delete
    else
      begin
        CDSTela.Edit;
        cdstela.FieldByName('mov').AsFloat := (CDSTela.FieldByName('mov').AsFloat - StrToFloatDef(frmAlteraQtdItemPdv.compQTDRETIRA.Text,0));
        CDSTela.Post;
      end;
  end;
end;

procedure TfrmPDV.listar(pDado :string = '');
var
  resp1     :IResponse;
  jsonResp  :TJSONObject;
  ehNumero  :Boolean;
  i         :Integer;
  req       :IRequest;
begin
exit;
  //Verifica se o valor é numérico
  ehNumero := TryStrToInt(pDado, i);

  //Aqui sim: usamos IRequest até o Get
  req := TRequest.New.BaseURL(baseurlCadastros)
                   .resource(getItemCupom)
                   .AddParam('nomeBanco', uniMainModule.nomebanco);

  if pDado <> '' then
  begin
    if ehNumero then
    begin
      req.AddParam('id', '');
      req.AddParam('id_cupom', pDado);
    end else
//      req.AddParam('descr', pDado);
  end
  else
  begin
    req.AddParam('id','');
    req.AddParam('id_cupom', '-1');
  end;

  req.timeOut(12000);
  resp1 := req.Get; //Aqui muda de IRequest IResponse

  if resp1.StatusCode = 200 then
  begin
    try
      jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
      JsonToDataset(CDSTela, jsonResp.getValue('Result').toJson);
    finally
      jsonResp.Free;
    end;
  end
  else
  begin
//    CDSTela.EmptyDataSet;
  end;
end;

procedure TfrmPDV.callBackVendedores(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compNomeVend.Text     := frmListaGlobal.CDSTela.FieldByName('NOMEVEND').AsString;
    compINT_CODVEN.Text     := frmListaGlobal.CDSTela.FieldByName('CODVEND').AsString;
    alertaM.info('Vendedor selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nomeVend').AsString + '</b>');
    //pupula um json com os dados do cliente
    FreeAndNil(JVendedor);
    JVendedor := TJSONObject.Create;
    for i := 0 to frmListaGlobal.CDSTela.FieldCount - 1 do
      begin
        if frmListaGlobal.CDSTela.Fields[i].IsNull then
          JVendedor.AddPair(frmListaGlobal.CDSTela.Fields[i].FieldName, TJSONNull.Create)
        else
          JVendedor.AddPair(
            frmListaGlobal.CDSTela.Fields[i].FieldName,
            frmListaGlobal.CDSTela.Fields[i].AsString
          );
      end;
    compINT_CODVEN.WebFocus;
  end;
end;

procedure TfrmPDV.CDSTelabotaoEditarGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Editar', 'editar', 'dc3545');
end;

procedure TfrmPDV.CDSTelaiconeAtivoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTela.FieldByName('ativo').AsString, Text, DisplayText);
end;

procedure TfrmPDV.CDSTela_antbotaoEditarGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Editar', 'editar', 'dc3545');
end;

procedure TfrmPDV.CDSTela_anticoneAtivoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  ExibeIconeAtivo(CDSTela.FieldByName('ativo').AsString, Text, DisplayText);
end;

procedure TfrmPDV.btnCancelarClick(Sender: TObject);
begin
  limpaCookiesEditRecursivo(self);
  close;
end;

procedure TfrmPDV.btnVendedorClick(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'VENDEDORESPDV';
  frmListaGlobal.lblDescricao.Caption := 'VENDEDORES';
  frmListaGlobal.showModal(callBackVendedores);
end;

procedure TfrmPDV.btSalvarClick(Sender: TObject);
var
//  resp1       :IResponse;
//  jsonBody,jsonBodyNfce   :TJSONObject;
  wMsgOut:string;
  wUrlPdfCupom:string;
begin

                try
//                  var wResp:tjsonobject;
//                  wResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;

                  wUrlPdfCupom := hEnviaNfce(wMsgOut,
                                             vvcodemp,
                                             '28917',//wResp.GetValue<string>('NUMNFCE'),
//                                             '28251',//wResp.GetValue<string>('NUMNFCE'),
                                             'NFCE',
                                             uniMainModule.wUsuario,
                                             '06:15:52');//wResp.GetValue<string>('HORANF'));
//                                             '08:32:58');//wResp.GetValue<string>('HORANF'));
//                  wUrlPdfCupom := hEnviaNfce('2','28251','NFCE',uniMainModule.wUsuario,'08:32:58');
                  sleep(2000);
                  if wMsgOut.Trim = '' then
                    begin
//                      limpacupom;
//                      frmListaGlobal.wTabelaDePesquisa := 'CLIENTES_PDV';
//                      frmListaGlobal.lblDescricao.Caption := 'CLIENTES';
//                      frmListaGlobal.showModal(callBackCliente);
//                      sleep(2000);
                      UniSession.AddJS( 'window.open(' + QuotedStr(wUrlPdfCupom) + ', ''_blank'');');
                      alerta.Error(wUrlPdfCupom);
                    end
                  else
                    begin
                      sleep(1000);
//            unisession.Synchronize();
                      alerta.Error(wmsgOut);
//                      sleep(1000);
//                      alerta.Error(wMsgOut);
                    end;
                except on e:exception do
                  begin
                    alerta.Error('ERRO: '+E.Message);
            unisession.Synchronize();
                  end;
                end;

//  if not CDSTela.Active then
//    CDSTela.Active := true;
//  CDSTela.Insert;
//  CDSTela.FieldByName('codPro').AsString := compCODPRO.Text;
//  CDSTela.FieldByName('descr').AsString := compDESCR.caption;
//  CDSTela.FieldByName('mov').AsString := compMOV.Text;
//  CDSTela.FieldByName('valoru').AsString := compVALORU.Text;
//  CDSTela.FieldByName('total').AsString := compTOTAL.Text;
//  CDSTela.FieldByName('ativo').AsString := 'T';
//  CDSTela.Post;
//
//  calculaCupom;
end;

procedure TfrmPDV.btUtilidadesClick(Sender: TObject);
begin
  uniMainModule.vTotalSemDesc := totalProdutos;//strToFloatDef(compTOTALGERAL.Text,0);
  uniMainModule.pDesc := 0;
  uniMainModule.vDesc := 0;
  frmPDVUtilidades.showModal(callBackUtilidades);
end;

procedure TfrmPDV.callBackCliente(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    compNOME.Text     := frmListaGlobal.CDSTela.FieldByName('nome').AsString;
    alertaM.info('Cliente selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('nome').AsString + '</b>');
    //pupula um json com os dados do cliente
    FreeAndNil(JCliente);
    JCliente := TJSONObject.Create;
    for i := 0 to frmListaGlobal.CDSTela.FieldCount - 1 do
      begin
        if frmListaGlobal.CDSTela.Fields[i].IsNull then
          JCliente.AddPair(frmListaGlobal.CDSTela.Fields[i].FieldName, TJSONNull.Create)
        else
          JCliente.AddPair(
            frmListaGlobal.CDSTela.Fields[i].FieldName,
            frmListaGlobal.CDSTela.Fields[i].AsString
          );
      end;
    timerFocoItem.Enabled := true;
  end;
end;

procedure TfrmPDV.callBackProduto(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
FS: TFormatSettings;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    FS := TFormatSettings.Create;
    FS.DecimalSeparator := '.';
    compCODPRO.text     := frmListaGlobal.CDSTela.FieldByName('codPro').AsString;
    compDESCR.caption     := frmListaGlobal.CDSTela.FieldByName('descr').AsString;
//    alertaM.info('Produto selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('descr').AsString + '</b>');
//    //pupula um json com os dados do produto
//    FreeAndNil(JProduto);
//    JProduto := TJSONObject.Create;
//    for i := 0 to frmListaGlobal.CDSTela.FieldCount - 1 do
//      begin
//        if frmListaGlobal.CDSTela.Fields[i].IsNull then
//          JProduto.AddPair(frmListaGlobal.CDSTela.Fields[i].FieldName, TJSONNull.Create)
//        else
//          JProduto.AddPair(
//            frmListaGlobal.CDSTela.Fields[i].FieldName,
//            frmListaGlobal.CDSTela.Fields[i].AsString
//          );
//      end;
    compMOV.Text := FormatFloatHci(1,
                        JParGer.GetValue<integer>('PICEST'));
    compVALORU.Text :=  FormatFloatHci(StrToFloatDef(frmListaGlobal.CDSTela.FieldByName('preco1').AsString,0),
                        JParGer.GetValue<integer>('DECPRECO'));
    compTOTAL.Text := FormatFloatHci(1 * StrToFloatDef(frmListaGlobal.CDSTela.FieldByName('preco1').AsString,0),
                      JParGer.GetValue<integer>('DECPRECO'));
//    compVALORU.Text :=  FormatFloat('0.00',StrToFloatDef(JProduto.GetValue('preco1').Value,0));
//    compTOTAL.Text := FormatFloat('0.00',1 * StrToFloatDef(JProduto.GetValue('preco1').Value,0));
    alertaM.info('Produto selecionado: <b>' + frmListaGlobal.CDSTela.FieldByName('descr').AsString + '</b>');
    timerFocoItem.Enabled := true;
  end;
end;

function frmPDV: TfrmPDV;
begin
  Result := TfrmPDV(UniMainModule.GetFormInstance(TfrmPDV));
end;

procedure TfrmPDV.chAlteraQtdClick(Sender: TObject);
begin
  compMOV.Enabled := chAlteraQtd.Checked;
  compVALORU.Enabled := chAlteraQtd.Checked;
end;

procedure TfrmPDV.compCODPROKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if  (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    if trim(compCODPRO.Text) <> '' then
    begin
      if pesquisaItem(JProduto, '',trim(compCODPRO.Text),'') then
      begin
        compDESCR.caption     := JProduto.GetValue('descr').Value;
        if StrToFloatDef(compMov.Text,0) = 0 then
          compMOV.Text := FormatFloatHci(1,JParGer.GetValue<integer>('PICEST'));
        compVALORU.Text := FormatFloatHci(JProduto.GetValue<double>('preco1'),
                           JParGer.GetValue<integer>('DECPRECO'));
        compTOTAL.Text := FormatFloatHci(StrToFloatDef(compMOV.Text,0) *
                          StrToFloatDef(compVALORU.Text,0),
                          JParGer.GetValue<integer>('DECPRECO'));
        if (Key = VK_RETURN) then
        begin
          if not CDSTela.Active then
            CDSTela.Active := true;
          CDSTela.Insert;
          CDSTela.FieldByName('idCodPro').AsString := JProduto.GetValue('id').Value;
          CDSTela.FieldByName('codPro').AsString := compCODPRO.Text;
          CDSTela.FieldByName('descr').AsString := compDESCR.caption;
          CDSTela.FieldByName('mov').asstring := FormatFloatHci(strtofloatdef(compMOV.Text,0),JParGer.GetValue<integer>('PICEST'));;
          CDSTela.FieldByName('valoru').asstring := FormatFloatHci(strtofloatdef(compVALORU.Text,0),JParGer.GetValue<integer>('DECPRECO'));
          CDSTela.FieldByName('total').asstring := FormatFloatHci(strtofloatdef(compTOTAL.Text,0),2);;
          CDSTela.FieldByName('ativo').AsString := 'T';
          CDSTela.Post;

          calculaCupom;
        end;
      end
      else
      begin
        compDESCR.caption := JProduto.GetValue<string>('Result');
        compMOV.Text := FormatFloatHci(0,JParGer.GetValue<integer>('PICEST'));
        compVALORU.Text := FormatFloatHci(0, JParGer.GetValue<integer>('DECPRECO'));
        compTOTAL.Text := FormatFloatHci(0, JParGer.GetValue<integer>('DECPRECO'));
        compCODPRO.SetFocus;
      end;
    end;
  end;
end;

procedure TfrmPDV.compMOVChange(Sender: TObject);
begin
  try
    compTOTAL.Text := FormatFloatHci(
                       StrToFloatDef(compMOV.Text,0) *
                       StrToFloatDef(compVALORU.Text,0),
                       JParGer.GetValue<integer>('DECPRECO'));
//    compTOTAL.Text := FormatFloat('0.00',
//                       StrToFloatDef(compMOV.Text,0) *
//                       StrToFloatDef(compVALORU.Text,0)
//                       );
  except on e:exception do
    begin
     compTOTAL.Text := '0,00';
    end;
  end;
end;

procedure TfrmPDV.compMOVEnter(Sender: TObject);
begin
  if trim(compCODPRO.Text) <> '' then
  begin
    if pesquisaItem(JProduto, '',trim(compCODPRO.Text),'') then
    begin
      compDESCR.caption     := JProduto.GetValue('descr').Value;
//          compDESCR.caption     := (JProduto.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('descr');
      if StrToFloatDef(compMov.Text,0) = 0 then
        compMOV.Text := FormatFloatHci(1,JParGer.GetValue<integer>('PICEST'));

      compVALORU.Text :=  FormatFloatHci(JProduto.GetValue<double>('preco1'),
                          JParGer.GetValue<integer>('DECPRECO'));
//      compTOTAL.Text := FormatFloat('0.00',StrToFloatDef(JProduto.GetValue('preco1').Value,0));
      compTOTAL.Text := FormatFloatHci(StrToFloatDef(compMOV.Text,0) * StrToFloatDef(compVALORU.Text,0),
                        JParGer.GetValue<integer>('DECPRECO'));
//          compVALORU.Text :=  FormatFloat('0.00',StrToFloatDef((JProduto.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('preco1'),0));
//          compTOTAL.Text := FormatFloat('0.00',1 * StrToFloatDef((JProduto.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('preco1'),0));
//      if (Key = VK_RETURN) then
//      begin
//        if not CDSTela.Active then
//          CDSTela.Active := true;
//        CDSTela.Insert;
//        CDSTela.FieldByName('idCodPro').AsString := JProduto.GetValue('id').Value;
////          CDSTela.FieldByName('id').AsString := (JProduto.GetValue('Result') as TJSONArray).Items[0].GetValue<string>('id');
//        CDSTela.FieldByName('codPro').AsString := compCODPRO.Text;
//        CDSTela.FieldByName('descr').AsString := compDESCR.caption;
//        CDSTela.FieldByName('mov').AsString := compMOV.Text;
//        CDSTela.FieldByName('valoru').AsString := compVALORU.Text;
//        CDSTela.FieldByName('total').AsString := compTOTAL.Text;
//        CDSTela.FieldByName('ativo').AsString := 'T';
//        CDSTela.Post;
//
//        calculaCupom;
//      end;
    end
    else
    begin
      compDESCR.caption := JProduto.GetValue<string>('Result');
      compMOV.Text := FormatFloatHci(0,JParGer.GetValue<integer>('PICEST'));
      compVALORU.Text := FormatFloatHci(0,JParGer.GetValue<integer>('DECPRECO'));
      compTOTAL.Text := FormatFloatHci(0,JParGer.GetValue<integer>('DECPRECO'));
      compCODPRO.SetFocus;
    end;
  end;
end;

procedure TfrmPDV.compMOVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    begin
      if trim(compCODPRO.Text) <> '' then
      begin
        if pesquisaItem(JProduto, '',trim(compCODPRO.Text),'') then
        begin
          if (Key = VK_RETURN) then
          begin
            compTOTAL.Text := FormatFloatHci(StrToFloatDef(compMOV.Text,0) * StrToFloatDef(compVALORU.Text,0),
                              JParGer.GetValue<integer>('DECPRECO'));

            if not CDSTela.Active then
              CDSTela.Active := true;
            CDSTela.Insert;
            CDSTela.FieldByName('idCodPro').AsString := JProduto.GetValue('id').Value;
            CDSTela.FieldByName('codPro').AsString := compCODPRO.Text;
            CDSTela.FieldByName('descr').AsString := compDESCR.caption;
            CDSTela.FieldByName('mov').AsString := FormatFloatHci(strtofloatdef(compMOV.Text,0),JParGer.GetValue<integer>('PICEST'));
            CDSTela.FieldByName('valoru').AsString := FormatFloatHci(strtofloatdef(compVALORU.Text,0),JParGer.GetValue<integer>('DECPRECO'));
            CDSTela.FieldByName('total').AsString := FormatFloatHci(strtofloatdef(compTOTAL.Text,0),JParGer.GetValue<integer>('DECPRECO'));
            CDSTela.FieldByName('ativo').AsString := 'T';
            CDSTela.Post;

            calculaCupom;
          end;
        end;
      end;
    end;
end;

procedure TfrmPDV.gridTelaCellClick(Column: TUniDBGridColumn);
begin
  if column.Field = CDSTelabotaoEditar then
  begin
    frmAlteraQtdItemPdv.showmodal(callBackQtdRetiraItem);
    frmAlteraQtdItemPdv.qtdRetira := CDSTela.FieldByName('mov').AsFloat;
    calculaCupom;
  end;
end;

procedure TfrmPDV.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
 if Assigned(JProduto) then
   JProduto.Free;
 if Assigned(JCliente) then
   JCliente.Free;
 if Assigned(JVendedor) then
   JVendedor.Free;
 if Assigned(JUsuarioPdv) then
   JUsuarioPdv.Free;
end;

procedure TfrmPDV.UniFormCreate(Sender: TObject);
begin
  FreeAndNil(JProduto);
  JProduto := TJSONObject.Create;

  FreeAndNil(JCliente);
  JCliente := TJSONObject.Create;

  FreeAndNil(JVendedor);
  JVendedor := TJSONObject.Create;

  listar('');
end;

procedure TfrmPDV.UniFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) then
  begin
    case Key of
      //clientes
      VK_F3:
        begin
          frmListaGlobal.wTabelaDePesquisa := 'CLIENTES_PDV';
          frmListaGlobal.lblDescricao.Caption := 'CLIENTES';
          frmListaGlobal.showModal(callBackCliente);
        end;
      //FATURA
      VK_F4:
        begin
          frmSelecionaPagamentoF.showmodal(callBackFatura);
          frmSelecionaPagamentoF.totalGeral := strtofloatDef(compTOTALGERAL.Text,0);
          frmSelecionaPagamentoF.compVALORPAGO.SetFocus;
        end;
      //PRODUTOS
      VK_F6:
        begin
          frmListaGlobal.wTabelaDePesquisa := 'PRODUTOS_PDV';
          frmListaGlobal.lblDescricao.Caption := 'PRODUTOS';
          frmListaGlobal.showModal(callBackProduto);
        end;
    end;
  end;
end;

procedure TfrmPDV.UniFormReady(Sender: TObject);
var
  resp1           :IResponse;
begin
  try
    //perfil do usuário
    resp1 := TRequest
      .New
      .BaseURL(baseurlCadastros)
      .AddParam('nomeBanco', uniMainModule.nomebanco)
      .AddParam('usuario', vvNomeUsuarioLogin)
      .Resource(getPerfilUsuarioPdv)
      .Timeout(12000)
      .Get;

    if resp1.StatusCode = 200 then
    begin
      var jTmp : TJSONObject; jTmp := TJSONObject.Create;
      var aTmp : TJSONArray; aTmp := TJSONArray.Create;

      jTmp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
      aTmp := jTmp.GetValue('usuarioPdv') as TJSONArray;

      //objecto que armazena informações do usuário da tabela wbNfceConfig
      FreeAndNil(JUsuarioPdv);
      JUsuarioPdv := TJSONObject.Create;
      JUsuarioPdv := aTmp.Items[0] as TJSONObject;

//      uniMainModule.vvcaixa := JUsuarioPdv.GetValue('idUsuario').Value;
    end
    else
    begin
      alerta.Error(resp1.Content);
    end;

    //vendedor (a partir do código no cadastro do perfil usuário)
    resp1 := TRequest
      .New
      .BaseURL(baseurlCadastros)
      .AddParam('NOMEBANCO', uniMainModule.nomebanco)
      .AddParam('ID', '')
      .AddParam('CODVEND', JUsuarioPdv.GetValue<string>('vendedor'))
      .AddParam('NOMEVEND', '')
      .AddParam('ATIVO', '')
      .AddParam('SOGERENTEVENDA', '')
      .Resource(getVendedor)
      .Timeout(12000)
      .Get;

    if resp1.StatusCode = 200 then
    begin
      FreeAndNil(JVendedor);
      JVendedor := TJSONObject.Create;

      var jTmp : TJSONObject; jTmp := TJSONObject.Create;
      var aTmp : TJSONArray; aTmp := TJSONArray.Create;

      jTmp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
      aTmp := jTmp.GetValue('Result') as TJSONArray;

      //objecto que armazena informações do vendedor
      JVendedor := aTmp.Items[0] as TJSONObject;
      compINT_CODVEN.Text := JVendedor.GetValue('CODVEND').Value;
      compNOMEVEND.Text := JVendedor.GetValue('NOMEVEND').Value;
    end
    else
    begin
      alerta.Error(resp1.Content);
    end;

  finally

  end;
//  limpaCookiesEditRecursivo(self);
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

procedure TfrmPDV.UniFormShow(Sender: TObject);
begin
  if not CDSTela.Active then
    CDSTela.Active := true;

  frmPDV.Top := 5;
  frmPDV.Height := uniMainModule.screenHeigth - 10;
  frmPDV.Width  := uniMainModule.screenWidth  - 15;
  frmPDV.Left   := 7;

  compMOV.Enabled := chAlteraQtd.Checked;
  compVALORU.Enabled := chAlteraQtd.Checked;

  frmListaGlobal.wTabelaDePesquisa := 'CLIENTES_PDV';
  frmListaGlobal.lblDescricao.Caption := 'CLIENTES';
  frmListaGlobal.showModal(callBackCliente);
end;

procedure TfrmPDV.btLimpaVendaClick(Sender: TObject);
begin
    alerta.QuestionBasic('Prosseguir?',
    procedure(const ButtonClicked: TAButton)
    begin
      if ButtonClicked = abConfirm then
      begin
        try
          limpaCupom;
          frmListaGlobal.wTabelaDePesquisa := 'CLIENTES_PDV';
          frmListaGlobal.lblDescricao.Caption := 'CLIENTES';
          frmListaGlobal.showModal(callBackCliente);
        finally

        end;
      end;
    end);
end;

procedure TfrmPDV.btFaturaClick(Sender: TObject);
begin
  //cliente
  if JCliente = nil then
  begin
    alerta.Error('Cliente inválido.');
    exit;
  end;

  //vendedor
  if JVendedor = nil then
  begin
    alerta.Error('Vendedor inválido.');
    exit;
  end;

  vvCaixa := verificaCaixa(uniMainModule.wUsuario);
//  uniMainModule.vvcaixa := verificaCaixa(uniMainModule.wUsuario);

  //verifica se há produtos inseridos no pedido
  if CDSTela.RecordCount <= 0 then
  begin
    alerta.Error('Para faturar é necessário incluir itens.');
    exit;
  end;

  if (vvCaixa = '') or (vvCaixa = '0') then
  begin
    alerta.Error('Para realizar uma venda é necessário abrir o caixa.');
    exit;
  end;

  wGerarNfce := JUsuarioPdv.GetValue('confirmaGerarCupom').Value;// Toggledtostring(frmConfirmacaoVenda.compGERARCUPOM.Toggled);
  wGerarMovCaixa := JUsuarioPdv.GetValue('confirmaGerarCaixa').Value;//Toggledtostring(frmConfirmacaoVenda.compGERARMOVCAIXA.Toggled);
  wGerarMovEstoque := JUsuarioPdv.GetValue('confirmaGerarEstoque').Value;//Toggledtostring(frmConfirmacaoVenda.compGERARMOVESTOQUE.Toggled);

  if ((wGerarNfce = '1') or (wGerarNfce.ToUpper = 'S'))
  and ((wGerarMovCaixa = '1') or (wGerarMovCaixa.ToUpper = 'S'))
  and ((wGerarMovEstoque = '1') or (wGerarMovEstoque.ToUpper = 'S')) then
  begin
    frmSelecionaPagamentoF.showmodal(callBackFatura);
    frmSelecionaPagamentoF.totalGeral := strtofloatDef(compTOTALGERAL.Text,0);
//    frmSelecionaPagamentoF.compVALORPAGO := strtofloatDef(compTOTALGERAL.Text,0);
    frmSelecionaPagamentoF.compVALORPAGO.SetFocus;
  end
  else
  begin
    frmConfirmacaoVenda.ShowModal(
      procedure(Sender: TComponent; Result: Integer)
      begin
        if Result = mrOk then
        begin
          wGerarNfce := Toggledtostring(frmConfirmacaoVenda.compGERARCUPOM.Toggled);
          wGerarMovCaixa := Toggledtostring(frmConfirmacaoVenda.compGERARMOVCAIXA.Toggled);
          wGerarMovEstoque := Toggledtostring(frmConfirmacaoVenda.compGERARMOVESTOQUE.Toggled);
        end;

        frmSelecionaPagamentoF.showmodal(callBackFatura);
        frmSelecionaPagamentoF.totalGeral := strTofloatDef(compTOTALGERAL.Text,0);
        frmSelecionaPagamentoF.compVALORPAGO.SetFocus;
      end);
  end;
end;

procedure TfrmPDV.btClienteClick(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'CLIENTES_PDV';
  frmListaGlobal.lblDescricao.Caption := 'CLIENTES';
  frmListaGlobal.showModal(callBackCliente);
end;

procedure TfrmPDV.btProdutoClick(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'PRODUTOS_PDV';
  frmListaGlobal.lblDescricao.Caption := 'PRODUTOS';
  frmListaGlobal.showModal(callBackProduto);
end;

procedure TfrmPDV.UniSFBitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPDV.btConcluirClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody    :TJSONObject;
begin
//  try
//    jsonBody := TJSONObject.Create;
//    jsonBody.AddPair('incr', '');
//    jsonBody.AddPair('empresa', '1');
//    jsonBody.AddPair('ncfe', '');
//    jsonBody.AddPair('vcfe', '');
//    jsonBody.AddPair('status', '');
//    jsonBody.AddPair('gerouestoque', '');
//    jsonBody.AddPair('geroucaixa', '');
//    jsonBody.AddPair('geroufiscal', '');
//    jsonBody.AddPair('chnfce', '');
//    jsonBody.AddPair('retorno', '');
//    jsonBody.AddPair('nomearquivo', '');
//    jsonBody.AddPair('cpf', '');
//    jsonBody.AddPair('int_tipopagamento', '');
//    jsonBody.AddPair('int_caixa', '');
//    jsonBody.AddPair('flt_pdesc', '');
//    jsonBody.AddPair('flt_vdesc', '');
//    jsonBody.AddPair('int_codcli', JCliente.GetValue<string>('ID'));
//    jsonBody.AddPair('str_email', '');
//    jsonBody.AddPair('int_nfce', '');
//    jsonBody.AddPair('int_serie', '');
//    jsonBody.AddPair('rejeitado', '');
//    jsonBody.AddPair('int_codven', '');
//    jsonBody.AddPair('dt_cupom', '');
//    jsonBody.AddPair('grade1', '');
//    jsonBody.AddPair('grade2', '');
//    jsonBody.AddPair('idnuvemfiscal', '');
//    jsonBody.AddPair('xmlvenda', '');
//    jsonBody.AddPair('xmlcancelamento', '');
//    jsonBody.AddPair('xmlenvio', '');
//    jsonBody.AddPair('ativo', 'T');
//
//    CDSTela.First;
//    var aItem : TJSONArray; aItem := TJSONArray.Create;
//    while not CDSTela.Eof do
//      begin
//        var jItem : TJSONObject; jItem := TJSONObject.Create;
//        jItem.AddPair('incr',CDSTela.FieldByName('id').AsString);
//        jItem.AddPair('id_cupom',CDSTela.FieldByName('id').AsString);
//        jItem.AddPair('codpro',CDSTela.FieldByName('codpro').AsString);
//        jItem.AddPair('descr',CDSTela.FieldByName('descr').AsString);
//        jItem.AddPair('mov',CDSTela.FieldByName('mov').AsString);
//        jItem.AddPair('valoru',CDSTela.FieldByName('valoru').AsString);
//        jItem.AddPair('total',CDSTela.FieldByName('total').AsString);
//        jItem.AddPair('vdesc','0');
//        jItem.AddPair('grade1','');
//        jItem.AddPair('grade2','');
//        jItem.AddPair('ativo','T');
//        aItem.AddElement(jItem);
//        CDSTela.Next;
//      end;
//    jsonBody.AddPair('itens',aItem);
//
//    resp1 := TRequest
//            .New
//            .BaseURL(baseurlCadastros)
//            .Resource(postCupom)
//            .AddParam('nomeBanco', uniMainModule.nomebanco)
////                .AddParam('id', id)
//            .AddBody(jsonBody.ToString)
//            .Timeout(12000)
//            .Post;
//    if RESP1.StatusCode = 200 then
//      begin
//        alerta.Info('Finalizado com sucesso!');
//        limpacupom;
//      end
//    else
//      alerta.Info('ERRO: '+resp1.Content);
////    retornar;
//  finally
//    jsonBody.Free;
//  end;
end;

//destructor TfrmPDV.Destroy;
//begin
//  if FJParcelasCaixa <> nil then
//    FJParcelasCaixa.Free;
//
//  inherited;
//end;

end.
