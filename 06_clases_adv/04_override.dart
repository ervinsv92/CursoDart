/**
 * El override sirve para sobreescribir metodos de las clases padre que estan siento extendidas (extends)
 */

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

  //sino se coloca el override se ejecuta el metodo de la clase hija
  // void imprimirNombre(){
  //   print('Cliente: $nombre ($edad)');
  // }

  //Si se coloca el override se ejecuta el metodo del padre
  @override
  void imprimirNombre(){
    super.imprimirNombre();
    print('Cliente: $nombre ($edad)');
  }
}

main(List<String> args) {
  final pedro = new Cliente(27, 'Ervin');

  //sino se coloca el override se ejecuta el metodo de la clase hija
  //Si se coloca el override se ejecuta el metodo del padre
  pedro.imprimirNombre();
}