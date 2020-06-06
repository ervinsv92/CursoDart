main(List<String> args) {
  //Future es una tarea asincrona que se va a resolver despues, es 99% similar a una promesa de JS

  Future timeout = Future.delayed(Duration(seconds:3),(){
    print('3 segundos despues');
    return 'retorno del future';
  });

  //timeout.then((value) => print(value));
  timeout.then(print);//se puede hacer, dart utilizaria el print pasandole el parametro que devuelva el future, se puede mas de una respuesta, igual lo acepta

  print('fin del main');
}