import 'dart:io';

main(){
  //for(int i = 0; i < 10;i++){
    //print("Iteracion i: $i");
    //print("Iteracion i: ${2*10}");//lo de adentro de las llaves sirve como codigo dart
    //print("Iteracion i: ${2*10}");
  //}

  /*
    Dato de entrada: la base de la tabla de multiplicar
    (este dato debe ser capturado por el usuario)
    ej: 2   = 2,4,6,8

    La salida esperada seria

    2*1 = 2
    2*2 = 4
    2*3 = 6
    2*4 = 8
    2*5 = 10
  */

  stdout.writeln('Digite un numero para ver la tabla de multiplicar');
  int numero = int.parse(stdin.readLineSync());

  for(int i = 0; i < 10; i++){
    print('$numero * ${i+1} = ${numero * (i+1)}');
  }

}