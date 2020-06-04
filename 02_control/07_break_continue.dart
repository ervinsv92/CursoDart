main(){

  for (var i = 0; i < 10; i++) {

    if(i==5){
      continue;//Salta a la siguiente iteracion, en esta iteracion a partir de esta linea no ejecuta nada
    }

    print(i);

    if(i==2){
      break;//se sale del for actual
    }
  }
}