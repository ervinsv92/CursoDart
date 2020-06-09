main(List<String> args) {
  double numero = 2.1416;
  double infinito = double.infinity;
  print('Firma: ${numero.sign} :: $numero');

  print('isFinite: ${numero.isFinite} :: $numero');
  print('isFinite: ${infinito.isFinite} :: $infinito');
  print('abs: ${numero.abs()} :: $numero');

  //siguiente numero entero
  print('ceil: ${numero.ceil()} :: $numero');

  //Da error porque infinito no se le puede sacar un numero mas
  //print('ceil: ${infinito.ceil()} :: $numero');

  print('ceilToDouble: ${numero.ceilToDouble()} :: $numero');

  print('round: ${numero.round()} :: $numero');
  print('round: ${numero.roundToDouble()} :: $numero');

  //devuelve el limite inferior o superior si el numero es menor o mayor a ese limite, si el numero esta en medio de esos limites, 
  //devuelve el mismo numero
  print('clamp: ${numero.clamp(1,3)} :: $numero');
}