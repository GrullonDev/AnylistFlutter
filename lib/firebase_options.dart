// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDoflTNA-A4CXFMNlFPkKfobDMix6224lQ',
    appId: '1:110037097853:web:80c5bb1d7a12b95f0b4014',
    messagingSenderId: '110037097853',
    projectId: 'anylist-25a2a',
    authDomain: 'anylist-25a2a.firebaseapp.com',
    storageBucket: 'anylist-25a2a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBlQOV7VyG7nAOZxAzmq3X7J8_IAR3nlv8',
    appId: '1:110037097853:android:4fe241ac329eff5a0b4014',
    messagingSenderId: '110037097853',
    projectId: 'anylist-25a2a',
    storageBucket: 'anylist-25a2a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB1zOYdJlwDNDK3GaG9j2QkcWR7mxCJsZo',
    appId: '1:110037097853:ios:91bc0b245002a44c0b4014',
    messagingSenderId: '110037097853',
    projectId: 'anylist-25a2a',
    storageBucket: 'anylist-25a2a.appspot.com',
    iosBundleId: 'com.example.anylist',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB1zOYdJlwDNDK3GaG9j2QkcWR7mxCJsZo',
    appId: '1:110037097853:ios:91bc0b245002a44c0b4014',
    messagingSenderId: '110037097853',
    projectId: 'anylist-25a2a',
    storageBucket: 'anylist-25a2a.appspot.com',
    iosBundleId: 'com.example.anylist',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDoflTNA-A4CXFMNlFPkKfobDMix6224lQ',
    appId: '1:110037097853:web:5b9e049a95d267f80b4014',
    messagingSenderId: '110037097853',
    projectId: 'anylist-25a2a',
    authDomain: 'anylist-25a2a.firebaseapp.com',
    storageBucket: 'anylist-25a2a.appspot.com',
  );
}
