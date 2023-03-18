import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
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

  void _responder() {
    if (temPergutaSelecionada){
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPergutaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPergutaSelecionada
        ? _perguntas[_perguntaSelecionada].cast()['resposta']
        : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: temPergutaSelecionada ? Column(
          children: [
            Questao(_perguntas[_perguntaSelecionada]["texto"].toString()),
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
          ],
        ): Resultado()
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
