import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:imc/logotipo.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({
    super.key,
    required this.pontuacao,
    required this.classificacao,
  });
  final double pontuacao;
  final String classificacao;

  // Map with colors
  final Map<String, Color> colorsClassificacao = {
    'Magreza': Colors.redAccent,
    'Normal': Colors.green,
    'Sobrepeso': Colors.orange,
    'Obesidade': Colors.deepOrange,
    'Obesidade grave': Colors.red,
  };

  //Map with strings
  final Map<String, String> textosClassificacao = {
    'Magreza':
        'Seu IMC indica magreza. É importante investigar possíveis causas como alimentação insuficiente ou problemas de saúde. Procure um nutricionista ou médico para orientações personalizadas.',
    'Normal':
        'Parabéns! Seu IMC está dentro da faixa considerada saudável. Continue mantendo bons hábitos alimentares e a prática regular de atividades físicas.',
    'Sobrepeso':
        'Você está acima do peso ideal. Pequenas mudanças na alimentação e no estilo de vida já podem fazer diferença. Considere buscar apoio nutricional e praticar exercícios regularmente.',
    'Obesidade':
        'Seu IMC indica obesidade. Isso pode aumentar o risco de doenças cardiovasculares e metabólicas. É recomendável buscar acompanhamento profissional para reeducação alimentar e atividade física.',
    'Obesidade grave':
        'Atenção! Este nível de IMC representa um risco elevado para a saúde. Busque orientação médica e nutricional o quanto antes para iniciar um plano de cuidado adequado.',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Resultado')),
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: colorsClassificacao[classificacao]!,
            width: 4,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: Logotipo(size: 90),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Column(
                children: [
                  Text(
                    '${pontuacao.toStringAsFixed(1)}',
                    style: TextStyle(fontSize: 50),
                  ),
                  Text(
                    'Classificação: $classificacao',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: colorsClassificacao[classificacao],
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              textosClassificacao[classificacao] ?? '',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
