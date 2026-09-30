import 'triangulo.dart';

void main() {
  //No se puede instanciar un objeto de una clase abstracta
  //FiguraGeometrica unafigura = FiguraGeometrica();

  Triangulo untriangulo = Triangulo();

  untriangulo.calcularArea();
  print("Area de triangulo: ${untriangulo.area}");
}
