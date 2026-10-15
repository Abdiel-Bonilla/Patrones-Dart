import 'documento.dart';
import 'documento_texto.dart';
import 'generador_reportes.dart';

class GeneradorTexto extends GeneradorReportes {
  @override
  Documento crearDocumento() {
    return DocumentoTexto();
  }
}
