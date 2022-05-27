import 'package:flutter/material.dart';
import 'package:flutter_training/utils/MyRoutes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
            "Welcome",
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
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoute.singupRoute);
            },
            child: Text("Login"),
            style: TextButton.styleFrom(minimumSize: Size(150, 40)),
          ),

      ],
    ),
        ),)
    ,
    );
  }

}
