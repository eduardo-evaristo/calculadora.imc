import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Resultado')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Placeholder'),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: Column(children: [Text('PONTUACAO'), Text('CLASSIFICACAO')]),
          ),
          Text('Explicação'),
        ],
      ),
    );
  }
}
