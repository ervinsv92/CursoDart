main(List<String> args) {
  String nombre = 'ervin';
  String nombre2 = capitalizar(nombre);
  //print(nombre);
  //print(nombre2);

  Map<String, String> personita = {
    'nombre':'juan carlos'
  }; 

  Map<String, String> personita2 = capitalizarMapa(personita);

  print(personita);
  print(personita2);
}

//Al pasar por valor, la variable original no se ve afectada
//Por defecto las variables llegan por valor
//los tipos de dato primitivos siempre se envian por valor (booleanos, string, number), no se puede enviar por referencia
String capitalizar(String texto){
  return texto.toUpperCase();
}

//Cualquier otro tipo de datos que no sean booleanoa, string y number, se pasan automaticamente por referencia
Map<String, String> capitalizarMapa(Map<String, String> persona){
  persona = {...persona};//operador spred (no se como se escribe), lo que hace es crear un clon del objeto, haciendo que no se modifique la variable que se pasa por parametro
  persona['nombre'] = persona['nombre'].toUpperCase();
  return persona;
}