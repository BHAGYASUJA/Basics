import 'package:flutter/material.dart';

import 'SignUp Page.dart';

class LoginPage extends StatefulWidget {
  final Color primaryColor;
  final Color secondaryColor;
  final Color logoGreen;
  LoginPage({
    this.primaryColor = const Color(0xFF990000),
    this.secondaryColor = const Color(0xFFEEEEEE),
    this.logoGreen = const Color(0xFF0000FF),
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var formkey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  FocusNode? myFocusNode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Login To Continue!',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
              SizedBox(height: 20),
              Text(
                'Enter your email and password below to continue and be a part of our project!',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(color: widget.secondaryColor,
                    border: Border.all(color: Colors.lightBlue)),
                child: TextFormField(
                  controller: email,
                  style: TextStyle(color: Colors.lightBlue),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.lightBlue),
                    icon: Icon(
                      Icons.email,
                      color: Colors.lightBlue,
                    ),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_) => myFocusNode?.requestFocus(),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(color: widget.secondaryColor,
                    border: Border.all(color: Colors.lightBlue)),
                child: TextFormField(
                  focusNode: myFocusNode,
                  controller: password,
                  style: TextStyle(color: Colors.lightBlue),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.lightBlue),
                    icon: Icon(
                      Icons.lock,
                      color: Colors.lightBlue,
                    ),
                    border: InputBorder.none,
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 30),
              MaterialButton(
                elevation: 0,
                minWidth: double.maxFinite,
                height: 50,
                onPressed: () {},
                color: widget.logoGreen,
                child: Text('Login',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                textColor: Colors.white,
              ),
              SizedBox(height: 20),
              MaterialButton(
                elevation: 0,
                minWidth: double.maxFinite,
                height: 50,
                onPressed: () {},
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Sign In using Google',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                  ],
                ),
                textColor: Colors.white,
              ),
              SizedBox(height: 100),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Text('Sign Up?', textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
