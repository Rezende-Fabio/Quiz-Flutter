import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
  });

  bool get temPergutaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPergutaSelecionada
        ? perguntas[perguntaSelecionada].cast()['resposta']
        : [];

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]["texto"].toString()),
        ...respostas.map((t) => Resposta(t, responder)).toList(),
      ],
    );
  }
}
