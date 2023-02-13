import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:pedido_listo_web/firebase_options.dart';
export 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseInjection {
  final FirebaseFirestore firestore;

/*   bool get isLogged => auth.currentUser != null;
  String? get emailLogged => auth.currentUser?.email; */

  FirebaseInjection._({required this.firestore});

  static Future<FirebaseInjection> getInstance() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);

    return FirebaseInjection._(
      firestore: FirebaseFirestore.instance,
    );
  }

  static Future<FirebaseInjection> getInstanceEmulator() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);

    final host = defaultTargetPlatform == TargetPlatform.android
        ? _Port.android
        : _Port.another;

    final firestore = FirebaseFirestore.instance
      ..settings = Settings(
        cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED,
        host: '$host:${_Port.firestore}',
        sslEnabled: false,
        persistenceEnabled: true,
      );

    return FirebaseInjection._(
      firestore: firestore,
    );
  }
}

class _Port {
  // static const firebaseAuth = 9099;
  static const firestore = '8080';
  // static const storage = 9199;
  static const android = '10.0.2.2';
  static const another = 'localhost';
}
