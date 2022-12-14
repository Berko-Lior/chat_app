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
    apiKey: 'AIzaSyAfaUFZSIsE1NbltSWrdETQfB2rBeZAY7o',
    appId: '1:1058174313409:web:e1d0034487175443a18540',
    messagingSenderId: '1058174313409',
    projectId: 'chat-app-86d6e',
    authDomain: 'chat-app-86d6e.firebaseapp.com',
    storageBucket: 'chat-app-86d6e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyArILidxrooQ8oq1E1M9rtl4qWlAsnjfQA',
    appId: '1:1058174313409:android:8b08b66a002feefba18540',
    messagingSenderId: '1058174313409',
    projectId: 'chat-app-86d6e',
    storageBucket: 'chat-app-86d6e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDTyxzSMPMzZIxe2arD8lmu7IJIslbAT7E',
    appId: '1:1058174313409:ios:13df79e6679f39cda18540',
    messagingSenderId: '1058174313409',
    projectId: 'chat-app-86d6e',
    storageBucket: 'chat-app-86d6e.appspot.com',
    iosClientId: '1058174313409-ck3jsjoellngg6h0a9o0ivgq8vomnlks.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDTyxzSMPMzZIxe2arD8lmu7IJIslbAT7E',
    appId: '1:1058174313409:ios:13df79e6679f39cda18540',
    messagingSenderId: '1058174313409',
    projectId: 'chat-app-86d6e',
    storageBucket: 'chat-app-86d6e.appspot.com',
    iosClientId: '1058174313409-ck3jsjoellngg6h0a9o0ivgq8vomnlks.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );
}
