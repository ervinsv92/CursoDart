main(){
  var a   = 10;
  final double b = 10; //No cambian su valor, su valor se puede asignar en tiempo de ejecucion, ej obtener una fecha, etc
  const double c = 10; //No cambian su valor, su valor se debe de asignar en tiempo de compilacion, o sea quemado

  // a = 20;
  // final = 20;
  // const = 20;

  final personasFinal = ['ervin', 'juan', 'pepe']; //cuando solo se quieren cambiar los valores, final es mas liviana que const
  const personasConst = ['ervin', 'juan', 'pepe']; //este tipo de variable nunca va a ser modificada

  final List<String> personasFinal2 = ['ervin', 'juan', 'pepe'];
  const List<String> personasConst2 = ['ervin', 'juan', 'pepe'];
  List<String> personasConst3 = const ['ervin', 'juan', 'pepe'];

  final int numero = 10;
  //numero = 20; no se puede
  personasFinal.add('Maria');
  //personasConst.add('Maria');//No se puede
  //personasFinal2 = [];//no se pueden asignar datos a la totalidad de la variable
  print(personasFinal);
  //print(personasConst);
}