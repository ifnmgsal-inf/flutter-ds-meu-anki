import 'package:flutter/material.dart';
import 'package:meu_anki/ui/home_screen.dart';

void main() {
  runApp(const MyAnkiApp());
}

class MyAnkiApp extends StatelessWidget {
  const MyAnkiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Meu Anki', home: HomeScreen());
  }
}
