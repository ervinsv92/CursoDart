import 'dart:io';

main(){
  
  String continuar = 'y';
  int contador = 0;

  do {
    stdout.writeln('Contador: $contador');
    stdout.writeln('Desea continuar?');
    continuar = stdin.readLineSync();
    contador++;
  }while(continuar == 'y');
}