import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int puntuacao;

  Resultado(this.puntuacao);

  String get fraseResultado {
    if (puntuacao < 12) {
      return "Carro legal";
    } else if (puntuacao < 16) {
      return "Hmm ta ficando bom";
    } else if (puntuacao < 18) {
      return "Nave Top";
    } else {
      return "Temos um novo Brian O'Conner!!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          fraseResultado,
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
