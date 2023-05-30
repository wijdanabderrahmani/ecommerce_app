import 'pages/home.dart';
import 'pages/signUp.dart';
import 'pages/login.dart';
import 'pages/visual.dart';
import 'pages/searchbypic.dart';
import 'pages/crop.dart';
import 'pages/visualsearch.dart';
import 'pages/forgotPassword.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ECommerce',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SignUpPage(),
        '/loginpage': (context) => LoginPage(),
        '/forgotpassword': (context) => ForgotPasswordPage(),
        '/home': (context) => HomePage(),
        '/visual': (context) => visual(),
        '/crop': (context) => crop(),
        '/searchbypic': (context) => searchbypic(),
        '/visualsearch': (context) => visualsearch(),
      },
    );
  }
}
