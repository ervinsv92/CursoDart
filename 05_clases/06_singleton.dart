import 'clases/mi_servicio.dart';

main(List<String> args) {
  final spotifiService1 = new MiServicio();
  spotifiService1.url = 'https://api.spotify.com';

  final spotifiService2 = new MiServicio();
  spotifiService2.url = 'https://api.spotify.com/v2';

  print(spotifiService1 == spotifiService2);//falso sino usa el singleton porque se estan comparando las instancias y son diferentes (posiciones en memoria diferentes)
  //Despues del singleton si son iguales porque apuntan al mismo lugar en memoria

  print(spotifiService1.url);
  print(spotifiService2.url);
}