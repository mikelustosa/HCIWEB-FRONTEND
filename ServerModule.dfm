object UniServerModule: TUniServerModule
  OldCreateOrder = False
  TempFolder = 'temp\'
  SessionTimeout = 12000000
  Title = 'HCI WEB'
  BGColor = -1
  AjaxTimeout = 900000
  SuppressErrors = [errObjectNotFound, errAjax]
  Bindings = <>
  MainFormDisplayMode = mfPage
  CustomFiles.Strings = (
    '\files\jquery.mask.js'
    '\files\jquery.mask.min.js'
    '\files\signature\signature-pad.css'
    '\files\socket.io.js'
    '\files\js\push.min.js'
    '\files\js\chart.js'
    '\files\js\xlsx.full.min.js')
  CustomMeta.Strings = (
    
      '<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/' +
      'dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-K' +
      'K94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"' +
      ' crossorigin="anonymous">'
    
      '<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3' +
      '/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkB' +
      'IFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigi' +
      'n="anonymous"></script>'
    ''
    ''
    ''
    ''
    '<script>'
    '      //function toBase64Utf8(str) {'
    '        //if (window.TextEncoder) {'
    '          //const bytes = new TextEncoder().encode(str);'
    '          //let bin = "";'
    
      '          //for (let i = 0; i < bytes.length; i++) bin += String' +
      '.fromCharCode(bytes[i]);'
    '          //return btoa(bin);'
    '        //} else {'
    '          //return btoa(unescape(encodeURIComponent(str)));'
    '        //}'
    '      //}'
    ''
    '      function submitLogin() {'
    '        var usuario = document.getElementById("usuario").value;'
    '        var senha = document.getElementById("senha").value;'
    
      '        var jsonString = JSON.stringify({ usuario: usuario, senh' +
      'a: senha });'
    '        //var usuarioESenhaBase64 = toBase64Utf8(jsonString);'
    '        var usuarioESenhaBase64 = jsonString;'
    '        // Chama ajaxRequest diretamente no frame htmlLogin'
    
      '        //top.ajaxRequest(top.frmLogin.htmlLogin, "login:" + usu' +
      'arioESenhaBase64, []);'
    '        alert(usuarioESenhaBase64);'
    '      }'
    '</script> '
    ''
    '<script>'
    '    function scrollParaInicio(idElemento) {'
    '      const elemento = document.getElementById(idElemento);'
    '      if (elemento) {'
    '        // Faz a rolagem para o topo (posi'#231#227'o 0)'
    '        window.scrollTo({'
    '          top: 0,'
    '          behavior: "smooth" // rolagem suave'
    '        });'
    '      }'
    '    }'
    '</script>'
    ''
    ''
    '<script>'
    'function aplicarMascaraTelefone(idCampo) {'
    '  var el = document.getElementById(idCampo);'
    '  if (!el) {'
    '    console.error("Campo n'#227'o encontrado:", idCampo);'
    '    return;'
    '  }'
    ''
    
      '  el.setAttribute("maxlength", "15"); // espa'#231'o para (00) 00000-' +
      '0000'
    ''
    '  function formatarTelefone(valor) {'
    '    var digitos = valor.replace(/\D/g, "").slice(0, 11);'
    '    if (digitos.length === 0) return "";'
    ''
    '    var ddd = digitos.substring(0, 2);'
    '    var resto = digitos.substring(2);'
    ''
    '    // Se tiver 11 d'#237'gitos -> celular'
    '    if (digitos.length === 11) {'
    
      '      return "(" + ddd + ") " + resto.substring(0, 5) + "-" + re' +
      'sto.substring(5);'
    '    }'
    '    // Se tiver at'#233' 10 d'#237'gitos -> fixo'
    '    else {'
    
      '      return "(" + ddd + ") " + resto.substring(0, 4) + (resto.l' +
      'ength > 4 ? "-" + resto.substring(4) : "");'
    '    }'
    '  }'
    ''
    '  function aoDigitar() {'
    '    var antes = el.value;'
    '    el.value = formatarTelefone(antes);'
    '  }'
    ''
    '  el.addEventListener("input", aoDigitar);'
    '  el.addEventListener("paste", function () {'
    '    setTimeout(aoDigitar, 0);'
    '  });'
    ''
    '  // j'#225' formata se tiver valor inicial'
    '  aoDigitar();'
    '}'
    ''
    ''
    'function removerMascaraTelefone(idCampo) {'
    '  var el = document.getElementById(idCampo);'
    '  if (!el) return;'
    '  // Remove tudo que n'#227'o for n'#250'mero'
    '  el.value = (el.value || "").replace(/\D/g, "");'
    '}'
    ''
    '//FUNCAO PARA MUDAR O CODIGO DA EMPRESA NO CADASTRO DO USUARIO'
    'function mudarempresa(val){   '
    '    let el = document.getElementById("inputmudarempresa");'
    '    if (el) {        '
    '        el.value = val;   // div/span/p usa innerText'
    '    } else {'
    '        console.log("Elemento n'#227'o encontrado!");'
    '    }'
    '}'
    ''
    ''
    ''
    '</script>'
    ''
    ''
    ''
    ''
    '')
  ServerMessages.UnavailableErrMsg = 'Falha de comunica'#231#227'o'
  ServerMessages.LoadingMessage = 'Carregando'
  ServerMessages.ExceptionTemplate.Strings = (
    '<html>'
    '<head>'
    
      '<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootst' +
      'rap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iX' +
      'CbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crosso' +
      'rigin="anonymous">'
    
      '<meta name="viewport" content="width=device-width, initial-scale' +
      '=1">'
    
      '<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/boo' +
      'tstrap/3.3.7/css/bootstrap.min.css">'
    
      '<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/' +
      'jquery.min.js"></script>'
    
      '<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/' +
      'bootstrap.min.js"></script>'
    '</head>'
    '<body bgcolor="#dfe8f6">'
    
      '<div class="alert alert-primary" role="alert"><span class="glyph' +
      'icon">&#xe023;</span>'
    
      '  Sua sess'#227'o foi finalizada. <a href="[###url###]" class="alert-' +
      'link">Clique aqui</a> para reiniciar.'
    '</div>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionTemplate.Strings = (
    '<html>'
    '<head>'
    
      '<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootst' +
      'rap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iX' +
      'CbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crosso' +
      'rigin="anonymous">'
    
      '<meta name="viewport" content="width=device-width, initial-scale' +
      '=1">'
    
      '<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/boo' +
      'tstrap/3.3.7/css/bootstrap.min.css">'
    
      '<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/' +
      'jquery.min.js"></script>'
    
      '<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/' +
      'bootstrap.min.js"></script>'
    '</head>'
    '<body bgcolor="#dfe8f6">'
    
      '<div class="alert alert-primary" role="alert"><span class="glyph' +
      'icon">&#xe023;</span>'
    
      '  Sua sess'#227'o foi finalizada. <a href="[###url###]" class="alert-' +
      'link">Clique aqui</a> para reiniciar.'
    '</div>'
    '</body>'
    '</html>')
  ServerMessages.TerminateTemplate.Strings = (
    '<html>'
    '<head>'
    
      '<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootst' +
      'rap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iX' +
      'CbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crosso' +
      'rigin="anonymous">'
    
      '<meta name="viewport" content="width=device-width, initial-scale' +
      '=1">'
    
      '<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/boo' +
      'tstrap/3.3.7/css/bootstrap.min.css">'
    
      '<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/' +
      'jquery.min.js"></script>'
    
      '<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/' +
      'bootstrap.min.js"></script>'
    '</head>'
    '<body bgcolor="#dfe8f6">'
    
      '<div class="alert alert-primary" role="alert"><span class="glyph' +
      'icon">&#xe023;</span>'
    
      '  Sua sess'#227'o foi finalizada. <a href="[###url###]" class="alert-' +
      'link">Clique aqui</a> para reiniciar.'
    '</div>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionMessage = 'Sess'#227'o finalizada'
  ServerMessages.TerminateMessage = 'Sess'#227'o terminada'
  ServerLimits.MaxSessions = 500000
  ServerLimits.MaxRequests = 500000
  ServerLimits.MaxConnections = 500000
  ServerLimits.MaxGDIObjects = 500000
  ServerLimits.SessionRestrict = srOnePerPC
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  Height = 150
  Width = 215
end
