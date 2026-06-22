unit ufraSangria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniPanel, uniPageControl, uniGUIBaseClasses,
  Data.DB, Datasnap.DBClient, uniBasicGrid, uniDBGrid, uniScrollBox, uniButton,
  uniBitBtn, UniSFButton, UniSFBitBtn, RESTRequest4D.Request, UniSFSweetAlert,
  UniSFiGrowl, UniFSToggle, UniSFComboBox, uniLabel, uniEdit;

type
  TfraSangria = class(TUniFrame)
    CDSTelaSangria: TClientDataSet;
    CDSTelaSangriabotaoEditar: TAggregateField;
    CDSTelaSangriaiconeAtivo: TAggregateField;
    DSTelaSangria: TDataSource;
    alertaM: TUniSFiGrowl;
    alerta: TUniSFSweetAlert;
    CDSTelaSangriabotaoExcluir: TAggregateField;
    DSTelaReforco: TDataSource;
    CDSTelaReforco: TClientDataSet;
    CDSTelaReforcobotaoEditar: TAggregateField;
    CDSTelaReforcoiconeAtivo: TAggregateField;
    CDSTelaReforcobotaoExcluir: TAggregateField;
    UniScrollBox7: TUniScrollBox;
    pgcGeral: TUniPageControl;
    tsSangria: TUniTabSheet;
    pgcSangria: TUniPageControl;
    tsSangriaRetirada: TUniTabSheet;
    UniPanel24: TUniPanel;
    UniContainerPanel8: TUniContainerPanel;
    UniPanel25: TUniPanel;
    btnAdicionaSangria: TUniSFBitBtn;
    UniScrollBox4: TUniScrollBox;
    UniPanel28: TUniPanel;
    UniScrollBox5: TUniScrollBox;
    gridTelaEstorno: TUniDBGrid;
    tsSangriaAdiciona: TUniTabSheet;
    UniPanel4: TUniPanel;
    UniContainerPanel14: TUniContainerPanel;
    btnSairSangria: TUniSFBitBtn;
    btnOkSangria: TUniSFBitBtn;
    UniScrollBox3: TUniScrollBox;
    UniPanel8: TUniPanel;
    UniPanel9: TUniPanel;
    compFLT_VALOR: TUniEdit;
    UniContainerPanel15: TUniContainerPanel;
    UniLabel5: TUniLabel;
    UniPanel26: TUniPanel;
    UniPanel15: TUniPanel;
    UniPanel16: TUniPanel;
    UNITEXT: TUniPanel;
    UniEdit1: TUniEdit;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel7: TUniLabel;
    compSTR_DESCRICAO: TUniEdit;
    UniPanel3: TUniPanel;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel4: TUniLabel;
    compINT_TIPOPAGAMENTO: TUniSFComboBox;
    pnlINT_CRIACONTA: TUniPanel;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    compINT_CRIACONTA: TUniFSToggle;
    tsReforco: TUniTabSheet;
    pgcReforco: TUniPageControl;
    tsReforcoInclusao: TUniTabSheet;
    UniPanel1: TUniPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniPanel2: TUniPanel;
    btnAdicionaReforco: TUniSFBitBtn;
    UniScrollBox1: TUniScrollBox;
    UniPanel5: TUniPanel;
    UniScrollBox2: TUniScrollBox;
    UniDBGrid1: TUniDBGrid;
    tsReforcoAdiciona: TUniTabSheet;
    UniPanel6: TUniPanel;
    UniContainerPanel3: TUniContainerPanel;
    btnSairReforco: TUniSFBitBtn;
    btnOkReforco: TUniSFBitBtn;
    UniScrollBox6: TUniScrollBox;
    UniPanel7: TUniPanel;
    UniPanel10: TUniPanel;
    compFLT_VALOR_REFORCO: TUniEdit;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniPanel11: TUniPanel;
    UniPanel12: TUniPanel;
    UniPanel13: TUniPanel;
    UniPanel14: TUniPanel;
    UniEdit3: TUniEdit;
    UniContainerPanel7: TUniContainerPanel;
    UniLabel3: TUniLabel;
    compSTR_DESCRICAO_REFORCO: TUniEdit;
    UniPanel17: TUniPanel;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel6: TUniLabel;
    compINT_TIPOPAGAMENTO_REFORCO: TUniSFComboBox;
    pnlINT_CRIACONTA_REFORCO: TUniPanel;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel8: TUniLabel;
    compINT_CRIACONTA_REFORCO: TUniFSToggle;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameReady(Sender: TObject);
    procedure CDSTelaSangriabotaoEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSTelaSangriabotaoExcluirGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure btnAdicionaSangriaClick(Sender: TObject);
    procedure btnSairSangriaClick(Sender: TObject);
    procedure btnOkSangriaClick(Sender: TObject);
    procedure gridTelaEstornoCellClick(Column: TUniDBGridColumn);
    procedure gridTelaEstornoDrawColumnCell(Sender: TObject; ACol,
      ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniDBGrid1DrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure btnAdicionaReforcoClick(Sender: TObject);
    procedure btnOkReforcoClick(Sender: TObject);
    procedure btnSairReforcoClick(Sender: TObject);
  private
    { Private declarations }

    wIncSangria : boolean;
    wAltSangria : boolean;

    wIncReforco : boolean;
    wAltReforco : boolean;

    procedure hGetSangria;
    procedure hGetReforco;
  public
    { Public declarations }
  end;

implementation

uses
  System.JSON, uConstantes, uUtils, MainModule, UniSFCore;

{$R *.dfm}

procedure TfraSangria.btnAdicionaSangriaClick(Sender: TObject);
begin
  wIncSangria := true;
  wAltSangria := false;
  pgcSangria.ActivePage := tsSangriaAdiciona;
  pnlINT_CRIACONTA.Visible := false;
  compSTR_DESCRICAO.Text := '';
  compFLT_VALOR.Text := '0,00';
  compINT_TIPOPAGAMENTO.ItemIndex := 0;
  compINT_CRIACONTA.Toggled := false;
end;

procedure TfraSangria.CDSTelaSangriabotaoEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Editar', 'editar', 'dc3545');
end;

procedure TfraSangria.CDSTelaSangriabotaoExcluirGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    text := colocaBotaoNoGrid('Excluir', 'excluir', 'dc3545');
end;

procedure TfraSangria.gridTelaEstornoCellClick(Column: TUniDBGridColumn);
var
  resp1     :IResponse;
  wValor : string;
  jBody : TJSONObject;
begin
  try
    jBody := nil;
    //editar
    if column.Field = CDSTelaSangriabotaoEditar then
    begin
      wIncSangria := false;
      wAltSangria := true;
      pgcSangria.ActivePage := tsSangriaAdiciona;
      pnlINT_CRIACONTA.Visible := false;
      compSTR_DESCRICAO.Text := CDSTelaSangria.FieldByName('STR_DESCRICAO').AsString;
      compFLT_VALOR.Text := CDSTelaSangria.FieldByName('FLT_VALOR').AsString;
      compINT_TIPOPAGAMENTO.ItemIndex := -1;
      if CDSTelaSangria.FieldByName('INT_CRIACONTA').AsString = '1' then
        compINT_CRIACONTA.Toggled := true
      else
        compINT_CRIACONTA.Toggled := false;
    end

    //excluir/desativar
    else if column.Field = CDSTelaSangriabotaoExcluir then
    begin
      alerta.QuestionBasic('Confirma para excluir a sangria?',
      procedure(const ButtonClicked: TAButton)
      begin
        if ButtonClicked = abConfirm then
        begin
          try
            jBody := TJSONObject.Create;
            jBody.AddPair('id', CDSTelaSangria.FieldByName('id').AsString);

            resp1 := TRequest.New.BaseURL(baseurlCadastros)
                   .resource(deleteSangria)
                   .AddParam('nomeBanco', uniMainModule.nomebanco)
                   .AddBody(jBody)
                   .timeOut(12000)
                   .Delete;
            sleep(2000);
            if resp1.StatusCode = 200 then
            begin
              alertaM.Success('Sangria excluída com sucesso.');
              hGetSangria;
            end
            else
            begin
              alerta.Error(resp1.Content);
            end;
          except on e:exception do
            begin
              alerta.Error('ERRO: '+e.Message);
            end;
          end;
          unisession.Synchronize();
        end;
      end);
  //    UniPageControl1.ActivePage := tsSangriaAdiciona;
  //    pnlINT_CRIACONTA.Visible := false;
  //    compSTR_DESCRICAO.Text := CDSTelaSangria.FieldByName('STR_DESCRICAO').AsString;
  //    compFLT_VALOR.Text := CDSTelaSangria.FieldByName('FLT_VALOR').AsString;
  //    compINT_TIPOPAGAMENTO.ItemIndex := -1;
  //    if CDSTelaSangria.FieldByName('INT_CRIACONTA').AsString = '1' then
  //      compINT_CRIACONTA.Toggled := true
  //    else
  //      compINT_CRIACONTA.Toggled := false;
    end;
  finally
    freeAndNil(jBody);
  end;
end;

procedure TfraSangria.gridTelaEstornoDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfraSangria.hGetReforco;
var
  resp1     :IResponse;
  jsonBody : TJSONObject;
  jsonResp : TJSONObject;
begin
  jsonBody := nil;
  jsonResp := nil;
  try
    jsonBody := TJSONObject.Create;
    jsonBody.AddPair('empresa',vvcodemp);
    jsonBody.AddPair('id','');
    jsonBody.AddPair('int_Caixa','');
//    jsonBody.AddPair('ativo','');
    try
      resp1 := TRequest.New.BaseURL(baseurlCadastros)
             .resource(getReforco)
             .AddParam('nomeBanco', uniMainModule.nomebanco)
             .AddBody(jsonBody)
             .timeOut(12000)
             .Get;

      jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
      if resp1.StatusCode = 200 then
      begin
        JsonToDataset(CDSTelaReforco, jsonResp.GetValue('Result').ToString);
      end
      else
      begin
        alertam.Warning(jsonResp.GetValue('Result').Value);
      end;
    except on e: exception do
      begin
        alerta.Error('Erro: '+e.Message);
      end;
    end;
  finally
//    FreeAndNil(jsonBody);
//    FreeAndNil(jsonResp);
  end;
end;

procedure TfraSangria.hGetSangria;
var
  resp1     :IResponse;
  jsonBody : TJSONObject;
  jsonResp : TJSONObject;
begin
  jsonBody := nil;
  jsonResp := nil;
  try
    jsonBody := TJSONObject.Create;
    jsonBody.AddPair('empresa',vvcodemp);
    jsonBody.AddPair('id','');
    jsonBody.AddPair('int_Caixa','');
//    jsonBody.AddPair('ativo','');
    try
      resp1 := TRequest.New.BaseURL(baseurlCadastros)
             .resource(getSangria)
             .AddParam('nomeBanco', uniMainModule.nomebanco)
             .AddBody(jsonBody)
             .timeOut(12000)
             .Get;

      jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;
      if resp1.StatusCode = 200 then
      begin
        JsonToDataset(CDSTelaSangria, jsonResp.GetValue('Result').ToString);
      end
      else
      begin
//        CDSTelaEstorno.EmptyDataSet;
        alertam.Warning(jsonResp.GetValue('Result').Value);
      end;
    except on e: exception do
      begin
        alerta.Error('Erro: '+e.Message);
      end;
    end;
  finally
//    FreeAndNil(jsonBody);
//    FreeAndNil(jsonResp);
  end;
end;

procedure TfraSangria.UniDBGrid1CellClick(Column: TUniDBGridColumn);
var
  resp1     :IResponse;
  wValor : string;
  jBody : TJSONObject;
begin
  try
    jBody := nil;
    //editar
    if column.Field = CDSTelaReforcobotaoEditar then
    begin
      wIncReforco := false;
      wAltReforco := true;
      pgcReforco.ActivePage := tsReforcoAdiciona;
      pnlINT_CRIACONTA_REFORCO.Visible := false;
      compSTR_DESCRICAO_REFORCO.Text := CDSTelaReforco.FieldByName('STR_DESCRICAO').AsString;
      compFLT_VALOR_REFORCO.Text := CDSTelaReforco.FieldByName('FLT_VALOR').AsString;
      compINT_TIPOPAGAMENTO_REFORCO.ItemIndex := -1;
      if CDSTelaReforco.FieldByName('INT_CRIACONTA').AsString = '1' then
        compINT_CRIACONTA_REFORCO.Toggled := true
      else
        compINT_CRIACONTA_REFORCO.Toggled := false;
    end

    //excluir/desativar
    else if column.Field = CDSTelaReforcobotaoExcluir then
    begin
      alerta.QuestionBasic('Confirma para excluir o reforço?',
      procedure(const ButtonClicked: TAButton)
      begin
        if ButtonClicked = abConfirm then
        begin
          try
            jBody := TJSONObject.Create;
            jBody.AddPair('id', CDSTelaReforco.FieldByName('id').AsString);

            resp1 := TRequest.New.BaseURL(baseurlCadastros)
                   .resource(deleteReforco)
                   .AddParam('nomeBanco', uniMainModule.nomebanco)
                   .AddBody(jBody)
                   .timeOut(12000)
                   .Delete;
            sleep(2000);
            if resp1.StatusCode = 200 then
            begin
              alertaM.Success('Reforço excluído com sucesso.');
              hGetReforco;
            end
            else
            begin
              alerta.Error(resp1.Content);
            end;
          except on e:exception do
            begin
              alerta.Error('ERRO: '+e.Message);
            end;
          end;
          unisession.Synchronize();
        end;
      end);
    end;
  finally
    freeAndNil(jBody);
  end;
end;

procedure TfraSangria.UniDBGrid1DrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  SetGridColor(Sender, Attribs);
end;

procedure TfraSangria.UniFrameCreate(Sender: TObject);
begin
  DefinirTodasAbasNaPrimeiraPagina(self);
end;

procedure TfraSangria.UniFrameReady(Sender: TObject);
begin
  pgcGeral.ActivePage := tsSangria;
  hGetSangria;
  hGetReforco;
end;

procedure TfraSangria.btnAdicionaReforcoClick(Sender: TObject);
begin
  wIncReforco := true;
  wAltReforco := false;
  pgcReforco.ActivePage := tsReforcoAdiciona;
  pnlINT_CRIACONTA_REFORCO.Visible := false;
  compSTR_DESCRICAO_REFORCO.Text := '';
  compFLT_VALOR_REFORCO.Text := '0,00';
  compINT_TIPOPAGAMENTO_REFORCO.ItemIndex := 0;
  compINT_CRIACONTA_REFORCO.Toggled := false;
end;

procedure TfraSangria.btnSairReforcoClick(Sender: TObject);
begin
  pgcReforco.ActivePage := tsReforcoInclusao;
end;

procedure TfraSangria.btnSairSangriaClick(Sender: TObject);
begin
  pgcSangria.ActivePage := tsSangriaRetirada;
//  tsSangriaAdiciona.Visible := false;
end;

procedure TfraSangria.btnOkSangriaClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody   :TJSONObject;
  jsonResp :TJSONObject;
begin
  //incluir
  if wIncSangria then
  begin
    try
      jsonBody := TJSONObject.Create;
      jsonResp := TJSONObject.Create;

      //dados gerais
      jsonBody.AddPair('int_Caixa', vvCaixa);
      jsonBody.AddPair('str_Descricao',compSTR_DESCRICAO.Text);
      jsonBody.AddPair('flt_Valor',compFLT_VALOR.Text);
      jsonBody.AddPair('int_TipoPagamento',copy(compINT_TIPOPAGAMENTO.Text,1,2));
      if compINT_CRIACONTA.Toggled then
        jsonBody.AddPair('int_CriaConta','1')
      else
        jsonBody.AddPair('int_CriaConta','0');
      jsonBody.AddPair('incrDesp','');//compINCRDESP.Text);

      resp1 := TRequest
              .New
              .BaseURL(baseurlCadastros)
              .Resource(postSangria)
              .AddParam('nomeBanco', uniMainModule.nomebanco)
              .AddBody(jsonBody.ToString)
              .Timeout(12000)
              .Post;

      sleep(2000);
      jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;

      if resp1.StatusCode = 200 then
      begin
        alertam.Success('Sangria inserida com sucesso.');
        pgcSangria.ActivePage := tsSangriaRetirada;
        hGetSangria;
      end
      else
      begin
        alertam.Error(jsonResp.GetValue<string>('Erro'));
      end;
    finally
      FreeAndNil(jsonBody);
      FreeAndNil(jsonResp);
    end;
  end

  //Alterar
  else if wAltSangria then
  begin
    try
      jsonBody := TJSONObject.Create;
      jsonResp := TJSONObject.Create;

      //dados gerais
      jsonBody.AddPair('id', CDSTelaSangria.FieldByName('id').AsString);
      jsonBody.AddPair('str_Descricao',compSTR_DESCRICAO.Text);
      jsonBody.AddPair('flt_Valor',compFLT_VALOR.Text);
      jsonBody.AddPair('int_TipoPagamento',copy(compINT_TIPOPAGAMENTO.Text,1,2));

      resp1 := TRequest
              .New
              .BaseURL(baseurlCadastros)
              .Resource(putSangria)
              .AddParam('nomeBanco', uniMainModule.nomebanco)
              .AddBody(jsonBody.ToString)
              .Timeout(12000)
              .Put;

      sleep(2000);
      jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;

      if resp1.StatusCode = 200 then
      begin
        alertam.Success('Sangria alterada com sucesso.');
        pgcSangria.ActivePage := tsSangriaRetirada;
        hGetSangria;
      end
      else
      begin
        alertam.Error(jsonResp.GetValue<string>('Erro'));
      end;
    finally
      FreeAndNil(jsonBody);
      FreeAndNil(jsonResp);
    end;
  end;
end;

procedure TfraSangria.btnOkReforcoClick(Sender: TObject);
var
  resp1       :IResponse;
  jsonBody   :TJSONObject;
  jsonResp :TJSONObject;
begin
  //incluir
  if wIncReforco then
  begin
    try
      jsonBody := TJSONObject.Create;
      jsonResp := TJSONObject.Create;

      //dados gerais
      jsonBody.AddPair('int_Caixa', vvCaixa);
      jsonBody.AddPair('str_Descricao',compSTR_DESCRICAO_REFORCO.Text);
      jsonBody.AddPair('flt_Valor',compFLT_VALOR_REFORCO.Text);
      jsonBody.AddPair('int_TipoPagamento',copy(compINT_TIPOPAGAMENTO_REFORCO.Text,1,2));
      if compINT_CRIACONTA_REFORCO.Toggled then
        jsonBody.AddPair('int_CriaConta','1')
      else
        jsonBody.AddPair('int_CriaConta','0');
      jsonBody.AddPair('incrDesp','');//compINCRDESP.Text);

      resp1 := TRequest
              .New
              .BaseURL(baseurlCadastros)
              .Resource(postReforco)
              .AddParam('nomeBanco', uniMainModule.nomebanco)
              .AddBody(jsonBody.ToString)
              .Timeout(12000)
              .Post;

      sleep(2000);
      jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;

      if resp1.StatusCode = 200 then
      begin
        alertam.Success('Reforço inserido com sucesso.');
        pgcReforco.ActivePage := tsReforcoInclusao;
        hGetReforco;
      end
      else
      begin
        alertam.Error(jsonResp.GetValue<string>('Erro'));
      end;
    finally
      FreeAndNil(jsonBody);
      FreeAndNil(jsonResp);
    end;
  end

  //Alterar
  else if wAltReforco then
  begin
    try
      jsonBody := TJSONObject.Create;
      jsonResp := TJSONObject.Create;

      //dados gerais
      jsonBody.AddPair('id', CDSTelaReforco.FieldByName('id').AsString);
      jsonBody.AddPair('str_Descricao',compSTR_DESCRICAO_REFORCO.Text);
      jsonBody.AddPair('flt_Valor',compFLT_VALOR_REFORCO.Text);
      jsonBody.AddPair('int_TipoPagamento',copy(compINT_TIPOPAGAMENTO_REFORCO.Text,1,2));

      resp1 := TRequest
              .New
              .BaseURL(baseurlCadastros)
              .Resource(putReforco)
              .AddParam('nomeBanco', uniMainModule.nomebanco)
              .AddBody(jsonBody.ToString)
              .Timeout(12000)
              .Put;

      sleep(2000);
      jsonResp := TJSONObject.ParseJSONValue(resp1.Content) as TJSONObject;

      if resp1.StatusCode = 200 then
      begin
        alertam.Success('Reforço alterado com sucesso.');
        pgcReforco.ActivePage := tsReforcoInclusao;
        hGetReforco;
      end
      else
      begin
        alertam.Error(jsonResp.GetValue<string>('Erro'));
      end;
    finally
      FreeAndNil(jsonBody);
      FreeAndNil(jsonResp);
    end;
  end;
end;

end.
