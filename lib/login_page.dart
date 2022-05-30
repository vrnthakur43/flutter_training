import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_training/utils/MyRoutes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
                height: 200,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap:() async {
                  setState(() {
                    changeButton = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoute.singupRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changeButton?50 : 150,
                  height: 50,
                  alignment: Alignment.center,
                  child: changeButton?Icon(Icons.done,color: Colors.white,) : Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    // shape: changeButton ? BoxShape.circle:BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(changeButton?50:8)
                  ),
                ),
              )
              /*  ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoute.singupRoute);
                },
                child: Text("Login"),
                style: TextButton.styleFrom(minimumSize: Size(150, 40)),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
