import 'package:flutter/material.dart';
import 'package:meu_anki/ui/components/regular_button.dart';
import 'package:meu_anki/ui/home_screen.dart';
import 'package:meu_anki/ui/styles/colors.dart';

class TrainierenScreen extends StatelessWidget {
  const TrainierenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Image.asset(
          'images/germany-circle-flag.png',
          width: 40,
          height: 40,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 30,
            color: AppColors.surface,
          ),
          onPressed: () {
            // Handle home button press
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
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
            child: Text(
              'Übersetzen',
              style: TextStyle(
                color: AppColors.surface,
                fontSize: 40,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 88),
          Container(
            width: 340,
            height: 139,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Die Hunde essen zu viel.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.surface,
                  fontSize: 34,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(height: 300),
          RegularButton(
            onPressed: () {
              // Handle "Antwort anzeigen" button press
            },
            text: 'Antwort anzeigen',
            backgroundColor: AppColors.secondary,
          ),
        ],
      ),
    );
  }
}
