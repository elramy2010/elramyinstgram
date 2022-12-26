import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/responsive/mobile.dart';
import 'package:instagram_app/responsive/responsive.dart';
import 'package:instagram_app/responsive/web.dart';
import 'package:instagram_app/screens/register.dart';
import 'package:instagram_app/screens/sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBVSd8GAyNxkTTh8n-VVFz37Tx4qSFU82Y",
            authDomain: "elramyinstaa.firebaseapp.com",
            projectId: "elramyinstaa",
            storageBucket: "elramyinstaa.appspot.com",
            messagingSenderId: "368140666306",
            appId: "1:368140666306:web:d8d06a5ddd0e5b15fdc25b"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Register(),
      // home: Resposive(
      //   myMobileScreen: MobileScerren(),
      //   myWebScreen: WebScerren(),
      // ),
    );
  }
}
