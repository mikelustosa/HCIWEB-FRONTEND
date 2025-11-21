function buscarGeolocalizacao() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(
      function(position) {
        const latitude = position.coords.latitude;
        const longitude = position.coords.longitude;
        
        // Preencha o rótulo com as coordenadas
        processGeoloc(latitude,longitude)  
      },
      function(error) {
        // Trate os erros aqui, se necessário
        console.error('Erro ao buscar geolocalização:', error);
      }
    );
  } else {
    console.error('Geolocalização não suportada neste navegador');
  }
}

function processGeoloc(latitude,longitude){
	ajaxRequest(MainmForm.form,"GEOLOC",["latitude="+latitude,"longitude="+longitude]);
}
  