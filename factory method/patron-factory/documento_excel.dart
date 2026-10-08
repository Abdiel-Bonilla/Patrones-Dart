import 'documento.dart';

class DocumentoExcel implements Documento{
  String generar(List<int> calificaciones){
    //Aqui debe estar todo el proceso para crear el archivo de excel
    return 'Calificaciones en formato excel: ${calificaciones.join(", ")}';
  }
}