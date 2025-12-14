import 'package:flutter/material.dart';
import 'ui/pages/input_page.dart';

void main() {
  runApp(const OutlierApp());
}

class OutlierApp extends StatelessWidget {
  const OutlierApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Outlier Finder',
      theme: ThemeData(useMaterial3: true),
      home: const InputPage(),
    );
  }
}
