import 'servicio-pagos.dart';
import 'terminal-externa.dart';

class Tienda {
  //Problema 1: La tienda tiene dos servicios de pago
  final ServicioPago servicioPago;
  final TerminalExterna terminalExterna;
  
  Tienda(this.servicioPago, this.terminalExterna);

  //Problema 2: La tienda quiere pagar en pesos, pero la terminal externa cobra en dólares
  void finalizarCompra(double total, String metodo) {
    if (metodo == 'servicio') {
      servicioPago.pagar(total);
    } else if (metodo == 'terminal') {
      //La tienda tiene que hacer la conversion pesos a dolares
      //NO ES SU RESPONSABILIDAD
      terminalExterna.cobrar(total / 18.0);
    } else {
      throw ArgumentError('Método de pago no válido');
    }
  }

}
