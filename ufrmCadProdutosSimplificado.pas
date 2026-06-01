unit ufrmCadProdutosSimplificado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniBasicGrid, uniDBGrid, uniButton, uniBitBtn,
  UniSFButton, UniSFBitBtn, uniLabel, uniMultiItem, uniComboBox, uniEdit,
  UniSFLabel, uniGUIBaseClasses, uniPanel, uniScrollBox, UniSFiGrowl,
  UniSFSweetAlert;

type
  TfrmCadProdutosSimplificado = class(TUniForm)
    cpIdentificarPaciente: TUniContainerPanel;
    UniContainerPanel22: TUniContainerPanel;
    lblFiltro: TUniSFLabel;
    UniContainerPanel23: TUniContainerPanel;
    UniSFLabel2: TUniSFLabel;
    edPesquisar: TUniEdit;
    cpMenuTopo: TUniContainerPanel;
    lblDescricao: TUniLabel;
    btnFechar: TUniSFBitBtn;
    UniContainerPanel27: TUniContainerPanel;
    cpMenuRodape: TUniContainerPanel;
    btnCancelar: TUniSFBitBtn;
    btnPesqProduto: TUniSFBitBtn;
    UniPanel5: TUniPanel;
    UniScrollBox1: TUniScrollBox;
    UniPanel13: TUniPanel;
    compDESCR: TUniEdit;
    UniContainerPanel11: TUniContainerPanel;
    UniLabel13: TUniLabel;
    UniPanel26: TUniPanel;
    UniPanel1: TUniPanel;
    compLOCAL: TUniEdit;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    compUNIDADE: TUniEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniPanel4: TUniPanel;
    UniPanel6: TUniPanel;
    compCUSTO: TUniEdit;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel3: TUniLabel;
    UniPanel7: TUniPanel;
    UniPanel8: TUniPanel;
    compPRECO4: TUniEdit;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel4: TUniLabel;
    UniPanel9: TUniPanel;
    compPRECO2: TUniEdit;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel5: TUniLabel;
    UniPanel10: TUniPanel;
    compPRECO5: TUniEdit;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniPanel11: TUniPanel;
    UniPanel12: TUniPanel;
    compPRECO3: TUniEdit;
    UniContainerPanel7: TUniContainerPanel;
    UniLabel7: TUniLabel;
    UniPanel14: TUniPanel;
    compPRECO6: TUniEdit;
    UniContainerPanel8: TUniContainerPanel;
    UniLabel8: TUniLabel;
    UniPanel15: TUniPanel;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    UniPanel16: TUniPanel;
    UniPanel17: TUniPanel;
    UniPanel18: TUniPanel;
    UniPanel19: TUniPanel;
    compDISPONIVEL: TUniEdit;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel11: TUniLabel;
    UniPanel20: TUniPanel;
    compEMPENHO: TUniEdit;
    UniContainerPanel12: TUniContainerPanel;
    UniLabel12: TUniLabel;
    UniPanel21: TUniPanel;
    compSALDO: TUniEdit;
    UniContainerPanel13: TUniContainerPanel;
    UniLabel14: TUniLabel;
    UniPanel22: TUniPanel;
    compCOMPRADO: TUniEdit;
    UniContainerPanel14: TUniContainerPanel;
    UniLabel15: TUniLabel;
    UniPanel23: TUniPanel;
    alerta: TUniSFSweetAlert;
    alertaM: TUniSFiGrowl;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure edPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure btnPesqProdutoClick(Sender: TObject);
    procedure callBackProduto(Sender: TComponent;
      AResult: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmCadProdutosSimplificado: TfrmCadProdutosSimplificado;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, RESTRequest4D.Response.Intf, System.JSON,
  uConstantes, RESTRequest4D.Request, ufrmListaGlobal, uUtils;

procedure TfrmCadProdutosSimplificado.callBackProduto(Sender: TComponent;
  AResult: Integer);
var
i: Integer;
FS: TFormatSettings;
begin
  if frmListaGlobal.ModalResult = mrOk then
  begin
    FS := TFormatSettings.Create;
    FS.DecimalSeparator := '.';
    edPesquisar.text     := frmListaGlobal.CDSTela.FieldByName('codPro').AsString;
//    edPesquisar.WebFocus;
    edPesquisar.SetFocus;
  end;

end;

function frmCadProdutosSimplificado: TfrmCadProdutosSimplificado;
begin
  Result := TfrmCadProdutosSimplificado(UniMainModule.GetFormInstance(TfrmCadProdutosSimplificado));
end;

procedure TfrmCadProdutosSimplificado.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCadProdutosSimplificado.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCadProdutosSimplificado.btnPesqProdutoClick(Sender: TObject);
begin
  frmListaGlobal.wTabelaDePesquisa := 'PRODUTOS_PDV';
  frmListaGlobal.lblDescricao.Caption := 'PRODUTOS';
  frmListaGlobal.showModal(callBackProduto);
end;

procedure TfrmCadProdutosSimplificado.edPesquisarKeyPress(Sender: TObject;
  var Key: Char);
var
  resp1       : IResponse;
  jsonBody    : TJSONObject;
  wJsonResult : TJSONObject;
begin
  if key = #13 then
  begin
    jsonBody := nil;
    wJsonResult := nil;
    try
      jsonBody := TJSONObject.Create;
      try
        jsonBody.AddPair('empresa', vvCodEmp);
        jsonBody.AddPair('codPro', edPesquisar.Text);

        resp1 := TRequest
                .New
                .BaseURL(baseurlCadastros)
                .Resource(getProdutoSimplificado)
                .AddParam('nomeBanco', uniMainModule.nomebanco)
                .AddBody(jsonBody.ToString)
                .Timeout(15000)
                .Get;

        if (resp1 <> nil) then
        begin
          if (resp1.StatusCode = 200) then
          begin
            wJsonResult := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
            compDESCR.Text := wJsonResult.GetValue('descr').Value;
            compUNIDADE.Text := wJsonResult.GetValue('unidade').Value;
            compLOCAL.Text := wJsonResult.GetValue('local').Value;
            compCUSTO.Text := FormatFloatHci(wJsonResult.GetValue<double>('custo'), JParGer.GetValue<integer>('DECPRECO'));
            compPRECO2.Text := FormatFloatHci(wJsonResult.GetValue<double>('preco2'), JParGer.GetValue<integer>('DECPRECO'));
            compPRECO3.Text := FormatFloatHci(wJsonResult.GetValue<double>('preco3'), JParGer.GetValue<integer>('DECPRECO'));
            compPRECO4.Text := FormatFloatHci(wJsonResult.GetValue<double>('preco4'), JParGer.GetValue<integer>('DECPRECO'));
            compPRECO5.Text := FormatFloatHci(wJsonResult.GetValue<double>('preco5'), JParGer.GetValue<integer>('DECPRECO'));
            compPRECO6.Text := FormatFloatHci(wJsonResult.GetValue<double>('preco6'), JParGer.GetValue<integer>('DECPRECO'));
            compSALDO.Text := FormatFloatHci(wJsonResult.GetValue<double>('saldo'), JParGer.GetValue<integer>('PICEST'));
            compEMPENHO.Text := FormatFloatHci(wJsonResult.GetValue<double>('empenho'), JParGer.GetValue<integer>('PICEST'));
            compCOMPRADO.Text := FormatFloatHci(wJsonResult.GetValue<double>('compra'), JParGer.GetValue<integer>('PICEST'));
            compDISPONIVEL.Text := FormatFloatHci(wJsonResult.GetValue<double>('disponivel'), JParGer.GetValue<integer>('PICEST'));
          end
          else
          begin
            alerta.Error('Erro: '+resp1.Content);
          end;
        end;

      except
        on e: Exception do
        begin
          alerta.Error('Erro: '+e.Message);
        end;
      end;
    finally
      FreeAndNil(jsonBody);
      FreeAndNil(wJsonResult);
    end;
  end;
end;

procedure TfrmCadProdutosSimplificado.UniFormShow(Sender: TObject);
begin
  frmCadProdutosSimplificado.Top := 5;
  frmCadProdutosSimplificado.Height := uniMainModule.screenHeigth - 10;
  frmCadProdutosSimplificado.Width  := uniMainModule.screenWidth  - 15;
  frmCadProdutosSimplificado.Left   := 7;
//  frmCadProdutosSimplificado.Align := alClient;
  UniScrollBox1.Align := alClient;
end;

end.
