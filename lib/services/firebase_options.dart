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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyChdFEV23Xax6bbmLYvW8VvfTzh64GKUZE',
    appId: '1:154214486554:android:3cbd6d8c31ff758b54f7a3',
    messagingSenderId: '154214486554',
    projectId: 'nailsmaster-api',
    databaseURL: 'https://nailsmaster-api.firebaseio.com',
    storageBucket: 'nailsmaster-api.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCchrYfU1I2I67uOwIu_jkQO-9p06PbVOQ',
    appId: '1:154214486554:ios:7bf7a720f946372654f7a3',
    messagingSenderId: '154214486554',
    projectId: 'nailsmaster-api',
    databaseURL: 'https://nailsmaster-api.firebaseio.com',
    storageBucket: 'nailsmaster-api.appspot.com',
    androidClientId:
        '154214486554-v8388ptn0jkerplmn6am9vsqe4tsacb8.apps.googleusercontent.com',
    iosClientId:
        '154214486554-56656fp32ps5e5fp8tcbhqqibfj5htid.apps.googleusercontent.com',
    iosBundleId: 'cc.nailsmaster.nailsmaster',
  );
}
