import 'cine-facade.dart';
import 'proyector.dart';
import 'reproductor.dart';
import 'sistema-audio.dart';

void main() {

  final cine = CineFacade(Proyector(), SistemaAudio(), Reproductor());
  
  //Iniciar la pelicula
  cine.verPelicula('Avatar', 50);

  print('Reproduciendo..................................');

  //Detener la pelicula
  cine.detenerPelicula();

  //La fachada coordina todos los pasos para lograr el objetivo
  //El usuario (dev) solo conoce losmetodos sencillos
  //El procedimiento se concentra en una sola clase
  //El usuario (dev) no necesita a las clases invulucradas
}
