
class Cuadrado{
  final int lado;
  final int area;

  //error
  //Cuadrado(int lado, int area){
  //   this.lado = lado;
  // }

  //Cuadrado(this.lado, this.area);
  
  //De esta forna se puede inicializar el final de area sin recibirlo por parametro
  Cuadrado(int lado):
     this.lado = lado,
     this.area = lado * lado;
}

main(List<String> args) {
  final cuadrado = new Cuadrado(10);
  //no deja porque la propiedad es final, no deja cambiar las pripiedades basicas, si fuera un objeto si deja cambiar los valores internos
  //cuadrado.lado = 20;
  print(cuadrado.area);
}