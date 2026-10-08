import 'documento.dart';
import 'documento_excel.dart';
import 'documento_json.dart';
import 'documento_texto.dart';

class GeneradorReportes {
  void generarReporte(String formato, List<int> calificaciones) {
    if (calificaciones.isEmpty) {
      throw ArgumentError('El reporte necesita una lista de calificaciones');
    }

    //Este objeto conoce a todas las implementaciones concretas
    Documento documento;

    switch (formato) {
      case 'json':
        documento = DocumentoJson();
        break;
      case 'excel':
        documento = DocumentoExcel();
        break;
      case 'texto':
        documento = DocumentoTexto();
        break;
      default:
        throw ArgumentError('Formato invalido: $formato');
    }

    print(documento.generar(calificaciones));
    print("Reporte generado correctamente");
  }
}
