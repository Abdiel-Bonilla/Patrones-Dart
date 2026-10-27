import 'proyector.dart';
import 'sistema-audio.dart';
import 'reproductor.dart';
class CineFacade {
  final Proyector _proyector;
  final SistemaAudio _audio;
  final Reproductor _reproductor;

  //Constructor.
  CineFacade(this._proyector, this._audio, this._reproductor);

  void verPelicula(String pelicula, int volumen) {
    _proyector.encender();
    _audio.encender();
    _audio.ajustarVolumen(volumen);
    _reproductor.reproducir(pelicula);
  }

//Con facade se agrupan todos los llamados a clases y métodos involucrados

  void detenerPelicula() {
    _reproductor.detener();
    _audio.ajustarVolumen(0);
    _audio.apagar();
    _proyector.apagar();
  }
}
