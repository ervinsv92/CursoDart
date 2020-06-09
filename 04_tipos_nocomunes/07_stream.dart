import 'dart:async';

/**
 * Es un flujo de datos, parecido a un río
 * Hay stream de una sola suscripcion y otros de varias suscripciones
 */
main(List<String> args) {
  //son asincronos
  //Pueden tener definido el tipo de datos que va a recorrer por el flujo
  //final streamController = StreamController<String>(); //Asi es para una sola suscripcion
  
  final streamController = StreamController<String>.broadcast();//Asi es para varias suscripciones
  //StreamController<String> streamController = StreamController(); //Tambien se puede hacer asi, pero es mas corta la instruccion anterior

  //Es similar a la escucha de un observable de angular
  //sirve con sockets o firebase
  streamController.stream.listen(
    (data) => print('Despegando $data'), //Se ejecuta cuando se reciba informacion
    onError: (err) => print('Error $err'),
    onDone: ()=>print('Mision completa'), //Se ejecuta cuando se cierra el stream
    cancelOnError: true //Detiene el stream cuando da un error en el stream
  );

  streamController.stream.listen(
    (data) => print('Despegando stream 2 $data'), //Se ejecuta cuando se reciba informacion
    onError: (err) => print('Error stream 2 $err'),
    onDone: ()=>print('Mision completa stream 2'), //Se ejecuta cuando se cierra el stream
    cancelOnError: true //Detiene el stream cuando da un error en el stream
  );

  //agrega datos al flujo de datos, al río
  //streamController.sink.add(11);//No se puede porque el stream se definio con stream
  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apollo 12');
  streamController.sink.addError('Houston, tenemos un problema');
  streamController.sink.add('Apollo 14');

  /*
    Es ideal cancelar el stream cuando sabemos que no lo vamos a utilizar mas
  */
  streamController.sink.close();

  //streamController.sink.add('Apollo 15'); Da error porque el stream esta cerrado

  print('Fin del main');
}