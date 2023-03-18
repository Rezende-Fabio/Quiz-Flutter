import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        "texto": "Qual carro você prefere?",
        "resposta": ["Supra", "GTR R34", "Lancer Evo", "WRX STI"]
      },
      {
        "texto": "Qual  potência ideial?",
        "resposta": ["350 CV", "400 CV", "250 CV", "700 CV"]
      },
      {
        "texto": "Cor do carro?",
        "resposta": ["Azul Marinho", "Vermelho", "Preto", "Branco"]
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]["texto"].toString()),
            Resposta("Resposta 1", _responder),
            Resposta("Resposta 2", _responder),
            Resposta("Resposta 3", _responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
