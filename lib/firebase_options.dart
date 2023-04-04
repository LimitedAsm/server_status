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
    apiKey: 'AIzaSyCawKkpTrrtvkanlPUE9dgdN4o7A7cMcjU',
    appId: '1:801058183951:web:a1797d3501fce24fb83c7a',
    messagingSenderId: '801058183951',
    projectId: 'minecraft-server-status-379313',
    authDomain: 'minecraft-server-status-379313.firebaseapp.com',
    databaseURL:
        'https://minecraft-server-status-379313-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'minecraft-server-status-379313.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAwMrCb_sogj47zRiAEi0p9dbPuoUuPP1o',
    appId: '1:801058183951:android:be3feeb89e0211d5b83c7a',
    messagingSenderId: '801058183951',
    projectId: 'minecraft-server-status-379313',
    databaseURL:
        'https://minecraft-server-status-379313-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'minecraft-server-status-379313.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDuJfYyf1IatFk-0INbo192V7Ik-Tgb4ag',
    appId: '1:801058183951:ios:a5dbcd3dc434648db83c7a',
    messagingSenderId: '801058183951',
    projectId: 'minecraft-server-status-379313',
    databaseURL:
        'https://minecraft-server-status-379313-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'minecraft-server-status-379313.appspot.com',
    iosClientId:
        '801058183951-kd36fgd1jcbrpcj3l3itn17rikqv3lr1.apps.googleusercontent.com',
    iosBundleId: 'com.lim.minecraftserverStatus',
  );
}