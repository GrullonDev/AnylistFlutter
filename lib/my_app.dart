import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:anylist/feature/auth/bloc/signin_bloc.dart';
import 'package:anylist/feature/auth/pages/signin_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SignInBloc(),
        ),
      ],
      child: Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text('Creaciones Any'),
        ),
        body: const SignInPage(),
      ),
    );
  }
}