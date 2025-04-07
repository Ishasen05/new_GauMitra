import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB8MDFUgXPaJnZgydb3O0yoTt_oiEcdK88",
            authDomain: "gau-mitra-kqr6f9.firebaseapp.com",
            projectId: "gau-mitra-kqr6f9",
            storageBucket: "gau-mitra-kqr6f9.firebasestorage.app",
            messagingSenderId: "130939629127",
            appId: "1:130939629127:web:e5ed86aa2a8314d9508b62",
            measurementId: "G-V171CH9X2E"));
  } else {
    await Firebase.initializeApp();
  }
}
