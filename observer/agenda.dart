import 'observador.dart';

class Agenda {
  final List<Observador> _observadores = [];

  void suscribir(Observador observador) {
    _observadores.add(observador);
  }

  void desuscribir (Observador observador) {
    _observadores.remove(observador);
  }

  void publicarTarea(String tarea) {
    print('Publicando: $tarea');

    for (final observador in _observadores) {
      observador.actualizar(tarea);
    }

    //Aqui la agenda se ocupa de crear observadores
  }
}
