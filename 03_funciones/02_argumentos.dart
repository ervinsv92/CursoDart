main(List<String> args) {
  /*
    Cuando se ejecuta el archivo, si se pone espacio se pueden pasar estos argumentos, se separan por cada espacio que ponemos
    ej: 12 23 345 45 7ds --sdf = [12,23,345,45,7ds,--sdf]
  */ 
  //print(args);
  //Argumentos posicionales
  //saludar('Hola', 'Ervin');

  //Argumentos por nombre
  saludar2(veces: 5, mensaje: 'hola',nombre: 'Ervin');
}

//Funcion con argumento obligatorio
//Los argumentos obligatorios van todos al inicio
//Los valores opcionales van entre llaves cuadradas []. Se puede igualar para colocar valor por defecto
//Estos 2 son argumentos posicionales, tienen que ponerse en el orden que se definen
void saludar(String mensaje, [String nombre = '<Insertar nombre>']){
  print('$mensaje $nombre');
}

//Argumentos por nombre
void saludar2({String nombre, String mensaje, int veces}){
  for (var i = 0; i < veces; i++) {
    print('$mensaje $nombre');
  }
}

//Se pueden combinar argumentos posicionales con los de nombre
//Siempre van pos posicionales primero y despues los que son por nombre
void saludar3(String obl, {String nombre, String mensaje, int veces}){
  for (var i = 0; i < veces; i++) {
    print('$mensaje $nombre');
  }
}