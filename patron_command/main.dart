import 'agenda.dart';

void main() {
  final agenda = Agenda();

  print('Todas las tareas iniciales: ${agenda.tareas}');
  agenda.borrar(1);
  print('Tareas después de borrar: ${agenda.tareas}');
  //El usuario se arrepiente de borrar la tarea
  agenda.deshacer();
  print('Tareas después de deshacer: ${agenda.tareas}');
}
