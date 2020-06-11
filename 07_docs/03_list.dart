main(List<String> args) {
  List<int> lista= [1,2,3,4,5];
  List<int> lista2;
  List<int> lista3= [5,2,3,9,-10];
  List<String> nombres = ['Ervin', 'Mario'];

  print('Length: ${lista.length}');
  print('Primero: ${lista[0]}');
  print('Primero: ${lista.first}');
  print('Ultimo: ${lista.last}');

  print('is empty: ${lista.isEmpty}');

  print('is empty lista 2: ${lista2 == true}');//true
  print('As map: ${lista.asMap()}');

  Map listaMapa = lista.asMap();
  print('ListaMapa: ${listaMapa[4]}');

  Map nombreMapa = nombres.asMap();
  print('NobreMapa: ${listaMapa}');
  print('NobreMapa: ${listaMapa[1]}');

  print('IndexOf: ${nombres.indexOf('Mario')}');

  /* int mayor3 = lista.indexWhere((numero) {
    if(numero>3){
      return true;
    }else{
      return false;
    }
  }); */

  int mayor3 = lista.indexWhere((numero) => (numero > 3));
  print('indexWhere mayor 3: $mayor3');

  print('remove: ${nombres.remove('Mario')}');
  print('Remove: ${nombres}');

  lista.shuffle();//revuelve la lista, la desordena
  print('Shuffle: $lista');

  lista3.sort();
  print('Sort: $lista3');
  print('Reverse: $lista3.reversed.toList()');

  nombres.forEach((nombre) {
    nombre = nombre.toUpperCase();//solo se modifica en este lugar, pero no en la lista en general, porque nombre es un string y no se pasa por referencia, si fuera un objeto si lo haría
    print(nombre);
  });
  print('Listado: $nombres');

  //Se crea nueva lista en la que si se afecta con el upper case
  final newList = nombres.map((nombre) => nombre.toUpperCase()).toList();
  print('new list: $newList');
}