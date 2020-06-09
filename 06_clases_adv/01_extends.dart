/**
 * Extends es la herencia de clases
 */

class Vehiculo{
  bool _encendido = false;

  void encender(){
    _encendido = true;
    print('Vehiculo encendido');
  }

  void apagar(){
    _encendido = false;
    print('Vehiculo apagado');
  }
}

class Carro extends Vehiculo{
  int kilometraje = 0;
}

main(List<String> args) {
  final ford = new Carro();
  ford.encender();
  ford.apagar();
  ford.apagar();
  ford.apagar();
}