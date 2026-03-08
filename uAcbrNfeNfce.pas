unit uAcbrNfeNfce;

interface

Uses Forms, Messages, Winapi.Windows, Classes, ACBrBase, ACBrBoleto, ACBrNFe, ACBrConsts, ACBrDFeSSL, ACBrUtil, ACBrValidador, ACBrEnterTab,
     ACBrNFeDANFEFR, ACBrPosPrinter, ACBrNFeDANFeESCPOS, ACBrNFeDANFEClass, ACBrDFeReport, ACBrDFeDANFeReport, ACBrDFe, ACBrMail,
     ShellAPI, XMLIntf, XMLDoc, zlib, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
     FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.VCLUI.Wait, FireDAC.UI.Intf,
     FireDAC.Comp.UI, SysUtils, Vcl.Controls, ACBrNFeNotasFiscais, system.StrUtils,
     //udMbase,
//     gtPDFClasses, gtCstPDFDoc, gtExPDFDoc,
//     gtExProPDFDoc, gtPDFDoc, gtScrollingPanel,
     Soap.InvokeRegistry, Soap.Rio, Soap.SOAPHTTPClient,
//     Ivalidador1,
     Dateutils, Dialogs;

Var
  ACBrNFe: TACBrNFe;
  bExportacao:Boolean;
  bln_importacao: boolean;
  bln_complementar: boolean;
  vValorBonfificacao:Double;
  vvtotimpsimples: double;
  vvnfe: TextFile;
  formatoAmericano: TFormatSettings;
  ACBrNFeDANFEFR:TACBrNFeDANFEFR;
  ACBrNFeDANFCEFR:TACBrNFeDANFCEFR;
  ACBrMail:TACBrMail;
  vvRandom:Integer;
  dhEmi, dhSaiEnt: tDateTime;
  verlayout:String;

function validaAcbrPedido(tblPedido, tblItensPedido, tblObsPedido: TFDQuery; Startatransacao: boolean = True): boolean;
function formatvalAcbr(valor: double; tam, dec: integer): Double;
function NFe4Acbr(empresa, nNF_B08, incrNFe: integer; validaTx2: boolean = false): boolean;
function NFce4Acbr(numnf, tipoes: string; dia: TDateTime; email: string; var int_numNFCeRetorno: Integer): Boolean;
Function ConfiguracoesNfeNfceAcbr(AcbrNfe:TAcbrNfe; WbEmpres:TFDQuery; Tipo:String):Boolean;
Function ConfigNfeNfceAcbrIde(AcbrNfe:TAcbrNfe; Tblnfe, TblEmpres:TFDQuery; Tipo:String; validaTx2: boolean = false):Boolean;
Function ConfigNfeNfceAcbrEmit(AcbrNfe:TAcbrNfe; Tblnfe, TblEmpres:TFDQuery; Tipo:String; validaTx2: boolean = false):Boolean;
Function ConfigNfeNfceAcbrDest(AcbrNfe:TAcbrNfe; Tblnfe, TblEmpres:TFDQuery; Tipo:String; validaTx2: boolean = false):Boolean;
function ConfigNfeNfceAcbrDet(AcbrNfe:TAcbrNfe; tblNfe, tblEmpres, tblInfe: TFDQuery; Tipo:String; validaTx2: boolean = false): boolean;
function ConfigNfeNfceAcbrTotal(AcbrNfe:TAcbrNfe; tblNfe, tblEmpres, tblInfe: TFDQuery; Tipo:String): boolean;
function ConfigNfeNfceAcbrTransp(AcbrNfe:TAcbrNfe; tblNfe, tblEmpres: TFDQuery; Tipo:String): boolean;
function ConfigNfeNfceAcbrCobr(AcbrNfe:TAcbrNfe; tblNfe, tblEmpres, tblInfe: TFDQuery; Tipo:String): boolean;
function ConfigNfeNfceAcbrinfAdic(AcbrNfe:TAcbrNfe; tblNfe, tblEmpres, tblInfe: TFDQuery; Tipo:String): boolean;
//**
Function EnviarEmailAcbrNfeNfce(Email:String; AcbrNfe:TAcbrNfe; Tipo:String= 'SemPesquisa'; NfeNfce:String='NFE'):String;
//function PDFToMemoryStream(gtPDF: TgtPDFDocument): TMemoryStream;
function exibeValidacao(retorno: WideString): boolean;

//**============================================================Funcoes de solicitacoes Nfe
Function ImprimirNfeAcbr(DM:TFdmbase; AcbrNfe:TAcbrNfe; NfeNfce:String='NFE'):Boolean;
Function CancelaNfeAcbr(DM:TFdmbase; AcbrNfe:TAcbrNfe; Tipo:String= 'ComPesquisa'; Nnf:Integer=0 ; NfeNfce:String='NFE'):Boolean;
Function ConsultaNfeAcbr(DM:TFdmbase; AcbrNfe:TAcbrNfe; NfeNfce:String='NFE'):Boolean;
Function ImprimirCancelamentoNfeAcbr(DM:TFdmbase; AcbrNfe:TAcbrNfe; NfeNfce:String='NFE'):Boolean;
Function CartaCorrecaoNfeAcbr(DM:TFdmbase; AcbrNfe:TAcbrNfe):Boolean;
Function ImprimirCArtaCorrecaoNfeAcbr(DM:TFdmbase; AcbrNfe:TAcbrNfe):Boolean;
function PreviewNfeAcbr(tblPedido, tblItensPedido, tblObsPedido: TFDQuery; Startatransacao: boolean = True): boolean;
Function InutilizarNumeracaoNfeAcbr(DM:TFdmbase;AcbrNfe:TAcbrNfe ; NfeNfce:String='NFE'):Boolean;
Function ImprimirInutilizacaoNfeAcbr(DM:TFdmbase; AcbrNfe:TAcbrNfe ; NfeNfce:String='NFE'):Boolean;
Function StatusServicoAcbr(AcbrNfe:TAcbrNfe ):Boolean;
Function ConsultarCertificadosACBR(AcbrNfe:TAcbrNfe):Boolean;
Function ImprimirXMLNfeAcbr(AcbrNfe:TAcbrNfe; NfeNfce:String='NFE'):Boolean;
Function ImprimirXMLCancelamentoNfeAcbr(AcbrNfe:TAcbrNfe; NfeNfce:String='NFE'):Boolean;
Function ImprimirXMLCartacorrecaoNfe(AcbrNfe:TAcbrNfe):Boolean;
Function ImprimirXMLInutilizazadas(AcbrNfe:TAcbrNfe; NfeNfce:String='NFE'):Boolean;
//**=========================================================================
function geraChaveNota(nNF, cNF: integer; dhEmi: TDateTime; cnpj, area, serie: string): string;

implementation

Uses Principa, ACBrUtil.Base, ACBrUtil.FilesIO, ACBrUtil.DateTime, ACBrUtil.Strings, ACBrUtil.XMLHTML, ACBrNFe.Classes, ACBrNFe.EnvEvento,
     ACBrNFe.EventoClass, ACBrDFe.Conversao, pcnConversao, pcnConversaoNFe, uProfun, GuardVar, RotHci, uProtNfe, frm_NFeDevolucaoU,
     uREformaTributaria, uPdfViewer, contpag, Rotnfe3, exibeValidacaoAcbrU, ujustificativa, uEscolheNotaOuEventoAcbr,
     uInutilizarNfeNumero, uEscolheInutilizacaoAcbr, RotTef, frm_gerenciamentoCuponsU, uInutilizarNfceNumero;

function formatvalAcbr(valor: double; tam, dec: integer): Double;
var
  tit1: string;
  n: integer;
  caracdec: string;
  caracdec1: string;
begin
  Result := Red_unit(valor,dec);
end;

function NFe4Acbr(empresa, nNF_B08, incrNFe: integer; validaTx2: boolean = false): boolean;
//function NFCe3(numnf, tipoes: string; dia: TDateTime; email: string; var int_numNFCeRetorno: Integer): Boolean;
var
  tblNfe, tblInfe, tblEmpres: TFDQuery;
  formatdata, formattime:String;
  PdfStream:TMemoryStream;
  gtPDFDocument1: TgtPDFDocument;
  wbcli:TFDQuery;
  Str_nomeEmp:String;
  wbNotasFiscaisAcbr:TFDQuery;
  vvNomePDFDest:String;
begin
  tblNfe := nil;
  tblInfe := nil;
  tblEmpres := nil;

  result := false;

  try
    ACBrNFe := TACBrNFe.Create(Application);

    tblNfe := TFDQuery.Create(nil);
    tblNfe.Connection := Principal.ADConnection1;

    tblInfe := TFDQuery.Create(nil);
    tblInfe.Connection := Principal.ADConnection1;

    tblEmpres := TFDQuery.Create(nil);
    tblEmpres.Connection := Principal.ADConnection1;

    tblempres.Open( 'Select EndEmp, CgcEmp, IeEmp, NomEmp, nomefemp, Numero, Complemento, BaiEmp, Area, CidEmp, EstEmp, CepEmp,'+
                    'ContribuinteIPI, ContribuinteIPICompra, optativo, EmailHost, Emailport, EmailUser, EmailPassWord, EmailAut,'+
                    'StartTls,'+
                    'TelEmp, TPAmb, Regime, CaminhoCertificado, SenhaCertificado from wbempres where Codemp='+inttostr(vvcodemp));

    if tblempres.recordcount=0 then
    begin
      Mensagem('Erro ao gerar nota fiscal, empresa ' + IntToStr(vvcodemp) + ' não encontrada');
      exit;
    end;

    if not(findkeySqlAD(tbnfe, ['empresa', 'cNF', 'incrNfe'], [empresa, nNF_B08, incrNFe], tblNfe)) then
    begin
      Mensagem('Erro ao faturar, nota fiscal ' + strzero(nNF_B08, 9, 0) + 'não encontrada');
      exit;
    end;

    if not(findkeySqlAD(tbinfe, ['empresa', 'cNF', 'incrNfe'], [empresa, nNF_B08, incrNFe], tblInfe)) then
    begin
      Mensagem('Erro ao faturar, produtos da nota fiscal ' + strzero(nNF_B08, 9, 0) + 'não encontrados');
      exit;
    end;

    bExportacao := ((TrocaCaracterEspecial(tblNfe.fieldbyname('UFSaidaPais').AsString) <> '') and
      (TrocaCaracterEspecial(tblNfe.fieldbyname('xLocExporta').AsString) <> ''));

    if not ConfiguracoesNfeNfceAcbr(ACBrNFe, tblempres, 'NFE') then
    begin
      result := false;
      exit;
    end;

    if not ConfigNfeNfceAcbrIde(AcbrNfe, Tblnfe, TblEmpres, 'NFE', validaTx2) then
    begin
      result := false;
      exit;
    end;

    if not ConfigNfeNfceAcbrEmit(AcbrNfe,Tblnfe,TblEmpres,'NFE', validaTx2) then
    begin
      result := false;
      exit;
    end;

    if not ConfigNfeNfceAcbrDest(AcbrNfe,Tblnfe,TblEmpres,'NFE',validaTx2) then
    begin
      result := false;
      exit;
    end;

    if not ConfigNfeNfceAcbrDet(AcbrNfe,tblNfe,tblEmpres,tblInfe,'NFE',validaTx2) then
    begin
      result := false;
      exit;
    end;

    if not ConfigNfeNfceAcbrTotal(AcbrNfe, tblNfe, tblEmpres, tblInfe,   'NFE') then
    begin
      result := false;
      exit;
    end;

    if not ConfigNfeNfceAcbrTransp(AcbrNfe, tblNfe, tblEmpres, 'NFE') then
    begin
      result := false;
      exit;
    end;

    if not ConfigNfeNfceAcbrCobr(AcbrNfe, tblNfe, tblEmpres, tblInfe, 'NFE') then
    begin
      result := false;
      exit;
    end;

    if not ConfigNfeNfceAcbrinfAdic(AcbrNfe, tblNfe, tblEmpres, tblInfe, 'NFE') then
    begin
      result := false;
      exit;
    end;

    ACBrNFe.NotasFiscais.Assinar;
    ACBrNFe.NotasFiscais.GravarXML();

    if not validaTx2 then
    begin
      try
        ACBrNFe.NotasFiscais.Validar;

        if ACBrNFe.NotasFiscais[0].Alertas <> '' then
        begin
          Mensagem(ACBrNFe.NotasFiscais[0].Alertas);
          Result := False;
        end else
        begin

          if ACBrNFe.Enviar(1,False,True) then
          begin

            Mensagem(ACBrNFe.WebServices.Enviar.xMotivo);
            if ACBrNFe.WebServices.Enviar.cStat=100 then
            begin

              ACBrNFe.NotasFiscais.ImprimirPDF;

              try

                wbNotasFiscaisAcbr := TFDQuery.Create(Application);
                wbNotasFiscaisAcbr.Connection := Principal.ADConnection1;
                wbNotasFiscaisAcbr.open('Select First 0 * from wbNotasFiscaisAcbr');
                wbNotasFiscaisAcbr.Append;
                wbNotasFiscaisAcbr.Fieldbyname('Empresa').Asinteger := vvCodEmp;
                wbNotasFiscaisAcbr.Fieldbyname('Anoped').AsString := Fdmbase.TblPedido.Fieldbyname('Anoped').Asstring;
                wbNotasFiscaisAcbr.Fieldbyname('Tipo').AsString := 'NotaFiscal';
                wbNotasFiscaisAcbr.Fieldbyname('Codped').AsInteger := Fdmbase.TblPedido.Fieldbyname('Codped').AsInteger;
                wbNotasFiscaisAcbr.Fieldbyname('nNf').AsInteger := tblnfe.fieldbyname('cNF').asinteger;
                wbNotasFiscaisAcbr.Fieldbyname('Data').AsDateTime := tblNfe.fieldbyname('dhEmi').AsDateTime;
                wbNotasFiscaisAcbr.Fieldbyname('NomeXml').AsString := Fdmbase.Tblpedido.fieldbyname('protnfe').asstring+'-nfe.Xml';
                wbNotasFiscaisAcbr.Fieldbyname('anomes').AsString := StrZero(yearof(Date),4,0)+Strzero(monthof(Date),2,0);

                wbNotasFiscaisAcbr.Post;

                if Principal.ADConnection1.InTransaction then
                  Principal.ADConnection1.CommitRetaining;

                wbNotasFiscaisAcbr.Close;
                FreeandNil(wbNotasFiscaisAcbr);

                formatdata := FormatDatetime('dd-mm-yyyy', tblNfe.fieldbyname('dhEmi').AsDateTime);
                formattime := FormatDatetime('hh-nn-ss', tblNfe.fieldbyname('dhEmi').AsDateTime);
                //
                wbcli := TFDQuery.Create(Application);
                wbcli.Connection := Principal.ADConnection1;
                wbcli.open('Select Nome from '+tbcli+ ' where codcli='+fdmbase.tblcli.fieldbyname('codcli').asstring);
                str_nomeEmp := StringReplace(wbcli.fieldbyname('nome').asstring, '&', 'E', [rfReplaceAll]);
                str_nomeEmp := StringReplace(str_nomeEmp, '/', '-', [rfReplaceAll]);
                //**

//                if (not bln_tsplus)and(not bln_TSPLUSBROWSER) then
//                  vvNomePDFDest := 'c:\hciweb\pdffiscal\['+StrZero(tblnfe.fieldbyname('cNF').asinteger,9,0)+'](I)'+Fdmbase.Tblpedido.fieldbyname('protnfe').asstring+'-nfe.pdf'
//                else
//                  vvNomePDFDest := '\\tsclient\c\hciweb\pdffiscal\['+StrZero(tblnfe.fieldbyname('cNF').asinteger,9,0)+'](I)'+Fdmbase.Tblpedido.fieldbyname('protnfe').asstring+'-nfe.pdf';

                gtPDFDocument1 := TgtPDFDocument.Create(Application);
                gtPDFDocument1.FileName := ACBrNFe.DANFE.PathPDF+'\'+Fdmbase.Tblpedido.fieldbyname('protnfe').asstring+'-nfe.pdf';
                fPdfViewer := TfPdfViewer.Create(Application, PDFToMemoryStream(gtPDFDocument1), 'Danfe ['+Strzero(tblNfe.fieldbyname('cNF').AsInteger,9,0)+'(V)]['+formatdata+']['+formattime+'] '+str_nomeEmp+'.pdf');
                fPdfViewer.caption := 'PDF Danfe';
                fPdfViewer.showModal;

              finally
                FreeAndNil(fPdfViewer);
                FreeandNil(gtPDFDocument1);

                if (alltrim(fdmbase.tblcliEmail.Asstring)<>'')or(dvlp) then
                begin
                  if EnviarEmailAcbrNfeNfce(fdmbase.tblcliEmail.Asstring, AcbrNfe)='OK' then
                    Mensagem('Email Enviado com Sucesso')
                  else
                    Mensagem('Erro ao Enviar Email');
                end;

              end;

              Result := True;
            end else
              Result := False;
          end;

        end;
      except
        on E: Exception do
        begin
          REsult := False;
          //DeleteFile(ACBrNFe.Configuracoes.Arquivos.PathSalvar+'\'+StrZero(yearof(Date),4,0)+Strzero(monthof(Date),2,0)+'\'+Fdmbase.tblpedido.fieldbyname('protnfe').asstring+'-nfe.xml');
          Mensagem('Erro na Nfe     : '+E.Message+#13+#10+
                   iff(Alltrim(ACBrNFe.NotasFiscais[0].ErroValidacao)<>'','Erro          : '+ACBrNFe.NotasFiscais[0].ErroValidacao,'')+#13+#10+
                   iff(Alltrim(ACBrNFe.NotasFiscais[0].ErroValidacaoCompleto)<>'','Erro Completo :'+ACBrNFe.NotasFiscais[0].ErroValidacaoCompleto,''));
        end;
      end;
    end else
      Result := True;

  finally
    liberaTabela(tblEmpres);
    liberaTabela(tblNfe);
    liberaTabela(tblInfe);

    if not validaTx2 then
    begin
      FreeandNil(ACBrNFe);
      FreeandNil(ACBrNFeDANFEFR);
      FreeandNil(AcbrMail);
    end;

    fdmbase.arqaux.enablecontrols;
    //formatoAmericano.DecimalSeparator := ',';
    //formatoAmericano.ThousandSeparator := '.';

  end;
end;

function NFce4Acbr(numnf, tipoes: string; dia: TDateTime; email: string; var int_numNFCeRetorno: Integer): Boolean;
var
  tblNfe, tblInfe, tblEmpres: TFDQuery;
  formatdata, formattime:String;
  //PdfStream:TMemoryStream;
  //gtPDFDocument1: TgtPDFDocument;
  wbcli:TFDQuery;
  Str_nomeEmp:String;
  wbNotFisAcbrNfce:TFDQuery;
  horanfe:String;
  vvProtocolo:String;
  vvNomePDFDest:String;
  vvImpressaodireta:String;
  wbNFCeConfig:TFDQuery;
  vvIMPPDFDIRTSPLUS:Boolean;
begin
  tblNfe := nil;
  tblInfe := nil;
  tblEmpres := nil;

  result := false;

  try

    Try
      wbNFCeConfig := TFDQuery.Create(Application);
      wbNFCeConfig.Connection := Principal.ADConnection1;
      wbNFCeConfig.Open('Select ModeloImpressoraNF, NColunasPDF, ImpressaoNF, MargemNF, IMPPDFDIRTSPLUS, temguilhotina, MARCAIMPRESSORA from wbNFCeConfig where usuario='+Quotedstr(vvusuario));
      vvIMPPDFDIRTSPLUS := wbNFCeConfig.fieldbyname('IMPPDFDIRTSPLUS').asinteger=1;
    Finally
      wbNFCeConfig.close;
      FreeAndNil(wbNFCeConfig);
    end;


    horanfe := FormatDateTime('hh:nn:ss', dia);
    vvRandom := Random(99999999);
    dhEmi := Dia;


    ACBrNFe := TACBrNFe.Create(Application);

    tblNfe := TFDQuery.Create(nil);
    tblNfe.Connection := Principal.ADConnection1;

    tblInfe := TFDQuery.Create(nil);
    tblInfe.Connection := Principal.ADConnection1;

    tblEmpres := TFDQuery.Create(nil);
    tblEmpres.Connection := Principal.ADConnection1;

    tblempres.Open( 'Select EndEmp, CgcEmp, IeEmp, NomEmp, nomefemp, Numero, Complemento, BaiEmp, Area, CidEmp, EstEmp, CepEmp,'+
                    'ContribuinteIPI, ContribuinteIPICompra, optativo, EmailHost, Emailport, EmailUser, EmailPassWord, EmailAut,'+
                    'StartTls, VersaoNfce, IdCSC, CSC, SerieNfce,'+
                    'TelEmp, TPAmb, TPAmbNfce, Regime, CaminhoCertificado, SenhaCertificado from wbempres where Codemp='+inttostr(vvcodemp));

    verlayout := fdmbase.tblEmpres.FieldByName('versaoNFCe').AsString;

    if tblempres.recordcount=0 then
    begin
      Mensagem('Erro ao gerar nota fiscal, empresa ' + IntToStr(vvcodemp) + ' não encontrada');
      exit;
    end;

    tblnfe.sql.add('Select nfe.natoperac as NATOP, nfe.serienfce as Serie, Nfe.Numnf as cNF, '+Quotedstr(tblempres.fieldbyname('Area').Asstring) +' as cMunFG,');
    tblnfe.sql.add('CNPJCPF, nfe.Codcli, cli.Nome as xNome, cli.endereco as xLgr, cli.numero as Nro, cli.complemento as Xcpl,');
    tblnfe.sql.add('cli.Bairro as xBairro, cli.area as cMun, cli.cidade as xMun, cli.estado as uf, cli.cep, nfe.CNPJCPF as cnpj,');
    tblnfe.sql.add('cli.telefone as Fone, cli.indIEDest, cli.ie, cli.email, cli.indfinal, '''' as DestacaDifal, ''1'' as Tpnf,');
    tblnfe.sql.add('''1'' as FinNfe, nfe.ttnota, ''N'' as TIRAICMSDESONTOTAL, ''0'' as ttbenef, ''S'' as IMPFATURA, nfe.incr,');
    tblnfe.sql.add('cast('+Quotedstr(copy(DateTimeToStr(dia),4,2)+'-'+copy(DateTimeToStr(dia),1,2)+'-'+copy(DateTimeToStr(dia),7,4)+' '+copy(DateTimeToStr(dia),12,8))+' as TimeStamp) as dhEmi');
    //cast(copy(DateTimeToStr(dia),4,2)+'-'+copy(DateTimeToStr(dia),1,2)+copy(DateTimeToStr(dia),7,4)+' '+copy(DateTimeToStr(dia),12,8)  as TimeStamp)
    tblnfe.sql.add('From '+Tbnfce+' nfe');
    tblnfe.sql.add('Left outer join '+tbcli+' cli on cli.Codcli=nfe.Codcli');
    tblnfe.sql.add('Where Empresa='+inttostr(vvCodemp));
    tblnfe.sql.add('and NumNf='+Quotedstr(NumNf));
    tblnfe.sql.add('and TipoEs='+Quotedstr(tipoes));
    tblnfe.sql.add('and Horanfe='+Quotedstr(horanfe));

    if dvlp then
      tblnfe.sql.SaveToFile(dc+'\sql.sql');

    tblnfe.open;

    if tblnfe.Recordcount=0 then
    begin
      Mensagem('Erro ao faturar, Nfce não encontrada');
      exit;
    end;

    tblinfe.sql.add('Select infe.codpro as cProd, pro.Ean13 as Cean, pro.Ean13 as CeanTrib, pro.Descr as xProd, Fisc.Codclas as Ncm,');
    tblinfe.sql.add('substring(infe.s_trib from 1 for 1) as orig, substring(infe.s_trib from 2 for 3) as csticms,');
    tblinfe.sql.add('infe.cfop, infe.unid as unidade, infe.quantit as qcom, infe.valuni as vUnCom, infe.unid as ucom,');
    tblinfe.sql.add('infe.valuni as vUnTrib, infe.quantit as qTrib, infe.unid as uTrib, '''' as xPed , '''' as nItemped,');
    tblinfe.sql.add('infe.vdesc, ''0'' as vFrete, ''0'' as vSeg, ''0'' as vOutro, '''' as infadProd, pro.StPisv as CStPis, pro.StCofinsV as CSTCofins,');
    tblinfe.sql.add('pro.Pisv as vPis, pro.Cofinsv as vCofins, pro.Pisv as pPis, Pro.cofinsv as pCofins,');
    tblinfe.sql.add('infe.Valt as vBCPis, infe.Valt as vBCCofins, Round(infe.valt*fisc.municipal/ 100,2) as vTotTribMun,');
    tblinfe.sql.add('Round(infe.valt*fisc.estadual/ 100,2) as vTotTribEst, Round(infe.valt*fisc.nacionalfederal/ 100,2) as vTotTribFed,');
    tblinfe.sql.add('iif(picm<>0, infe.Valt,0) as vBC, infe.picm as pIcms, Round(infe.valt * infe.picm / 100,2) as vIcms, ''0'' as pFCP,');
    tblinfe.sql.add('infe.reducao as pREdBC, ''0'' as icmsdeson, ''0'' as pFCPST, ''0'' as vBCST, ''0'' as vICMSST, ''0'' as vFCPST,');
    tblinfe.sql.add('''0'' as vFCP, infe.valt as vProd, ''0'' as flt_IIValor, ''0'' as vIPI, ');
    tblinfe.sql.add('infe.csttrib, infe.cclasstrib, infe.VDEVTRIBIBSUF, infe.VDEVTRIBIBSMUN, infe.VDEVTRIBCBS');

    tblinfe.sql.add('From '+Tbinfce+' infe');
    tblinfe.sql.add('Left outer join '+tbprod+' pro on pro.empresa=infe.empresa and pro.codpro=infe.codpro');
    tblinfe.sql.add('Left outer join '+tbclfisc+' Fisc on Fisc.codnum=Pro.Codnum');
    tblinfe.sql.add('Left outer join '+tbcli+' cli on cli.codcli='+Inttostr(convint(tblnfe.fieldbyname('codcli').asString)));


    tblinfe.sql.add('Where infe.Empresa='+inttostr(vvCodemp));
    tblinfe.sql.add('and infe.NumNf='+Quotedstr(NumNf));
    tblinfe.sql.add('and infe.TipoEs='+Quotedstr(tipoes));
    tblinfe.sql.add('and infe.Horanfe='+Quotedstr(horanfe));

    if dvlp then
      tblinfe.sql.SaveToFile(dc+'\sql.sql');

    tblinfe.open;

    if tblinfe.Recordcount=0 then
    begin
      Mensagem('Erro ao faturar, produtos da Nfce não encontrados');
      exit;
    end;

    vvProtocolo := geraChaveNota(tblnfe.fieldbyname('cNF').Asinteger,
                          vvRandom, dia,tblEmpres.fieldbyname('cgcemp').AsString,
                          tblEmpres.fieldbyname('area').AsString, tblempres.fieldbyname('SerieNfce').asstring);

    if not ConfiguracoesNfeNfceAcbr(ACBrNFe, tblempres, 'NFCE') then
    begin
      result := false;
      exit;
    end;

    if not ConfigNfeNfceAcbrIde(AcbrNfe, Tblnfe, TblEmpres, 'NFCE') then
    begin
      result := false;
      exit;
    end;

    if not ConfigNfeNfceAcbrEmit(AcbrNfe,Tblnfe,TblEmpres,'NFCE') then
    begin
      result := false;
      exit;
    end;

    if not ConfigNfeNfceAcbrDest(AcbrNfe,Tblnfe,TblEmpres,'NFCE') then
    begin
      result := false;
      exit;
    end;

    if not ConfigNfeNfceAcbrDet(AcbrNfe,tblNfe,tblEmpres,tblInfe,'NFCE') then
    begin
      result := false;
      exit;
    end;

    if not ConfigNfeNfceAcbrTotal(AcbrNfe, tblNfe, tblEmpres, tblInfe,   'NFCE') then
    begin
      result := false;
      exit;
    end;

    if not ConfigNfeNfceAcbrTransp(AcbrNfe, tblNfe, tblEmpres, 'NFCE') then
    begin
      result := false;
      exit;
    end;

    if not ConfigNfeNfceAcbrCobr(AcbrNfe, tblNfe, tblEmpres, tblInfe, 'NFCE') then
    begin
      result := false;
      exit;
    end;

    if not ConfigNfeNfceAcbrinfAdic(AcbrNfe, tblNfe, tblEmpres, tblInfe, 'NFCE') then
    begin
      result := false;
      exit;
    end;

    ACBrNFe.NotasFiscais.Assinar;
    ACBrNFe.NotasFiscais.GravarXML();

    try
      ACBrNFe.NotasFiscais.Validar;

      if ACBrNFe.NotasFiscais[0].Alertas <> '' then
      begin
        Mensagem(ACBrNFe.NotasFiscais[0].Alertas);
        Result := False;
      end else
      begin

        if ACBrNFe.Enviar(1,False,True) then
        begin

          Mensagem(ACBrNFe.WebServices.Enviar.xMotivo);
          if ACBrNFe.WebServices.Enviar.cStat=100 then
          begin

            fdmbase.tblCuponsFisc.edit;
            fdmbase.tblCuponsFiscIdNuvemfiscal.Asstring := fdmbase.TblNfceIdNuvemFiscal.Asstring;
            fdmbase.tblCuponsFiscNCFE.AsInteger := fdmbase.tblNFCe.fieldbyname('NumNf').Asinteger;

            int_numNFCeRetorno := fdmbase.tblNFCe.fieldbyname('NumNf').Asinteger;

            fdmbase.tblCuponsFiscRETORNO.AsString := ACBrNFe.WebServices.Enviar.xMotivo;
            fdmbase.tblCuponsFiscCHNFCE.AsString := vvProtocolo;
            fdmbase.tblCuponsFiscStatus.AsInteger := 3;
            fdmbase.tblCuponsFiscGEROUFISCAL.AsInteger := 1;
            fdmbase.tblCuponsFisc.Post;

            Try

              ACBrNFe.NotasFiscais.ImprimirPDF;

              if fileexists(ACBrNFeDANFCEFR.ArquivoPDF) then
              begin
                if (not bln_tsplus)and(not bln_TSPLUSBROWSER) then
                begin

                  if vvIMPPDFDIRTSPLUS then
                    vvNomePDFDest := 'c:\hciweb\pdffiscal\['+StrZero(tblnfe.fieldbyname('cNF').asinteger,9,0)+'](I)'+ExtractFileName(ACBrNFeDANFCEFR.ArquivoPDF)
                  else
                    vvNomePDFDest := 'c:\hciweb\pdffiscal\['+StrZero(tblnfe.fieldbyname('cNF').asinteger,9,0)+'](V)'+ExtractFileName(ACBrNFeDANFCEFR.ArquivoPDF);

                end else
                begin

                  if vvIMPPDFDIRTSPLUS then
                    vvNomePDFDest := '\\tsclient\c\hciweb\pdffiscal\['+StrZero(tblnfe.fieldbyname('cNF').asinteger,9,0)+'](I)'+ExtractFileName(ACBrNFeDANFCEFR.ArquivoPDF)
                  else
                    vvNomePDFDest := '\\tsclient\chciweb\pdffiscal\['+StrZero(tblnfe.fieldbyname('cNF').asinteger,9,0)+'](V)'+ExtractFileName(ACBrNFeDANFCEFR.ArquivoPDF);

                end;

                if not (CopyFile(PChar(ACBrNFeDANFCEFR.ArquivoPDF), PChar(vvNomePDFDest), false)) then
                  Mensagem('Problemas na copia do arquivo pdf para '+vvNomePDFDest);

              end;

            Finally
            end;

            try

              wbNotFisAcbrNfce := TFDQuery.Create(Application);
              wbNotFisAcbrNfce.Connection := Principal.ADConnection1;
              wbNotFisAcbrNfce.open('Select First 0 * from wbNotFisAcbrNfce');
              wbNotFisAcbrNfce.Append;
              wbNotFisAcbrNfce.Fieldbyname('Empresa').Asinteger := vvCodEmp;
              wbNotFisAcbrNfce.Fieldbyname('incr').AsInteger := fdmbase.tblCuponsFiscIncr.Asinteger;
              wbNotFisAcbrNfce.Fieldbyname('Tipo').AsString := 'CupomFiscal';
              wbNotFisAcbrNfce.Fieldbyname('nNf').AsInteger := tblnfe.fieldbyname('cNF').asinteger;
              wbNotFisAcbrNfce.Fieldbyname('Data').AsDateTime := tblNfe.fieldbyname('dhEmi').AsDateTime;
              wbNotFisAcbrNfce.Fieldbyname('NomeXml').AsString := ExtractfileName(acbrNfe.NotasFiscais.Items[0].NomeArq);
              wbNotFisAcbrNfce.Fieldbyname('anomes').AsString := StrZero(yearof(Date),4,0)+Strzero(monthof(Date),2,0);
              wbNotFisAcbrNfce.Post;
              wbNotFisAcbrNfce.Close;
              FreeandNil(wbNotFisAcbrNfce);

              if Principal.ADConnection1.InTransaction then
                Principal.ADConnection1.CommitRetaining;

//              formatdata := FormatDatetime('dd-mm-yyyy', tblNfe.fieldbyname('dhEmi').AsDateTime);
//              formattime := FormatDatetime('hh-nn-ss', tblNfe.fieldbyname('dhEmi').AsDateTime);
              //

//              if convint(fdmbase.tblcli.fieldbyname('codcli').asstring)<>0 then
//              begin
//                wbcli := TFDQuery.Create(Application);
//                wbcli.Connection := Principal.ADConnection1;
//                wbcli.open('Select Nome from '+tbcli+ ' where codcli='+fdmbase.tblcli.fieldbyname('codcli').asstring);
//                str_nomeEmp := StringReplace(wbcli.fieldbyname('nome').asstring, '&', 'E', [rfReplaceAll]);
//                str_nomeEmp := StringReplace(str_nomeEmp, '/', '-', [rfReplaceAll]);
//              end else
//                str_nomeEmp := 'Não Cadastrado';


//              if (not bln_tsplus)and(not bln_TSPLUSBROWSER) then
//              begin
//                gtPDFDocument1 := TgtPDFDocument.Create(Application);
//                gtPDFDocument1.FileName := ACBrNFeDANFCEFR.ArquivoPDF;
//                fPdfViewer := TfPdfViewer.Create(Application, PDFToMemoryStream(gtPDFDocument1), 'Danfe ['+Strzero(tblNfe.fieldbyname('cNF').AsInteger,9,0)+']['+formatdata+']['+formattime+'] '+str_nomeEmp+'(V).pdf');
//                fPdfViewer.caption := 'PDF Danfce';
//                fPdfViewer.showModal;
//              end;
            finally
//              FreeAndNil(fPdfViewer);
//              FreeandNil(gtPDFDocument1);

              if (alltrim(fdmbase.tblCuponsFiscStr_email.AsString)<>'')or(dvlp) then
              begin
                if EnviarEmailAcbrNfeNfce(fdmbase.tblCuponsFiscStr_email.AsString, AcbrNfe, 'SemPesquisa', 'NFCE')='OK' then
                  Mensagem('Email Enviado com Sucesso')
                else
                  Mensagem('Erro ao Enviar Email');
              end;

            end;

            Result := True;
          end else
          begin
            Result := False;
            fdmbase.tblCuponsFisc.edit;
            fdmbase.tblCuponsFiscRETORNO.AsString := ACBrNFe.WebServices.Enviar.xMotivo;
            fdmbase.tblCuponsFiscStatus.AsInteger := 2;
            fdmbase.tblCuponsFiscREJEITADO.AsInteger := 1;

            fdmbase.tblCuponsFiscGEROUESTOQUE.AsInteger := 2;
            fdmbase.tblCuponsFiscGEROUCAIXA.AsInteger := 2;
            fdmbase.tblCuponsFiscGEROUFISCAL.AsInteger := 2;
            fdmbase.tblCuponsFiscINT_TIPOPAGAMENTO.Clear;

            fdmbase.tblCuponsFisc.Post;

            if Principal.ADConnection1.InTransaction then
              Principal.ADConnection1.CommitRetaining;
          end;

        end;

      end;
    except
      on E: Exception do
      begin
        REsult := False;
        fdmbase.tblCuponsFisc.edit;
        fdmbase.tblCuponsFiscRETORNO.AsString := ACBrNFe.WebServices.Enviar.xMotivo;
        fdmbase.tblCuponsFiscStatus.AsInteger := 2;
        fdmbase.tblCuponsFiscREJEITADO.AsInteger := 1;

        fdmbase.tblCuponsFiscGEROUESTOQUE.AsInteger := 2;
        fdmbase.tblCuponsFiscGEROUCAIXA.AsInteger := 2;
        fdmbase.tblCuponsFiscGEROUFISCAL.AsInteger := 2;
        fdmbase.tblCuponsFiscINT_TIPOPAGAMENTO.Clear;

        fdmbase.tblCuponsFisc.Post;

        //DeleteFile(ACBrNFe.Configuracoes.Arquivos.PathSalvar+'\'+StrZero(yearof(Date),4,0)+Strzero(monthof(Date),2,0)+'\'+Fdmbase.tblpedido.fieldbyname('protnfe').asstring+'-nfe.xml');
        Mensagem('Erro na Nfce    : '+E.Message+#13+#10+
                 iff(Alltrim(ACBrNFe.NotasFiscais[0].ErroValidacao)<>'','Erro          : '+ACBrNFe.NotasFiscais[0].ErroValidacao,'')+#13+#10+
                 iff(Alltrim(ACBrNFe.NotasFiscais[0].ErroValidacaoCompleto)<>'','Erro Completo :'+ACBrNFe.NotasFiscais[0].ErroValidacaoCompleto,''));
      end;
    end;

  finally
    Contadorpag.Hide;
    liberaTabela(tblEmpres);
    liberaTabela(tblNfe);
    liberaTabela(tblInfe);
    FreeandNil(ACBrNFe);
    FreeandNil(ACBrNFeDANFEFR);
    FreeandNil(AcbrMail);
  end;

    fdmbase.arqaux.enablecontrols;

end;


Function ConfiguracoesNfeNfceAcbr(AcbrNfe:TAcbrNfe; WbEmpres:TFDQuery; Tipo:String):Boolean;
Var
  vvImg:String;
  n:Integer;
  ExtImage: array [1..3] of string;
  wbNFCeConfig:TFDQuery;
Begin

  ExtImage[1] := '.png';
  ExtImage[2] := '.jpg';
  ExtImage[3] := '.bmp';

  Try


    if Tipo='NFE' then
    begin
      ACBrNFeDANFEFR := TACBrNFeDANFEFR.Create(Application);
      ACBrNFeDANFEFR.Sistema := 'Hci Comércio e Desenvolvimento de Sistemas';
      ACBrNFeDANFEFR.Cancelada := False;
      ACBrNFe.DANFE := ACBrNFeDANFEFR;
    end else if Tipo='NFCE' then
    begin
      ACBrNFeDANFCEFR := TACBrNFeDANFCEFR.Create(Application);
      ACBrNFeDANFCEFR.Sistema := 'Hci Comércio e Desenvolvimento de Sistemas';
      ACBrNFeDANFCEFR.Cancelada := False;
      ACBrNFe.DANFE := ACBrNFeDANFCEFR;
      //
      wbNFCeConfig := TFDQuery.Create(Application);
      wbNFCeConfig.Connection := Principal.ADConnection1;
      wbNFCeConfig.Open('Select NColunasPDF, MargemNF from wbNFCeConfig where usuario='+Quotedstr(vvusuario));
      ACBrNFeDANFCEFR.LarguraBobina := wbNFCeConfig.fieldbyname('NColunasPDF').Asinteger;
      ACBrNFeDANFCEFR.MargemEsquerda := wbNFCeConfig.fieldbyname('MargemNF').Asinteger;
      wbNFCeConfig.close;
      FreeandNil(wbNFCeConfig);
    end;

    AcbrMail := TACBrMail.Create(Application);

    with ACBrNFe.Configuracoes do
    begin

      ACBrNFe.NotasFiscais.Clear;
      With ACBrNFe.NotasFiscais.Add.NFe do;

      // ===== Configurações gerais =====
      Geral.SSLLib        := libWinCrypt; // ou libOpenSSL
      Geral.SSLCryptLib   := cryWinCrypt;
      Geral.SSLHttpLib    := httpWinHttp;
      Geral.SSLXmlSignLib := xsLibXml2;

      Geral.FormaEmissao  := teNormal;
      Geral.ModeloDF     := iff(Tipo='NFE', moNFe, moNFCe);
      Geral.VersaoDF     := ve400;

      // ===== Certificado =====
      //Certificados.TipoCertificado := tcA1; // ou tcA3
      Certificados.ArquivoPFX      := wbempres.fieldbyname('CaminhoCertificado').Asstring;
      Certificados.Senha           := Enc(wbempres.fieldbyname('SenhaCertificado').Asstring);
      Certificados.NumeroSerie     := ''; // usar se preferir por série

      // ===== WebServices =====
      WebServices.UF         := wbempres.fieldbyname('EstEmp').Asstring;

      if tipo='NFE' then
        WebServices.Ambiente  := iff(wbempres.fieldbyname('TPAmb').AsInteger=1,taProducao, taHomologacao)
      else
      begin
        WebServices.Ambiente  := iff(wbempres.fieldbyname('TPAmbNfce').AsInteger=1,taProducao, taHomologacao);
        Geral.IdCSC := wbempres.fieldbyname('iDCSC').asstring;
        Geral.CSC   := enc(wbempres.fieldbyname('CSC').asstring);
      end;

      WebServices.TimeOut   := 5000;
      WebServices.AjustaAguardaConsultaRet := True;

      // ===== Arquivos =====

      if tipo='NFE' then
      begin

        vvPastaEventoNfe := dc+'\NFeNfceAcbr\'+Tira(wbempres.fieldbyname('cgcemp').asstring)+'\Eventos\Nfe';
        vvPastaInutNfe := dc+'\NFeNfceAcbr\'+Tira(wbempres.fieldbyname('cgcemp').asstring)+'\Inut\Nfe';
        vvPastaPdfNfe := dc+'\NFeNfceAcbr\'+Tira(wbempres.fieldbyname('cgcemp').asstring)+'\Pdf\Nfe';
        vvPastaFr3Nfe := dc+'\NFeNfceAcbr\Fr3\Nfe';
        vvPastaXmlNfe := dc+'\NFeNfceAcbr\'+Tira(wbempres.fieldbyname('cgcemp').asstring)+'\XML\Nfe';


      end else
      begin

        vvPastaEventoNfe := dc+'\NFeNfceAcbr\'+Tira(wbempres.fieldbyname('cgcemp').asstring)+'\Eventos\Nfce';
        vvPastaInutNfe := dc+'\NFeNfceAcbr\'+Tira(wbempres.fieldbyname('cgcemp').asstring)+'\Inut\Nfce';
        vvPastaPdfNfe := dc+'\NFeNfceAcbr\'+Tira(wbempres.fieldbyname('cgcemp').asstring)+'\Pdf\Nfce';
        vvPastaFr3Nfe := dc+'\NFeNfceAcbr\Fr3\Nfce';
        vvPastaXmlNfe := dc+'\NFeNfceAcbr\'+Tira(wbempres.fieldbyname('cgcemp').asstring)+'\XML\Nfce';

      end;

      vvPastaSchemaNfe := dc+'\NFeNfceAcbr\Schemas\NfeNfce';

      Arquivos.Salvar        := True;
      Arquivos.PathSalvar   := vvPastaXmlNfe;
      Arquivos.PathSchemas  := vvPastaSchemaNfe;
      Arquivos.PathEvento := vvPastaEventoNfe;
      Arquivos.PathInu := vvPastaInutNfe;
      Arquivos.SepararPorMes    := True;
      Arquivos.SalvarEvento     := True;
      Arquivos.SalvarApenasNFeProcessadas := True;


      //Salvar           := cbxSalvarArqs.Checked;
      //AdicionarLiteral := cbxAdicionaLiteral.Checked;
      //EmissaoPathNFe   := cbxEmissaoPathNFe.Checked;
      //SepararPorCNPJ   := cbxSepararPorCNPJ.Checked;
      //SepararPorModelo := cbxSepararPorModelo.Checked;
      //PathSchemas      := edtPathSchemas.Text;
      //PathNFe          := edtPathNFe.Text;
      //PathInu          := edtPathInu.Text;
      //PathEvento       := edtPathEvento.Text;
      //PathMensal       := GetPathNFe(0);
      //PathSalvar       := PathMensal;

    end;

    with ACBrNFe do
    begin

      vvImg := ExtractfilePath(application.ExeName) + 'imagens\empresas\relatorio' + InttoStr(VVcodemp);
      For n := 1 to 3 do
      begin

        if FileExists(vvimg+ExtImage[n]) then
        begin
          DANFE.Logo :=  vvimg+ExtImage[n];
          Break;
        end;

      end;
      DANFE.PathPDF := vvPastaPdfNfe;
    end;

    if ACBrMail<>Nil then
    begin
      ACBrMail.Host := wbempres.fieldbyname('emailhost').asstring;
      ACBrMail.Clear;
      ACBrMail.Port := wbempres.fieldbyname('emailport').asstring;
      ACBrMail.Username := wbempres.fieldbyname('emailuser').asstring;
      ACBrMail.Password := wbempres.fieldbyname('emailPassWord').asstring;;
      ACBrMail.From := wbempres.fieldbyname('emailuser').asstring;;
      ACBrMail.SetSSL := iff(wbempres.fieldbyname('EMAILAUT').asstring='S',True, False); // SSL - Conexao Segura
      ACBrMail.SetTLS := iff(wbempres.fieldbyname('STARTTLS').asstring='S',True, False); // Auto TLS
      ACBrMail.ReadingConfirmation := False; // Pede confirmacao de leitura do email
      ACBrMail.UseThread := False;           // Aguarda Envio do Email(nao usa thread)
      ACBrMail.FromName := wbempres.fieldbyname('nomemp').asstring;
      ACBrNFe.MAIL := ACBrMail;
    end;

    if Tipo='NFE' then
    begin

      ACBrNFeDANFEFR.FastFile := vvPastaFr3Nfe+'\DANFeRetrato.fr3';
      ACBrNFeDANFEFR.FastFileEvento := vvPastaFr3Nfe+'\EVENTOS.fr3';
      ACBrNFeDANFEFR.FastFileInutilizacao := vvPastaFr3Nfe+'\INUTILIZACAO.fr3';

    end else
    begin

      ACBrNFeDANFCEFR.FastFile := vvPastaFr3Nfe+'\DANFeNFCe5_00.fr3';
      ACBrNFeDANFCEFR.FastFileEvento := vvPastaFr3Nfe+'\EventosNFCe.fr3';
      ACBrNFeDANFCEFR.FastFileInutilizacao := vvPastaFr3Nfe+'\INUTILIZACAONFCE.fr3';

    end;

    Result := True;

  except on E:Exception do
  begin
    mensagem('Erro Configurando '+Tipo+' (ConfiguracoesNfeNfceAcbr) '+#13+#10+e.message);
    REsult := False;
  End;
  end;

end;

Function ConfigNfeNfceAcbrIde(AcbrNfe:TAcbrNfe; Tblnfe, TblEmpres:TFDQuery; Tipo:String; validaTx2: boolean = false):Boolean;
Var
  tblRetornoNFe: TFDQuery;
  vvIndPres:String;
  vIncrPed: integer;
  cUF_BA04, AAMM_BA05, CNPJ_BA06, mod_BA07, serie_BA08, nNF_BA09: string;
  Referenciada: TNFrefCollectionItem;
Begin
  Try
    with ACBrNFe.NotasFiscais.Items[0].NFe do
    begin

      Ide.natOp     := TrocaCaracterEspecial(tiraacento(tblNfe.fieldbyname('natOp').AsString));
      Ide.cUF       := UFtoCUF(tblempres.fieldbyname('estemp').asstring);

      if tipo='NFE' then
        Ide.cNF       := tblNfe.fieldbyname('cNF1').AsInteger
      else
        Ide.cNF  :=vvrandom;

      Ide.modelo    := iff(Tipo='NFCE',65, 55);

      if Tipo='NFE' then
        Ide.serie     := ConvInt(tblNfe.fieldbyname('serie').AsString)
      else
        Ide.serie     := ConvInt(tblempres.fieldbyname('serienfce').AsString);

      Ide.nNF       := Convint(tblNfe.fieldbyname('cNF').AsString);

      if Tipo='NFCE' then
      begin
        Ide.dEmi      := dhEmi
      end else
      begin

        if (tblNfe.fieldbyname('dhSaiEnt').IsNull) or (FormatDatetime('yyyy', tblNfe.fieldbyname('dhSaiEnt').AsDateTime) = '1899') then
        begin
          if (tblEmpres.fieldbyname('DESTACADHSAIENT').AsString = 'N') then
          else
          begin
            Ide.dSaiEnt   := tblNfe.fieldbyname('dhEmi').AsDateTime;
            Ide.hSaiEnt   := tblNfe.fieldbyname('dhEmi').AsDateTime;
          end;
        end else
        begin
          if (tblNfe.fieldbyname('dhSaiEnt').AsDateTime < tblNfe.fieldbyname('dhEmi').AsDateTime) then
          begin
            Ide.dSaiEnt   := tblNfe.fieldbyname('dhEmi').AsDateTime;
            Ide.hSaiEnt   := tblNfe.fieldbyname('dhEmi').AsDateTime;
          end else
          begin
            Ide.dSaiEnt   := tblNfe.fieldbyname('dhSaiEnt').AsDateTime;
            Ide.hSaiEnt   := tblNfe.fieldbyname('dhSaiEnt').AsDateTime;
          end;
        end;

        Ide.dEmi      := tblNfe.fieldbyname('dhEmi').AsDateTime;
        Ide.tpNF      := iff(Ytiprel='V',tnSaida, tnEntrada);
        Ide.idDest := iff(tblNfe.fieldbyname('idDest').AsString='1',doInterna, iff(tblNfe.fieldbyname('idDest').AsString='2', doInterestadual,doExterior));

      end;

      Ide.cMunFG    := ConvInt(tblNfe.fieldbyname('cMunFG').AsString);

      Ide.tpImp     := iff(Tipo='NFE',tiRetrato,tiNFCe); ;
      Ide.tpEmis    := TpcnTipoEmissao(0);
      Ide.cDV       := 0;

      if tipo='NFE' then
      begin
        Ide.tpAmb     := iff(tblempres.fieldbyname('TPAmb').AsInteger=1,taProducao, taHomologacao);
        Ide.finNFe    := iff(Copy(tblNfe.fieldbyname('finNFe').AsString,1,1)='1',fnNormal,iff(Copy(tblNfe.fieldbyname('finNFe').AsString,1,1)='2',fnComplementar,
                         iff(Copy(tblNfe.fieldbyname('finNFe').AsString,1,1)='3',fnAjuste,fnDevolucao)));

        bln_complementar := tblNfe.fieldbyname('finNFe').AsString = '2';

        vvrefNFe_BA02 := iff((validaTx2) and ((tblNfe.fieldbyname('finNFe').AsString = '4') or (tblNfe.fieldbyname('finNFe').AsString = '2')),
          '01234567890123456789012345678901234567891234', '');

        if not(validaTx2) and (tblNfe.fieldbyname('finNFe').AsString = '2') then
        begin
          tblRetornoNFe := TFDQuery.Create(nil);
          fprotnfe := TFprotnfe.Create(nil);
          fprotnfe.referenciando := True;

          if (fprotnfe.ShowModal = MrOk) then
          begin
            vvrefNFe_BA02 := fprotnfe.refNFe.text;
            fdmbase.tblPedido.edit;
            fdmbase.tblPedido.fieldbyname('refNFe').AsString := vvrefNFe_BA02;
            fdmbase.tblPedido.Post;
            // **
          end else
          begin
            FreeAndNil(fprotnfe);
            exit;
          end;
          FreeAndNil(fprotnfe);
        end;

        Ide.indFinal  := iff(tblNfe.fieldbyname('indFinal').AsString='1', cfConsumidorFinal, cfNao);

        vvIndPres := copy(tblNfe.fieldbyname('indPres').AsString,1,1);

        Case ConvInt(vvIndPres) of
        0:Ide.indPres := pcNao;
        1:Ide.indPres := pcPresencial;
        2:Ide.indPres := pcInternet;
        3:Ide.indPres := pcTeleatendimento;
        4:Ide.indPres := pcEntregaDomicilio;
        5:Ide.indPres := pcPresencialForaEstabelecimento;
        9:Ide.indPres := pcOutros;
        end;

        if AllTrim(tblNfe.fieldbyname('indPres').AsString) <> '' then
        begin
          if tblNfe.fieldbyname('indPres').AsString[1] in ['2', '3', '4', '9'] then
          begin
            if AllTrim(vvCNPJInter) <> '' then
              Ide.indIntermed := iiOperacaoSemIntermediador
            else
              Ide.indIntermed := iiOperacaoComIntermediador;
          end else
          begin
            vvCNPJInter := '';
            vvNomeInter := '';
          end;
        end;

        Ide.verProc := vvVersao;

        if ((ytiprel = 'V') or (ytiprel = 'C')) then
        begin
          vIncrPed := ResultCampoSQLAD(iff(ytiprel = 'V', tbpedido, tbpentr), ['INCRNFE'], [tblNfe.fieldbyname('INCRNFE').AsInteger], 'INCR');
          findkeySqlAD(tbDevolucao, ['INCRPED'], [vIncrPed], fdmbase.tblDevolucao);
        end;

        {$region 'Reforma Tributária Fase 1'}
        if not(validaTx2) and (tblNfe.fieldbyname('finNFe').AsString = '4')and(not vvReformaTributariaNfe) then
        {$endregion 'Reforma Tributária Fase 1'}
        begin
          try
            if fdmbase.tblDevolucao.recordCount = 0 then
            begin
              frm_NFeDevolucaoF := Tfrm_NFeDevolucaoF.Create(nil);
              if (frm_NFeDevolucaoF.ShowModal = MrOk) then
              begin
                vvrefNFe_BA02 := frm_NFeDevolucaoF.refNFe.text;
                cUF_BA04 := copy(frm_NFeDevolucaoF.cUF_BA04.text, 1, 2);
                AAMM_BA05 := frm_NFeDevolucaoF.AAMM_BA05.text;
                CNPJ_BA06 := frm_NFeDevolucaoF.CNPJ_BA06.text;
                mod_BA07 := '01';
                serie_BA08 := frm_NFeDevolucaoF.serie_BA08.text;
                nNF_BA09 := frm_NFeDevolucaoF.nNF_BA09.text;
              end else
              begin
                FreeAndNil(fprotnfe);
                exit;
              end;
            end;
          finally
          end;
        end;

        if (validaTx2) and (tblNfe.fieldbyname('finNFe').AsString = '4') then
        begin
          cUF_BA04 := '35';
          AAMM_BA05 := '1701';
          CNPJ_BA06 := '62570718000170';
          mod_BA07 := '01';
          serie_BA08 := '1';
          nNF_BA09 := '1';
          vvrefNFe_BA02 := '';
        end;

        {$region 'Reforma Tributária Fase 1'}
        if (((ytiprel = 'V') or (ytiprel = 'C')) and (fdmbase.tblDevolucao.recordCount > 0)and(not vvReformaTributariaNfe))
           or((fdmbase.tblcliEstado.Asstring='EX')and(ytiprel='V')and (not fdmbase.tbldevolucao.eof)and(vvReformaTributariaNfe)) then
        {$endregion 'Reforma Tributária Fase 1'}
        begin
          fdmbase.tblDevolucao.First;
          while not fdmbase.tblDevolucao.eof do
          begin
            Referenciada := Ide.NFref.New;
            Referenciada.refNFe := fdmbase.tblDevolucaoCHAVE.AsString; //NFe Eletronica
            fdmbase.tblDevolucao.Next;
          end;
        end else if (vvrefNFe_BA02 <> '') then
        begin
          Referenciada := Ide.NFref.New;
          Referenciada.refNFe := vvrefNFe_BA02;
        end else if (nNF_BA09 <> '') then
        begin
          Referenciada := Ide.NFref.New;
          Referenciada.RefNF.cUF    := ConvInt(cUF_BA04);
          Referenciada.RefNF.AAMM   := AAMM_BA05;
          Referenciada.RefNF.CNPJ   := CNPJ_BA06;
          Referenciada.RefNF.modelo := ConvInt(mod_BA07);
          Referenciada.RefNF.serie  := ConvInt(serie_BA08);
          Referenciada.RefNF.nNF    := ConvInt(nNF_BA09);
        end;

        {$region 'Reforma Tributária Fase 1'}
          if tipo='NFE' then
          begin

            if vvReformaTributariaNfe then
            begin
              REsult := tpNFDebitoCreditoAcbr(tblnfe, AcbrNfe);
              if Not Result then
                Exit;
            end;

          end;
        {$endregion 'Reforma Tributária Fase 1'}

      end else
      begin
        Ide.tpAmb     := iff(tblempres.fieldbyname('TPAmbNfce').AsInteger=1,taProducao, taHomologacao);
        Ide.finNFe    := fnNormal;
        Ide.indFinal  := cfConsumidorFinal;
        Ide.indPres := pcPresencial;
        Ide.verProc := verlayout;

      end;

      Ide.procEmi := peAplicativoContribuinte;

    end;

    Result := True;

  except on E:Exception do
  begin
    mensagem('Erro Configurando '+Tipo+' (ConfigNfeNfceAcbrIde) '+#13+#10+e.message);
    REsult := False;
  End;
  end;
end;

Function ConfigNfeNfceAcbrEmit(AcbrNfe:TAcbrNfe; Tblnfe, TblEmpres:TFDQuery; Tipo:String; validaTx2: boolean = false):Boolean;
var
  cnpj, xNome, Fant, xLgr, nro, xBairro, cMun, xMun, UF, cep, cPais, xPais, Fone, IE, IEST, IM, CNAE, CRT, vxCpl: string;
begin

  result := false;
  try
    vvregime := tblEmpres.fieldbyname('regime').AsString;

    if (dvlp) then
    begin
      cnpj := tira(tblEmpres.fieldbyname('cgcemp').AsString);
      xNome := 'HCI COMERCIO E DESENVOLVIMENTO DE SISTEMAS';
      Fant := 'HCI SISTEMAS INTEGRADOS';
      xLgr := 'Rua Padre luis da gra';
      vxCpl := 'Complemento do endereço';
      nro := '109';
      xBairro := 'SAUDE';
      cMun := tblEmpres.fieldbyname('area').AsString;
      xMun := tiraacento(tblEmpres.fieldbyname('cidemp').AsString);
      UF := tblEmpres.fieldbyname('estemp').AsString;
      cep := '04294050';
      cPais := '1058';
      xPais := 'BRASIL';
      Fone := '1123929999';
      IE := tira(tblEmpres.fieldbyname('ieemp').AsString);
      IEST := '';
      IM := '';
      CNAE := '';
      CRT := iff((vvregime = 'S'), '1', iff(vvregime = 'N', '3', '2'));
    end
    else
    begin
      cnpj := TrocaCaracterEspecial(tira(tblEmpres.fieldbyname('cgcemp').AsString));
      xNome := TrocaCaracterEspecial(tiraacento(tblEmpres.fieldbyname('nomemp').AsString));
      Fant := '';
      xLgr := TrocaCaracterEspecial(tiraacento(tblEmpres.fieldbyname('endemp').AsString));
      nro := TrocaCaracterEspecial(tiraacento(tblEmpres.fieldbyname('NUMERO').AsString));
      vxCpl := TrocaCaracterEspecial(tiraacento(tblEmpres.fieldbyname('COMPLEMENTO').AsString));
      xBairro := TrocaCaracterEspecial(tiraacento(tblEmpres.fieldbyname('baiemp').AsString));
      cMun := TrocaCaracterEspecial(tblEmpres.fieldbyname('area').AsString);
      xMun := TrocaCaracterEspecial(tiraacento(tblEmpres.fieldbyname('cidemp').AsString));
      UF := TrocaCaracterEspecial(tblEmpres.fieldbyname('estemp').AsString);
      cep := TrocaCaracterEspecial(tira(tblEmpres.fieldbyname('cepemp').AsString));
      cPais := '1058';
      xPais := 'BRASIL';
      Fone := TrocaCaracterEspecial(tira(tblEmpres.fieldbyname('telemp').AsString));
      IE := TrocaCaracterEspecial(tira(tblEmpres.fieldbyname('ieemp').AsString));
      IEST := TrocaCaracterEspecial(tira(tblNfe.fieldbyname('IEST').AsString));
      IM := TrocaCaracterEspecial(tira(tblempres.FieldByName('inscrmun').AsString));

      if alltrim(im)<>'' then
        CNAE := TrocaCaracterEspecial(tira(tblEmpres.FieldByName('cnae').AsString))
      else
        Cnae := '';

      CRT := iff((vvregime = 'S'), '1', iff(vvregime = 'N', '3', '2'));
    end;

    with ACBrNFe.NotasFiscais.Items[0].NFe do
    begin
      Emit.CNPJCPF          := cnpj;
      Emit.IE               := IE;
      Emit.xNome            := xNome;
      Emit.xFant            := Fant;

      Emit.EnderEmit.xLgr   := xLgr;
      Emit.EnderEmit.nro    := nro;
      Emit.EnderEmit.xCpl   := vxCpl;
      Emit.EnderEmit.xBairro:= xBairro;
      Emit.EnderEmit.cMun   := ConvInt(cMun);
      Emit.EnderEmit.xMun   := xMun;
      Emit.EnderEmit.UF     := UF;
      Emit.EnderEmit.CEP    := ConvInt(cep);
      Emit.EnderEmit.cPais  := Convint(cPais);
      Emit.EnderEmit.xPais  := xPais;
      Emit.EnderEmit.Fone   := Fone;
      Emit.IEST             := IEST;
      Emit.IM               := IM;

      Case ConvInt(CRT) of
      1: Emit.CRT := crtSimplesNacional;
      2: Emit.CRT := crtSimplesExcessoReceita;
      3: Emit.CRT := crtRegimeNormal;
      end;
    end;

    result := True;
  except on E:Exception do
  begin
    mensagem('Erro Configurando '+Tipo+' (ConfigNfeNfceAcbrEmit) '+#13+#10+e.message);
    REsult := False;
  End;
  end;
end;

Function ConfigNfeNfceAcbrDest(AcbrNfe:TAcbrNfe; Tblnfe, TblEmpres:TFDQuery; Tipo:String; validaTx2: boolean = false):Boolean;
var
tblcli:TFDQuery;
begin

  try

    if tipo='NFCE' then
    begin
      if alltrim(tira(fdmbase.tblNfce.Fieldbyname('CNPJCPF').Asstring))='' then
      begin
        Result := True;
        Exit;
      end;
    end;


    with ACBrNFe.NotasFiscais.Items[0].NFe do
    begin
      tblCli := TFDQuery.Create(nil);
      tblCli.Connection := Principal.ADConnection1;
      tblCli.Open('Select * from wbcli4 where codcli=' + tblNfe.fieldbyname('codcli').AsString);

      if not(bExportacao) then
        Dest.CNPJCPF := TrocaCaracterEspecial(tblnfe.fieldbyname('Cnpj').Asstring)
      else
        Dest.idEstrangeiro := TrocaCaracterEspecial(tblnfe.fieldbyname('Cnpj').Asstring);

      Dest.xNome             := TrocaCaracterEspecial(iff(not vvHomologacao, tblNfe.fieldbyname('xNome').AsString,
      'NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL'));
      Dest.EnderDest.xLgr    := TrocaCaracterEspecial(tblNfe.fieldbyname('xLgr').AsString);
      Dest.EnderDest.nro     := TrocaCaracterEspecial(tblNfe.fieldbyname('NRO').AsString);
      Dest.EnderDest.xCpl    := TrocaCaracterEspecial(tblnfe.fieldbyname('xCpl').asstring);
      Dest.EnderDest.xBairro := TrocaCaracterEspecial(iff(AllTrim(tblNfe.fieldbyname('xBairro').AsString) <> '',
                                tiraacento(tblNfe.fieldbyname('xBairro').AsString), 'N. Disp.'));
      Dest.EnderDest.cMun    := ConvInt(tblNfe.fieldbyname('cMun').AsString);
      Dest.EnderDest.xMun    := TrocaCaracterEspecial(tblnfe.fieldbyname('xMun').asstring);
      Dest.EnderDest.UF      := TrocaCaracterEspecial(tblnfe.fieldbyname('uf').asstring);
      Dest.EnderDest.CEP     := ConvInt(Tira(tblnfe.fieldbyname('Cep').asstring));

      if not(bExportacao) and not(bln_importacao) then
      begin
        Dest.EnderDest.cPais   := 1058;
        Dest.EnderDest.xPais   := 'BRASIL';
      end
      else
      begin
        Dest.EnderDest.cPais   := ConvInt(TBLNFE.fieldbyname('cPais').asstring);
        Dest.EnderDest.xPais   := TrocaCaracterEspecial(tblnfe.fieldbyname('xPais').asstring);
      end;

      Dest.EnderDest.Fone    := TrocaCaracterEspecial(Tira(tblnfe.fieldbyname('fone').asstring));


      Dest.indIEDest         := iff(tblnfe.fieldbyname('IndIeDest').asstring='9', inNaoContribuinte, inContribuinte);
      Dest.IE                := TrocaCaracterEspecial(Tira(tblnfe.fieldbyname('Ie').asstring));

      if tblCli.fieldbyname('suframa').AsString <> '' then
        Dest.ISUF              := TrocaCaracterEspecial(tblcli.fieldbyname('suframa').asstring);

      Dest.Email              := TrocaCaracterEspecial(tblNfe.fieldbyname('email').AsString);

      fdmbase.wbautXML.Open();
      while not fdmbase.wbautXML.eof do
      begin
        with autXML.New do
        begin
          CNPJCPF := iff(AllTrim(fdmbase.wbautXMLCnpj.AsString) <> '', fdmbase.wbautXMLCnpj.AsString, fdmbase.wbautXMLCpf.AsString);
        end;
        fdmbase.wbautXML.Next;
      end;
      fdmbase.wbautXML.Close;

      result := True;
    end;

    liberaTabela(tblCli);
  except on E:Exception do
  begin
    mensagem('Erro Configurando '+Tipo+' (ConfigNfeNfceAcbrDest) '+#13+#10+e.message);
    REsult := False;
  End;
  end;
end;

function ConfigNfeNfceAcbrDet(AcbrNfe:TAcbrNfe; tblNfe, tblEmpres, tblInfe: TFDQuery; Tipo:String; validaTx2: boolean = false): boolean;
var
  orig, cst, csosn: string;
  vTotTrib: double;
  vICMSSTRet: double;
  vpMVAST: string;
  vvInfAprod: String;
  Produto: TDetCollectionItem;
begin
  result := false;
  vvtotimpsimples := 0;
  vValorBonfificacao:=0;

  try
    tblInfe.First;
    while not(tblInfe.eof) do
    begin

      Produto := ACBrNFe.NotasFiscais.Items[0].NFe.Det.New;
      Produto.Prod.nItem := tblInfe.recno;

      vvInfAprod := '';

      if Tipo='NFE' then
      begin
        if (tblInfe.fieldbyname('vFCPST').asfloat <> 0) or (tblInfe.fieldbyname('vFCP').asfloat <> 0) then
        begin
          if tblInfe.fieldbyname('vFCP').asfloat <> 0 then
            vvInfAprod := vvInfAprod + 'Base de Calculo FCP:' + AllTrim(formata(tblInfe.fieldbyname('vBCFCP').asfloat, 15, 2)) + '|' +
              'Aliquota FCP:' + AllTrim(formata(tblInfe.fieldbyname('pFCP').asfloat, 15, 2)) + '|' +
              'Valor FCP:' + AllTrim(formata(tblInfe.fieldbyname('vFCP').asfloat, 15, 2)) + ' ';
          if tblInfe.fieldbyname('vFCPST').asfloat <> 0 then
            vvInfAprod := vvInfAprod + 'Base de Calculo FCP ST:' + AllTrim(formata(tblInfe.fieldbyname('vBCFCPST').asfloat, 15, 2)) + '|' +
              'Aliquota FCP ST=' + AllTrim(formata(tblInfe.fieldbyname('pFCPST').asfloat, 15, 2)) + '|' +
              'Valor FCP ST=' + AllTrim(formata(tblInfe.fieldbyname('vFCPST').asfloat, 15, 2)) + ' ';
        end;
      end;

      Produto.Prod.cProd := TrocaCaracterEspecial(retornaCodproConsumidor(tblInfe.fieldbyname('cProd').AsString));
      Produto.Prod.cEAN := iff(AllTrim(tblInfe.fieldbyname('cEan').AsString) <> '', AllTrim(tblInfe.fieldbyname('cEan').AsString), 'SEM GTIN');
      Produto.Prod.cEANTrib := iff(AllTrim(tblInfe.fieldbyname('cEanTrib').AsString) <> '', AllTrim(tblInfe.fieldbyname('cEanTrib').AsString),'SEM GTIN');
      Produto.Prod.xProd := TrocaCaracterEspecial(tblInfe.fieldbyname('xProd').AsString);
      Produto.Prod.NCM := TrocaCaracterEspecial(tira(tblInfe.fieldbyname('ncm').AsString));

      if (findkeySqlAD(tbClFisc, ['CODCLAS'], [tblInfe.fieldbyname('NCM').AsString], fdmbase.tblClFisc)) then
      begin
        orig := TrocaCaracterEspecial(tblInfe.fieldbyname('orig').AsString);
        cst := TrocaCaracterEspecial(tblInfe.fieldbyname('cstIcms').AsString);
        csosn := TrocaCaracterEspecial(tblInfe.fieldbyname('cstIcms').AsString);

        if (AnsiIndexStr(cst, ['10', '30', '60', '70', '90']) > -1)
          or (AnsiIndexStr(csosn, ['201', '202', '203', '500', '900']) > -1) then
        begin
          Produto.Prod.CEST := fdmbase.tblClFisc.fieldbyname('CEST').AsString;
        end;
      end;

      if (vvregime = 'N') then
      begin
        orig := TrocaCaracterEspecial(tblInfe.fieldbyname('orig').AsString);
        cst := TrocaCaracterEspecial(tblInfe.fieldbyname('cstIcms').AsString);

        if (findkeySqlAD(tbClFisc, ['CODCLAS'], [tblInfe.fieldbyname('NCM').AsString], fdmbase.tblClFisc)) then
        begin

          if AnsiIndexStr(tblEmpres.fieldbyname('estemp').AsString, ['PR', 'RJ', 'RS']) > -1 then
          begin
            if (AnsiIndexStr(cst, ['00', '10', '41', '41', '50', '60', '90']) > -1) then
              Produto.Prod.cBenef := ''
            else
            begin
              Produto.Prod.cBenef := iff(AllTrim(fdmbase.tblClFisc.fieldbyname('CBENEF').AsString) <> '', fdmbase.tblClFisc.fieldbyname('CBENEF').AsString, 'SEM CBENEF');
            end;
          end else
          begin
            if (AnsiIndexStr(cst, ['00', '10', '30', '41', '41', '50', '60', '90']) > -1) then
            begin
              Produto.Prod.cBenef := '';
            end
            else
            begin
              Produto.Prod.cBenef := fdmbase.tblClFisc.fieldbyname('CBENEF').AsString;
            end;
          end;
        end;
      end;

      Produto.Prod.CFOP := TrocaCaracterEspecial(Tira(tblInfe.fieldbyname('cfop').AsString));

      if ((tblInfe.fieldbyname('cfop').AsString='5910')or(tblInfe.fieldbyname('cfop').AsString='6910')) then
        vValorBonfificacao := vValorBonfificacao + red_cent(tblInfe.fieldbyname('vuntrib').asfloat * tblInfe.fieldbyname('qtrib').asfloat);

      Produto.Prod.uCom := TrocaCaracterEspecial(tiraacento(tblInfe.fieldbyname('uCom').AsString));
      Produto.Prod.qCom := formatvalAcbr(tblInfe.fieldbyname('qCom').asfloat, 12, 4);

      if (bln_importacao) and (bln_CalculaNFImp) then
      begin
        Produto.Prod.vUnCom := formatvalAcbr(tblInfe.fieldbyname('vUnComReais').asfloat, 26, 10);
        Produto.Prod.vUnTrib := formatvalAcbr(tblInfe.fieldbyname('vUnComReais').asfloat, 26, 10);
        Produto.Prod.vProd := formatvalAcbr(tblInfe.fieldbyname('flt_totalcif').asfloat, 15, 2);
      end else
      begin
        Produto.Prod.vUnCom := formatvalAcbr(tblInfe.fieldbyname('vUnCom').asfloat, 26, vvdecpreco);
        Produto.Prod.vUnTrib := formatvalAcbr(tblInfe.fieldbyname('vUnTrib').asfloat, 26, vvdecpreco);

        if (tblInfe.fieldbyname('vUnTrib').asfloat <> 0) and (tblInfe.fieldbyname('qTrib').asfloat <> 0) then
          Produto.Prod.vProd := formatvalAcbr(red_cent(tblInfe.fieldbyname('vuntrib').asfloat * tblInfe.fieldbyname('qtrib').asfloat), 15, 2)
        else
          Produto.Prod.vProd := formatvalAcbr(tblInfe.fieldbyname('vProd').asfloat, 15, 2);
      end;

      Produto.Prod.uTrib := TrocaCaracterEspecial(tblInfe.fieldbyname('uTrib').AsString);
      Produto.Prod.qTrib := formatvalAcbr(tblInfe.fieldbyname('qTrib').asfloat, 12, 4);

      if not(bln_importacao) and (tblInfe.fieldbyname('vFrete').asfloat > 0) then
        Produto.Prod.vFrete := formatvalAcbr(tblInfe.fieldbyname('vFrete').asfloat, 15, 2);

      if (tblInfe.fieldbyname('vSeg').asfloat > 0) then
        Produto.Prod.vSeg := formatvalAcbr(tblInfe.fieldbyname('vSeg').asfloat, 15, 2);

      if (tblInfe.fieldbyname('vDesc').asfloat > 0) then
        Produto.Prod.vDesc := formatvalAcbr(tblInfe.fieldbyname('vDesc').asfloat, 15, 2);

      if numserie = 'WP-40-0239' then
      begin
        if (findkeySqlAD(tbprod, ['empresa', 'codpro'], [iff(vvProdUni, vvProdUniEmp, vvcodemp), tblInfe.fieldbyname('cProd').AsString], fdmbase.tblProd)) then
        begin
          if AllTrim(fdmbase.tblProdfci.AsString) <> '' then
            Produto.Prod.nFCI := fdmbase.tblProdfci.AsString;
        end;
      end;

      if (bln_importacao) then
      begin
        if tblInfe.fieldbyname('flt_OutDespAcess').asfloat > 0 then
          Produto.Prod.vOutro := formatvalAcbr(tblInfe.fieldbyname('flt_OutDespAcess').asfloat, 15, 2);
      end else
      begin
        if (tblInfe.fieldbyname('vOutro').asfloat > 0) then
          Produto.Prod.vOutro := formatvalAcbr(tblInfe.fieldbyname('vOutro').asfloat, 15, 2);
      end;

      Produto.Prod.IndTot := itSomaTotalNFe{itNaoSomaTotalNFe};

      if (vvInfAprod <> '') then
        Produto.infAdProd := TrocaCaracterEspecial(vvInfAprod);

      if (bln_importacao) then
      begin
        Produto.Prod.di.New;
        Produto.Prod.di.Items[0].nDi := tblNfe.fieldbyname('nDI').AsString;
        Produto.Prod.di.Items[0].dDi := tblNfe.fieldbyname('dDI').AsDateTime;
        Produto.Prod.di.Items[0].xLocDesemb := tblNfe.fieldbyname('xLocDesemb').AsString;
        Produto.Prod.di.Items[0].UFDesemb := tblNfe.fieldbyname('UFDesemb').AsString;
        Produto.Prod.di.Items[0].dDesemb := tblNfe.fieldbyname('dDesemb').AsDateTime;

        Case tblNfe.fieldbyname('tpViaTransp').AsInteger of
        0:Produto.Prod.di.Items[0].tpViaTransp := tvMaritima;
        1:Produto.Prod.di.Items[0].tpViaTransp := tvFluvial;
        2:Produto.Prod.di.Items[0].tpViaTransp := tvLacustre;
        3:Produto.Prod.di.Items[0].tpViaTransp := tvAerea;
        4:Produto.Prod.di.Items[0].tpViaTransp := tvPostal;
        5:Produto.Prod.di.Items[0].tpViaTransp := tvFerroviaria;
        6:Produto.Prod.di.Items[0].tpViaTransp := tvRodoviaria;
        7:Produto.Prod.di.Items[0].tpViaTransp := tvConduto;
        8:Produto.Prod.di.Items[0].tpViaTransp := tvMeiosProprios;
        9:Produto.Prod.di.Items[0].tpViaTransp := tvEntradaSaidaFicta;
        10:Produto.Prod.di.Items[0].tpViaTransp := tvCourier;
        11:Produto.Prod.di.Items[0].tpViaTransp := tvEmMaos;
        12:Produto.Prod.di.Items[0].tpViaTransp := tvPorReboque;
        end;

        Case tblNfe.fieldbyname('tpIntermedio').AsInteger  of
        0:Produto.Prod.di.Items[0].tpIntermedio := tiContaPropria;
        1:Produto.Prod.di.Items[0].tpIntermedio := tiContaOrdem;
        2:Produto.Prod.di.Items[0].tpIntermedio := tiEncomenda;
        end;

        if (tblNfe.fieldbyname('vAFRMM').asfloat > 0) then
          Produto.Prod.di.Items[0].vAFRMM := formatvalAcbr(tblNfe.fieldbyname('vAFRMM').asfloat, 15, 2);

        Produto.Prod.di.Items[0].cExportador := tblNfe.fieldbyname('codcli').AsString;
        Produto.Prod.di.Items[0].adi.new;
        Produto.Prod.di.Items[0].adi[0].nAdicao := Convint(tblInfe.fieldbyname('nAdicao').AsString);
        Produto.Prod.di.Items[0].adi[0].nSeqAdi := ConvInt(tblInfe.fieldbyname('nSeqAdic').AsString);
        Produto.Prod.di.Items[0].adi[0].cFabricante := tblInfe.fieldbyname('cProd').AsString;
      end;

      if (tblInfe.fieldbyname('cfop').AsString = '7501') then
      begin
        Produto.Prod.detExport.New;
        Produto.Prod.detExport.Items[0].nRE := tblInfe.fieldbyname('ExpInd_nRE').AsString;
        Produto.Prod.detExport.Items[0].chNFe := tblInfe.fieldbyname('ExpInd_chNFe').AsString;
        Produto.Prod.detExport.Items[0].qExport := formatvalAcbr(tblInfe.fieldbyname('qCom').asfloat, 11, 4);
      end;

      if (AllTrim(tblInfe.fieldbyname('xPed').AsString) <> '') and (AllTrim(tblInfe.fieldbyname('nItemPed').AsString) <> '') then
      begin
        Produto.Prod.xPed := tblInfe.fieldbyname('xPed').AsString;
        Produto.Prod.nItemPed := tblInfe.fieldbyname('nItemPed').AsString;
      end;

      if numserie = 'WP-40-0239' then
      begin
        if (findkeySqlAD(tbprod, ['empresa', 'codpro'], [iff(vvProdUni, vvProdUniEmp, vvcodemp), tblInfe.fieldbyname('cProd').AsString], fdmbase.tblProd)) then
        begin
          if AllTrim(fdmbase.tblProdfci.AsString) <> '' then
            Produto.infAdProd := TrocaCaracterEspecial('Numero ' + fdmbase.tblProdfci.AsString);
        end;
      end else
      begin
        if (tblInfe.fieldbyname('infAdProd').AsString <> '') then
          Produto.infAdProd := TrocaCaracterEspecial(tblInfe.fieldbyname('infAdProd').AsString);
      end;

      if (vvregime = 'N') or (vvregime = '2') then
      begin
        orig := TrocaCaracterEspecial(tblInfe.fieldbyname('orig').AsString);
        cst := TrocaCaracterEspecial(tblInfe.fieldbyname('cstIcms').AsString);

        Case Convint(orig) of
        0:Produto.Imposto.ICMS.orig := oeNacional;
        1:Produto.Imposto.ICMS.orig := oeEstrangeiraImportacaoDireta;
        2:Produto.Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasil;
        3:Produto.Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior40;
        4:Produto.Imposto.ICMS.orig := oeNacionalProcessosBasicos;
        5:Produto.Imposto.ICMS.orig := oeNacionalConteudoImportacaoInferiorIgual40;
        6:Produto.Imposto.ICMS.orig := oeEstrangeiraImportacaoDiretaSemSimilar;
        7:Produto.Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior70;
        8:Produto.Imposto.ICMS.orig := oeReservadoParaUsoFuturo;
        9:Produto.Imposto.ICMS.orig := oeVazio;
        end;

        if Cst='00' then      Produto.Imposto.ICMS.CST := cst00
        else if Cst='10' then Produto.Imposto.ICMS.CST := cst10
        else if Cst='20' then Produto.Imposto.ICMS.CST := cst20
        else if Cst='30' then Produto.Imposto.ICMS.CST := cst30
        else if Cst='40' then Produto.Imposto.ICMS.CST := cst40
        else if Cst='41' then Produto.Imposto.ICMS.CST := cst41
        else if Cst='50' then Produto.Imposto.ICMS.CST := cst50
        else if Cst='51' then Produto.Imposto.ICMS.CST := cst51
        else if Cst='60' then Produto.Imposto.ICMS.CST := cst60
        else if Cst='70' then Produto.Imposto.ICMS.CST := cst70
        else if Cst='90' then Produto.Imposto.ICMS.CST := cst90;

        if (AnsiIndexStr(cst, ['00', '10', '20', '51', '70', '90']) > -1) then
        begin
          //TpcnDeterminacaoBaseIcms = (dbiMargemValorAgregado, dbiPauta, dbiPrecoTabelado, dbiValorOperacao, dbiNenhum);
          Produto.Imposto.ICMS.modBC := dbiValorOperacao;
          Produto.Imposto.ICMS.vBC := formatvalAcbr(tblInfe.fieldbyname('vBC').asfloat, 15, 2);
          Produto.Imposto.ICMS.pICMS := formatvalAcbr(tblInfe.fieldbyname('pICMS').asfloat, 5, 2);
          Produto.Imposto.ICMS.vICMS := formatvalAcbr(tblInfe.fieldbyname('vICMS').asfloat, 15, 2);
        end;

        if not((tblNfe.fieldbyname('indFinal').AsInteger = 1) and (numserie = 'WP-40-0294')) then
        begin
          if (AnsiIndexStr(cst, ['00', '10', '20', '51', '70', '90']) > -1) then
          begin
            if tblInfe.fieldbyname('pFCP').asfloat <> 0 then
            begin
              if (AnsiIndexStr(cst, ['10', '20', '51', '70', '90']) > -1) then
                Produto.Imposto.ICMS.vBCFCP := formatvalAcbr(tblInfe.fieldbyname('vBCFCP').asfloat, 15, 2);
              if (tblNfe.fieldbyname('idDest').AsString = '2') and (tblNfe.fieldbyname('indFinal').AsInteger = 1) and (tblNfe.fieldbyname('IndIeDest').AsInteger = 9) then
              else
              begin

                Produto.Imposto.ICMS.pFCP := formatvalAcbr(tblInfe.fieldbyname('pFCP').asfloat, 5, 2);
                Produto.Imposto.ICMS.vFCP := formatvalAcbr(tblInfe.fieldbyname('vFCP').asfloat, 15, 2);
              end;
            end;
          end;
        end;

        if (AnsiIndexStr(cst, ['10', '30', '70', '90']) > -1) then
        begin
          if tblInfe.fieldbyname('pFCPST').asfloat <> 0 then
          begin
            Produto.Imposto.ICMS.vBCFCPST := formatvalAcbr(tblInfe.fieldbyname('vBCFCPST').asfloat, 15, 2);
            Produto.Imposto.ICMS.pFCPST := formatvalAcbr(tblInfe.fieldbyname('pFCPST').asfloat, 5, 2);
            Produto.Imposto.ICMS.vFCPST := formatvalAcbr(tblInfe.fieldbyname('vFCPST').asfloat, 15, 2);
          end;
        end;

        if tipo='NFE' then
        begin

          if (AnsiIndexStr(cst, ['10', '30', '70', '90']) > -1) then
          begin
            if tblInfe.fieldbyname('modbcst').AsInteger <> 0 then
            begin
              Produto.Imposto.ICMS.modBCST := dbisMargemValorAgregado;
              Produto.Imposto.ICMS.pMVAST := formatvalAcbr(tblInfe.fieldbyname('pMVAST').asfloat, 6, 2);
            end else
            begin
  //            TpcnDeterminacaoBaseIcmsST = (dbisPrecoTabelado, dbisListaNegativa,
  //                                          dbisListaPositiva, dbisListaNeutra,
  //                                          dbisMargemValorAgregado, dbisPauta,
  //                                          dbisValordaOperacao);
              Produto.Imposto.ICMS.modBCST := dbisPrecoTabelado;
            end;

            if (bln_complementar) then
              Produto.Imposto.ICMS.vBCST := formatvalAcbr(tblInfe.fieldbyname('pRedBCST').asfloat, 15, 2)
            else
            begin
              Produto.Imposto.ICMS.vBCST := formatvalAcbr(tblInfe.fieldbyname('vBCST').asfloat, 15, 2);
              Produto.Imposto.ICMS.pRedBCST := formatvalAcbr(tblInfe.fieldbyname('pRedBCST').asfloat, 8, 4);
            end;

            Produto.Imposto.ICMS.pICMSST := formatvalAcbr(tblInfe.fieldbyname('pICMSST').asfloat, 5, 2);
            Produto.Imposto.ICMS.vICMSST := formatvalAcbr(tblInfe.fieldbyname('vICMSST').asfloat, 15, 2);
          end;

          if (AnsiIndexStr(cst, ['20', '51', '70']) > -1) then
            if not (bln_complementar) then
              Produto.Imposto.ICMS.pRedBC := formatvalAcbr(tblInfe.fieldbyname('pRedBC').asfloat, 15, 4);

          if (AnsiIndexStr(cst, ['51']) > -1) then
          begin
            Produto.Imposto.ICMS.vICMSOp := formatvalAcbr(tblInfe.fieldbyname('vICMSOp').asfloat, 15, 2);
            Produto.Imposto.ICMS.pDif := formatvalAcbr(tblInfe.fieldbyname('pDif').asfloat, 6, 2);
            Produto.Imposto.ICMS.vICMSDif := formatvalAcbr(tblInfe.fieldbyname('vICMSDif').asfloat, 15, 2);
          end;
        end;

        if (AnsiIndexStr(cst, ['60']) > -1) then
        begin
          Produto.Imposto.ICMS.vBCSTRet := formatvalAcbr(0, 5, 2);
          Produto.Imposto.ICMS.pST := formatvalAcbr(0, 5, 2);
          Produto.Imposto.ICMS.vICMSSubstituto := formatvalAcbr(0, 5, 2);
          Produto.Imposto.ICMS.vICMSSTRet := formatvalAcbr(vICMSSTRet, 15, 2);
        end;

        if (AnsiIndexStr(cst, ['20', '30', '40', '41', '50', '51', '70', '90']) > -1) and (tblInfe.fieldbyname('icmsdeson').asfloat <> 0) then
        begin

          Produto.Imposto.ICMS.vICMSDeson := formatvalAcbr(tblInfe.fieldbyname('icmsdeson').asfloat, 15, 2);

          case Convint(tblInfe.fieldbyname('motDesICMS').AsString) of
            0 : Produto.Imposto.ICMS.motDesICMS := mdiTaxi;
            1 : Produto.Imposto.ICMS.motDesICMS := mdiDeficienteFisico;
            2 : Produto.Imposto.ICMS.motDesICMS := mdiProdutorAgropecuario;
            3 : Produto.Imposto.ICMS.motDesICMS := mdiFrotistaLocadora;
            4 : Produto.Imposto.ICMS.motDesICMS := mdiDiplomaticoConsular;
            5 : Produto.Imposto.ICMS.motDesICMS := mdiAmazoniaLivreComercio;
            6 : Produto.Imposto.ICMS.motDesICMS := mdiSuframa;
            7 : Produto.Imposto.ICMS.motDesICMS := mdiVendaOrgaosPublicos;
            8 : Produto.Imposto.ICMS.motDesICMS := mdiOutros;
            9 : Produto.Imposto.ICMS.motDesICMS := mdiDeficienteCondutor;
            10 : Produto.Imposto.ICMS.motDesICMS := mdiDeficienteNaoCondutor;
            11 : Produto.Imposto.ICMS.motDesICMS := mdiOrgaoFomento;
            12 : Produto.Imposto.ICMS.motDesICMS := mdiOlimpiadaRio2016;
            13 : Produto.Imposto.ICMS.motDesICMS := mdiSolicitadoFisco;
          end;

          if tblInfe.fieldbyname('motDesICMS').AsString = '7' then
            Produto.Imposto.ICMS.indDeduzDeson := tieNenhum;
        end;

      end else
      begin

        orig := TrocaCaracterEspecial(tblInfe.fieldbyname('orig').AsString);
        csosn := TrocaCaracterEspecial(tblInfe.fieldbyname('cstIcms').AsString);

        Case Convint(orig) of
        0:Produto.Imposto.ICMS.orig := oeNacional;
        1:Produto.Imposto.ICMS.orig := oeEstrangeiraImportacaoDireta;
        2:Produto.Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasil;
        3:Produto.Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior40;
        4:Produto.Imposto.ICMS.orig := oeNacionalProcessosBasicos;
        5:Produto.Imposto.ICMS.orig := oeNacionalConteudoImportacaoInferiorIgual40;
        6:Produto.Imposto.ICMS.orig := oeEstrangeiraImportacaoDiretaSemSimilar;
        7:Produto.Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior70;
        8:Produto.Imposto.ICMS.orig := oeReservadoParaUsoFuturo;
        9:Produto.Imposto.ICMS.orig := oeVazio;
        end;

        if Cst='201' then      Produto.Imposto.ICMS.CSOSN   := csosn201
        else if Cst='101' then Produto.Imposto.ICMS.CSOSN   := csosn101
        else if Cst='201' then Produto.Imposto.ICMS.CSOSN   := csosn201
        else if Cst='202' then Produto.Imposto.ICMS.CSOSN   := csosn202
        else if Cst='203' then Produto.Imposto.ICMS.CSOSN   := csosn203
        else if Cst='500' then Produto.Imposto.ICMS.CSOSN   := csosn500
        else if Cst='900' then Produto.Imposto.ICMS.CSOSN   := csosn900;

        if (AnsiIndexStr(csosn, ['201', '202', '203', '900']) > -1) then
        begin
          Produto.Imposto.ICMS.modBCST := dbisMargemValorAgregado;
          Produto.Imposto.ICMS.pMVAST := formatvalAcbr(tblInfe.fieldbyname('pMVAST').asfloat, 6, 2);
          if (bln_complementar) then
            Produto.Imposto.ICMS.vBCST := formatvalAcbr(tblInfe.fieldbyname('pRedBCST').asfloat, 15, 2)
          else
          begin
            Produto.Imposto.ICMS.pRedBCST := formatvalAcbr(tblInfe.fieldbyname('pRedBCST').asfloat, 8, 4);
            Produto.Imposto.ICMS.vBCST := formatvalAcbr(tblInfe.fieldbyname('vBCST').asfloat, 15, 2);
          end;

          Produto.Imposto.ICMS.pICMSST := formatvalAcbr(tblInfe.fieldbyname('pICMSST').asfloat, 5, 2);
          Produto.Imposto.ICMS.vICMSST := formatvalAcbr(tblInfe.fieldbyname('vICMSST').asfloat, 15, 2);
        end;

        if (AnsiIndexStr(csosn, ['101', '201', '900']) > -1) then
        begin
          Produto.Imposto.ICMS.pCredSN := formatvalAcbr(tblInfe.fieldbyname('pCredSN').asfloat, 5, 2);
          Produto.Imposto.ICMS.vCredICMSSN := formatvalAcbr(tblInfe.fieldbyname('vCredICMSSN').asfloat, 15, 2);
        end;

        if (AnsiIndexStr(csosn, ['500']) > -1) then
        begin
          Produto.Imposto.ICMS.vBCSTRet := formatvalAcbr(0, 15, 2);
          Produto.Imposto.ICMS.pST := formatvalAcbr(0, 5, 2);
          Produto.Imposto.ICMS.vICMSSubstituto := formatvalAcbr(0, 5, 2);
          Produto.Imposto.ICMS.vICMSSTRet := formatvalAcbr(vICMSSTRet, 15, 2);
        end;

        if (AnsiIndexStr(csosn, ['900']) > -1) then
        begin
          Produto.Imposto.ICMS.modBC := dbiValorOperacao;
          Produto.Imposto.ICMS.vBC := formatvalAcbr(tblInfe.fieldbyname('vBC').asfloat, 15, 2);
          Produto.Imposto.ICMS.pRedBC := formatvalAcbr(tblInfe.fieldbyname('pRedBC').asfloat, 7, 4);
          Produto.Imposto.ICMS.pICMS := formatvalAcbr(tblInfe.fieldbyname('pICMS').asfloat, 5, 2);
          Produto.Imposto.ICMS.vICMS := formatvalAcbr(tblInfe.fieldbyname('vICMS').asfloat, 15, 2);
        end;

        if tblInfe.fieldbyname('pFCPST').asfloat <> 0 then
        begin
          Produto.Imposto.ICMS.vBCFCPST := formatvalAcbr(tblInfe.fieldbyname('vBCFCPST').asfloat, 15, 2);
          Produto.Imposto.ICMS.pFCPST := formatvalAcbr(tblInfe.fieldbyname('pFCPST').asfloat, 5, 2);
          Produto.Imposto.ICMS.vFCPST := formatvalAcbr(tblInfe.fieldbyname('vFCPST').asfloat, 15, 2);
        end;
      end;

      if not(tblNfe.fieldbyname('destacaDifal').AsString = 'N')
        and ((tblNfe.fieldbyname('indFinal').AsInteger = 1)
        or ((tblNfe.fieldbyname('UF').AsString = 'RJ') and (numserie = 'WP-40-0128')))
        and (tblNfe.fieldbyname('UF').AsString <> upperCase(tblEmpres.fieldbyname('estemp').AsString)) then
      begin
        Produto.Imposto.ICMSUFDest.vBCUFDest := formatvalAcbr(tblInfe.fieldbyname('vBCUFDest').asfloat, 15, 2);
        Produto.Imposto.ICMSUFDest.vBCFCPUFDest := formatvalAcbr(tblInfe.fieldbyname('vBCUFDest').asfloat, 15, 2);
        Produto.Imposto.ICMSUFDest.pFCPUFDest := formatvalAcbr(tblInfe.fieldbyname('pFCPUFDest').asfloat, 15, 2);
        Produto.Imposto.ICMSUFDest.pICMSUFDest := formatvalAcbr(tblInfe.fieldbyname('pICMSUFDest').asfloat, 15, 2);
        Produto.Imposto.ICMSUFDest.pICMSInter := formatvalAcbr(tblInfe.fieldbyname('pICMSInter').asfloat, 15, 2);
        Produto.Imposto.ICMSUFDest.pICMSInterPart := formatvalAcbr(tblInfe.fieldbyname('pICMSInterPart').asfloat, 15, 2);
        Produto.Imposto.ICMSUFDest.vFCPUFDest := formatvalAcbr(tblInfe.fieldbyname('vFCPUFDest').asfloat, 15, 2);
        Produto.Imposto.ICMSUFDest.vICMSUFDest := formatvalAcbr(tblInfe.fieldbyname('vICMSUFDest').asfloat, 15, 2);
        Produto.Imposto.ICMSUFDest.vICMSUFRemet := formatvalAcbr(tblInfe.fieldbyname('vICMSUFRemet').asfloat, 15, 2);
      end;

      if tipo='NFE' then
      begin
        if ((tblNfe.fieldbyname('tpNF').AsInteger = 1) and (tblEmpres.fieldbyname('ContribuinteIPI').AsString <> 'Não'))
          or ((tblNfe.fieldbyname('tpNF').AsInteger = 0) and (tblEmpres.fieldbyname('ContribuinteIPICompra').AsString <> 'Não')) then
        begin
          cst := TrocaCaracterEspecial(tblInfe.fieldbyname('cstIpi').AsString);

          if (cst = '') then
            cst := iff(ytiprel = 'C', '01', '51');

          if cst='00' then      Produto.Imposto.IPI.CST := ipi00
          else if cst='49' then Produto.Imposto.IPI.CST := ipi49
          else if cst='50' then Produto.Imposto.IPI.CST := ipi50
          else if cst='99' then Produto.Imposto.IPI.CST := ipi99
          else if cst='01' then Produto.Imposto.IPI.CST := ipi01
          else if cst='02' then Produto.Imposto.IPI.CST := ipi02
          else if cst='03' then Produto.Imposto.IPI.CST := ipi03
          else if cst='04' then Produto.Imposto.IPI.CST := ipi04
          else if cst='05' then Produto.Imposto.IPI.CST := ipi05
          else if cst='49' then Produto.Imposto.IPI.CST := ipi49
          else if cst='50' then Produto.Imposto.IPI.CST := ipi50
          else if cst='51' then Produto.Imposto.IPI.CST := ipi51
          else if cst='52' then Produto.Imposto.IPI.CST := ipi52
          else if cst='53' then Produto.Imposto.IPI.CST := ipi53
          else if cst='54' then Produto.Imposto.IPI.CST := ipi54
          else if cst='99' then Produto.Imposto.IPI.CST := ipi99
          else if cst='55' then Produto.Imposto.IPI.CST := ipi55;

          Produto.Imposto.IPI.cEnq := tblInfe.fieldbyname('cEnq').AsString;

          if (AnsiIndexStr(cst, ['00', '49', '50', '99']) > -1) then
          begin
            if bln_complementar then
              Produto.Imposto.IPI.vBC := formatvalAcbr(tblInfe.fieldbyname('pPis').asfloat, 15, 2)
            else
              Produto.Imposto.IPI.vBC := formatvalAcbr(tblInfe.fieldbyname('vBcIpi').asfloat, 15, 2);

            Produto.Imposto.IPI.pIPI := formatvalAcbr(tblInfe.fieldbyname('pIpi').asfloat, 15, 2);
            Produto.Imposto.IPI.vIPI := formatvalAcbr(tblInfe.fieldbyname('vIpi').asfloat, 15, 2);
          end;

        end;

      end;

      // bloco Q - PIS
      cst := TrocaCaracterEspecial(tblInfe.fieldbyname('cstPis').AsString);

      if (cst = '') then
        cst := '07';

      if cst='01' then      Produto.Imposto.Pis.CST := pis01
      else if cst='02' then Produto.Imposto.Pis.CST := pis02
      else if cst='03' then Produto.Imposto.Pis.CST := pis03
      else if cst='04' then Produto.Imposto.Pis.CST := pis04
      else if cst='05' then Produto.Imposto.Pis.CST := pis05
      else if cst='06' then Produto.Imposto.Pis.CST := pis06
      else if cst='07' then Produto.Imposto.Pis.CST := pis07
      else if cst='08' then Produto.Imposto.Pis.CST := pis08
      else if cst='09' then Produto.Imposto.Pis.CST := pis09
      else if cst='49' then Produto.Imposto.Pis.CST := pis49
      else if cst='50' then Produto.Imposto.Pis.CST := pis50
      else if cst='51' then Produto.Imposto.Pis.CST := pis51
      else if cst='52' then Produto.Imposto.Pis.CST := pis52
      else if cst='53' then Produto.Imposto.Pis.CST := pis53
      else if cst='54' then Produto.Imposto.Pis.CST := pis54
      else if cst='55' then Produto.Imposto.Pis.CST := pis55
      else if cst='56' then Produto.Imposto.Pis.CST := pis56
      else if cst='60' then Produto.Imposto.Pis.CST := pis60
      else if cst='61' then Produto.Imposto.Pis.CST := pis61
      else if cst='62' then Produto.Imposto.Pis.CST := pis62
      else if cst='63' then Produto.Imposto.Pis.CST := pis63
      else if cst='64' then Produto.Imposto.Pis.CST := pis64
      else if cst='65' then Produto.Imposto.Pis.CST := pis65
      else if cst='66' then Produto.Imposto.Pis.CST := pis66
      else if cst='67' then Produto.Imposto.Pis.CST := pis67
      else if cst='70' then Produto.Imposto.Pis.CST := pis70
      else if cst='71' then Produto.Imposto.Pis.CST := pis71
      else if cst='72' then Produto.Imposto.Pis.CST := pis72
      else if cst='73' then Produto.Imposto.Pis.CST := pis73
      else if cst='74' then Produto.Imposto.Pis.CST := pis74
      else if cst='75' then Produto.Imposto.Pis.CST := pis75
      else if cst='98' then Produto.Imposto.Pis.CST := pis98
      else if cst='99' then Produto.Imposto.Pis.CST := pis99;

      if (AnsiIndexStr(cst, ['01', '02', '49', '50', '51', '52', '53', '54', '55', '56', '60', '61', '62', '63', '64', '65', '66', '67', '70', '71', '72', '73',
        '74', '75', '98', '99']) > -1) then
      begin
        Produto.Imposto.pis.vBC := formatvalAcbr(tblInfe.fieldbyname('vBcPis').asfloat, 15, 2);

        if bln_complementar then
          Produto.Imposto.pis.pPIS := formatvalAcbr(0, 5, 2)
        else
          Produto.Imposto.pis.pPIS := formatvalAcbr(tblInfe.fieldbyname('pPis').asfloat, 5, 2);

        Produto.Imposto.pis.vPIS := formatvalAcbr(tblInfe.fieldbyname('vPis').asfloat, 15, 2);
      end
      else if (AnsiIndexStr(cst, ['03']) > -1) then
      begin
        Produto.Imposto.pis.qBCProd := formatvalAcbr(tblInfe.fieldbyname('qTrib').asfloat, 15, 2);
        Produto.Imposto.pis.vAliqProd := formatvalAcbr(tblInfe.fieldbyname('pPis').asfloat, 12, 2);
        Produto.Imposto.pis.vPIS := formatvalAcbr(tblInfe.fieldbyname('vPis').asfloat, 15, 2);
      end;

      // bloco S - Cofins
      cst := TrocaCaracterEspecial(tblInfe.fieldbyname('cstCofins').AsString);

      if (cst = '') then
        cst := '07';

      if (AnsiIndexStr(cst, ['01', '02', '49', '50', '51', '52', '53', '54', '55', '56', '60', '61', '62', '63', '64', '65', '66', '67', '70', '71', '72', '73',
        '74', '75', '98', '99']) > -1) then
      begin
        Produto.Imposto.Cofins.vBC := formatvalAcbr(tblInfe.fieldbyname('vBCCofins').asfloat, 15, 2);

        if bln_complementar then
          Produto.Imposto.Cofins.pCOFINS := formatvalAcbr(0, 5, 2)
        else
          Produto.Imposto.Cofins.pCOFINS := formatvalAcbr(tblInfe.fieldbyname('pCofins').asfloat, 5, 2);

        Produto.Imposto.Cofins.vCOFINS := formatvalAcbr(tblInfe.fieldbyname('vCofins').asfloat, 15, 2);
      end
      else if (AnsiIndexStr(cst, ['03']) > -1) then
      begin

        Produto.Imposto.Cofins.qBCProd := formatvalAcbr(tblInfe.fieldbyname('QTRIB').asfloat, 15, 2);
        Produto.Imposto.Cofins.vAliqProd := formatvalAcbr(tblInfe.fieldbyname('pCofins').asfloat, 12, 2);
        Produto.Imposto.Cofins.vCOFINS := formatvalAcbr(tblInfe.fieldbyname('vCofins').asfloat, 15, 2);
      end;

      if (bln_importacao) then
      begin
        if bln_CalculaNFImp then
          Produto.Imposto.II.vBc := formatvalAcbr(tblInfe.fieldbyname('flt_totalCif').asfloat, 15, 2)
        else if (bln_complementar) then
          Produto.Imposto.II.vBc := formatvalAcbr(tblInfe.fieldbyname('flt_vIIBase').asfloat, 15, 2)
        else
          Produto.Imposto.II.vBc := formatvalAcbr(tblInfe.fieldbyname('vProd').asfloat, 15, 2);

        Produto.Imposto.II.vDespAdu := 0.00;
        Produto.Imposto.II.vII := formatvalAcbr(tblInfe.fieldbyname('flt_IIValor').asfloat, 15, 2);
        Produto.Imposto.II.vIOF := 0.00;
      end;

      if numserie = 'WP-40-0085' then
      begin
        vTotTrib := red_unit(red_cent(tblInfe.fieldbyname('vProd').asfloat / 100 * fdmbase.tblClFisc.fieldbyname(iff(orig = '0', 'aliqnac', 'aliqimp')).asfloat), 2);
        if vTotTrib = 0 then
          vTotTrib := tblInfe.fieldbyname('vTotTribFed').asfloat + tblInfe.fieldbyname('vTotTribEst').asfloat + tblInfe.fieldbyname('vTotTribMun').asfloat;

        Produto.Imposto.vTotTrib := formatvalAcbr(vTotTrib, 15, 2);
        vvtotimpsimples := vvtotimpsimples + vTotTrib;

      end
      else
        if (tblEmpres.fieldbyname('Optativo').AsString = 'S') then
        begin
          vTotTrib := tblInfe.fieldbyname('vTotTribFed').asfloat + tblInfe.fieldbyname('vTotTribEst').asfloat + tblInfe.fieldbyname('vTotTribMun').asfloat;
          Produto.Imposto.vTotTrib := formatvalAcbr(vTotTrib, 15, 2);
        end;

      if tblNfe.fieldbyname('FINNFE').AsString = '4' then
      begin
        Produto.pDevol := formatvalAcbr(100, 15, 2);
        Produto.vIPIDevol := formatvalAcbr(tblInfe.fieldbyname('vIPIDevol').asfloat, 13, 2);
      end;

      {$region 'Reforma Tributária Fase 1'}
      if vvReformaTributariaNfe then
      begin
        if tipo='NFE' then
        begin
          REsult := MontaTx2REfTribAcbr(tblnfe, tblinfe, Produto);
          if Not Result then
            Exit;
        end else if tipo='NFCE' then
        begin
          Result := MontaTx2REfTribNfceAcbr(tblnfe, tblinfe, Produto);
          if Not Result then
            Exit;
        end;
      end;
      {$endregion 'Reforma Tributária Fase 1'}

      application.ProcessMessages;
      tblInfe.Next;
    end;

    result := True;
    except on E:Exception do
    begin
      mensagem('Erro Configurando '+Tipo+' (ConfigNfeNfceAcbrDet) '+#13+#10+e.message);
      REsult := False;
    End;
    end;
end;


function ConfigNfeNfceAcbrTotal(AcbrNfe:TAcbrNfe; tblNfe, tblEmpres, tblInfe: TFDQuery; Tipo:String): boolean;
var
  vBC, vICMS, vICMSDeson, vBCST, vST, vProd, vFrete, vSeg: double;
  vDesc, vII, vIPI, vPIS, vCofins, vOutro, vNF, vTotTrib: double;
  vFCPUFDest, vICMSUFDest, vICMSUFRemet: double;
  vFCPST, vFCP, vIPIDevol: double;
begin
  try
    tblInfe.First;

    while not(tblInfe.eof) do
    begin
      vBC := vBC + tblInfe.fieldbyname('vBC').asfloat;
      vICMS := vICMS + tblInfe.fieldbyname('vICMS').asfloat;
      vICMSDeson := vICMSDeson + tblInfe.fieldbyname('ICMSDeson').asfloat;
      vICMSDeson := vICMSDeson + 0;

      if (bln_complementar) then
        vBCST := vBCST + tblInfe.fieldbyname('pRedBCST').asfloat
      else
        vBCST := vBCST + tblInfe.fieldbyname('vBCST').asfloat;

      vST := vST + tblInfe.fieldbyname('vICMSST').asfloat;
      vFCPST := vFCPST + tblInfe.fieldbyname('vFCPST').asfloat;

      if numserie = 'WP-40-0294' then
      begin
        if (tblNfe.fieldbyname('indFinal').AsInteger = 0) then
          vFCP := vFCP + tblInfe.fieldbyname('vFCP').asfloat;
      end else
        vFCP := vFCP + tblInfe.fieldbyname('vFCP').asfloat;

      if (bln_importacao) then
      begin
        if bln_CalculaNFImp then
          vProd := vProd + red_cent(tblInfe.fieldbyname('flt_totalCif').asfloat)
        else
          vProd := vProd + red_cent(tblInfe.fieldbyname('vprod').asfloat);
        vOutro := vOutro + red_cent(tblInfe.fieldbyname('flt_OutDespAcess').asfloat);
        vFrete := 0;
      end else
      begin
        vProd := vProd + tblInfe.fieldbyname('vProd').asfloat;
        vOutro := vOutro + tblInfe.fieldbyname('vOutro').asfloat;
        vFrete := vFrete + tblInfe.fieldbyname('vFrete').asfloat;
      end;

      vSeg := vSeg + tblInfe.fieldbyname('vSeg').asfloat;
      vDesc := vDesc + tblInfe.fieldbyname('vDesc').asfloat;
      vII := vII + tblInfe.fieldbyname('flt_IIValor').asfloat;;
      vIPI := vIPI + tblInfe.fieldbyname('vIPI').asfloat;

      if tblNfe.fieldbyname('FINNFE').AsString = '4' then
        vIPIDevol := vIPIDevol + tblInfe.fieldbyname('vIPIDevol').asfloat;

      vPIS := vPIS + red_cent(tblInfe.fieldbyname('vPIS').asfloat);
      vCofins := vCofins + red_cent(tblInfe.fieldbyname('vCofins').asfloat);

      if not(tblNfe.fieldbyname('destacaDifal').AsString = 'N')
        and ((tblNfe.fieldbyname('indFinal').AsInteger = 1)
        or ((tblNfe.fieldbyname('UF').AsString = 'RJ') and (numserie = 'WP-40-0128')))
        and (tblNfe.fieldbyname('UF').AsString <> upperCase(tblEmpres.fieldbyname('estemp').AsString)) then
      begin
        vFCPUFDest := vFCPUFDest + tblInfe.fieldbyname('vFCPUFDest').asfloat;
        vICMSUFDest := vICMSUFDest + tblInfe.fieldbyname('vICMSUFDest').asfloat;
        vICMSUFRemet := vICMSUFRemet + tblInfe.fieldbyname('vICMSUFRemet').asfloat;
      end;

      vTotTrib := vTotTrib + tblInfe.fieldbyname('vTotTribFed').asfloat;
      vTotTrib := vTotTrib + tblInfe.fieldbyname('vTotTribEst').asfloat;
      vTotTrib := vTotTrib + tblInfe.fieldbyname('vTotTribMun').asfloat;

      application.ProcessMessages;
      tblInfe.Next;
    end;

    if bln_importacao then
      vNF := vNF + vProd + vOutro + vIPI + tblNfe.fieldbyname('vAFRMM').asfloat
    else
      vNF := vNF + vProd - vDesc + vST + vFrete + vSeg + vOutro + vII + vIPI - iff(tblNfe.fieldbyname('TIRAICMSDESONTOTAL').AsString = 'S', vICMSDeson, 0) + vFCPST + vIPIDevol;

    with ACBrNFe.NotasFiscais.Items[0].NFe do
    begin
      Total.ICMSTot.vBC := formatvalAcbr(vBC, 15, 2);
      Total.ICMSTot.vICMS := formatvalAcbr(vICMS, 15, 2);
      Total.ICMSTot.vICMSDeson := formatvalAcbr(vICMSDeson, 15, 2);

      if not(tblNfe.fieldbyname('destacaDifal').AsString = 'N')
        and ((tblNfe.fieldbyname('indFinal').AsInteger = 1)
        or ((tblNfe.fieldbyname('UF').AsString = 'RJ') and (numserie = 'WP-40-0128')))
        and (tblNfe.fieldbyname('UF').AsString <> upperCase(tblEmpres.fieldbyname('estemp').AsString)) then
      begin
        Total.ICMSTot.vFCPUFDest := formatvalAcbr(vFCPUFDest, 15, 2);
        Total.ICMSTot.vICMSUFDest := formatvalAcbr(vICMSUFDest, 15, 2);
        Total.ICMSTot.vICMSUFRemet := formatvalAcbr(vICMSUFRemet, 15, 2);
      end;

      Total.ICMSTot.vBCST := formatvalAcbr(vBCST, 15, 2);
      Total.ICMSTot.vST := formatvalAcbr(vST, 15, 2);
      Total.ICMSTot.vProd := formatvalAcbr(vProd, 15, 2);
      Total.ICMSTot.vFrete := formatvalAcbr(vFrete, 15, 2);
      Total.ICMSTot.vSeg := formatvalAcbr(vSeg, 15, 2);
      Total.ICMSTot.vDesc := formatvalAcbr(vDesc, 15, 2);
      Total.ICMSTot.vII := formatvalAcbr(vII, 15, 2);
      Total.ICMSTot.vIPI := formatvalAcbr(vIPI, 15, 2);
      Total.ICMSTot.vPIS := formatvalAcbr(vPIS, 15, 2);
      Total.ICMSTot.vCOFINS := formatvalAcbr(vCofins, 15, 2);
      Total.ICMSTot.vOutro := formatvalAcbr(vOutro, 15, 2);
      Total.ICMSTot.vNF := formatvalAcbr(vNF, 15, 2);

      if (tblEmpres.fieldbyname('Optativo').AsString = 'S') then
      begin
        if numserie = 'WP-40-0085' then
        begin
          if vvtotimpsimples <> 0 then
            Total.ICMSTot.vTotTrib := iff(tblEmpres.fieldbyname('optativo').AsString = 'S', formatvalAcbr(vvtotimpsimples, 15, 2), '0.00')
          else
            Total.ICMSTot.vTotTrib := formatvalAcbr(vTotTrib, 15, 2);
        end else
          Total.ICMSTot.vTotTrib := formatvalAcbr(vTotTrib, 15, 2);
      end;

      {$region 'Reforma Tributária Fase 1'}
      if vvReformaTributariaNfe then
      begin
        if tipo='NFE' then
          REsult := MontaTx2REfTribTotaisAcbr(tblnfe, tblinfe, AcbrNfe)
        else
          result := MontaTx2REfTribTotaisAcbrNfce(tblnfe, tblinfe, AcbrNfe);

        if Not Result then
          Exit;
      end;
      {$endregion 'Reforma Tributária Fase 1'}

      result := True;
    end;
  except on E:Exception do
  begin
    mensagem('Erro Configurando '+Tipo+' (ConfigNfeNfceAcbrTotal) '+#13+#10+e.message);
    REsult := False;
  End;
  end;

end;

function ConfigNfeNfceAcbrTransp(AcbrNfe:TAcbrNfe; tblNfe, tblEmpres: TFDQuery; Tipo:String): boolean;
begin
  result := false;
  try

    with ACBrNFe.NotasFiscais.Items[0].NFe do
    begin

      if tipo='NFCE' then
      begin
        Transp.modFrete := mfSemFrete;
        REsult := True;
        Exit;
      end;

      Case ConvInt(tblNfe.fieldbyname('modFrete').AsString) of
      0: Transp.modFrete := mfContaEmitente;
      1: Transp.modFrete := mfContaDestinatario;
      2: Transp.modFrete := mfContaTerceiros;
      3: Transp.modFrete := mfProprioRemetente;
      4: Transp.modFrete := mfProprioDestinatario;
      9: Transp.modFrete := mfSemFrete;
      end;

      if (tblNfe.fieldbyname('modFrete').AsInteger <> 9) then
      begin
        Transp.Transporta.CNPJCPF := TrocaCaracterEspecial(Tira(tblNfe.fieldbyname('transpCNPJ').AsString));
        Transp.Transporta.xNome := TrocaCaracterEspecial(tblNfe.fieldbyname('transpXNome').AsString);
        Transp.Transporta.IE := TrocaCaracterEspecial(tblNfe.fieldbyname('transpIe').AsString);
        Transp.Transporta.xEnder := TrocaCaracterEspecial(tblNfe.fieldbyname('transpxEnder').AsString);
        Transp.Transporta.xMun := TrocaCaracterEspecial(tblNfe.fieldbyname('transpxMun').AsString);
        Transp.Transporta.UF := TrocaCaracterEspecial(tblNfe.fieldbyname('transpUF').AsString);

        if (tblNfe.fieldbyname('idDest').AsString <> '2') and (AllTrim(tblNfe.fieldbyname('placa').AsString) <> '') then
        begin
          Transp.veicTransp.placa := TrocaCaracterEspecial(tblNfe.fieldbyname('placa').AsString);
          Transp.veicTransp.UF := TrocaCaracterEspecial(tblNfe.fieldbyname('PlacaUF').AsString);
        end;

        if tblNfe.fieldbyname('codANTT').AsString <> '' then
          Transp.veicTransp.RNTC := TrocaCaracterEspecial(tblNfe.fieldbyname('codANTT').AsString);
      end;

      with Transp.Vol.New do
      begin
        qVol := convint(tblNfe.fieldbyname('qVol').AsString);
        esp := TrocaCaracterEspecial(tblNfe.fieldbyname('esp').AsString);
        marca := TrocaCaracterEspecial(tblNfe.fieldbyname('marca').AsString);
        nVol := TrocaCaracterEspecial(tblNfe.fieldbyname('nVol2').AsString);
        pesoL := formatvalAcbr(tblNfe.fieldbyname('pesoL').asfloat, 15, 3);
        pesoB := formatvalAcbr(tblNfe.fieldbyname('pesoB').asfloat, 15, 3);
      end;

    end;
    result := True;
  except on E:Exception do
  begin
    mensagem('Erro Configurando '+Tipo+' (ConfigNfeNfceAcbrTransp) '+#13+#10+e.message);
    REsult := False;
  End;
  end;
end;

function ConfigNfeNfceAcbrCobr(AcbrNfe:TAcbrNfe; tblNfe, tblEmpres, tblInfe: TFDQuery; Tipo:String): boolean;
var
  forma: string;
  vOrig: double;
  vDesc: double;
  vLiq: double;
  tblDesp: TFDQuery;
  str_cNF: string;
  str_parcela: string;
  formatoAmericano: TFormatSettings;
  flt_versaoNFe: double;
  dt_Parcela: TDate;
  n: integer;
  temcontas: boolean;
  flt_beneficiamento: double;
  i:Integer;
  vvtotPago:Double;
begin
  try

    result := false;

    if Tipo='NFCE' then
    begin

      vvtotPago:=0;
      for n := 0 to 11 do
      begin
        if (arrayPagtoValor[n] > 0) then
        begin

          with ACBrNFe.NotasFiscais.Items[0].NFe do
          begin

            pag.New;

            if (arrayPagtoTipo[n] = '97') or (arrayPagtoTipo[n] = '98') then
              pag[pag.Count-1].tPag := fpCheque
            else
            begin
              Case ConvInt(arrayPagtoTipo[n]) of
              1: pag[pag.Count-1].tPag := fpDinheiro;
              2: pag[pag.Count-1].tPag := fpCheque;
              3: pag[pag.Count-1].tPag := fpCartaoCredito;
              4: pag[pag.Count-1].tPag := fpCartaoDebito;
              5: pag[pag.Count-1].tPag := fpCreditoLoja;
              10: pag[pag.Count-1].tPag := fpValeAlimentacao;
              11: pag[pag.Count-1].tPag := fpValeRefeicao;
              12: pag[pag.Count-1].tPag := fpValePresente;
              13: pag[pag.Count-1].tPag := fpValeCombustivel;
              15: pag[pag.Count-1].tPag := fpBoletoBancario;
              16: pag[pag.Count-1].tPag := fpDepositoBancario;
              17: pag[pag.Count-1].tPag := fpPagamentoInstantaneo;
              18: pag[pag.Count-1].tPag := fpTransfBancario;
              19: pag[pag.Count-1].tPag := fpProgramaFidelidade;
              90: pag[pag.Count-1].tPag := fpSemPagamento;
              99: pag[pag.Count-1].tPag := fpOutro;
              end;
            end;

            pag[pag.Count-1].vPag := formatvalAcbr(arrayPagtoValor[n]+iff(n=0,vvtrocobob,0), 15, 2);
            vvtotPago := vvtotPago + arrayPagtoValor[n]+iff(n=0,vvtrocobob,0);

            if (arrayPagtoTipo[n] = '03') or (arrayPagtoTipo[n] = '04')then
            begin

              if (vvutilizatef)  then
              begin

                pag[pag.Count-1].tpIntegra := tiPagIntegrado;

                Case ConvInt(vvtBand) of
                1: pag[pag.Count-1].tBand := bcVisa;
                2: pag[pag.Count-1].tBand := bcMasterCard;
                3: pag[pag.Count-1].tBand := bcAmericanExpress;
                4: pag[pag.Count-1].tBand := bcSorocred;
                5: pag[pag.Count-1].tBand := bcDinersClub;
                6: pag[pag.Count-1].tBand := bcElo;
                7: pag[pag.Count-1].tBand := bcHipercard;
                8: pag[pag.Count-1].tBand := bcAura;
                9: pag[pag.Count-1].tBand := bcCabal;
                10: pag[pag.Count-1].tBand := bcAlelo;
                11: pag[pag.Count-1].tBand := bcBanesCard;
                12: pag[pag.Count-1].tBand := bcCalCard;
                13: pag[pag.Count-1].tBand := bcCredz;
                14: pag[pag.Count-1].tBand := bcDiscover;
                15: pag[pag.Count-1].tBand := bcGoodCard;
                16: pag[pag.Count-1].tBand := bcGreenCard;
                17: pag[pag.Count-1].tBand := bcHiper;
                18: pag[pag.Count-1].tBand := bcJcB;
                19: pag[pag.Count-1].tBand := bcMais;
                20: pag[pag.Count-1].tBand := bcMaxVan;
                21: pag[pag.Count-1].tBand := bcPolicard;
                22: pag[pag.Count-1].tBand := bcRedeCompras;
                23: pag[pag.Count-1].tBand := bcSodexo;
                24: pag[pag.Count-1].tBand := bcValeCard;
                25: pag[pag.Count-1].tBand := bcVerocheque;
                26: pag[pag.Count-1].tBand := bcVR;
                27: pag[pag.Count-1].tBand := bcTicket;
                99: pag[pag.Count-1].tBand := bcOutros;
                end;

                pag[pag.Count-1].cAut := vvcAut;
                pag[pag.Count-1].CNPJ := tira(fdmbase.tblcartoes.fieldbyname('CNPJCREDENCIADA').asstring);

              end else
                pag[pag.Count-1].tpIntegra := tiPagNaoIntegrado;

            end else
            begin

              if (arrayPagtoTipo[n] = '17') then
                pag[pag.Count-1].tpIntegra := tiPagNaoIntegrado;

            end;

          end;
        end;
      end;

      with ACBrNFe.NotasFiscais.Items[0].NFe do
        pag.vTroco := formatvalAcbr(vvtotPago-fdmbase.tblNFCe.FieldByName('ttnota').AsFloat, 15, 2);

    end else
    begin

      temcontas := false;
      for n := 1 to 24 do
      begin
        if (Datas[n] > 0) then
        begin
          temcontas := True;
          Break;
        end;
      end;

      if ((tblNfe.fieldbyname('finNFe').AsString = '3')
        or (tblNfe.fieldbyname('finNFe').AsString = '4')
        or (tblNfe.fieldbyname('IMPFATURA').AsString <> 'S')
        or (not temcontas)) then
      begin

        with ACBrNFe.NotasFiscais.Items[0].NFe do
        begin
          pag.new;
          pag[0].tPag := fpSemPagamento;
          pag[0].vPag := formatvalAcbr(0, 15, 2);

          if AllTrim(fdmbase.tblpedidoTipoIntegracao.AsString) <> '' then
          begin

            Case ConvInt(tblNfe.fieldbyname('modFrete').AsString) of
            0: pag[0].tpIntegra := tiPagIntegrado;
            1: pag[0].tpIntegra := tiPagNaoIntegrado;
            end;

            pag[0].CNPJ := TrocaCaracterEspecial(Tira(fdmbase.tblpedidocnpjinst.AsString));

            Case ConvInt(fdmbase.tblpedidoIndForPag.AsString) of
            0: pag[0].indPag := ipVista;
            1: pag[0].indPag := ipPrazo;
            end;

          end else
          begin
            if AllTrim(vvCNPJInter) <> '' then
            begin

              Case ConvInt(fdmbase.tblpedidoTipoIntegracao.AsString) of
              0: pag[0].tpIntegra := tiPagIntegrado;
              1: pag[0].tpIntegra := tiPagNaoIntegrado;
              end;

              pag[0].CNPJ := TrocaCaracterEspecial(Tira(vvCNPJInter));

              Case ConvInt(fdmbase.tblpedidoIndForPag.AsString) of
              0: pag[0].indPag := ipVista;
              1: pag[0].indPag := ipPrazo;
              end;

            end;
          end;

          if (flt_versaoNFe >= 4) and (AllTrim(vvCNPJInter) <> '') then
          begin
            infIntermed.CNPJ := vvCNPJInter;
            infIntermed.idCadIntTran := TrocaCaracterEspecial(vvNomeInter);
          end;

          result := True;
          exit;
        end;

      end;

      tblInfe.First;
      vDesc := 0;
      while not(tblInfe.eof) do
      begin
        vOrig := vOrig
          + tblInfe.fieldbyname('vProd').asfloat
          + tblInfe.fieldbyname('vIPI').asfloat
          + tblInfe.fieldbyname('vICMSST').asfloat
          + tblInfe.fieldbyname('vFrete').asfloat
          + tblInfe.fieldbyname('vSeg').asfloat
          + tblInfe.fieldbyname('vOutro').asfloat
          + tblInfe.fieldbyname('vFCPST').asfloat;

        if bln_importacao then
        begin
          vOrig := vOrig
            + tblInfe.fieldbyname('flt_OutDespAcess').asfloat;
        end;

        if tblInfe.fieldbyname('icmsdeson').asfloat <> 0 then
          vDesc := vDesc + tblInfe.fieldbyname('vDesc').asfloat + iff(tblNfe.fieldbyname('TIRAICMSDESONTOTAL').AsString = 'S', tblInfe.fieldbyname('icmsdeson').asfloat, 0)
        else
          vDesc := vDesc + tblInfe.fieldbyname('vDesc').asfloat;

        application.ProcessMessages;
        tblInfe.Next;
      end;

      if vValorBonfificacao<>0 then
        vDesc := vDesc + vValorBonfificacao;

      if bln_importacao then
        vOrig := vOrig + tblNfe.fieldbyname('VAFRMM').asfloat;

      flt_beneficiamento := tblNfe.fieldbyname('ttbenef').asfloat;

      with ACBrNFe.NotasFiscais.Items[0].NFe do
      begin

        Cobr.Fat.nFat := tblNfe.fieldbyname('cNF').AsString;
        Cobr.Fat.vOrig := formatvalAcbr(iff(flt_beneficiamento <> 0, flt_beneficiamento, vOrig), 15, 2);

        if (vDesc > 0) or (Hoje >= StrtoDate('03/09/2018')) then
          Cobr.Fat.vDesc := formatvalAcbr(vDesc, 15, 2);

        vLiq := 0;
        for n := 1 to 24 do
        begin
          if (Datas[n] > 0) and (Valores[n] > 0) then
            vLiq := vLiq + Valores[n];
        end;

        if flt_beneficiamento <> 0 then
        begin
          vLiq := flt_beneficiamento - vDesc;
        end;

        Cobr.Fat.vLiq := formatvalAcbr(vLiq, 15, 2);

        for n := 1 to 24 do
        begin
          if (Datas[n] > 0) and (Valores[n] > 0) then
          begin
            if (tblNfe.fieldbyname('IMPFATURA').AsString = 'S') then
            begin

              if tblnfe.FieldByName('indpag').AsString<>'0' then
              begin
                Cobr.Dup.New;
                Cobr.Dup[Cobr.Dup.Count-1].nDup := strzero(n, 3, 0);
                Cobr.Dup[Cobr.Dup.Count-1].dVenc := Datas[n];
                Cobr.Dup[Cobr.Dup.Count-1].vDup := formatvalAcbr(Valores[n], 15, 2);
              end;
            end;


            pag.New;

            Case ConvInt(formas[n]) of
            1: pag[pag.Count-1].tPag := fpDinheiro;
            2: pag[pag.Count-1].tPag := fpCheque;
            3: pag[pag.Count-1].tPag := fpCartaoCredito;
            4: pag[pag.Count-1].tPag := fpCartaoDebito;
            5: pag[pag.Count-1].tPag := fpCreditoLoja;
            10: pag[pag.Count-1].tPag := fpValeAlimentacao;
            11: pag[pag.Count-1].tPag := fpValeRefeicao;
            12: pag[pag.Count-1].tPag := fpValePresente;
            13: pag[pag.Count-1].tPag := fpValeCombustivel;
            15: pag[pag.Count-1].tPag := fpBoletoBancario;
            16: pag[pag.Count-1].tPag := fpDepositoBancario;
            17: pag[pag.Count-1].tPag := fpPagamentoInstantaneo;
            18: pag[pag.Count-1].tPag := fpTransfBancario;
            19: pag[pag.Count-1].tPag := fpProgramaFidelidade;
            90: pag[pag.Count-1].tPag := fpSemPagamento;
            99: pag[pag.Count-1].tPag := fpOutro;
            end;

            if formas[n] = '99' then
              pag[pag.Count-1].xPag := tblNfe.fieldbyname('descrmeiopgto').AsString;

            pag[pag.Count-1].vPag := formatvalAcbr(Valores[n], 15, 2);

            if AllTrim(fdmbase.tblpedidocnpjinst.AsString) <> '' then
            begin

              Case ConvInt(fdmbase.tblpedidoTipoIntegracao.AsString) of
              0: pag[pag.Count-1].tpIntegra := tiPagIntegrado;
              1: pag[pag.Count-1].tpIntegra := tiPagNaoIntegrado;
              end;

              pag[pag.Count-1].CNPJ := TrocaCaracterEspecial(Tira(fdmbase.tblpedidocnpjinst.AsString));

              Case ConvInt(fdmbase.tblpedidoIndForPag.AsString) of
              0: pag[pag.Count-1].indPag := ipVista;
              1: pag[pag.Count-1].indPag := ipPrazo;
              end;

            end else
            begin
              if (AllTrim(vvCNPJInter) <> '') then
              begin

                Case ConvInt(fdmbase.tblpedidoTipoIntegracao.AsString) of
                0: pag[pag.Count-1].tpIntegra := tiPagIntegrado;
                1: pag[pag.Count-1].tpIntegra := tiPagNaoIntegrado;
                end;

                pag[pag.Count-1].CNPJ := TrocaCaracterEspecial(Tira(vvCNPJInter));

                Case ConvInt(fdmbase.tblpedidoIndForPag.AsString) of
                0: pag[pag.Count-1].indPag := ipVista;
                1: pag[pag.Count-1].indPag := ipPrazo;
                end;

              end else
              begin

                if (formas[n]='03')or(formas[n]='04')or(formas[n]='17') then
                begin

                  pag[pag.Count-1].tpIntegra := tiPagNaoIntegrado;
                  pag[pag.Count-1].CNPJ := '';
                end;

                dt_Parcela := Datas[n];
                if (dt_Parcela = Hoje) then
                  pag[pag.Count-1].indPag := ipVista
                else
                  pag[pag.Count-1].indPag := ipPrazo;
              end;
            end;

          end;

          application.ProcessMessages;
        end;

        if (AllTrim(vvCNPJInter) <> '') then
        begin

          infIntermed.CNPJ := vvCNPJInter;
          infIntermed.idCadIntTran := TrocaCaracterEspecial(vvNomeInter);

        end;
      end;

    end;
    result := True;
  except on E:Exception do
  begin
    mensagem('Erro Configurando '+Tipo+' (ConfigNfeNfceAcbrCobr) '+#13+#10+e.message);
    REsult := False;
  End;
  end;
end;

function ConfigNfeNfceAcbrinfAdic(AcbrNfe:TAcbrNfe; tblNfe, tblEmpres, tblInfe: TFDQuery; Tipo:String): boolean;
var
  vvInfCpl, vvObsMemo, vvImpFonte: AnsiString;
  i_contador, i_loop: integer;
  VTOTTRIBFED, VTOTTRIBEST, VTOTTRIBMUN: double;

  vvIndAdFisco: String;
  vFCPST, vFCP: double;
  vvTextoTef:String;
  n, p:Integer;
begin
  result := false;
  try

    if Tipo='NFCE' then
    begin

      //**tef
      if vvutilizatef then
      begin
        vvTextoTef := '';
        vvTextoTef := '.'+#13+#10+'.'+#13+#10+'.'+#13+#10;

        for n := 0 to Length(TextoTef)-1 do
          vvTextoTef := vvTextoTef+TextoTef[n]+#13+#10;

        if vvTExtoTef<>'' then
        begin

          For p := 1 to 2 do
            vvTExtoTef := vvTExtoTef+#13+#10+#13+#10+#13+#10+vvTExtoTef+#13+#10+#13+#10+#13+#10;

          with ACBrNFe.NotasFiscais.Items[0].NFe do
            if AllTrim(vvTExtoTef) <> '' then
               InfAdic.infCpl := vvTExtoTef;
        end;
      end;

    end else
    begin

      vvIndAdFisco := '';
      tblInfe.First;
      vFCPST := 0;
      vFCP := 0;
      while not(tblInfe.eof) do
      begin
        vFCPST := vFCPST + tblInfe.fieldbyname('vFCPST').asfloat;
        vFCP := vFCP + tblInfe.fieldbyname('vFCP').asfloat;
        VTOTTRIBEST := VTOTTRIBEST + tblInfe.fieldbyname('VTOTTRIBEST').asfloat;
        VTOTTRIBMUN := VTOTTRIBMUN + tblInfe.fieldbyname('VTOTTRIBMUN').asfloat;
        VTOTTRIBFED := VTOTTRIBFED + tblInfe.fieldbyname('VTOTTRIBFED').asfloat;
        application.ProcessMessages;
        tblInfe.Next;
      end;

      vvInfCpl := tblNfe.fieldbyname('infCpl').AsString;

      if (tblEmpres.fieldbyname('optativo').AsString = 'S') then
      begin
        vvInfCpl := iff(vvInfCpl <> '', vvInfCpl + ' ', '') + 'Trib Aprox R$: ' + FormatFloat('#0.00', VTOTTRIBFED) + ' Federal, ' +
          FormatFloat('#0.00', VTOTTRIBEST) + ' Estadual e ' + FormatFloat('#0.00', VTOTTRIBMUN) + ' Municipal';
        vvInfCpl := vvInfCpl + ' ' + vvImpFonte;
      end;

      if tblNfe.fieldbyname('mercrec').asfloat <> 0 then
        vvInfCpl := vvInfCpl + ' [Valor da mercadoria recebida:' + trim(formata(tblNfe.fieldbyname('mercrec').asfloat, 14, 2)) + ']';
      if tblNfe.fieldbyname('mercemp').asfloat <> 0 then
        vvInfCpl := vvInfCpl + ' [Valor da matéria prima empregada:' + trim(formata(tblNfe.fieldbyname('mercemp').asfloat, 14, 2)) + ']';
      if tblNfe.fieldbyname('custserv').asfloat <> 0 then
        vvInfCpl := vvInfCpl + ' [Custo dos serviços empregados:' + trim(formata(tblNfe.fieldbyname('custserv').asfloat, 14, 2)) + ']';
      if tblNfe.fieldbyname('ttbenef').asfloat <> 0 then
        vvInfCpl := vvInfCpl + ' [Total do beneficiamento 100%:' + trim(formata(tblNfe.fieldbyname('ttbenef').asfloat, 14, 2)) + ']';
      if tblNfe.fieldbyname('numnf1').AsInteger <> 0 then
        vvInfCpl := vvInfCpl + ' [ Devolução Ref. a sua NF ' + tblNfe.fieldbyname('numnf1').AsString + ' de ' + tblNfe.fieldbyname('dianf1').AsString;
      if tblNfe.fieldbyname('numnf2').AsInteger <> 0 then
        vvInfCpl := vvInfCpl + ' [ Devolução Ref. a sua NF ' + tblNfe.fieldbyname('numnf2').AsString + ' de ' + tblNfe.fieldbyname('dianf2').AsString;
      if tblNfe.fieldbyname('numnf3').AsInteger <> 0 then
        vvInfCpl := vvInfCpl + ' [ Devolução Ref. a sua NF ' + tblNfe.fieldbyname('numnf3').AsString + ' de ' + tblNfe.fieldbyname('dianf3').AsString;

      vvInfCpl := StringReplace(vvInfCpl, #10, '', [rfReplaceAll]);
      vvInfCpl := StringReplace(vvInfCpl, #13, '', [rfReplaceAll]);

      vvObsMemo := vvInfCpl;

      with ACBrNFe.NotasFiscais.Items[0].NFe do
      begin

        if (bExportacao) then
        begin
          exporta.UFSaidaPais := TrocaCaracterEspecial(tblNfe.fieldbyname('UFSaidaPais').AsString);
          exporta.xLocExporta := TrocaCaracterEspecial(tblNfe.fieldbyname('xLocExporta').AsString);
          exporta.xLocDespacho := TrocaCaracterEspecial(tblNfe.fieldbyname('xLocDespacho').AsString);
        end;

        vvIndAdFisco := tblNfe.fieldbyname('InfAdFisco').AsString;

        if vFCPST <> 0 then
          vvIndAdFisco := vvIndAdFisco + 'Valor FCP ST:' + AllTrim(formata(vFCPST, 15, 2)) + '|';

        if vFCP <> 0 then
          vvIndAdFisco := vvIndAdFisco + 'Valor FCP:' + AllTrim(formata(vFCP, 15, 2));

        if AllTrim(vvIndAdFisco) <> '' then
          InfAdic.infAdFisco := vvIndAdFisco;

        InfAdic.infCpl := vvObsMemo;

        infRespTec.CNPJ := '62570718000170';
        infRespTec.xContato := 'Miguel Antonio Russo Gonzales';
        infRespTec.email := 'miguel.gonzales@hci.com.br';
        infRespTec.fone := '1123929999';

      end;

    end;

    result := True;

  except on E:Exception do
  begin
    mensagem('Erro Configurando '+Tipo+' (ConfigNfeNfceAcbrinfAdic) '+#13+#10+e.message);
    REsult := False;
  End;
  end;
end;

Function EnviarEmailAcbrNfeNfce(Email:String; AcbrNfe:TAcbrNfe; Tipo:String= 'SemPesquisa'; NfeNfce:String='NFE'):String;
Var
  vvCopias:TStrings;
  wbcli:TFDQuery;
  str_nomeEmp:String;
  vvNnf:Integer;
  vvArquivoXml:String;
begin

  if alltrim(email)='' then
  begin
    if Dvlp then
      Email := 'roberto.garcia@hci.com.br';
  end;


  if alltrim(email)<>'' then
  begin

    Try

      if NfeNfce='NFE' then
      begin

        if tipo= 'ComPesquisa' then
        begin

          wbcli := TFDQuery.Create(Application);
          wbcli.Connection := Principal.ADConnection1;
          wbcli.open('Select Nome, email from '+tbcli+ ' where codcli='+fdmbase.tblcli.fieldbyname('codcli').asstring);
          str_nomeEmp := StringReplace(wbcli.fieldbyname('nome').asstring, '&', 'E', [rfReplaceAll]);
          str_nomeEmp := StringReplace(str_nomeEmp, '/', '-', [rfReplaceAll]);
          Email := wbcli.fieldbyname('Email').asstring;

          fdmbase.WBnotasFiscaisAcbr.open('Select * from WbNotasFiscaisacbr where empresa='+inttostr(vvcodemp)+' and Anoped='+Quotedstr(fdmbase.Tblpedido.fieldbyname('Anoped').asstring)+
                                          ' and codped='+fdmbase.tblpedido.fieldbyname('Codped').asString+' and tipo='+Quotedstr('NotaFiscal'));

          fEscolheNotaOuEventoAcbr := TfEscolheNotaOuEventoAcbr.Create(Application);
          fEscolheNotaOuEventoAcbr.Caption := 'Escolher qual Nota Será Enviado Email';

          if fEscolheNotaOuEventoAcbr.Showmodal=mrcancel then
            exit;

          ACBrNFe.NotasFiscais.Clear;
          ACBrNFe.EventoNFe.Evento.Clear;

        end;

      end else
      begin

        if tipo= 'ComPesquisa' then
        begin
           fdmbase.WBnotFisAcbrNfce.open('Select * from WBnotFisAcbrNfce where empresa='+inttostr(vvcodemp)+' and incr='+Inttostr(Convint(frm_gerenciamentoCuponsF.tblCuponsFiscIncr.AsString))+
                                         ' and tipo='+Quotedstr('Cupomfiscal'));
           ACBrNFe.NotasFiscais.Clear;
           ACBrNFe.EventoNFe.Evento.Clear;
         end;

      end;



      if NfeNfce='NFE' then
      begin

        if tipo= 'ComPesquisa' then
        begin

          vvNnf := fdmbase.WBnotasFiscaisAcbrNNf.Asinteger;
          vvArquivoXml := fdmbase.WBnotasFiscaisAcbrNomeXml.AsString;

          ACBrNFe.NotasFiscais.LoadFromFile(ACBrNFe.Configuracoes.Arquivos.PathSalvar+'\'+fdmbase.WBnotasFiscaisAcbr.fieldbyname('anomes').asstring+'\'+vvArquivoXml);

          fdmbase.WBnotasFiscaisAcbr.open('Select * from WbNotasFiscaisacbr where empresa='+inttostr(vvcodemp)+' and Anoped='+Quotedstr(fdmbase.Tblpedido.fieldbyname('Anoped').asstring)+
                                          ' and codped='+fdmbase.tblpedido.fieldbyname('Codped').asString+' and tipo='+Quotedstr('Cancelamento')+
                                          ' and nNf='+inttostr(vvNnf));

          if fdmbase.WBnotasFiscaisAcbr.REcordcount<>0 then
          begin
            ACBrNFe.EventoNFe.LerXML(ACBrNFe.Configuracoes.Arquivos.PathEvento+'\'+fdmbase.WBnotasFiscaisAcbr.fieldbyname('anomes').asstring+'\'+Fdmbase.wbnotasfiscaisAcbr.fieldbyname('NomeXml').asstring);
            ACBrNFeDANFEFR.Cancelada := True;
          end;

          FreeandNil(fEscolheNotaOuEventoAcbr);
        end;
      end else
      begin

        if tipo= 'ComPesquisa' then
        begin

          vvNnf := fdmbase.WBnotFisAcbrNfce.fieldbyname('NNf').Asinteger;
          vvArquivoXml := fdmbase.WBnotFisAcbrNfce.fieldbyname('NomeXml').AsString;

          ACBrNFe.NotasFiscais.LoadFromFile(ACBrNFe.Configuracoes.Arquivos.PathSalvar+'\'+fdmbase.WBnotFisAcbrNfce.fieldbyname('anomes').asstring+'\'+vvArquivoXml);

          fdmbase.WBnotFisAcbrNfce.open('Select * from WBnotFisAcbrNfce where empresa='+inttostr(vvcodemp)+' and incr='+Inttostr(Convint(frm_gerenciamentoCuponsF.tblCuponsFiscIncr.AsString))+
                                        ' and tipo='+Quotedstr('Cancelamento'));


          if fdmbase.WBnotFisAcbrNfce.REcordcount<>0 then
          begin
            ACBrNFe.EventoNFe.LerXML(ACBrNFe.Configuracoes.Arquivos.PathEvento+'\'+fdmbase.WBnotFisAcbrNfce.fieldbyname('anomes').asstring+'\'+Fdmbase.WBnotFisAcbrNfce.fieldbyname('NomeXml').asstring);
            ACBrNFeDANFCEFR.Cancelada := True;
          end;

        end;

      end;


      VVcopias := TStringList.Create;

      if Dvlp then
        Email := 'roberto.garcia@hci.com.br';

      Principal.VarMemo.Lines.Clear;
      Principal.VarMemo.Lines.Add('Você Esta Recebendo o PDF e XML da Empresa '+vvEmp);
      ACBrNFe.NotasFiscais.Items[0].EnviarEmail(email
       , 'Nota Fiscal Eletronica '+vvEmp
       , Principal.VarMemo.Lines
       , True  // Enviar PDF junto
       , vvCopias    // Lista com emails que serao enviado copias - TStrings
       , nil // Lista de anexos - TStrings
       );
        Result := 'OK';
    Except

       Result := '';
    end;
    vvCopias.Free;
  end;

  if ACBrNFeDANFEFR<>nil then
    ACBrNFeDANFEFR.Cancelada := False;

end;

function PDFToMemoryStream(gtPDF: TgtPDFDocument): TMemoryStream;
begin
  Result := TMemoryStream.Create;
  try
    gtPDF.SaveToStream(Result);
    Result.Position := 0;
  except
    Result.Free;
    raise;
  end;
end;

function validaAcbrPedido(tblPedido, tblItensPedido, tblObsPedido: TFDQuery; Startatransacao: boolean = True): boolean;
var
  HTTPRIO: THTTPRIO;
  cNF, incrNFe: integer;
  retorno: ArrayOfString;
  str_tx2: WideString;
  contadorPagTemp: Tcontadorpag;
  n: integer;
  vvBonificacao:Double;
begin
  result := True;

  try

    for n := 1 to 24 do
    begin
      Datas[n] := 0;
      Dias[n] := 0;
      Valores[n] := 0;
      Cheques[n] := '';
      Centros[n] := '';
    end;


    //**verifico bonificacao
    try
      tblitenspedido.first;
      vvBonificacao := 0;
      while not tblitenspedido.eof do
      begin
        if ((tblItensPedido.FieldByName('Cfop').Asstring='5910')or(tblItensPedido.FieldByName('Cfop').Asstring='6910')) then
          vvBonificacao := vvBonificacao + (tblItensPedido.FieldByName('total').AsFloat);
        tblitenspedido.Next;
      end;
    Finally
      tblitenspedido.first;
    end;

    Datas[1] := Hoje;
    if tblPedido.fieldbyname('ttbenef').asfloat <> 0 then
      Valores[1] := tblPedido.fieldbyname('ttbenef').asfloat
    else
      Valores[1] := tblPedido.fieldbyname('ttnota').asfloat-vvBonificacao;
    formas[1] := '01';

    if Startatransacao then
      StartTransactionSQLAD(True);
    contadorPagTemp := Tcontadorpag.Create(application);
    contadorPagTemp.Button1.Visible := false;
    contadorPagTemp.Caption := 'Processando pré validação';
    contadorPagTemp.FormStyle := fsNormal;
    contadorPagTemp.Show;

    if (guardaNFe(tblPedido, tblItensPedido, tblObsPedido, ytiprel, cNF, incrNFe, True)) then
    begin
      if NFe4Acbr(tblPedido.fieldbyname('empresa').AsInteger, cNF, incrNFe, True) then
      begin
        try

          Try
            str_tx2 := '';
            ACBrNFe.NotasFiscais.Validar;
            if ACBrNFe.NotasFiscais[0].Alertas <> '' then
              str_tx2 := ACBrNFe.NotasFiscais[0].Alertas;
          except on E:Exception do
          begin
            str_tx2 := e.message;
          End;
          end;

          application.MainForm.SetFocus;

          if (faTemp <> nil) then
            faTemp.SetFocus;

          application.ProcessMessages;

          if str_tx2<>'' then
          begin
            if not exibeValidacao(str_tx2) then
            begin
              result := false;
              application.MainForm.SetFocus;
              exit;
            end;
          end;
        finally
          HTTPRIO := nil;
        end;
      End else
        Result := False;
    end
    else
      exit;
  finally
    application.MainForm.SetFocus;
    contadorPagTemp.Close;
    FreeAndNil(contadorPagTemp);
    DeleteFile(ACBrNFe.Configuracoes.Arquivos.PathSalvar+'\'+StrZero(yearof(Date),4,0)+Strzero(monthof(Date),2,0)+'\'+Fdmbase.tblpedido.fieldbyname('protnfe').asstring+'-nfe.xml');
    FreeandNil(ACBrNFe);
    FreeandNil(ACBrNFeDANFEFR);
    FreeandNil(AcbrMail);
    if Startatransacao then
      RollBackTransationSQLAD
    else
    begin
      fdmbase.exec.SQL.Clear;
      fdmbase.exec.SQL.Add('delete from ' + tbnfe + ' where cnf=999999999');
      fdmbase.exec.ExecSQL;

      fdmbase.exec.SQL.Clear;
      fdmbase.exec.SQL.Add('delete from ' + tbinfe + ' where cnf=999999999');
      fdmbase.exec.ExecSQL;
    end;
    // **
    for n := 1 to 24 do
    begin
      Datas[n] := 0;
      Valores[n] := 0;
      Cheques[n] := '';
      Centros[n] := '';
      formas[1] := '';
    end;
  end;
end;

function exibeValidacao(retorno: WideString): boolean;
var
  n: integer;
  str_retorno: string;
begin
  result := false;
  try
    exibeValidacaoAcbrF := TexibeValidacaoAcbrF.Create(nil);
    exibeValidacaoAcbrF.retorno := retorno;

    if (exibeValidacaoAcbrF.ShowModal = MrOk) then
      result := True
    else
      result := false;
  finally

  end;
end;

//**============================================================Funcoes de solicitacoes
Function ImprimirNfeAcbr(DM:TFdmbase; AcbrNfe:TAcbrNfe; NfeNfce:String='NFE'):Boolean;
var
  gtPDFDocument1: TgtPDFDocument;
  wbcli:TFDQuery;
  str_nomeEmp:String;
  vvArquivoPdf:String;
  vvNnf:Integer;
  vvArquivoXml:String;
  vvincr:Integer;
  vvNomePDFDest:String;
Begin
  try

    if NfeNfce='NFE' then
    begin
      wbcli := TFDQuery.Create(Application);
      wbcli.Connection := Principal.ADConnection1;
      wbcli.open('Select Nome from '+tbcli+ ' where codcli='+fdmbase.tblcli.fieldbyname('codcli').asstring);
      str_nomeEmp := StringReplace(wbcli.fieldbyname('nome').asstring, '&', 'E', [rfReplaceAll]);
      str_nomeEmp := StringReplace(str_nomeEmp, '/', '-', [rfReplaceAll]);

      fdmbase.WBnotasFiscaisAcbr.open('Select * from WbNotasFiscaisacbr where empresa='+inttostr(vvcodemp)+' and Anoped='+Quotedstr(fdmbase.Tblpedido.fieldbyname('Anoped').asstring)+
                                      ' and codped='+fdmbase.tblpedido.fieldbyname('Codped').asString+' and tipo='+Quotedstr('NotaFiscal'));

      fEscolheNotaOuEventoAcbr := TfEscolheNotaOuEventoAcbr.Create(Application);
      fEscolheNotaOuEventoAcbr.Caption := 'Escolher qual Nota Gerar PDF da DAnfe';

      if fEscolheNotaOuEventoAcbr.Showmodal=mrcancel then
        exit;

    end else
      fdmbase.WBnotFisAcbrNfce.open('Select * from WBnotFisAcbrNfce where empresa='+inttostr(vvcodemp)+' and incr='+Inttostr(Convint(frm_gerenciamentoCuponsF.tblCuponsFiscIncr.AsString))+
                                      ' and tipo='+Quotedstr('CupomFiscal'));

    ACBrNFe.NotasFiscais.Clear;
    ACBrNFe.EventoNFe.Evento.Clear;

    if NfeNfce='NFE' then
    begin
      vvNnf := fdmbase.WBnotasFiscaisAcbrNNf.Asinteger;
      vvArquivoXml := fdmbase.WBnotasFiscaisAcbrNomeXml.AsString;
    end else
    begin
      vvArquivoXML := fdmbase.WBnotFisAcbrNfce.fieldbyname('NomeXml').Asstring;
      vvNnf := fdmbase.WBnotFisAcbrNfce.fieldbyname('NNf').Asinteger;
      vvIncr := fdmbase.WBnotFisAcbrNfce.fieldbyname('incr').Asinteger;
    end;


    if NfeNfce='NFE' then
    begin
      ACBrNFe.NotasFiscais.LoadFromFile(ACBrNFe.Configuracoes.Arquivos.PathSalvar+'\'+fdmbase.WBnotasFiscaisAcbr.fieldbyname('anomes').asstring+'\'+vvArquivoXml);

      fdmbase.WBnotasFiscaisAcbr.open('Select * from WbNotasFiscaisacbr where empresa='+inttostr(vvcodemp)+' and Anoped='+Quotedstr(fdmbase.Tblpedido.fieldbyname('Anoped').asstring)+
                                      ' and codped='+fdmbase.tblpedido.fieldbyname('Codped').asString+' and tipo='+Quotedstr('Cancelamento')+
                                      ' and nNf='+inttostr(vvNnf));

      if fdmbase.WBnotasFiscaisAcbr.REcordcount<>0 then
      begin
        ACBrNFe.EventoNFe.LerXML(ACBrNFe.Configuracoes.Arquivos.PathEvento+'\'+fdmbase.WBnotasFiscaisAcbr.fieldbyname('anomes').asstring+'\'+Fdmbase.wbnotasfiscaisAcbr.fieldbyname('NomeXml').asstring);
        ACBrNFeDANFEFR.Cancelada := True;
      end;

    end else
    begin

      ACBrNFe.NotasFiscais.LoadFromFile(ACBrNFe.Configuracoes.Arquivos.PathSalvar+'\'+fdmbase.WBnotFisAcbrNfce.fieldbyname('anomes').asstring+'\'+vvArquivoXml);

      fdmbase.WBnotFisAcbrNfce.open('Select * from WBnotFisAcbrNfce where empresa='+inttostr(vvcodemp)+' and incr='+Inttostr(Convint(frm_gerenciamentoCuponsF.tblCuponsFiscIncr.AsString))+
                                      ' and tipo='+Quotedstr('Cancelamento')+
                                      ' and nNf='+inttostr(vvNnf));

      if fdmbase.WBnotFisAcbrNfce.REcordcount<>0 then
      begin
        Mensagem('Atenção!!!!, Esta Nfce '+fdmbase.WBnotFisAcbrNfce.fieldbyname('nnf').asstring+' está Cancelada!!!');
        ACBrNFe.EventoNFe.LerXML(ACBrNFe.Configuracoes.Arquivos.PathEvento+'\'+fdmbase.WBnotFisAcbrNfce.fieldbyname('anomes').asstring+'\'+Fdmbase.WBnotFisAcbrNfce.fieldbyname('NomeXml').asstring);
        ACBrNFeDANFCEFR.Cancelada := True;
      end;

    end;

    ACBrNFe.NotasFiscais.ImprimirPDF;

    if NfeNfce='NFE' then
    begin

      vvArquivoPdf := StringReplace(ACBrNFe.DANFE.PathPDF+vvArquivoXml, '.Xml', '.pdf', [rfReplaceAll]);

      gtPDFDocument1 := TgtPDFDocument.Create(Application);
      gtPDFDocument1.FileName := vvArquivoPdf;

      fPdfViewer := TfPdfViewer.Create(Application, PDFToMemoryStream(gtPDFDocument1), 'Danfe ['+Strzero(fdmbase.wbnotasfiscaisAcbr.fieldbyname('NNF').AsInteger,9,0)+']'+str_nomeEmp+'(V).pdf');
      fPdfViewer.caption := 'PDF Danfe';
      fPdfViewer.showModal;
    end else
    begin

      if (not bln_tsplus)and(not bln_TSPLUSBROWSER) then
        vvNomePDFDest := 'c:\hciweb\pdffiscal\['+StrZero(fdmbase.WBnotFisAcbrNfce.fieldbyname('nNF').asinteger,9,0)+'](V)'+ExtractFileName(ACBrNFeDANFCEFR.ArquivoPDF)
      else
        vvNomePDFDest := '\\tsclient\chciweb\pdffiscal\['+StrZero(fdmbase.WBnotFisAcbrNfce.fieldbyname('nNF').asinteger,9,0)+'](V)'+ExtractFileName(ACBrNFeDANFCEFR.ArquivoPDF);

      if not (CopyFile(PChar(ACBrNFeDANFCEFR.ArquivoPDF), PChar(vvNomePDFDest), false)) then
        Mensagem('Problemas na copia do arquivo pdf para '+vvNomePDFDest);
    end;

  finally
    FreeAndNil(fPdfViewer);
    FreeandNil(gtPDFDocument1);
    FreeandNil(wbcli);
    fdmbase.WBnotasFiscaisAcbr.close;

    if NfeNfce='NFE' then
      ACBrNFeDANFEFR.Cancelada := False
    else
      ACBrNFeDANFCEFR.Cancelada := False;

  end;
  REsult := true;
end;

Function CancelaNfeAcbr(DM:TFdmbase; AcbrNfe:TAcbrNfe; Tipo:String= 'ComPesquisa'; Nnf:Integer=0 ; NfeNfce:String='NFE'):Boolean;
Var
  vvjustificativa:String;
  vvProtNfe:String;
  vvNnf:Integer;
  vvincr:Integer;
begin

  Try

    fjustificativa := Tfjustificativa.Create(application, '');
    fjustificativa.justificativa.Lines.Clear;

    if Dvlp then
      fjustificativa.justificativa.text := 'Teste de Cancelamento';

    curfim;
    fjustificativa.showModal;
    vvjustificativa := fjustificativa.justificativa.text;
    FreeandNil(fjustificativa);

    if NfeNfce='NFE' then
    begin
      if tipo='ComPesquisa' then
        fdmbase.WBnotasFiscaisAcbr.open('Select * from WbNotasFiscaisacbr where empresa='+inttostr(vvcodemp)+' and Anoped='+Quotedstr(fdmbase.Tblpedido.fieldbyname('Anoped').asstring)+
                                        ' and codped='+fdmbase.tblpedido.fieldbyname('Codped').asString+' and tipo='+Quotedstr('NotaFiscal'))
      else
      begin
        fdmbase.WBnotasFiscaisAcbr.open('Select * from WbNotasFiscaisacbr where empresa='+inttostr(vvcodemp)+' and Anoped='+Quotedstr(fdmbase.Tblpedido.fieldbyname('Anoped').asstring)+
                                        ' and codped='+fdmbase.tblpedido.fieldbyname('Codped').asString+' and tipo='+Quotedstr('NotaFiscal')+' and nnf='+inttostr(Nnf));

        if fdmbase.WBnotasFiscaisAcbr.REcordcount=0 then
          Exit;
      end;
    end else
    begin

      if tipo='ComPesquisa' then
        fdmbase.WBnotFisAcbrNfce.open('Select * from WBnotFisAcbrNfce where empresa='+inttostr(vvcodemp)+' and incr='+Inttostr(Convint(frm_gerenciamentoCuponsF.tblCuponsFiscIncr.AsString))+
                                        ' and tipo='+Quotedstr('CupomFiscal'))
      else
      begin
        fdmbase.WBnotFisAcbrNfce.open('Select * from WBnotFisAcbrNfce where empresa='+inttostr(vvcodemp)+' and incr='+Inttostr(Convint(frm_gerenciamentoCuponsF.tblCuponsFiscIncr.AsString))+
                                        ' and tipo='+Quotedstr('CupomFiscal')+' and nnf='+inttostr(Nnf));

        if fdmbase.WBnotFisAcbrNfce.REcordcount=0 then
          Exit;
      end;

    end;

    if NfeNfce='NFE' then
    begin
      if tipo='ComPesquisa' then
      begin
        fEscolheNotaOuEventoAcbr := TfEscolheNotaOuEventoAcbr.Create(Application);

//        if NfeNfce='NFCE' then
//          fEscolheNotaOuEventoAcbr.DbGrid1.Datasource := fdmbase.WBnotFisAcbrNfceDT;

        fEscolheNotaOuEventoAcbr.caption := 'Escolher a Nfe que Vai ser Cancelada';

        if fEscolheNotaOuEventoAcbr.Showmodal=mrcancel then
          exit;

        if not opsn('Confirma Mesmo Para Cancelar a Nfe?') then
        begin
          Result := False;
          Exit;
        end;
      end;
    end;

    if NfeNfce='NFE' then
    begin
      vvProtNfe := fdmbase.WBNotasfiscaisAcbr.fieldbyname('NomeXml').Asstring;
      vvNnf := fdmbase.WBnotasFiscaisAcbrNNf.Asinteger;
    end else
    begin
      vvProtNfe := fdmbase.WBnotFisAcbrNfce.fieldbyname('NomeXml').Asstring;
      vvNnf := fdmbase.WBnotFisAcbrNfce.fieldbyname('NNf').Asinteger;
      vvIncr := fdmbase.WBnotFisAcbrNfce.fieldbyname('incr').Asinteger;
    end;

//    if tipo='ComPesquisa' then
//    begin
//      if dvlp then
//       InputQuery('Digitar', 'Xml', vvProtNfe);
//    end;

    ACBrNFe.EventoNFe.Evento.Clear;

    if NfeNfce='NFE' then
      ACBrNFe.EventoNFe.idLote := fdmbase.wbnotasfiscaisAcbr.fieldbyname('nNf').asinteger
    else
      ACBrNFe.EventoNFe.idLote := fdmbase.WBnotFisAcbrNfce.fieldbyname('nNf').asinteger;

    ACBrNFe.NotasFiscais.Clear;

    with ACBrNFe.EventoNFe.Evento.New do
    begin
      infEvento.dhEvento := now;
      infEvento.tpEvento := teCancelamento;
      infEvento.detEvento.xJust := vvJustificativa;
    end;


    if NfeNfce='NFE' then
      ACBrNFe.NotasFiscais.LoadFromFile(ACBrNFe.Configuracoes.Arquivos.PathSalvar+'\'+fdmbase.WBnotasFiscaisAcbr.fieldbyname('anomes').asstring+'\'+vvProtNfe)
    else
      ACBrNFe.NotasFiscais.LoadFromFile(ACBrNFe.Configuracoes.Arquivos.PathSalvar+'\'+fdmbase.WBnotFisAcbrNfce.fieldbyname('anomes').asstring+'\'+vvProtNfe);

    Try

      if NfeNfce='NFE' then
        ACBrNFe.EnviarEvento(fdmbase.wbnotasfiscaisAcbr.fieldbyname('nNf').asinteger)
      else
        ACBrNFe.EnviarEvento(fdmbase.WBnotFisAcbrNfce.fieldbyname('nNf').asinteger);

      Mensagem(ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.xMotivo);

      if ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cStat=135 then
      begin

        if NfeNfce='NFE' then
        begin
          fdmbase.wbNotasFiscaisAcbr.Append;
          fdmbase.wbNotasFiscaisAcbr.Fieldbyname('Empresa').Asinteger := vvCodEmp;
          fdmbase.wbNotasFiscaisAcbr.Fieldbyname('Anoped').AsString := Fdmbase.TblPedido.Fieldbyname('Anoped').Asstring;
          fdmbase.wbNotasFiscaisAcbr.Fieldbyname('Tipo').AsString := 'Cancelamento';
          fdmbase.wbNotasFiscaisAcbr.Fieldbyname('Codped').AsInteger := Fdmbase.TblPedido.Fieldbyname('Codped').AsInteger;
          fdmbase.wbNotasFiscaisAcbr.Fieldbyname('nNf').AsInteger := vvNnf;
          fdmbase.wbNotasFiscaisAcbr.Fieldbyname('Data').AsDateTime := Now;
          fdmbase.wbNotasFiscaisAcbr.Fieldbyname('NomeXml').AsString := ExtractFileName(ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.NomeArquivo);
          fdmbase.wbNotasFiscaisAcbr.Fieldbyname('anomes').AsString := StrZero(yearof(Date),4,0)+Strzero(monthof(Date),2,0);
          fdmbase.wbNotasFiscaisAcbr.Post;
        end else
        begin
          fdmbase.wbNotFisAcbrNfce.Append;
          fdmbase.wbNotFisAcbrNfce.Fieldbyname('Empresa').Asinteger := vvCodEmp;
          fdmbase.wbNotFisAcbrNfce.Fieldbyname('incr').AsInteger := vvIncr;
          fdmbase.wbNotFisAcbrNfce.Fieldbyname('Tipo').AsString := 'Cancelamento';
          fdmbase.wbNotFisAcbrNfce.Fieldbyname('nNf').AsInteger := vvNnf;
          fdmbase.wbNotFisAcbrNfce.Fieldbyname('Data').AsDateTime := Now;
          fdmbase.wbNotFisAcbrNfce.Fieldbyname('NomeXml').AsString := ExtractFileName(ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.NomeArquivo);
          fdmbase.wbNotFisAcbrNfce.Fieldbyname('anomes').AsString := StrZero(yearof(Date),4,0)+Strzero(monthof(Date),2,0);
          fdmbase.wbNotFisAcbrNfce.Post;

          if tipo='ComPesquisa' then
          begin
            frm_gerenciamentoCuponsF.tblCuponsFisc.Edit;
            frm_gerenciamentoCuponsF.tblCuponsFiscStatus.Asinteger := 5;
            frm_gerenciamentoCuponsF.tblCuponsFisc.Post;
          end;

        end;
      end;
    except on E:Exception do
    begin
      mensagem(e.message);
    End;
    end;

    REsult := True;

  Finally
    fdmbase.wbnotasfiscaisAcbr.Close;
    fdmbase.wbNotFisAcbrNfce.Close;
  end;

end;


Function ConsultaNfeAcbr(DM:TFdmbase; AcbrNfe:TAcbrNfe; NfeNfce:String='NFE'):Boolean;
var
  vvConsulta:String;
  vvProtNfe:String;
Begin

  ACBrNFe.NotasFiscais.Clear;

  if NfeNfce='NFE' then
    vvProtNfe := Fdmbase.tblpedido.fieldbyname('protnfe').asstring
  else
    vvProtNfe := frm_gerenciamentoCuponsF.tblCuponsFiscChNfce.Asstring;


  //if dvlp then
  //  InputQuery('Digitar', 'protocolo', vvProtNfe);

  if not dvlp then
  begin
    if not FileExists(ACBrNFe.Configuracoes.Arquivos.PathSalvar+'\'+StrZero(yearof(Date),4,0)+Strzero(monthof(Date),2,0)+'\'+vvProtNfe+'-nfe.xml') then
    begin
      Mensagem('Xml Inexistente');
      REsult := False;
      Exit;
    end;
  end;

  ACBrNFe.NotasFiscais.LoadFromFile(ACBrNFe.Configuracoes.Arquivos.PathSalvar+'\'+StrZero(yearof(Date),4,0)+Strzero(monthof(Date),2,0)+'\'+vvProtNfe+'-nfe.xml');

  vvConsulta := 'Versao  ='+StringReplace(FormatFloat( '#,##0.00' , ACBrNFe.NotasFiscais[0].NFe.infNFe.Versao),',','.',[rfReplaceAll])+#13+#10+
                'tpAmb   ='+TpAmbToStr(ACBrNFe.NotasFiscais[0].NFe.procNFe.tpAmb)+#13+#10+
                'VerAplic='+ACBrNFe.NotasFiscais[0].NFe.procNFe.verAplic+#13+#10+
                'CUF     ='+InttoStr(ACBrNFe.NotasFiscais[0].NFe.Ide.cUF)+#13+#10+
                'chDfe   ='+ACBrNFe.NotasFiscais[0].NFe.procNFe.chNFe+#13+#10+
  //                  'DhRecbto='+FormatDateTime('yyyy-mm-ddhh-nn-ss', ACBrNFe.NotasFiscais[0].NFe.procNFe.dhRecbto)+#13+#10+
                'DhRecbto='+DateTimeToStr(ACBrNFe.NotasFiscais[0].NFe.procNFe.dhRecbto)+#13+#10+
                'NProt   ='+ACBrNFe.NotasFiscais[0].NFe.procNFe.nProt+#13+#10+
                'DigVal  ='+ACBrNFe.NotasFiscais[0].NFe.procNFe.digval+#13+#10+
                'CStat   ='+IntToStr(ACBrNFe.NotasFiscais[0].NFe.procNFe.cStat)+#13+#10+
                'xMotivo ='+ACBrNFe.NotasFiscais[0].NFe.procNFe.xMotivo;

    fjustificativa := Tfjustificativa.Create(application, '');
    fjustificativa.justificativa.Lines.Clear;
    fjustificativa.Caption := 'Consulta '+NfeNfce;
    fjustificativa.justificativa.ReadOnly := True;
    fjustificativa.justificativa.Lines.Text := {FormatXMLData(UTF8ToString(}vvConsulta{))};
    curfim;
    fjustificativa.showModal;
    FreeandNil(fjustificativa);

    REsult := true;
end;

//**============================================================Funcoes de solicitacoes
Function ImprimirCancelamentoNfeAcbr(DM:TFdmbase; AcbrNfe:TAcbrNfe; NfeNfce:String='NFE'):Boolean;
var
  gtPDFDocument1: TgtPDFDocument;
  wbcli:TFDQuery;
  str_nomeEmp:String;
  vvArquivoPdf:String;
  vvNnf:Integer;
  vvArquivoXml:String;
  vvIncr:Integer;
  vvNomePDFDest:String;
Begin
  try

    if NfeNfce='NFE' then
    begin
      wbcli := TFDQuery.Create(Application);
      wbcli.Connection := Principal.ADConnection1;
      wbcli.open('Select Nome from '+tbcli+ ' where codcli='+fdmbase.tblcli.fieldbyname('codcli').asstring);
      str_nomeEmp := StringReplace(wbcli.fieldbyname('nome').asstring, '&', 'E', [rfReplaceAll]);
      str_nomeEmp := StringReplace(str_nomeEmp, '/', '-', [rfReplaceAll]);

      fdmbase.WBnotasFiscaisAcbr.open('Select * from WbNotasFiscaisacbr where empresa='+inttostr(vvcodemp)+' and Anoped='+Quotedstr(fdmbase.Tblpedido.fieldbyname('Anoped').asstring)+
                                      ' and codped='+fdmbase.tblpedido.fieldbyname('Codped').asString+' and tipo='+Quotedstr('Cancelamento'));

      fEscolheNotaOuEventoAcbr := TfEscolheNotaOuEventoAcbr.Create(Application);
      fEscolheNotaOuEventoAcbr.Caption := 'Escolher qual Nota Gerar PDF do Cancelamento';

      if fEscolheNotaOuEventoAcbr.Showmodal=mrcancel then
        exit;
    end else
    begin
//      fdmbase.WBnotFisAcbrNfce.open('Select * from WBnotFisAcbrNfce where empresa='+inttostr(vvcodemp)+' and incr='+Inttostr(Convint(frm_gerenciamentoCuponsF.tblCuponsFiscIncr.AsString))+
//                                      ' and tipo='+Quotedstr('Cancelamento'));
    end;

    ACBrNFe.EventoNFe.Evento.Clear;

    if NfeNfce='NFE' then
    begin
      vvNnf := fdmbase.WBnotasFiscaisAcbrNNf.Asinteger;
      vvArquivoXml := fdmbase.WBnotasFiscaisAcbrNomeXml.AsString;
      ACBrNFe.EventoNFe.LerXML(ACBrNFe.Configuracoes.Arquivos.PathEvento+'\'+fdmbase.WBnotasFiscaisAcbr.fieldbyname('anomes').asstring+'\'+Fdmbase.wbnotasfiscaisAcbr.fieldbyname('NomeXml').asstring);
    end else
    begin

      fdmbase.WBnotFisAcbrNfce.open('Select * from WBnotFisAcbrNfce where empresa='+inttostr(vvcodemp)+' and incr='+Inttostr(Convint(frm_gerenciamentoCuponsF.tblCuponsFiscIncr.AsString))+
                                      ' and tipo='+Quotedstr('Cupomfiscal'));

      ACBrNFe.NotasFiscais.Clear;
      ACBrNFe.NotasFiscais.LoadFromFile(ACBrNFe.Configuracoes.Arquivos.PathSalvar+'\'+fdmbase.WBnotFisAcbrNfce.fieldbyname('anomes').asstring+'\'+Fdmbase.WBnotFisAcbrNfce.fieldbyname('NomeXml').asstring);

      fdmbase.WBnotFisAcbrNfce.open('Select * from WBnotFisAcbrNfce where empresa='+inttostr(vvcodemp)+' and incr='+Inttostr(Convint(frm_gerenciamentoCuponsF.tblCuponsFiscIncr.AsString))+
                                      ' and tipo='+Quotedstr('Cancelamento'));

      vvArquivoXML := fdmbase.WBnotFisAcbrNfce.fieldbyname('NomeXml').Asstring;
      vvNnf := fdmbase.WBnotFisAcbrNfce.fieldbyname('NNf').Asinteger;
      vvIncr := fdmbase.WBnotFisAcbrNfce.fieldbyname('incr').Asinteger;
      ACBrNFe.EventoNFe.LerXML(ACBrNFe.Configuracoes.Arquivos.PathEvento+'\'+fdmbase.WBnotFisAcbrNfce.fieldbyname('anomes').asstring+'\'+Fdmbase.WBnotFisAcbrNfce.fieldbyname('NomeXml').asstring);
    end;

    ACBrNFe.ImprimirEventoPDF;

    if NfeNfce='NFE' then
    begin
      vvArquivoPdf := StringReplace(Uppercase(ACBrNFe.DANFE.PathPDF+vvArquivoXml), '.XML', '.pdf', [rfReplaceAll]);

      gtPDFDocument1 := TgtPDFDocument.Create(Application);
      gtPDFDocument1.FileName := vvArquivoPdf;

      fPdfViewer := TfPdfViewer.Create(Application, PDFToMemoryStream(gtPDFDocument1), 'Danfe Cancelamento ['+Strzero(fdmbase.wbnotasfiscaisAcbr.fieldbyname('NNF').AsInteger,9,0)+']'+str_nomeEmp+'(V).pdf');
      fPdfViewer.caption := 'PDF Danfe Cancelamento';
      fPdfViewer.showModal;
    end else
    begin

      if (not bln_tsplus)and(not bln_TSPLUSBROWSER) then
        vvNomePDFDest := 'c:\hciweb\pdffiscal\['+StrZero(fdmbase.WBnotFisAcbrNfce.fieldbyname('nNF').asinteger,9,0)+'](V)'+ExtractFileName(ACBrNFeDANFCEFR.ArquivoPDF)
      else
        vvNomePDFDest := '\\tsclient\chciweb\pdffiscal\['+StrZero(fdmbase.WBnotFisAcbrNfce.fieldbyname('nNF').asinteger,9,0)+'](V)'+ExtractFileName(ACBrNFeDANFCEFR.ArquivoPDF);

      if not (CopyFile(PChar(ACBrNFeDANFCEFR.ArquivoPDF), PChar(vvNomePDFDest), false)) then
        Mensagem('Problemas na copia do arquivo pdf para '+vvNomePDFDest);

    end;

  finally
    FreeAndNil(fPdfViewer);
    FreeandNil(gtPDFDocument1);
    FreeandNil(wbcli);
    fdmbase.WBnotasFiscaisAcbr.close;
    fdmbase.WBnotFisAcbrNfce.close;
    //ACBrNFeDANFEFR.Cancelada := False;
  end;
  REsult := true;
end;

Function CartaCorrecaoNfeAcbr(DM:TFdmbase; AcbrNfe:TAcbrNfe):Boolean;
Var
  vvjustificativa:String;
  vvProtocolo:String;
  PesqMax:TFDQuery;
  vvnNf:Integer;
begin

  Try

    fjustificativa := Tfjustificativa.Create(application, '');
    fjustificativa.justificativa.Lines.Clear;
    curfim;

    if dvlp then
      fjustificativa.justificativa.text := 'Carta de correção teste';
    fjustificativa.showModal;
    vvjustificativa := fjustificativa.justificativa.text;
    FreeandNil(fjustificativa);


    fdmbase.WBnotasFiscaisAcbr.open('Select * from WbNotasFiscaisacbr where empresa='+inttostr(vvcodemp)+' and Anoped='+Quotedstr(fdmbase.Tblpedido.fieldbyname('Anoped').asstring)+
                                    ' and codped='+fdmbase.tblpedido.fieldbyname('Codped').asString+' and tipo='+Quotedstr('NotaFiscal'));


    fEscolheNotaOuEventoAcbr := TfEscolheNotaOuEventoAcbr.Create(Application);
    fEscolheNotaOuEventoAcbr.caption := 'Escolher a Nota que Vai ser Criada Carta de Correção';

    if fEscolheNotaOuEventoAcbr.Showmodal=mrcancel then
      exit;

    if not opsn('Confirma Mesmo Para Carta de Correção?') then
    begin
      Result := False;
      Exit;
    end;

    ACBrNFe.EventoNFe.Evento.Clear;
    ACBrNFe.EventoNFe.idLote := fdmbase.wbnotasfiscaisAcbr.fieldbyname('nNf').asinteger;

    ACBrNFe.NotasFiscais.Clear;
    vvProtocolo := StringReplace(fdmbase.WBnotasFiscaisAcbr.fieldbyname('nomexml').asstring, '-nfe.Xml', '', [rfReplaceAll]);
    vvnNf := fdmbase.WBnotasFiscaisAcbr.fieldbyname('nNF').asinteger;

    with ACBrNFe.EventoNFe.Evento.New do
    begin
      infEvento.chNFe := vvProtocolo;
      infEvento.CNPJ   := Tira(vvCnpj);
      infEvento.dhEvento := now;
      infEvento.tpEvento := teCCe;

      PesqMax := TFDQuery.Create(Application);
      PesqMax.Connection := Principal.ADConnection1;
      PesqMax.open('Select count(nnf) as nnnf, nnf from wbnotasfiscaisAcbr where empresa='+inttostr(vvcodemp)+' and Anoped='+Quotedstr(fdmbase.Tblpedido.fieldbyname('Anoped').asstring)+
                                    ' and codped='+fdmbase.tblpedido.fieldbyname('Codped').asString+' and tipo='+Quotedstr('CartaCorrecão')+
                                    ' and Nnf='+inttostr(vvnNf)+' Group by nnf');

      infEvento.nSeqEvento := PesqMax.fieldbyname('nnnf').asinteger+1;
      PesqMax.Close;
      FreeAndNil(PesqMax);
      infEvento.detEvento.xCorrecao := vvJustificativa;
    end;


    Try
      ACBrNFe.EnviarEvento(fdmbase.wbnotasfiscaisAcbr.fieldbyname('nNf').asinteger);
      Mensagem(ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.xMotivo);

      if ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cStat=135 then
      begin
        fdmbase.wbNotasFiscaisAcbr.Append;
        fdmbase.wbNotasFiscaisAcbr.Fieldbyname('Empresa').Asinteger := vvCodEmp;
        fdmbase.wbNotasFiscaisAcbr.Fieldbyname('Anoped').AsString := Fdmbase.TblPedido.Fieldbyname('Anoped').Asstring;
        fdmbase.wbNotasFiscaisAcbr.Fieldbyname('Tipo').AsString := 'CartaCorreção';
        fdmbase.wbNotasFiscaisAcbr.Fieldbyname('Codped').AsInteger := Fdmbase.TblPedido.Fieldbyname('Codped').AsInteger;
        fdmbase.wbNotasFiscaisAcbr.Fieldbyname('nNf').AsInteger := vvnNf;
        fdmbase.wbNotasFiscaisAcbr.Fieldbyname('Data').AsDateTime := Now;
        fdmbase.wbNotasFiscaisAcbr.Fieldbyname('NomeXml').AsString := ExtractFileName(ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.NomeArquivo);
        fdmbase.wbNotasFiscaisAcbr.Fieldbyname('anomes').AsString := StrZero(yearof(Date),4,0)+Strzero(monthof(Date),2,0);
        fdmbase.wbNotasFiscaisAcbr.Post;
      end;

    except on E:Exception do
    begin
      mensagem(e.message);
    End;
    end;

    REsult := True;

  Finally
    fdmbase.WBnotasFiscaisAcbr.Close;

  end;

end;

Function ImprimirCartaCorrecaoNfeAcbr(DM:TFdmbase; AcbrNfe:TAcbrNfe):Boolean;
var
  gtPDFDocument1: TgtPDFDocument;
  wbcli:TFDQuery;
  str_nomeEmp:String;
  vvArquivoPdf:String;
  vvNnf:Integer;
  vvArquivoXml:String;
Begin
  try
    wbcli := TFDQuery.Create(Application);
    wbcli.Connection := Principal.ADConnection1;
    wbcli.open('Select Nome from '+tbcli+ ' where codcli='+fdmbase.tblcli.fieldbyname('codcli').asstring);
    str_nomeEmp := StringReplace(wbcli.fieldbyname('nome').asstring, '&', 'E', [rfReplaceAll]);
    str_nomeEmp := StringReplace(str_nomeEmp, '/', '-', [rfReplaceAll]);

    fdmbase.WBnotasFiscaisAcbr.open('Select * from WbNotasFiscaisacbr where empresa='+inttostr(vvcodemp)+' and Anoped='+Quotedstr(fdmbase.Tblpedido.fieldbyname('Anoped').asstring)+
                                    ' and codped='+fdmbase.tblpedido.fieldbyname('Codped').asString+' and tipo='+Quotedstr('CartaCorreção'));

    fEscolheNotaOuEventoAcbr := TfEscolheNotaOuEventoAcbr.Create(Application);
    fEscolheNotaOuEventoAcbr.Caption := 'Escolher qual Nota Gerar PDF da Carta de Correção';

    if fEscolheNotaOuEventoAcbr.Showmodal=mrcancel then
      exit;

    ACBrNFe.EventoNFe.Evento.Clear;

    vvNnf := fdmbase.WBnotasFiscaisAcbrNNf.Asinteger;
    vvArquivoXml := fdmbase.WBnotasFiscaisAcbrNomeXml.AsString;

    ACBrNFe.EventoNFe.LerXML(ACBrNFe.Configuracoes.Arquivos.PathEvento+'\'+fdmbase.WBnotasFiscaisAcbr.fieldbyname('anomes').asstring+'\'+Fdmbase.wbnotasfiscaisAcbr.fieldbyname('NomeXml').asstring);
    ACBrNFe.ImprimirEventoPDF;

    vvArquivoPdf := StringReplace(Uppercase(ACBrNFe.DANFE.PathPDF+vvArquivoXml), '.XML', '.pdf', [rfReplaceAll]);

    gtPDFDocument1 := TgtPDFDocument.Create(Application);
    gtPDFDocument1.FileName := vvArquivoPdf;

    fPdfViewer := TfPdfViewer.Create(Application, PDFToMemoryStream(gtPDFDocument1), 'Danfe Carta Correção['+Strzero(fdmbase.wbnotasfiscaisAcbr.fieldbyname('NNF').AsInteger,9,0)+']'+str_nomeEmp+'(V).pdf');
    fPdfViewer.caption := 'PDF Danfe Carta Correção';
    fPdfViewer.showModal;
  finally
    FreeAndNil(fPdfViewer);
    FreeandNil(gtPDFDocument1);
    FreeandNil(wbcli);
    fdmbase.WBnotasFiscaisAcbr.close;
    ACBrNFeDANFEFR.Cancelada := False;

  end;
  REsult := true;
end;

function PreviewNfeAcbr(tblPedido, tblItensPedido, tblObsPedido: TFDQuery; Startatransacao: boolean = True): boolean;
var
  //HTTPRIO: THTTPRIO;
  cNF, incrNFe: integer;
  retorno: ArrayOfString;
  str_tx2: WideString;
  contadorPagTemp: Tcontadorpag;
  n: integer;
  vvBonificacao:Double;
  formatdata, formattime:String;
  wbcli:TFDQuery;
  str_NomeEmp:String;
  gtPDFDocument1: TgtPDFDocument;

begin
  result := True;

  try

    for n := 1 to 24 do
    begin
      Datas[n] := 0;
      Dias[n] := 0;
      Valores[n] := 0;
      Cheques[n] := '';
      Centros[n] := '';
    end;

    //**verifico bonificacao
    try
      tblitenspedido.first;
      vvBonificacao := 0;
      while not tblitenspedido.eof do
      begin
        if ((tblItensPedido.FieldByName('Cfop').Asstring='5910')or(tblItensPedido.FieldByName('Cfop').Asstring='6910')) then
          vvBonificacao := vvBonificacao + (tblItensPedido.FieldByName('total').AsFloat);
        tblitenspedido.Next;
      end;
    Finally
      tblitenspedido.first;
    end;

    Datas[1] := Hoje;
    if tblPedido.fieldbyname('ttbenef').asfloat <> 0 then
      Valores[1] := tblPedido.fieldbyname('ttbenef').asfloat
    else
      Valores[1] := tblPedido.fieldbyname('ttnota').asfloat-vvBonificacao;
    formas[1] := '01';

    if Startatransacao then
      StartTransactionSQLAD(True);
    contadorPagTemp := Tcontadorpag.Create(application);
    contadorPagTemp.Button1.Visible := false;
    contadorPagTemp.Caption := 'Processando pré Visualização';
    contadorPagTemp.FormStyle := fsNormal;
    contadorPagTemp.Show;

    if (guardaNFe(tblPedido, tblItensPedido, tblObsPedido, ytiprel, cNF, incrNFe, True)) then
    begin
      if NFe4Acbr(tblPedido.fieldbyname('empresa').AsInteger, cNF, incrNFe, True) then
      begin
        try

          Try
            str_tx2 := '';
            ACBrNFe.NotasFiscais.Validar;
            if ACBrNFe.NotasFiscais[0].Alertas <> '' then
              str_tx2 := ACBrNFe.NotasFiscais[0].Alertas;
          except on E:Exception do
          begin
            str_tx2 := e.message;
          End;
          end;

          try

            ACBrNFe.NotasFiscais.ImprimirPDF;

            formatdata := FormatDatetime('dd-mm-yyyy', Now);
            formattime := FormatDatetime('hh-nn-ss', Now);
            //
            wbcli := TFDQuery.Create(Application);
            wbcli.Connection := Principal.ADConnection1;
            wbcli.open('Select Nome from '+tbcli+ ' where codcli='+fdmbase.tblpedido.fieldbyname('codcli').asstring);
            str_nomeEmp := StringReplace(wbcli.fieldbyname('nome').asstring, '&', 'E', [rfReplaceAll]);
            str_nomeEmp := StringReplace(str_nomeEmp, '/', '-', [rfReplaceAll]);
            //**

            gtPDFDocument1 := TgtPDFDocument.Create(Application);
            gtPDFDocument1.FileName := ACBrNFe.DANFE.PathPDF+'\'+Fdmbase.Tblpedido.fieldbyname('protnfe').asstring+'-nfe.pdf';
            fPdfViewer := TfPdfViewer.Create(Application, PDFToMemoryStream(gtPDFDocument1), 'Danfe ['+Strzero(999999999,9,0)+']['+formatdata+']['+formattime+'] '+str_nomeEmp+'(V).pdf');
            fPdfViewer.caption := 'PDF Danfe';
            fPdfViewer.showModal;
          finally
            FreeAndNil(fPdfViewer);
            FreeandNil(gtPDFDocument1);
          end;

          Result := True;

        finally
        end;
      End else
        Result := False;
    end
    else
      exit;
  finally
    application.MainForm.SetFocus;
    contadorPagTemp.Close;
    FreeAndNil(contadorPagTemp);
    DeleteFile(ACBrNFe.Configuracoes.Arquivos.PathSalvar+'\'+StrZero(yearof(Date),4,0)+Strzero(monthof(Date),2,0)+'\'+Fdmbase.tblpedido.fieldbyname('protnfe').asstring+'-nfe.xml');
    FreeandNil(ACBrNFe);
    FreeandNil(ACBrNFeDANFEFR);
    FreeandNil(AcbrMail);
    if Startatransacao then
      RollBackTransationSQLAD
    else
    begin
      fdmbase.exec.SQL.Clear;
      fdmbase.exec.SQL.Add('delete from ' + tbnfe + ' where cnf=999999999');
      fdmbase.exec.ExecSQL;

      fdmbase.exec.SQL.Clear;
      fdmbase.exec.SQL.Add('delete from ' + tbinfe + ' where cnf=999999999');
      fdmbase.exec.ExecSQL;
    end;
    // **
    for n := 1 to 24 do
    begin
      Datas[n] := 0;
      Valores[n] := 0;
      Cheques[n] := '';
      Centros[n] := '';
      formas[1] := '';
    end;
  end;
end;

Function InutilizarNumeracaoNfeAcbr(DM:TFdmbase;AcbrNfe:TAcbrNfe ; NfeNfce:String='NFE'):Boolean;
var
  vvjustificativa, vvserie, vvnumeroinicial, vvnumerofinal:String;
  gtPDFDocument1: TgtPDFDocument;
begin

  if NfeNfce='NFE' then
  begin
    fInutilizarNfeNumero := TfInutilizarNfeNumero.Create(application);
    fInutilizarNfeNumero.justificativa.Lines.Clear;
    curfim;
    fInutilizarNfeNumero.Serie.text := fdmbase.tblEmpres.fieldbyname('Serie').asstring;

    if dvlp then
      fInutilizarNfeNumero.justificativa.text := 'teste de inutilização';

    if fInutilizarNfeNumero.showModal<>Mrok then
    begin
      FreeandNil(fInutilizarNfeNumero);
      Mensagem('Abortado pelo Usuário');
      Exit;
    end;

    vvjustificativa := fInutilizarNfeNumero.justificativa.text;
    vvserie := fInutilizarNfeNumero.serie.text;
    vvnumeroinicial := fInutilizarNfeNumero.numeroinicial.text;
    vvnumerofinal := fInutilizarNfeNumero.numeroFinal.text;
    FreeandNil(fInutilizarNfeNumero);
  end else
  begin
    fInutilizarNfceNumero := TfInutilizarNfceNumero.Create(application);
    fInutilizarNfceNumero.justificativa.Lines.Clear;
    curfim;
    fInutilizarNfceNumero.Serie.text := fdmbase.tblEmpres.fieldbyname('Serienfce').asstring;

    if dvlp then
      fInutilizarNfceNumero.justificativa.text := 'teste de inutilização';

    if fInutilizarNfceNumero.showModal<>Mrok then
    begin
      FreeandNil(fInutilizarNfceNumero);
      Mensagem('Abortado pelo Usuário');
      Exit;
    end;

    vvjustificativa := fInutilizarNfceNumero.justificativa.text;
    vvserie := fInutilizarNfceNumero.serie.text;
    vvnumeroinicial := fInutilizarNfceNumero.numeroinicial.text;
    vvnumerofinal := fInutilizarNfceNumero.numeroFinal.text;
    FreeandNil(fInutilizarNfceNumero);

  end;

  Try

    if NfeNfce='NFE' then
      ACBrNFe.WebServices.Inutiliza(tira(vvcnpj), vvJustificativa, yearof(date), 55, Convint(vvSerie), Convint(vvnumeroinicial), ConvInt(vvnumerofinal))
    else
      ACBrNFe.WebServices.Inutiliza(tira(vvcnpj), vvJustificativa, yearof(date), 65, Convint(vvSerie), Convint(vvnumeroinicial), ConvInt(vvnumerofinal));

    Mensagem(ACBrNFe.WebServices.Inutilizacao.xMotivo);

    if ACBrNFe.WebServices.Inutilizacao.cStat=102 then
    begin

      if NfeNfce='NFE' then
      begin
        fdmbase.wbInutilizarNFeAcbr.open('Select first 0 * From wbInutilizarNFeAcbr');
        fdmbase.wbInutilizarNFeAcbr.Append;
        fdmbase.wbInutilizarNFeAcbr.Fieldbyname('Empresa').Asinteger := vvCodEmp;
        fdmbase.wbInutilizarNFeAcbr.Fieldbyname('Data').AsDateTime := Now;
        fdmbase.wbInutilizarNFeAcbr.Fieldbyname('NomeXml').AsString := ExtractFileName(ACBrNFe.WebServices.Inutilizacao.NomeArquivo);
        fdmbase.wbInutilizarNFeAcbr.Fieldbyname('anomes').AsString := StrZero(yearof(Date),4,0)+Strzero(monthof(Date),2,0);
        fdmbase.wbInutilizarNFeAcbr.Fieldbyname('Serie').AsString := vvserie;
        fdmbase.wbInutilizarNFeAcbr.Fieldbyname('numeroinicial').Asinteger := Convint(vvnumeroinicial);
        fdmbase.wbInutilizarNFeAcbr.Fieldbyname('numerofinal').Asinteger := Convint(vvnumerofinal);
        fdmbase.wbInutilizarNFeAcbr.Post;
      end else
      begin
        fdmbase.wbInutilizarNFceAcbr.open('Select first 0 * From wbInutilizarNFceAcbr');
        fdmbase.wbInutilizarNFceAcbr.Append;
        fdmbase.wbInutilizarNFceAcbr.Fieldbyname('Empresa').Asinteger := vvCodEmp;
        fdmbase.wbInutilizarNFceAcbr.Fieldbyname('Data').AsDateTime := Now;
        fdmbase.wbInutilizarNFceAcbr.Fieldbyname('NomeXml').AsString := ExtractFileName(ACBrNFe.WebServices.Inutilizacao.NomeArquivo);
        fdmbase.wbInutilizarNFceAcbr.Fieldbyname('anomes').AsString := StrZero(yearof(Date),4,0)+Strzero(monthof(Date),2,0);
        fdmbase.wbInutilizarNFceAcbr.Fieldbyname('Serie').AsString := vvserie;
        fdmbase.wbInutilizarNFceAcbr.Fieldbyname('numeroinicial').Asinteger := Convint(vvnumeroinicial);
        fdmbase.wbInutilizarNFceAcbr.Fieldbyname('numerofinal').Asinteger := Convint(vvnumerofinal);
        fdmbase.wbInutilizarNFceAcbr.Post;
      end;
    end;
    Result := True;
  Finally
    FreeAndNil(fPdfViewer);
    FreeandNil(gtPDFDocument1);
  end;

end;

Function ImprimirInutilizacaoNfeAcbr(DM:TFdmbase; AcbrNfe:TAcbrNfe ; NfeNfce:String='NFE'):Boolean;
var
  gtPDFDocument1: TgtPDFDocument;
  str_nomeEmp:String;
  vvArquivoPdf:String;
  vvNnf:Integer;
  vvArquivoXml:String;
  vvNomePDFDest:String;
  vvnumeroinicial,vvnumerofinal:Integer;
Begin
  try

    str_nomeEmp := StringReplace(fdmbase.tblempres.fieldbyname('nomemp').asstring, '&', 'E', [rfReplaceAll]);
    str_nomeEmp := StringReplace(str_nomeEmp, '/', '-', [rfReplaceAll]);

    if NfeNfce ='NFE' then
      fdmbase.wbInutilizarNFeAcbr.open('Select * from wbInutilizarNFeAcbr where data>DATEADD(-30 DAY TO data)')
    else
      fdmbase.wbInutilizarNFceAcbr.open('Select * from wbInutilizarNFceAcbr where data>DATEADD(-30 DAY TO data)');


    fEscolheInutilizacaoAcbr := TfEscolheInutilizacaoAcbr.Create(Application);
    if NfeNfce ='NFCE' then
      fEscolheInutilizacaoAcbr.Dbgrid1.DataSource := fdmbase.wbInutilizarNFceAcbrDT;
    if fEscolheInutilizacaoAcbr.Showmodal=mrcancel then
      exit;

    ACBrNFe.EventoNFe.Evento.Clear;

    if NfeNfce ='NFE' then
    begin
      vvArquivoXml := fdmbase.wbInutilizarNFeAcbrNomeXml.AsString;

      ACBrNFe.InutNFe.LerXML(ACBrNFe.Configuracoes.Arquivos.PathInu+'\'+fdmbase.wbInutilizarNFeAcbr.fieldbyname('anomes').asstring+'\'+Fdmbase.wbInutilizarNFeAcbr.fieldbyname('NomeXml').asstring);
      ACBrNFe.ImprimirInutilizacaoPDF;

      vvArquivoPdf := StringReplace(Uppercase(ACBrNFe.DANFE.PathPDF+'\'+vvArquivoXml), '.XML', '.pdf', [rfReplaceAll]);

      gtPDFDocument1 := TgtPDFDocument.Create(Application);
      gtPDFDocument1.FileName := vvArquivoPdf;

      fPdfViewer := TfPdfViewer.Create(Application, PDFToMemoryStream(gtPDFDocument1), 'Danfe Inutilização['+Strzero(fdmbase.wbnotasfiscaisAcbr.fieldbyname('NNF').AsInteger,9,0)+']'+str_nomeEmp+'(V).pdf');
      fPdfViewer.caption := 'PDF Danfe Inutilização';
      fPdfViewer.showModal;
    end else
    begin

//      fdmbase.WBnotFisAcbrNfce.open('Select * from WBnotFisAcbrNfce where empresa='+inttostr(vvcodemp)+' and incr='+Inttostr(Convint(frm_gerenciamentoCuponsF.tblCuponsFiscIncr.AsString))+
//                                      ' and tipo='+Quotedstr('Cupomfiscal'));
//      ACBrNFe.NotasFiscais.Clear;
//      ACBrNFe.NotasFiscais.LoadFromFile(ACBrNFe.Configuracoes.Arquivos.PathSalvar+'\'+fdmbase.WBnotFisAcbrNfce.fieldbyname('anomes').asstring+'\'+Fdmbase.WBnotFisAcbrNfce.fieldbyname('NomeXml').asstring);

      ACBrNFe.InutNFe.LerXML(ACBrNFe.Configuracoes.Arquivos.PathInu+'\'+fdmbase.wbInutilizarNFceAcbr.fieldbyname('anomes').asstring+'\'+Fdmbase.wbInutilizarNFceAcbr.fieldbyname('NomeXml').asstring);
      vvnumeroinicial := ACBrNFe.InutNFe.nNFIni;
      vvnumerofinal := ACBrNFe.InutNFe.nNFFin;
      ACBrNFe.ImprimirInutilizacaoPDF;

      if (not bln_tsplus)and(not bln_TSPLUSBROWSER) then
        vvNomePDFDest := 'c:\hciweb\pdffiscal\['+StrZero(vvnumeroinicial,9,0)+'-'+StrZero(vvnumerofinal,9,0)  +'](V)'+ExtractFileName(ACBrNFeDANFCEFR.ArquivoPDF)
      else
        vvNomePDFDest := '\\tsclient\chciweb\pdffiscal\['+StrZero(fdmbase.WBnotFisAcbrNfce.fieldbyname('nNF').asinteger,9,0)+'](V)'+ExtractFileName(ACBrNFeDANFCEFR.ArquivoPDF);

      if not (CopyFile(PChar(ACBrNFeDANFCEFR.ArquivoPDF), PChar(vvNomePDFDest), false)) then
        Mensagem('Problemas na copia do arquivo pdf para '+vvNomePDFDest);



    end;

  finally
    FreeAndNil(fPdfViewer);
    FreeandNil(gtPDFDocument1);
    fdmbase.wbInutilizarNFceAcbr.close;
    fdmbase.wbInutilizarNFeAcbr.close;
    FreeandNil(fEscolheInutilizacaoAcbr);
  end;
  REsult := true;
end;

Function StatusServicoAcbr(AcbrNfe:TAcbrNfe):Boolean;
var
  vvcomando:String;
  vvConsulta:String;
begin

  ACBrNFe.WebServices.StatusServico.Executar;

  vvConsulta :=
                'tpAmb      ='+TpAmbToStr(ACBrNFe.WebServices.StatusServico.tpAmb)+#13+#10+
                'VerAplic   ='+ACBrNFe.WebServices.StatusServico.verAplic+#13+#10+
                'CStat      ='+IntToStr(ACBrNFe.WebServices.StatusServico.cStat)+#13+#10+
                'xMotivo    ='+ACBrNFe.WebServices.StatusServico.xMotivo+#13+#10+
                'cUF        ='+IntToStr(ACBrNFe.WebServices.StatusServico.cUF)+#13+#10+
                'dhRecbto   ='+DateTimeToStr(ACBrNFe.WebServices.StatusServico.dhRecbto)+#13+#10+
                'tMed       ='+IntToStr(ACBrNFe.WebServices.StatusServico.TMed)+#13+#10+
                'dhRetorno  ='+DateTimeToStr(ACBrNFe.WebServices.StatusServico.dhRetorno)+#13+#10+
                'xObs       ='+ACBrNFe.WebServices.StatusServico.xObs;

  fjustificativa := Tfjustificativa.Create(application, '');
  fjustificativa.justificativa.Lines.Clear;
  fjustificativa.justificativa.ReadOnly := True;
  fjustificativa.Caption := 'Status do Serviço';
  fjustificativa.justificativa.Lines.Text := vvConsulta;
  curfim;
  fjustificativa.showModal;
  FreeandNil(fjustificativa);

end;

Function ConsultarCertificadosACBR(AcbrNfe:TAcbrNfe):Boolean;
var
  vvcomando:String;
  vvconsulta:String;
begin

  vvConsulta :=
                 'Série        :'+ACBrNFe.SSL.CertNumeroSerie+#13+#10+
                 'Data Validade:'+FormatDateTimeBr(ACBrNFe.SSL.CertDataVenc)+#13+#10+
                 'Usuário      :'+ACBrNFe.SSL.CertIssuerName + sLineBreak +
                 'Certificadora:'+ACBrNFe.SSL.CertCertificadora+#13+#10+
                 'Assunto      :'+ACBrNFe.SSL.CertSubjectName + sLineBreak +
                 'Razão Social :'+ACBrNFe.SSL.CertRazaoSocial+ sLineBreak +
                 'Cnpj         :'+ACBrNFe.SSL.CertCNPJ+ sLineBreak +
                 'Versão SS Lib:'+ACBrNFe.SSL.SSLCryptClass.Versao;

  fjustificativa := Tfjustificativa.Create(application, '');
  fjustificativa.Caption := 'Informações do Certificado';
  fjustificativa.justificativa.Lines.Clear;
  fjustificativa.justificativa.ReadOnly := True;
  fjustificativa.justificativa.Lines.Text := vvConsulta;
  curfim;
  fjustificativa.showModal;
  FreeandNil(fjustificativa);

end;

Function ImprimirXMLNfeAcbr(AcbrNfe:TAcbrNfe; NfeNfce:String='NFE'):Boolean;
Var
  vvProtNfe:String;
begin

  Try

    if NfeNfce='NFE' then
    begin
      fdmbase.WBnotasFiscaisAcbr.open('Select * from WbNotasFiscaisacbr where empresa='+inttostr(vvcodemp)+' and Anoped='+Quotedstr(fdmbase.Tblpedido.fieldbyname('Anoped').asstring)+
                                      ' and codped='+fdmbase.tblpedido.fieldbyname('Codped').asString+' and tipo='+Quotedstr('NotaFiscal'));

      fEscolheNotaOuEventoAcbr := TfEscolheNotaOuEventoAcbr.Create(Application);
      fEscolheNotaOuEventoAcbr.caption := 'Escolher a Nota';

      if fEscolheNotaOuEventoAcbr.Showmodal=mrcancel then
        exit;

      vvProtNfe := fdmbase.WBNotasfiscaisAcbr.fieldbyname('NomeXml').Asstring;
    end else
    begin
      fdmbase.WBnotFisAcbrNfce.open('Select * from WBnotFisAcbrNfce where empresa='+inttostr(vvcodemp)+' and incr='+Inttostr(Convint(frm_gerenciamentoCuponsF.tblCuponsFiscIncr.AsString))+
                                      ' and tipo='+Quotedstr('CupomFiscal'));
      vvProtNfe := fdmbase.WBnotFisAcbrNfce.fieldbyname('NomeXml').Asstring;
    end;

    //if dvlp then
     //putQuery('Digitar', 'Xml', vvProtNfe);

    fjustificativa := Tfjustificativa.Create(application, vvProtNfe);
    fjustificativa.justificativa.Lines.Clear;
    curfim;

    if NfeNfce='NFE' then
      fjustificativa.justificativa.Lines.LoadFromFile(ACBrNFe.Configuracoes.Arquivos.PathSalvar+'\'+fdmbase.WBnotasFiscaisAcbr.fieldbyname('anomes').asstring+'\'+vvProtNfe)
    else
      fjustificativa.justificativa.Lines.LoadFromFile(ACBrNFe.Configuracoes.Arquivos.PathSalvar+'\'+fdmbase.WBnotFisAcbrNfce.fieldbyname('anomes').asstring+'\'+vvProtNfe);

    fjustificativa.showModal;
    FreeandNil(fjustificativa);

    REsult := True;

  Finally
    fdmbase.WBnotFisAcbrNfce.close;
    fdmbase.wbnotasfiscaisAcbr.Close;
  end;

end;

Function ImprimirXMLCancelamentoNfeAcbr(AcbrNfe:TAcbrNfe; NfeNfce:String='NFE'):Boolean;
Var
  vvProtNfe:String;
begin

  Try

    if NfeNfce='NFE' then
    begin

      fdmbase.WBnotasFiscaisAcbr.open('Select * from WbNotasFiscaisacbr where empresa='+inttostr(vvcodemp)+' and Anoped='+Quotedstr(fdmbase.Tblpedido.fieldbyname('Anoped').asstring)+
                                      ' and codped='+fdmbase.tblpedido.fieldbyname('Codped').asString+' and tipo='+Quotedstr('Cancelamento'));

      fEscolheNotaOuEventoAcbr := TfEscolheNotaOuEventoAcbr.Create(Application);
      fEscolheNotaOuEventoAcbr.caption := 'Escolher a Nota Cancelada';

      if fEscolheNotaOuEventoAcbr.Showmodal=mrcancel then
        exit;


      vvProtNfe := fdmbase.WBNotasfiscaisAcbr.fieldbyname('NomeXml').Asstring;
    end else
    begin
      fdmbase.WBnotFisAcbrNfce.open('Select * from WBnotFisAcbrNfce where empresa='+inttostr(vvcodemp)+' and incr='+Inttostr(Convint(frm_gerenciamentoCuponsF.tblCuponsFiscIncr.AsString))+
                                      ' and tipo='+Quotedstr('Cancelamento'));
      vvProtNfe := fdmbase.WBnotFisAcbrNfce.fieldbyname('NomeXml').Asstring;
    end;

    //if dvlp then
    // InputQuery('Digitar', 'Xml', vvProtNfe);

    fjustificativa := Tfjustificativa.Create(application, vvProtNfe);
    fjustificativa.justificativa.Lines.Clear;
    curfim;

    if NfeNfce='NFE' then
       fjustificativa.justificativa.Lines.LoadFromFile(ACBrNFe.Configuracoes.Arquivos.PathEvento+'\'+fdmbase.WBnotasFiscaisAcbr.fieldbyname('anomes').asstring+'\'+Fdmbase.wbnotasfiscaisAcbr.fieldbyname('NomeXml').asstring)
    else
       fjustificativa.justificativa.Lines.LoadFromFile(ACBrNFe.Configuracoes.Arquivos.PathEvento+'\'+fdmbase.WBnotFisAcbrNfce.fieldbyname('anomes').asstring+'\'+Fdmbase.WBnotFisAcbrNfce.fieldbyname('NomeXml').asstring);

    fjustificativa.showModal;
    FreeandNil(fjustificativa);

    REsult := True;

  Finally
    fdmbase.wbnotasfiscaisAcbr.Close;
  end;

end;

Function ImprimirXMLCartacorrecaoNfe(AcbrNfe:TAcbrNfe):Boolean;
Var
  vvProtNfe:String;
begin

  Try

    fdmbase.WBnotasFiscaisAcbr.open('Select * from WbNotasFiscaisacbr where empresa='+inttostr(vvcodemp)+' and Anoped='+Quotedstr(fdmbase.Tblpedido.fieldbyname('Anoped').asstring)+
                                    ' and codped='+fdmbase.tblpedido.fieldbyname('Codped').asString+' and tipo='+Quotedstr('CartaCorreção'));

    fEscolheNotaOuEventoAcbr := TfEscolheNotaOuEventoAcbr.Create(Application);
    fEscolheNotaOuEventoAcbr.caption := 'Escolher a Nota';

    if fEscolheNotaOuEventoAcbr.Showmodal=mrcancel then
      exit;


    vvProtNfe := fdmbase.WBNotasfiscaisAcbr.fieldbyname('NomeXml').Asstring;

    //if dvlp then
    // InputQuery('Digitar', 'Xml', vvProtNfe);

    fjustificativa := Tfjustificativa.Create(application, vvProtNfe);
    fjustificativa.justificativa.Lines.Clear;
    curfim;

    fjustificativa.justificativa.Lines.LoadFromFile(ACBrNFe.Configuracoes.Arquivos.PathEvento+'\'+fdmbase.WBnotasFiscaisAcbr.fieldbyname('anomes').asstring+'\'+Fdmbase.wbnotasfiscaisAcbr.fieldbyname('NomeXml').asstring);

    fjustificativa.showModal;
    FreeandNil(fjustificativa);

    REsult := True;

  Finally
    fdmbase.wbnotasfiscaisAcbr.Close;
  end;

end;

Function ImprimirXMLInutilizazadas(AcbrNfe:TAcbrNfe; NfeNfce:String='NFE'):Boolean;
Var
  vvProtNfe:String;
begin

  Try

    if NfeNfce='NFE' then
      fdmbase.wbInutilizarNFeAcbr.open('Select * from wbInutilizarNFeAcbr where data>DATEADD(-30 DAY TO data)'+' and empresa='+inttostr(vvcodemp))
    else
      fdmbase.wbInutilizarNFceAcbr.open('Select * from wbInutilizarNFceAcbr where data>DATEADD(-30 DAY TO data)'+' and empresa='+inttostr(vvcodemp));


    fEscolheInutilizacaoAcbr := TfEscolheInutilizacaoAcbr.Create(Application);
    if NfeNfce='NFCE' then
      fEscolheInutilizacaoAcbr.dbgrid1.DataSource := fdmbase.wbInutilizarNFceAcbrDT;

    fEscolheInutilizacaoAcbr.caption := 'Escolher a Período inutilizado';

    if fEscolheInutilizacaoAcbr.Showmodal=mrcancel then
      exit;

    ACBrNFe.EventoNFe.Evento.Clear;

    if NfeNfce='NFE' then
       vvProtNfe := fdmbase.wbInutilizarNFeAcbrNomeXml.AsString
    else
       vvProtNfe := fdmbase.wbInutilizarNFceAcbr.fieldbyname('NomeXml').AsString;

    //if dvlp then
    // InputQuery('Digitar', 'Xml', vvProtNfe);

    fjustificativa := Tfjustificativa.Create(application, vvProtNfe);
    fjustificativa.justificativa.Lines.Clear;
    curfim;

    if NfeNfce='NFE' then
      fjustificativa.justificativa.Lines.LoadFromFile(ACBrNFe.Configuracoes.Arquivos.PathInu+'\'+fdmbase.wbInutilizarNFeAcbr.fieldbyname('anomes').asstring+'\'+vvProtNfe)
    else
      fjustificativa.justificativa.Lines.LoadFromFile(ACBrNFe.Configuracoes.Arquivos.PathInu+'\'+fdmbase.wbInutilizarNFceAcbr.fieldbyname('anomes').asstring+'\'+vvProtNfe);

    fjustificativa.showModal;
    FreeandNil(fjustificativa);

    REsult := True;

  Finally
    fdmbase.wbnotasfiscaisAcbr.Close;
  end;

end;

function geraChaveNota(nNF, cNF: integer; dhEmi: TDateTime; cnpj, area, serie: string): string;
var
  str_chNFe: string;
begin
  result := '';
  try
    str_chNFe := copy(area, 1, 2);
    str_chNFe := str_chNFe + FormatDatetime('yymm', dhEmi);
    str_chNFe := str_chNFe + tira(cnpj);
    str_chNFe := str_chNFe + '65';
    str_chNFe := str_chNFe + strzero(convint(serie), 3, 0);
    str_chNFe := str_chNFe + strzero(nNF, 9, 0);
    str_chNFe := str_chNFe + '1';
    str_chNFe := str_chNFe + strzero(cNF, 8, 0);
    str_chNFe := str_chNFe + Modulo11(str_chNFe);
  finally
    result := str_chNFe;
    //mensagem(result);
  end;
end;












end.
