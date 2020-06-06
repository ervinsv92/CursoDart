import 'dart:collection';

main(List<String> args) {
  //Es una cola
  Queue<int> cola = new Queue();
  cola.addAll([10,20,30,40,50]);
  //print(cola);
  //print(cola is Queue);

  Iterator i = cola.iterator;
  while(i.moveNext()){
    print(i.current);
  }
}