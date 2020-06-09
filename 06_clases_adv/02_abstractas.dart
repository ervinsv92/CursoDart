/**
 * Extends es la herencia de clases
 * Se pueden definir los metodos desde esta clase, o la pueden definir las clases que la extienden
 */

abstract class Vehiculo{
  bool _encendido = false;

  //metodos normales con definicion de funcionalidad
  void encender(){
    _encendido = true;
    print('Vehiculo encendido');
  }

  //metodos normales con definicion de funcionalidad
  void apagar(){
    _encendido = false;
    print('Vehiculo apagado');
  }

  bool revisarMotor();
}

class Carro extends Vehiculo{
  int kilometraje = 0;

  @override //Se recomienda usar el @override si se sobreescriben metodos de otra clase
  bool revisarMotor() {
    print('Motor ok');
    return true;
  }
}

main(List<String> args) {

  //Para que no se pueda usar esta clase se crea abstracta, para que solo las clases que la extiendan la puedan usar
  //final ford = new Vehiculo();

  final ford = new Carro();
  ford.encender();
  ford.apagar();
  ford.revisarMotor();
}