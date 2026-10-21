import 'agenda.dart';
import 'historial.dart';
import 'notificador.dart';
import 'panel-alumno.dart';

void main() {
  final agenda = Agenda();
  final PanelAlumno panel = PanelAlumno();
  final notificador = Notificador();
  final historial = Historial();

  //Suscripción a cada servicio observador
  agenda.suscribir(panel);
  agenda.suscribir(notificador);
  agenda.suscribir(historial);

  //Ambos observadores reciben el aviso
  agenda.publicarTarea("Estudiar patrones de diseño");

  //El usuario ya no quiere recibir notificaciones
  agenda.desuscribir(notificador);

  //Se agrega otra tarea
  agenda.publicarTarea('Investigar el patron Facade');
  //Sólo el panel recibe el aviso de la nueva tarea
}


//Cuando nos conviene:
//Cuando varios componnetes necesitan reaccionar al mismo cambio
//y sus suscripciiones pueden variar.
//Pero no implica ejecución asiconcrona o paralela.