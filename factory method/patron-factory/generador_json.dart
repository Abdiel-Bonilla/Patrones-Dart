import 'documento.dart';
import 'documento_json.dart';
import 'generador_reportes.dart';

class GeneradorJson extends GeneradorReportes {
  @override
  Documento crearDocumento() {
    return DocumentoJson();
  }
}
