import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int puntuacao;
  final void Function() reiniciarQuestionario;

  Resultado(this.puntuacao, this.reiniciarQuestionario);

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Center(
            child: Text(
              fraseResultado,
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        ElevatedButton(
          child: Text("Reiniciar?"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            foregroundColor: Color.fromARGB(255, 50, 47, 213)
          ),
          onPressed: reiniciarQuestionario,
        )
      ],
    );
  }
}
