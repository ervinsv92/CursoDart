main(List<String> args) {
  final persona = {
    'nombre':'Ervin',
    'apellido':'Solano',
    'edad':27
  };

  final direccion = {
    'ciudad':'Guapiles',
    'pais':'Costa Rica'
  };

  print('persona: $persona');
  print('Length: ${persona.length}');//devuelve la cantidad de llaves del mapa
  print('keys: ${persona.keys}');//devuelve un iterable con los nombres de las llaves
  print('values: ${persona.values}');//devuelve los valores
  
  persona.addAll(direccion);//une los mapas
  print('addall: $persona');

  //persona.remove('pais'); //si sirve, se comenta para probar otras funciones
  print('remove: $persona');

  //borra las llaves que no sean persona
  /* persona.removeWhere((key, value){
    if(key != 'nombre'){
      return true;
    }else{
      return false;
    }
  }); */

  persona.removeWhere((key, value) => key != 'nombre');

  print('removeWhere: $persona');

  persona.forEach((key, value) {
    print('key: $key    value: $value');
  });

  //retorna un objeto
  final nuevoMapa = persona.map((key, value) {
    return MapEntry(key, value.toString().toUpperCase());
  });

  print('nuevoMapa: $nuevoMapa');
}