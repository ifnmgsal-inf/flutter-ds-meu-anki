import 'package:flutter/material.dart';

class GermanOptionsScreen extends StatelessWidget {
  const GermanOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.home, size: 30)),
      body: const Center(child: Text('German Options Screen')),
    );
  }
}
