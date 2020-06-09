/**
 * Singleton mantiene en un unico lugar de memoria los datos, para que puedan ser accedidos desde cualquier lugar de la aplicacion
 */

class MiServicio{

  //Ayuda a mantener la referencia de la instancia creada
  static final MiServicio _singleton = new MiServicio._();

  //devuelve la instancia de memoria cada vez que es llamado, para mantener los datos en un mismo lugar
  factory MiServicio(){
    return _singleton;
  }

  //MiServicio._internal();
  //es mas corto asi
  //Sirve para crear la instancia la primera vez
  MiServicio._();

  String url = 'https://abc';
  String key = 'sdfsdfdsf';
}