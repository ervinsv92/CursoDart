

import 'clases/persona.dart';

main(List<String> args) {
  
  final persona = new Persona(edad: 27, nombre:'Ervin');
  //persona..nombre = "Ervin"
    //     ..edad = 27;
         //..bio = "Soy una persona";

  final persona2 = new Persona.persona30('persona 30');
  final persona3 = new Persona.persona30('persona 40');

  persona.bio = 'cambie el bio';
  print(persona);
  print(persona.bio);
}

