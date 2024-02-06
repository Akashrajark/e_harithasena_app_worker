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
    apiKey: 'AIzaSyAfNu2vz2Vjd28Zb1rzU7itdEdulMicRVI',
    appId: '1:286632503963:web:6875b1e5715f5e64db343e',
    messagingSenderId: '286632503963',
    projectId: 'e-harithasena',
    authDomain: 'e-harithasena.firebaseapp.com',
    storageBucket: 'e-harithasena.appspot.com',
    measurementId: 'G-2Z0JP19WP9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBybvXKY1EfESFYmU7aWZxxRykzjVDo82U',
    appId: '1:286632503963:android:69e95f0d5caaacc3db343e',
    messagingSenderId: '286632503963',
    projectId: 'e-harithasena',
    storageBucket: 'e-harithasena.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB8-ayl2nnjRayduNOg0z0iSDtTaO2Qe-U',
    appId: '1:286632503963:ios:b3eb62f4b11f7ce7db343e',
    messagingSenderId: '286632503963',
    projectId: 'e-harithasena',
    storageBucket: 'e-harithasena.appspot.com',
    iosBundleId: 'com.example.eHarithasenaWorker',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB8-ayl2nnjRayduNOg0z0iSDtTaO2Qe-U',
    appId: '1:286632503963:ios:bc030651b95407bcdb343e',
    messagingSenderId: '286632503963',
    projectId: 'e-harithasena',
    storageBucket: 'e-harithasena.appspot.com',
    iosBundleId: 'com.example.eHarithasenaWorker.RunnerTests',
  );
}