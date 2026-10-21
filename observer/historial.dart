import 'observador.dart';

class Historial implements Observador {

  @override
  void actualizar(String tarea) {
    //Recibir la nueva tarea y almacenarla en el historial
    //El historial puede ser local:
    //en memoria: una lista de tareas
    //en una base de datos local SQLite o MySQL
    //o pude estar en la nube: Firebase, AWS, etc.

    print('Historial: Registrar nueva tarea: $tarea');
  }
}