import 'package:flutter/material.dart';
import 'package:flutter_training/utils/MyRoutes.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String name = "";
  bool buttonChange = false;

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
            Text(
              "Welcome $name",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter Email", labelText: "Email"),
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
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
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap:() async {
                setState(() {
                  buttonChange = true;
                });

                await Future.delayed(Duration(seconds: 1));
                await Navigator.pushNamed(context, MyRoute.homeRoute);
                setState(() {
                  buttonChange = false;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: buttonChange?50:150,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(buttonChange?50:10)),
                alignment: Alignment.center,
                child: buttonChange? Icon(Icons.done,color: Colors.white,) :Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            )
            /*  ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoute.homeRoute);
              },
              child: Text("Signup"),
              style: TextButton.styleFrom(minimumSize: Size(150, 45)),
            )*/
          ],
        ),
      ),
    );
  }
}
