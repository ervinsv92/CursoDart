
/**
 * Es parecido a los extends
 * Los mixins no se pueden instancias
 * Es diferente de las clases abstractas, ya que no pueden tener constructores
 * Solo estan hechos para heredar o transferir metodos a otras clases
 */

mixin Logger{
  void imprimir(String texto){
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }
}

class Logger2{

  //las clases pueden ser utilizadas como mixin, con la ventaja de que pueden tener constructor

  void imprimir2(String texto){
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }
}

//abstract class Astro with Logger,Logger2{ // se puede hacer asi
abstract class Astro with Logger{
  String nombre;
  Astro(){
    //este imprimir es el que esta en el mixin
    imprimir('-- Init del Astro --');
  }

  void existo(){
    //este imprimir es el que esta en el mixin
    imprimir('-- soy un ser que existo --');
  }
}

//primero van los extend y despues los mixins
class Asteroide extends Astro with Logger, Logger2{
  String nombre;
  Asteroide(this.nombre){
    //este imprimir es el que esta en el mixin
    imprimir('soy $nombre');
  }
}
main(List<String> args) {
  final ceres = new Asteroide('ceres');
}