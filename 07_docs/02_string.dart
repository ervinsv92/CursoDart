main(List<String> args) {
  String nombre = 'Ervin';
  String apellido = 'Solano';

  //String nombreCompleto = nombre + ' ' + apellido;
  //String nombreCompleto = '$nombre $apellido';
  String nombreCompleto = '$nombre' ' ' '$apellido';
  print('String: $nombreCompleto');
  print('Length: ${nombreCompleto.length}');
  print('Contains F: ${nombreCompleto.contains('E', 1)}');
  print('EndsWith o: ${nombreCompleto.endsWith('o')}');
  print('PadLeft o: ${nombreCompleto.padLeft(20, '...')}');
  print('PadRight o: ${nombreCompleto.padLeft(20, '...')}');

  //Convierte el string en lista de caracteres
  print('Operador []: ${nombreCompleto[0]}'); //Devuelve E

  //Aparece la cantidad de veces el string segun lo que se le indique
  print('Operador *: ${nombreCompleto * 3}');
  print('Operador *: ${'*' * 10}');
  print('ReplaceAll: ${nombreCompleto.replaceAll(new RegExp(r'e'), 'a')}'); //reemplaza las e por a
  print('SubString: ${nombreCompleto.substring(0, 5)}...');
  print('indexOf E: ${nombreCompleto.indexOf('E')}'); 
  print('Split: ${nombreCompleto.split(' ')}'); 
  print('Capitalizar: ${nombreCompleto[nombreCompleto.length-1].toUpperCase()}'); 

}