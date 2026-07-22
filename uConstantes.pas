unit uConstantes;

interface

uses
  System.JSON;

  {$region 'Constantes Mensagens'}
    const  msgCadastroNovoSucesso = 'Cadastro realizado com sucesso.';
    const  msgCadastroAlteraSucesso = 'Cadastro alterado com sucesso.';
    const  msgOperacaoSucesso = 'Operação realizada com sucesso.';
  {$endregion 'Constantes Cadastros'}

  {$region 'Resources Cadastros e Login'}
    var baseurlCadastros: string;
    var baseurlImpressao: string;
    var vvcodemp: string;
    var vvNomeUsuarioLogin: string;
    var JParGer: TJSONObject;
    var vvCaixa: string;

//    var    wPastaTmpPdf: string;
    var    wUrlRelatorioTmpPdf: string;
    //variaveis utilizadas no pdv
//    var wVlDesPdv: double;
//    var wPerDescPdv: double;
//    var wVlTotPdv: double;
//    var wVlTotComDescPdv: double;

    const postLogin     = 'postLogin';
    const getPerfilUsuarioPdv = 'getPerfilUsuarioPdv';
    const getUsuario    = 'getUsuario';
    const putUsuario    = 'putUsuario';
    const postUsuario   = 'postUsuario';
    const deleteUsuario = 'deleteUsuario';

    const getPdvConfiguracao = 'getPdvConfiguracao';
    const putPdvConfiguracao = 'putPdvConfiguracao';


    const getAtividade    = 'getAtividade';
    const putAtividade    = 'putAtividade';
    const postAtividade   = 'postAtividade';
    const deleteAtividade = 'deleteAtividade';

    const getGrupo    = 'getGrupo';
    const putGrupo    = 'putGrupo';
    const postGrupo   = 'postGrupo';
    const deleteGrupo = 'deleteGrupo';

    const getClassificacao    = 'getClassificacao';
    const putClassificacao    = 'putClassificacao';
    const postClassificacao   = 'postClassificacao';
    const deleteClassificacao = 'deleteClassificacao';

    const getArea    = 'getArea';
    const putArea    = 'putArea';
    const postArea   = 'postArea';
    const deleteArea = 'deleteArea';

    const getPais    = 'getPais';
    const putPais    = 'putPais';
    const postPais   = 'postPais';
    const deletePais = 'deletePais';

    const getRegiao    = 'getRegiao';
    const putRegiao    = 'putRegiao';
    const postRegiao   = 'postRegiao';
    const deleteRegiao = 'deleteRegiao';

    const getEmpresa    = 'getEmpresa';
    const postEmpresa   = 'postEmpresa';
    const putEmpresa    = 'putEmpresa';
    const deleteEmpresa = 'deleteEmpresa';

    const getCentroCusto    = 'getCentroCusto';
    const postCentroCusto   = 'postCentroCusto';
    const putCentroCusto    = 'putCentroCusto';
    const deleteCentroCusto = 'deleteCentroCusto';

    const getDepartamento    = 'getDepartamento';
    const postDepartamento   = 'postDepartamento';
    const putDepartamento    = 'putDepartamento';
    const deleteDepartamento = 'deleteDepartamento';

    const getBanco    = 'getBanco';
    const postBanco   = 'postBanco';
    const putBanco    = 'putBanco';
    const deleteBanco = 'deleteBanco';

    const getCartao    = 'getCartao';
    const postCartao   = 'postCartao';
    const putCartao    = 'putCartao';
    const deleteCartao = 'deleteCartao';

    const getCondPag    = 'getCondPag';
    const postCondPag   = 'postCondPag';
    const putCondPag    = 'putCondPag';
    const deleteCondPag = 'deleteCondPag';

    const getCliente    = 'getCliente';
    const postCliente   = 'postCliente';
    const putCliente    = 'putCliente';
    const deleteCliente = 'deleteCliente';

    const getVendedor    = 'getVendedor';
    const postVendedor   = 'postVendedor';
    const putVendedor    = 'putVendedor';
    const deleteVendedor = 'deleteVendedor';

    const getCfop    = 'getCfop';
    const postCfop   = 'postCfop';
    const putCfop    = 'putCfop';
    const deleteCfop = 'deleteCfop';

    const getStPis = 'getStPis';
    const getStCofins = 'getStCofins';
    const getStIpi = 'getStIpi';

    const getIcmsInt = 'getIcmsInt';
    const putIcmsInt = 'putIcmsInt';
    const postIcmsInt = 'postIcmsInt';

    const getProduto = 'getProduto';
    const putProduto = 'putProduto';
    const postProduto = 'postProduto';
    const getProdutoSimplificado = 'getProdutoSimplificado';

    const getGrade1 = 'getGrade1';
    const putGrade1 = 'putGrade1';
    const postGrade1 = 'postGrade1';

    const getGrade2 = 'getGrade2';
    const putGrade2 = 'putGrade2';
    const postGrade2 = 'postGrade2';

    const getCidades    = 'getCidades';

    const getCupom    = 'getCupom';
    const postCupom    = 'postCupom';
    const postFinalizaPdv = 'postFinalizaPdv';
    const getMovCupom = 'getMovCupom';
    const getMovCupomP = 'getMovCupomP';

    const getItemCupom    = 'getItemCupom';

    const putTrocaCodCli = 'putTrocaCodCli';

    const putCnpjConfig = 'putCnpjConfig';
    const getCnpjConfig = 'getCnpjConfig';

    const enviaNfce = 'enviaNfce';
//16062026    const inserirNfce = 'inserirNfce';

    const getVerificaCaixaFechado = 'getVerificaCaixaFechado';
    const getVerificaCaixa = 'getVerificaCaixa';
    const postAbrirCaixa = 'postAbrirCaixa';
    const getFechaCaixaAbrirPesquisaDetalhe = 'getFechaCaixaAbrirPesquisaDetalhe';
    const postFecharCaixa = 'postFecharCaixa';
    const getMovCaixa = 'getMovCaixa';

    const getMovContas = 'getMovContas';
    const getConta = 'getConta';
    const deleteConta = 'deleteConta';
    const putBaixaConta = 'putBaixaConta';
    const putBaixaContaPdvUtilidades = 'putBaixaContaPdvUtilidades';
    const getMovContasPdvUtilidades = 'getMovContasPdvUtilidades';
    const getEstornaContaPdvUtilidades = 'getEstornaContaPdvUtilidades';
    const putEstornaContaPdvUtilidades = 'putEstornaContaPdvUtilidades';
    const postConta = 'postConta';
    const putConta = 'putConta';

    const getSangria = 'getSangria';
    const postSangria = 'postSangria';
    const putSangria = 'putSangria';
    const deleteSangria = 'deleteSangria';

    const getReforco = 'getReforco';
    const deleteReforco = 'deleteReforco';
    const postReforco = 'postReforco';
    const putReforco = 'putReforco';

    //Impressões
    const getRecibo = 'getRecibo';
    const getRelCaixaPorCliente = 'getRelCaixaPorCliente';
    const getRelGerNFCE = 'getRelGerNFCE';
    const getRelPagRec = 'getRelPagRec';
    const getCaixaPeriodo = 'getCaixaPeriodo';
    const getContaAbcCliFor = 'getContaAbcCliFor';
    const getCaixaCcusto = 'getCaixaCcusto';


  {$endregion 'Resources Cadastros e Login'}

implementation

end.
