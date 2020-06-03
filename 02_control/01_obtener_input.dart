import 'dart:io';

main(){
  //stdout.write('¿Cual es tu nombre?\n');

  //imprimir en el cmd
  stdout.writeln('¿Cual es tu nombre?');

  //leer informacion 
  String nombre = stdin.readLineSync();//solo retorna strings

  //stdout.writeln('Tu nombre es: ' + nombre);
  stdout.writeln('Tu nombre es: $nombre');
}