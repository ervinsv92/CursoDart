
class Location{
  final double lat;
  final double lng;

  const Location(this.lat, this.lng);
  /*

  */
}

main(List<String> args) {
  final sanFrancisco1 = new Location(18.2323, 39.9000);
  final sanFrancisco2 = new Location(18.2323, 39.9001);
  final sanFrancisco3 = new Location(18.2323, 39.9001);

  //No dan true el 2 y 3, porque puntan a logares distintos de memoria
  print(sanFrancisco1 == sanFrancisco2);//false
  print(sanFrancisco2 == sanFrancisco3);//false

  const sanFrancisco4 = const Location(18.2323, 39.9000);
  const sanFrancisco5 = const Location(18.2323, 39.9001);
  const sanFrancisco6 = const Location(18.2323, 39.9001);

  const berlin = const Location(18.2323, 39.9001);

  /*
    Los constructores constantes asignados a variables constantes apuntan al mismo lugar de memoria solo si tienen los mismos valores,
    por eso da igual comparar los objetos 5 y 6
  */

  print(sanFrancisco4 == sanFrancisco5);//false
  print(sanFrancisco5 == sanFrancisco6);//true
  print(berlin == sanFrancisco6);//true
}