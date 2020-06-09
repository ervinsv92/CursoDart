import 'dart:io';

main(List<String> args) async{
  
  //osx y linux
  //File file = new File(Directory.current.path + '/04_tipos_nocomunes/assets/personas.txt');
  
  //windows
  String path = Directory.current.path + '\\04_tipos_nocomunes\\assets\\personas.txt';

  //se recibe un future
  leerArchivo(path).then(print);

  //Hace que se espere a que la instruccion del future termine, no continua la seguiente linea de codigo hasta que el future acabe
  //Recibe el tipo de datos que devuelve el future
  String texto = await leerArchivo(path);
 
  print('Fin del main');
}

Future<String> leerArchivo(String path) async{
  File file = new File(path);

  return file.readAsString();
}

//Con async la funcion se convierte en future
Future leerArchivoAsync(String path) async{
  return 'Hola mundo';
}