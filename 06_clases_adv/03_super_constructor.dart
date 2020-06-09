class Persona{
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);
  void imprimirNombre() => print('Nombre: $nombre, Edad: $edad');
}

class Cliente extends Persona{
  String direccion;
  List ordenes = [];

  Cliente(int edadActual, String nombreActual): //Con : dos puntos, se puede llamar al super para pasarle los parametros antes de 
    super(nombreActual, edadActual);            //que se instancie la clase
    
}

main(List<String> args) {
  // final yo = new Persona('Ervin', 27);
  // yo.imprimirNombre();

  final pedro = new Cliente(27, 'Ervin');
  pedro.imprimirNombre();
  pedro.direccion = 'por ahi';
}