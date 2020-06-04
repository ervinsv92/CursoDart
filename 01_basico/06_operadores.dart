main(){
  //asignacion
  int a = 10;
  int b;

  b ??=20; //Asigna el valor solo si la variable es null

  //operadores condicionales
  int c = 23;
  String resp = c > 25 ? 'c es mayor a 25' : 'C es menor a 25'; //operador ternario

  int d = b ?? a; //Si b es nulo, use el valor de a
  int d2 = b ?? a ?? 10; //Si b es nulo, use el valor de a, se pueden poner los ?? que se quieran

  //Operadores relacionales
  //Todos retornan valores booleanos
  /*
    >   mayor que
    <   menor que
    >=  mayor o igual que
    <=  menor o igual que
    ==  igual
    !=  diferente
  */

  String persona1 = 'Ervin';
  String persona2 = 'Pepe';

  // print(persona1 == persona2);
  // print(persona1 != persona2);
  int x = 20;
  int y = 30;

  // print(x > y);   //false
  // print(x < y);   //true
  // print(x <= y);  //true
  // print(x >= y);  //false

  //Operador de tipo
  int i = 10;
  String j = '10';

  print(i is  int); // devuelve si la variable es del tipo de dato que se le indica
  print(j is  int);
  print(j is! int); //negacion del is es con el ! despues del is
}