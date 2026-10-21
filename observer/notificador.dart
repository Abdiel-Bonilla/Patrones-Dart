//Observador
import 'observador.dart';

class Notificador implements Observador{
  @override
  void actualizar(String tarea){
    print("Notificación: se publico $tarea");
  }
}