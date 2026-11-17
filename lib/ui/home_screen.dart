import 'dart:io';

import 'package:flutter/material.dart';
import 'package:meu_anki/ui/german_options_screen.dart';
import 'package:meu_anki/ui/styles/colors.dart';
import 'package:picture_button/picture_button.dart';

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
            fontWeight: FontWeight.w500,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 76.0),
            child: Text(
              'Teste suas habilidades no MeuAnki App!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.surface,
                fontSize: 22,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 60),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 76.0),
            child: Text(
              'Selecione a bandeira do idioma que deseja praticar:',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.surface,
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 55),
          PictureButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GermanOptionsScreen(),
                ),
              );
            },
            image: AssetImage('images/germany-circle-flag.png'),
            width: 137,
            height: 137,
          ),
          const SizedBox(height: 65),
          Image.asset('images/usa-circle-flag.png', width: 137, height: 137),
        ],
      ),
    );
  }
}
