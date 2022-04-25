import 'dart:math';

class Dados {
  late int aux;
  String getDado(int lados, int dados) {
    aux = 0;
    for (var c = 0; c < dados; c++) {
      if (lados == 0) {
        return "";
      } else if (dados == 1) {
        aux = Random().nextInt(lados) + 1;
        return (aux).toString();
      } else {
        aux += Random().nextInt(lados) + 1;
      }
    }
    return "Soma : " + (aux).toString();
  }
}
