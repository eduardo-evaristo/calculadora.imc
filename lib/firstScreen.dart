import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final TextEditingController alturaController = TextEditingController();
  final TextEditingController pesoController = TextEditingController();

  String imc = '';

  void calcular(String pesoText, String alturaText) {
    final double? peso = double.tryParse(pesoText);
    final double? altura = double.tryParse(alturaText);

    if (peso == null || altura == null || altura <= 0) return;

    final double valor = peso / (altura * altura);

    setState(() {
      if (valor < 18.5) {
        imc = 'Abaixo do peso';
      } else if (valor < 25) {
        imc = 'Peso normal';
      } else if (valor < 30) {
        imc = 'Sobrepeso';
      } else {
        imc = 'Obesidade';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aplicação IMC')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(imc, style: TextStyle(fontSize: 18)),
            TextField(
              controller: alturaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Altura'),
            ),
            TextField(
              controller: pesoController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Peso'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                calcular(pesoController.text, alturaController.text);
              },
              child: Text('Calcular IMC'),
            ),
          ],
        ),
      ),
    );
  }
}
