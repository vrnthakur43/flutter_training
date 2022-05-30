import 'package:flutter/material.dart';
import 'package:flutter_training/pages/home_page.dart';
import 'package:flutter_training/pages/login_page.dart';
import 'package:flutter_training/pages/practice_page.dart';
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
      initialRoute: MyRoute.homeRoute,
      routes: {
        MyRoute.homeRoute: (context) => HomePage(),
        MyRoute.loginRoute: (context) => LoginPage(),
        MyRoute.singupRoute: (context) => SignupPage(),
        "/": (context) => LoginPage()
      },
    );
  }
}
