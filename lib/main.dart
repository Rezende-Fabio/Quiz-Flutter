import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      "texto": "Qual carro você prefere?",
      "resposta": [
        {"texto": "Supra", "pontuacao": 8},
        {"texto": "GTR R34", "pontuacao": 10},
        {"texto": "Lancer Evo", "pontuacao": 5},
        {"texto": "WRX STI", "pontuacao": 7}
      ]
    },
    {
      "texto": "Qual  potência ideial?",
      "resposta": [
        {"texto": "350 CV", "pontuacao": 5},
        {"texto": "400 CV", "pontuacao": 7},
        {"texto": "250 CV", "pontuacao": 3},
        {"texto": "700 CV", "pontuacao": 10}
      ]
    },
    {
      "texto": "Qual tipo?",
      "resposta": [
        {"texto": "Turbinado", "pontuacao": 10},
        {"texto": "Aspirado", "pontuacao": 7},
        {"texto": "Elétrico", "pontuacao": 2},
        {"texto": "Híbrido", "pontuacao": 4},
      ]
    }
  ];

  void _responder(int pontuacao) {
    if (temPergutaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPergutaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Perguntas"),
          ),
          body: temPergutaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaSelecionada,
                  responder: _responder,
                )
              : Resultado(_pontuacaoTotal, _reiniciarQuestionario)),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
