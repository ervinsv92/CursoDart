class Herramientas{
  //al ser estatico se crea en el mismo espacio de memoria, por lo que no importa de donde se modifique se ve afectado 
  //el mismo espacio de memoria
  //la idea es que solo sean de lectura
  static const List<String> listado = ['Martillo', 'Llave inglesa', 'Desarmador'];

  static void imprimirListado() => listado.forEach(print); 
}

main(List<String> args) {
  final herr = new Herramientas();
  //No aparece porque es estatico, se usa de la manera siguiente
  //herr.listado

  //No se puede porque la lista es const
  //Herramientas.listado.add('Tenasas');

  //Cuando es estadico se lee de esta manera
  //Forma parte de la clase y no de la instancia
  //Herramientas.listado.forEach(print);
  Herramientas.imprimirListado();
}