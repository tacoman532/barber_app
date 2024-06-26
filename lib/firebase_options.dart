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
    apiKey: 'AIzaSyBwbvSUXTPqAoNyRAli0PJSNP9_ARRHmvE',
    appId: '1:806375991526:web:7061e027dffb579fd8b327',
    messagingSenderId: '806375991526',
    projectId: 'barber-app-b544a',
    authDomain: 'barber-app-b544a.firebaseapp.com',
    storageBucket: 'barber-app-b544a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAIvWXRtGqJYMvgWuXXyGDR6vJp9rK7paw',
    appId: '1:806375991526:android:4c74f19e6c9a18a0d8b327',
    messagingSenderId: '806375991526',
    projectId: 'barber-app-b544a',
    storageBucket: 'barber-app-b544a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDPea6rmptldcp34Svx8Ju6isAEyjS6Mxg',
    appId: '1:806375991526:ios:4eb0b53e38bacb1bd8b327',
    messagingSenderId: '806375991526',
    projectId: 'barber-app-b544a',
    storageBucket: 'barber-app-b544a.appspot.com',
    iosBundleId: 'com.example.barberApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDPea6rmptldcp34Svx8Ju6isAEyjS6Mxg',
    appId: '1:806375991526:ios:4eb0b53e38bacb1bd8b327',
    messagingSenderId: '806375991526',
    projectId: 'barber-app-b544a',
    storageBucket: 'barber-app-b544a.appspot.com',
    iosBundleId: 'com.example.barberApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBwbvSUXTPqAoNyRAli0PJSNP9_ARRHmvE',
    appId: '1:806375991526:web:6bb99b1e316a604ed8b327',
    messagingSenderId: '806375991526',
    projectId: 'barber-app-b544a',
    authDomain: 'barber-app-b544a.firebaseapp.com',
    storageBucket: 'barber-app-b544a.appspot.com',
  );

}