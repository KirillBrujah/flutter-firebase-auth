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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAbu-hJC4M-HgomQwM51abDCWN73gsQvK0',
    appId: '1:909250604148:android:5e2fead080aa95eeecb521',
    messagingSenderId: '909250604148',
    projectId: 'fir-study-3ef93',
    databaseURL: 'https://fir-study-3ef93-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'fir-study-3ef93.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBdRPkzYNhXHaMmgBHJuz5UAdZVXX1NpBA',
    appId: '1:909250604148:ios:55ca1e3cdfaeafcfecb521',
    messagingSenderId: '909250604148',
    projectId: 'fir-study-3ef93',
    databaseURL: 'https://fir-study-3ef93-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'fir-study-3ef93.appspot.com',
    iosClientId: '909250604148-4stokr1oh7e3umit4sa9087a5f7snfsf.apps.googleusercontent.com',
    iosBundleId: 'com.brujah.firebaseAuthStudy',
  );
}
