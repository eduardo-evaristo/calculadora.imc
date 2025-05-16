import 'package:flutter/material.dart';

class Logotipo extends StatelessWidget {
  final double size;

  const Logotipo({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.calculate, size: size, color: Colors.blueAccent);
  }
}
