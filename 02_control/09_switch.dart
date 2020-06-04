import 'dart:math';

main(){

  int rnd = Random().nextInt(7);//calcula un random del 0 al 6

  switch(rnd){
    case 0:
      print('Lunes');
      break;
    case 1:
      print('Martes');
      break;
    case 2:
      print('Míercoles');
      break;
    case 3:
      print('Jueves');
      break;
    case 4:
      print('Viernes');
      break;
    case 5:
      print('Sabado');
      break;
    case 5:
      print('Domingo');
      break;
    default:
      print('No es un día de la semana');
  }

  print(rnd);
}