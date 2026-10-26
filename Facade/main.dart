import 'proyector.dart';
import 'reproductor.dart';
import 'sistema-audio.dart';

void main() {
  final proyector = Proyector();
  final audio = SistemaAudio();
  final reproductor = Reproductor();

  //Iniciar la pelicula
  proyector.encender();
  audio.encender();
  audio.ajustarVolumen(25);
  reproductor.reproducir('Coraline');
  //Sin facade, se llaman a cada clase y método necesario
  //para lograr reproducir la pelicula

  print('Reproduciendo..................................');

  //Detener la pelicula
  reproductor.detener();
  audio.ajustarVolumen(0);
  audio.apagar();
  proyector.apagar();
}
