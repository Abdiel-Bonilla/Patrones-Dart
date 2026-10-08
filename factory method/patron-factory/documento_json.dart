import 'dart:convert';
import 'documento.dart';

class DocumentoJson implements Documento {
  String generar(List<int> calificaciones) {
    //Aqui debe estar todo el proceso para crear el archivo de JSON
    return jsonEncode({'calificaciones en formato json': calificaciones});
  }
}
