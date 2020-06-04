import 'dart:io';

main(){

  String continuar = 'y';
  int contador = 0;

  while(continuar == 'y'){

    stdout.writeln('Contador: $contador');
    stdout.writeln('Desea continuar?');
    continuar = stdin.readLineSync();
    contador++;
  }

}