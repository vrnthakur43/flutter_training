import 'package:flutter/material.dart';
import 'package:flutter_training/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final num days = 30;
    final String name = "viren thakur";
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Training",style: TextStyle(color: Colors.black),),
      ),
      body: Center(child: Text("flutter $days days of course with $name")),
      drawer: MyDrawer(),
    );
  }
}
