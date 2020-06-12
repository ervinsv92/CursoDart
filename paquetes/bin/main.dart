/**
 * Orden de importaciones
 * dart:
 * package: (de terceros)
 * package: (hechos por uno)
 * 
 * El orden se usa asi porque puede que un paquete internamente importe otro paquete que tengamos, al mantener el orden el paquete no se va a descargar 2 veces
 * es mas eficiente mantener este orden
 */
import 'package:paquetes/paquetes.dart' as paquetes;//as es un alias, en este caso con el nombre paquetes se utiliza lo que este dentro de el


void main(List<String> arguments) {
  paquetes.getReqResp_service();
}
