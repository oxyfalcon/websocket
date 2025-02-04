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
    apiKey: 'AIzaSyA2KwlRKi6OPwN8l-A45vRQ6UNuKj2ZXws',
    appId: '1:286689301924:web:342dc943ddad89b5921d31',
    messagingSenderId: '286689301924',
    projectId: 'test-eb59b',
    authDomain: 'test-eb59b.firebaseapp.com',
    databaseURL: 'https://test-eb59b-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'test-eb59b.appspot.com',
    measurementId: 'G-P0PK9CLDTD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC04vrUZS2nZ2KXvphmLLB5gcqQjnJIa0M',
    appId: '1:286689301924:android:af020e3e21257676921d31',
    messagingSenderId: '286689301924',
    projectId: 'test-eb59b',
    databaseURL: 'https://test-eb59b-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'test-eb59b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA4mUE5uTYqCce89YdeJIVOh0ORsai4xfw',
    appId: '1:286689301924:ios:2e61122e98edfb91921d31',
    messagingSenderId: '286689301924',
    projectId: 'test-eb59b',
    databaseURL: 'https://test-eb59b-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'test-eb59b.appspot.com',
    iosBundleId: 'com.example.websocketWebapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA4mUE5uTYqCce89YdeJIVOh0ORsai4xfw',
    appId: '1:286689301924:ios:6b491502a0056029921d31',
    messagingSenderId: '286689301924',
    projectId: 'test-eb59b',
    databaseURL: 'https://test-eb59b-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'test-eb59b.appspot.com',
    iosBundleId: 'com.example.websocketWebapp.RunnerTests',
  );
}
