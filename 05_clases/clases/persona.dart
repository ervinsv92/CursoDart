/** 
 * Todas las propiedades de una clase por defecto con publicas
 * Con _ guion bajo se hace que una variable sea privada ej: _persona
*/

class Persona{
  //propiedades
  String nombre;
  int edad;
  String _bio = "Hola soy una propiedad privada";
  
  //get sets
  // String get bio{
  //   return _bio;
  // }

  //tambien se puede hacer asi el get
  String get bio => _bio.toUpperCase();

  //Los set son void, no se puede cambiar
  // set bio(String texto){
  //   _bio = texto;
  // }

  //tambien se puede usar funcion de flecha en el set
  set bio(String texto) => _bio = texto;

  // constructores

  // Persona(int edad, String nombre){
  //   _bio = 'cambio la vio desde el constructor';
  //   this.edad=edad;
  //   this.nombre=nombre;
  //   print('Constructor');
  // }

  //Es una forma mas resumida de declarar el constructor, asi se setean de una vez las propiedades de la clase
  //Persona(this.edad, this.nombre);
  
  //se pueden usar los mismos tipos de parametros que se usan en las funciones, por nombre, opcionales, etc.
  //los parametros con nombre son opcionales por defecto
  Persona({this.edad = 0, this.nombre = 'Sin nombre'});

  //Constructor con nombre
  Persona.persona30(this.nombre){
    this.edad = 30;
  }

  Persona.persona40(String nombre){
    this.edad = 40;
    this.nombre = nombre;
  }

  //metodos
  @override //indica que debe sobreescribir el metodo del padre
  String toString() {
    //this.nombre //hace referencia a la variable global de la clase
    return '$nombre $edad $_bio';
  }

  //igual con guion bajo se declara un metodo privado
  void _metodoPrivado(){

  }
}