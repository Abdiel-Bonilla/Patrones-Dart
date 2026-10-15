import 'documento.dart';


abstract class GeneradorReportes {
  //Este es el factory metod, que deve ser implementado por las subclases concretas
  Documento crearDocumento();




  void generarReporte( List<int> calificaciones) {
    if (calificaciones.isEmpty) {
      throw ArgumentError('El reporte necesita una lista de calificaciones');
    }

    final documento = crearDocumento();

    print(documento.generar(calificaciones));
    print("Reporte generado correctamente");
  }
}
