import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String textoBotao;
  final void Function() onSelect;

  Resposta(this.textoBotao, this.onSelect);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(textoBotao),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white
        ),
        onPressed: onSelect,
      ),
    );
  }
}
