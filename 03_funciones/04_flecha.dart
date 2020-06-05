main(List<String> args) {
  int a = 10, b = 20;
  int resultado = sumar(10, 20);
  int resultadoFlecha = sumarFlecha(10, 20);
  List<int> listado = [1,2,3,4,5,6,6,7,8,9,10,10,1];
  // var nuevoListado = listado.where((numero){
  //   return numero > 4;
  // });

  //devuelve un iterable, es como una lista
  var nuevoListado = listado.where((n) => n > 4);

  print(resultado);
  print(resultadoFlecha);
  //con el to set no me repite los numeros
  print(nuevoListado.toSet().toList());
}      

int sumar(int x, int y){
  return x + y;
}

int sumarFlecha(int x, int y) => x + y;