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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAPRHQh8laAYb_koyMZgXtnzhEop7Bum9k',
    appId: '1:157220170396:web:fc32be79830843a6a95b59',
    messagingSenderId: '157220170396',
    projectId: 'digital-store-d7718',
    authDomain: 'digital-store-d7718.firebaseapp.com',
    storageBucket: 'digital-store-d7718.appspot.com',
    measurementId: 'G-Y2PMC4CTDH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAt3AVq5Xj4hTIhiKJbqI8AhFNuAoOtsN8',
    appId: '1:157220170396:android:cb0b92a1aa8cf95ba95b59',
    messagingSenderId: '157220170396',
    projectId: 'digital-store-d7718',
    storageBucket: 'digital-store-d7718.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDoPkuCQS7AM5HWHIQTFbQ0fFCQGu5lkSw',
    appId: '1:157220170396:ios:86eb071c9c3b21a6a95b59',
    messagingSenderId: '157220170396',
    projectId: 'digital-store-d7718',
    storageBucket: 'digital-store-d7718.appspot.com',
    iosBundleId: 'com.example.ecommerceApp',
  );
}
