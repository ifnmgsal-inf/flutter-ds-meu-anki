import 'package:flutter/material.dart';
import 'package:meu_anki/ui/components/regular_button.dart';
import 'package:meu_anki/ui/styles/colors.dart';

class GermanOptionsScreen extends StatelessWidget {
  const GermanOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: Icon(Icons.home, size: 30, color: AppColors.surface),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Center(
            child: Image.asset(
              'images/germany-circle-flag.png',
              width: 137,
              height: 137,
            ),
          ),
          const SizedBox(height: 88),
          RegularButton(
            onPressed: () {
              // Handle "Trainieren" button press
            },
            text: 'Trainieren',
          ),
          const SizedBox(height: 98),
          RegularButton(
            onPressed: () {
              // Handle "Karte hinzufügen" button press
            },
            text: 'Karte hinzufügen',
          ),
        ],
      ),
    );
  }
}
