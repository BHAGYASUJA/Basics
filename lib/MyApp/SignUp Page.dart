
import 'package:assignment1/MyApp/LoginPage.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  final Color primaryColor;
  final Color secondaryColor;
  final Color logoGreen;
  SignupPage({
    this.primaryColor = const Color(0xFF990000),
    this.secondaryColor = const Color(0xFFEEEEEE),
    this.logoGreen = const Color(0xFF0000FF),
  });

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  var formkey = GlobalKey<FormState>();
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController conformpassword = TextEditingController();
  FocusNode? myFocusNode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,),


        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Sign up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,

                    ),),
                  SizedBox(height: 20,),
                  Text("Create an account, It's free ",
                    style: TextStyle(
                        fontSize: 15,
                        color:Colors.grey[700]),)


                ],
              ),
              Column(
                children: <Widget>[
                  // inputFile(label: "Username"),
                  // inputFile(label: "Email"),
                  // inputFile(label: "Password", obscureText: true),
                  // inputFile(label: "Confirm Password ", obscureText: true),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(color: widget.secondaryColor,
                        border: Border.all(color: Colors.blue)),
                    child: TextFormField(
                      controller: username,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.white),
                        icon: Icon(
                          Icons.email,
                          color: Colors.white,
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
                        border: Border.all(color: Colors.blue)),
                    child: TextFormField(
                      focusNode: myFocusNode,
                      controller: email,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.white),
                        icon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        border: InputBorder.none,
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(color: widget.secondaryColor,
                        border: Border.all(color: Colors.blue)),
                    child: TextFormField(
                      focusNode: myFocusNode,
                      controller: password,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.white),
                        icon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        border: InputBorder.none,
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(color: widget.secondaryColor,
                        border: Border.all(color: Colors.blue)),
                    child: TextFormField(
                      focusNode: myFocusNode,
                      controller: conformpassword,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.white),
                        icon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        border: InputBorder.none,
                      ),
                      obscureText: true,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 3, left: 3),
                decoration:
                BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),



                    )

                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                ///    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  color: Color(0xff0095FF),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),

                  ),
                  child: Text(
                    "Sign up", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white,

                  ),
                  ),

                ),



              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an account?"),

                  TextButton(onPressed: () {},
                    child:
                         Text(" Login", style:TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                  ),
                  ))
                ],
              )



            ],

          ),


        ),

      ),

    );
  }
}

