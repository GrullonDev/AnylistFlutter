import 'package:flutter/material.dart';

import 'package:anylist/utils/home.dart';
import 'package:anylist/utils/router/router_path.dart';
import 'package:anylist/utils/router/router_switch.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Tiendita',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyanAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Mi Tiendita'),
      initialRoute: RoutePaths.login,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
