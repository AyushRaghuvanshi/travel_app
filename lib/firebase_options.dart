// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD1VXipKQMDSt5nv-h5zY-tOoqQbSPKHy0',
    appId: '1:1095237911411:web:1b30ecca781ddf132a7b06',
    messagingSenderId: '1095237911411',
    projectId: 'travel-7f3ca',
    authDomain: 'travel-7f3ca.firebaseapp.com',
    storageBucket: 'travel-7f3ca.appspot.com',
    measurementId: 'G-MRRMHYTJH8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC2xO6iVSLMZZq2Z3hH9QTlFRaq0fv2OEE',
    appId: '1:1095237911411:android:e968afc07449e5802a7b06',
    messagingSenderId: '1095237911411',
    projectId: 'travel-7f3ca',
    storageBucket: 'travel-7f3ca.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyClV351pG5sDKvSL-gbQRO__P0GrF6jNs0',
    appId: '1:1095237911411:ios:66e8b279d1c78eaf2a7b06',
    messagingSenderId: '1095237911411',
    projectId: 'travel-7f3ca',
    storageBucket: 'travel-7f3ca.appspot.com',
    iosBundleId: 'com.example.travel',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyClV351pG5sDKvSL-gbQRO__P0GrF6jNs0',
    appId: '1:1095237911411:ios:2beff1ed9d7508c02a7b06',
    messagingSenderId: '1095237911411',
    projectId: 'travel-7f3ca',
    storageBucket: 'travel-7f3ca.appspot.com',
    iosBundleId: 'com.example.travel.RunnerTests',
  );
}
