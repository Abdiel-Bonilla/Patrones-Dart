import 'notificador.dart';
import 'panel-alumno.dart';

class Agenda {
  final PanelAlumno panel = PanelAlumno();
  final Notificador notificador = Notificador();

  void publicarTarea(String tarea) {
    print ('Publicando: $tarea');

    panel.mostrar(tarea);
    notificador.notificar(tarea);



    //Aqui la agenda se ocupa de tres tareas
    //Viola el principio de division de responsabilidades
    //La agenda se encarga de publcar tareas como de cordinar con la UI
    //y las notoficaciones
  }

}