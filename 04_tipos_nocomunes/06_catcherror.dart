main(List<String> args) {
  //Future es una tarea asincrona que se va a resolver despues, es 99% similar a una promesa de JS

  Future timeout = Future.delayed(Duration(seconds:3),(){
    
    if(1==1){
      throw 'Auxilio, explotó esta cosa';
    }

    return 'retorno del future';
  });

  timeout.then(print).catchError((error)=> print(error));

  print('fin del main');
}