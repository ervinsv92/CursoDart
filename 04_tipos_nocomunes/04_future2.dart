import 'dart:io';

main(List<String> args) {
  
  //osx y linux
  //File file = new File(Directory.current.path + '/04_tipos_nocomunes/assets/personas.txt');
  
  //windows
  File file = new File(Directory.current.path + '\\04_tipos_nocomunes\\assets\\personas.txt');

  Future<String> f = file.readAsString();
  //String sinf = file.readAsStringSync(); //para leer el archivo tambien se puede hacer de manera sincrona

  f.then(print);

  //print(sinf);
  print('Fin del main');

}