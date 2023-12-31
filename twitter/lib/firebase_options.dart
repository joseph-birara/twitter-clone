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
    apiKey: 'AIzaSyD6YN0UhFkkBzGz-HbA7VjyjWmNiHVNTts',
    appId: '1:642006521946:web:c1ccea4ff791cbf2c6a063',
    messagingSenderId: '642006521946',
    projectId: 'twitter-offcial',
    authDomain: 'twitter-offcial.firebaseapp.com',
    storageBucket: 'twitter-offcial.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBjEIogDYD1IpYF17qtb7R8U_SPCD5W4xY',
    appId: '1:642006521946:android:c9042528c6d43ffbc6a063',
    messagingSenderId: '642006521946',
    projectId: 'twitter-offcial',
    storageBucket: 'twitter-offcial.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDP-9Tx6BodyPlFUYFo4mK32rPou8Hvk6s',
    appId: '1:642006521946:ios:614473f284be4fcec6a063',
    messagingSenderId: '642006521946',
    projectId: 'twitter-offcial',
    storageBucket: 'twitter-offcial.appspot.com',
    iosBundleId: 'com.example.twitter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDP-9Tx6BodyPlFUYFo4mK32rPou8Hvk6s',
    appId: '1:642006521946:ios:c04dc5914dca004cc6a063',
    messagingSenderId: '642006521946',
    projectId: 'twitter-offcial',
    storageBucket: 'twitter-offcial.appspot.com',
    iosBundleId: 'com.example.twitter.RunnerTests',
  );
}
