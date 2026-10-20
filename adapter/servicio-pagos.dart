import 'medio-de-pago.dart';

class ServicioPago implements MedioDePago {
  @override
  void pagar(double pesos) {
    print('Servicio de pago: ${pesos} pesos');
    // lógica de pago
  }
}