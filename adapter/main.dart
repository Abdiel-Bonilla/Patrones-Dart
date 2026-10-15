import 'servicio-pagos.dart';
import 'terminal-externa.dart';
import 'tienda.dart';

void main (){
  final Tienda tienda = Tienda(ServicioPago(), TerminalExterna());

  tienda.finalizarCompra(150.50, 'servicio');
  tienda.finalizarCompra(150.50, 'terminal');
}