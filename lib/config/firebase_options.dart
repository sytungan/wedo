import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCjEaZjeepZNupHSEUnc63POCtv3i15Ias',
    appId: '1:451861489529:web:420bc6276937ed090c71a8',
    messagingSenderId: '451861489529',
    projectId: 'we-dooo',
    authDomain: 'we-dooo.firebaseapp.com',
    storageBucket: 'we-dooo.appspot.com',
    measurementId: 'G-CG4VK7CDCM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCMhiPfiI9l_c781YKDXKWQdXct6bP29SA',
    appId: '1:451861489529:android:aa7e0f9b537edcf70c71a8',
    messagingSenderId: '451861489529',
    projectId: 'we-dooo',
    storageBucket: 'we-dooo.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBqyb3Yva5wJF56f2eKP-h5KI7UtpIpCfc',
    appId: '1:451861489529:ios:49093a82874e15230c71a8',
    messagingSenderId: '451861489529',
    projectId: 'we-dooo',
    storageBucket: 'we-dooo.appspot.com',
    iosClientId:
        '451861489529-i8fr28s70aheu1qnkgbd7g07obohe918.apps.googleusercontent.com',
    iosBundleId: 'com.minis.wedo',
  );
}
