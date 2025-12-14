import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final int result;
  const ResultPage({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wynik')),
      body: Center(
        child: Text(
          '$result',
          style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
