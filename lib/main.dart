import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  void responder() {
    print("Resposta 1 foi lecionada!");
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      "Qual a sua cor favorita?",
      "Qual o seu animal favorito?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(
              child: Text("Resposta 1"),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text("Resposta 2"),
              onPressed: () => print("Resposta 2 foi leceionada"),
            ),
            ElevatedButton(
              child: Text("Resposta 3"),
              onPressed: () {
                print("Resposta 3 foi leceionada");
              },
            ),
          ],
        ),
      ),
    );
  }
}
