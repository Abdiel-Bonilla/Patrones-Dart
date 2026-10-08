import 'documento.dart';

class DocumentoTexto implements Documento{
  String generar(List<int> calificaciones){
    //Aqui debe estar todo el proceso para crear el archivo de texto
    return 'Calificaciones en formato texto: ${calificaciones.join(", ")}';
  }
}