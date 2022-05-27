import 'package:flutter/material.dart';
import 'package:flutter_training/home_page.dart';
import 'package:flutter_training/login_page.dart';
import 'package:flutter_training/practice_page.dart';
import 'package:flutter_training/utils/MyRoutes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
       ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/" ,
      routes: {
        MyRoute.homeRoute: (context) => HomePage(),
        MyRoute.loginRoute: (context) => LoginPage(),
        MyRoute.singupRoute: (context) => SignupPage(),
        "/": (context) => LoginPage()
      },
    );
  }
}
