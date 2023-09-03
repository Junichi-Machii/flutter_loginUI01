import 'package:flutter/material.dart';
//firebases
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_login_ui01/firebase_options.dart';

//contents
import 'package:flutter_login_ui01/data/theme_data.dart';
import 'package:flutter_login_ui01/screen/home_page.dart';
import 'package:flutter_login_ui01/screen/login_page.dart';
import 'package:flutter_login_ui01/auth/main_page.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: MainPage(),
    );
  }
}
