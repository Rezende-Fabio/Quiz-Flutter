import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String textoBotao;

  Resposta(this.textoBotao);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(textoBotao),
      onPressed: null,
    );
  }
}
