import 'package:flutter/material.dart';
import 'package:meu_anki/ui/styles/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.account_box_rounded,
                size: 50,
                color: AppColors.disabled,
              ),
              onPressed: () {},
            );
          },
        ),
        centerTitle: false,
        title: const Text(
          'Bem-vindo(a)',
          style: TextStyle(
            color: AppColors.surface,
            fontSize: 16,
            fontFamily: 'Poppins',
          ),
        ),
        backgroundColor: AppColors.background,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, size: 30, color: AppColors.surface),
            onPressed: () {
              // Handle logout button press
            },
          ),
        ],
      ),
      backgroundColor: AppColors.background,
      body: const Center(child: Text('Hello, Meu Anki!')),
    );
  }
}
