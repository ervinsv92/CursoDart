/**
 * Un operador es un simbolo que le dice al compilador
 * que debe realizar una tarea
 * matematica, relacional o logica
 * y debe de producir un resultado
 * 
 */

main(){

  int a = 10 + 5;   // + = 15
  a = 20-10;        // - = 10
  a = 10 * 2;       // * = 20

  double b = 10/2;  // / = 5
  b = 10.0 % 3;     // % = 1 El sobrante de la division, el modulo
  b = -b;           // -expr es usado para cambiar el valor de la expresion

  int c = 10 ~/ 3;  // ~/ = division entera

  int d = 1;
  d++;              // ++ incrementa en 1 el valor
  d--;              // -- decrementa en 1 el valor
  d += 2;           // += incrementa en el valor que queramos
  d -= 2;           // -= decrementa en el valor que queramos
}