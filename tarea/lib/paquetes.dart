import 'package:http/http.dart' as http;
import 'package:tarea/clases/pais.dart';


void getReqResp_service(){
  final url = 'https://restcountries.eu/rest/v2/alpha/col';
 http.get(url).then((response) {    
    final respuesta = paisFromJson(response.body);
    
    print('Pais: ${respuesta.name }');
    print('Población: ${respuesta.population }');
    print('Fronteras: ');

    respuesta.borders.forEach(print);
    print('Lenguajes: ${respuesta.languages[0].nativeName}');

    print('Latitud: ${respuesta.latlng[0]}');
    print('Longitud: ${respuesta.latlng[1]}');

    print('Moneda: ${respuesta.currencies[0].name}');
    print('Bandera: ${respuesta.flag}');
 });
}