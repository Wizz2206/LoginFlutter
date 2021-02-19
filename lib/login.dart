import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Padding(
      padding: EdgeInsets.only(
        left: 0,
        right: 0,
        top: 130,
        bottom: 170,
      ),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          radius: 56.0,
          child: Image.asset('assets/download.png'),
        ),
      ),
    );
    final inputEmail = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        style: TextStyle(
          color: Colors.white,
        ),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Email',
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
      ),
    );
    final inputPassword = Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Password',
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
      ),
    );
    final buttonLogin = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: ButtonTheme(
        height: 56,
        child: ElevatedButton(
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.black87,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            elevation: 20,
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          ),
          autofocus: false,
          onPressed: () => {},
        ),
      ),
    );
    final buttonForgotPassword = TextButton(
        child: Text(
          'Forgot Password',
          style: TextStyle(color: Colors.white70, fontSize: 16),
        ),
        onPressed: null);
    final buttonSignUp = TextButton(
      child: Text(
        'Sign Up',
        style: TextStyle(color: Colors.white70, fontSize: 16),
      ),
      onPressed: null,
    );
    /*final backgroundGradient = Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blueGrey, Colors.lightBlueAccent],
        ),
      ),
    );*/
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: <Widget>[
              logo,
              inputEmail,
              inputPassword,
              buttonLogin,
              buttonForgotPassword,
              buttonSignUp,
            ],
          ),
        ),
      ),
    );
  }
}
