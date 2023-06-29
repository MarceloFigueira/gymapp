import 'package:flutter/material.dart';
import 'package:gymapp/core/my_colors.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  MyColors.topBlue,
                  MyColors.bottomBlue,
                ],
              ),
            ),
          ),
          Center(
            child: Image.asset(
              'assets/logo.png',
              height: 128,
            ),
          ),
        ],
      ),
    );
  }
}
