import 'generador_excel.dart';
import 'generador_json.dart';
import 'generador_reportes.dart';
import 'generador_texto.dart';

void main() {
  final generadores = <GeneradorReportes>[
    GeneradorExcel(),
    GeneradorJson(),
    GeneradorTexto(),
  ];

  for (final generador in generadores) {
    generador.generarReporte([10, 9, 8, 0, 0, 10, 8]);
  }
}
