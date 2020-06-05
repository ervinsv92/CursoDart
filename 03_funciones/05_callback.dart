main(List<String> args) {
  obtenerUsuario('100', (Map persona){
    print(persona);
  });

  //las funciones anonimas son las que no tienen nombre
}

void obtenerUsuario(String id, Function callback){
  Map usuario = {
    'id':id,
    'nombre':'Ervin'
  };

  callback(usuario);
}