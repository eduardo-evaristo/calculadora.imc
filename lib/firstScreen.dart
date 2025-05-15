import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aplicação IMC')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Placeholder'),
          TextField(decoration: InputDecoration(label: Text('Altura'))),
          TextField(decoration: InputDecoration(label: Text('Peso'))),
          ElevatedButton(onPressed: () {}, child: Text('Calcular IMC')),
        ],
      ),
    );
  }
}
