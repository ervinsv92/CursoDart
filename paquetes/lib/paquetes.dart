import 'package:http/http.dart' as http;
import 'package:paquetes/clases/reqres_response.dart';
//import 'clases/reqres_response.dart';

void getReqResp_service(){
  final url = 'https://reqres.in/api/users?page=2';
 http.get(url).then((response) {
   //print(response);

   //print de ejemplo, si sirven
   //final body = jsonDecode(response.body);
   //print(body);
   //print('page: ${body['page']}');
   //print('per_page: ${body['per_page']}');
   //print('id tercer elemento: ${body['data'][2]['id']}');

    final respuesta = reqResRespuestaFromJson(response.body);

    print('page: ${respuesta.page}');
    print('per_page: ${respuesta.perPage}');
    print('id tercer elemento: ${respuesta.data[2].id}');
 });
}