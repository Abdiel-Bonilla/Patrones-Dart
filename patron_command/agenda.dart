class Agenda {
  final tareas = [
    'Estudiar patrones de diseño',
    'Investigar el patron Facade',
    'Programar las HU´s',
    'Hacer pull request',
    'Presentar examen de ingles',
  ];

  //Estado de una tarea
  String? eliminada;//el nombre de la tarea
  int? posicionAnterior;//la posicion de la tarea

  //Borrar una tarea
  void borrar(int posicion){
    eliminada = tareas.removeAt(posicion);
    posicionAnterior = posicion;
  }


  //Ya no se quiere borrar la tarea, se debe recuperar.
  void deshacer(){
    final tarea = eliminada;
    final posicion = posicionAnterior;

    if(tarea != null && posicion != null){
      tareas.insert(posicion, tarea);
      eliminada = null;
      posicionAnterior = null;
    }

  }
}
