import 'package:flutter/material.dart';
import 'package:flutter_training/utils/MyRoutes.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              height: 200,
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: TextFormField(
                decoration:
                    InputDecoration(hintText: "Enter Email", labelText: "Email"),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter Password", labelText: "Password"),
              ),
            ),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, MyRoute.homeRoute);
            }, child: Text("Signup"),
            style: TextButton.styleFrom(minimumSize: Size(150, 45)),)
          ],
        ),
      ),
    );
  }
}
