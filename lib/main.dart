import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Page",
      theme: ThemeData(
        fontFamily: "ComicSans",
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(  
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.lightBlueAccent, Colors.blueGrey],
            ),
          ),
          child: LoginPage(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Page",
      theme: ThemeData(
        fontFamily: "ComicSans",
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}*/
