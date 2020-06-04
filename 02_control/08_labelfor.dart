main(){

  outerLoop: //label para identificar el for, se agrega al for que está inmediatamente despues
  for (var i = 0; i < 5; i++) {

    print('Valor de i: $i');

    innerLoop:
    for (var j = 0; j < 5; j++) {
      print('Valor de j: $j');

      if(j==2){
        break outerLoop;//asi se hace brake utilizando el label
      }
    }
  }
}