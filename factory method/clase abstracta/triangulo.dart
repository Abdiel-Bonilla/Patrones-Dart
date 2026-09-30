//Clase que implementa FiguraGeometrica
import 'figura_geometrica.dart';

class Triangulo implements FiguraGeometrica {
  double? perimetro;
  double? area;
  double baset = 10;
  double altura = 15;

  void calcularArea() {
    this.area= (this.baset * this.altura / 2);
  }

  void calcularPerimetro() {
    this.perimetro= (this.baset * 3);
  }
}
