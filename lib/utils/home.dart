import 'package:flutter/material.dart';

import 'package:anylist/features/auth/login/page/login_page.dart';
import 'package:anylist/utils/router/router_path.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const LoginPage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(
          context,
          RoutePaths.register,
        ),
        tooltip: 'Registrarte',
        child: const Icon(Icons.add),
      ),
    );
  }
}
