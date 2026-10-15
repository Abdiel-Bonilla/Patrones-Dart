import 'documento.dart';
import 'documento_excel.dart';
import 'generador_reportes.dart';

class GeneradorExcel extends GeneradorReportes {
  @override
  Documento crearDocumento() {
    return DocumentoExcel();
  }
}
