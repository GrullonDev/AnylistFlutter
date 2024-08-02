import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:anylist/firebase_options.dart';
import 'package:anylist/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).catchError((error) {
    // Maneja errores de inicialización aquí
    print("Error inicializando Firebase: $error");
  });
  runApp(const MyApp());
}
