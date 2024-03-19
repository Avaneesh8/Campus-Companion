import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDXa-m6azGm1KM_Kbp3Ut9UbmvEC-l5x8w",
            authDomain: "campus-companion-ww3uof.firebaseapp.com",
            projectId: "campus-companion-ww3uof",
            storageBucket: "campus-companion-ww3uof.appspot.com",
            messagingSenderId: "608926332206",
            appId: "1:608926332206:web:34b234c2da5b37a5bab6bf"));
  } else {
    await Firebase.initializeApp();
  }
}
