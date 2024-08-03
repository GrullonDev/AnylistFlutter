import 'package:flutter/material.dart';

class SignInLayout extends StatelessWidget {
  const SignInLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: const Text(
              'Hola Mundo!!',
              style: TextStyle(fontSize: 25),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Container(
              color: Colors.white,
              child: const Text(
                'San Pedro',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
