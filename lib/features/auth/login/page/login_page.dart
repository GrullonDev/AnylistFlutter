import 'package:flutter/material.dart';

import 'package:anylist/features/auth/login/page/login_layout.dart';
import 'package:anylist/utils/constants/icon.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  IconConst.backgroudImage,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const LoginLayout(),
        ],
      ),
    );
  }
}
