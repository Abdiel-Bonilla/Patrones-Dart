//Adapter: adaptador
//traduce la interfaz y los datos
//(Conectar con la libreria que no se puede modificar)
import 'medio-de-pago.dart';
import 'terminal-externa.dart';

class TerminalAdapter implements MedioDePago {
  final TerminalExterna terminal;

  TerminalAdapter(this.terminal);

  @override
  void pagar(double pesos) {
    final dolares = pesos / 18.0; // Conversión de pesos a dólares
    terminal.cobrar(dolares);
  }
}

