class Rectangulo{
  int base;
  int altura;
  int area;
  String tipo;

  //con factory no puede ir punto y coma Rectangulo(); tiene que ir con llaver {}
  factory Rectangulo(int base, int altura){
    //Puede ser utilizado
    //no pueden crear instancias de su clase por si solo
    //regregan una nueva instancia o una ya generada anteriormente

    if(base == altura){
      return Rectangulo.cuadrado(base);
    }else{
      return Rectangulo.rectangulo(base, altura);
    }
  }

  Rectangulo.cuadrado(int base){
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = 'Cuadrado';
  }

  Rectangulo.rectangulo(int base, int altura){
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = 'Rectangulo';
  }

  @override
  String toString() {
    // TODO: implement toString
    return {'base':base, 'altura':altura, 'area':area, 'tipo':tipo}.toString();
  }
}

main(List<String> args) {
  final figura = new Rectangulo(10,10);
  print(figura);
}