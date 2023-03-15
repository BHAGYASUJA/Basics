import 'package:assignment1/LoginScreen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=> MaterialApp(
      useInheritedMediaQuery: true,
      home:SighUpScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}


class SighUpScreen extends StatefulWidget {


  @override
  State<SighUpScreen> createState() => _SighUpScreenState();
}

class _SighUpScreenState extends State<SighUpScreen> {
  GlobalKey<FormState>formkey =GlobalKey();// For fetching current state
  bool showpass = true;
  String? confirmpass;

  // Object get confirmpass => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(
      child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "WELCOME BUDDY !!",
                style: TextStyle(color: Colors.black, fontSize: 35.0),
              ),
              const Text(
                "The Yoga Sutra is the essential text on yoga philosophy.",
                style: TextStyle(color: Colors.black, fontSize: 25.0),
              ),
              //Image.asset("assets/Stickers/eli.jpg",width: 200,height: 200,
              //),
              Padding(
                padding: const EdgeInsets.only(top:20),
                child:Image.asset("asset/images/ww.jpg",fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration:InputDecoration(
                      hintText: 'PASSWORD',
                      labelText: 'Password',
                      helperText: "Password Must Be An Email",
                      prefixIcon: Icon(Icons.ac_unit_sharp),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if(showpass){
                              showpass=false;
                            }else{
                              showpass =true;
                            }
                          });
                        },
                        icon : Icon(showpass == true ? Icons.visibility_off
                            :Icons.visibility),),


                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100))),
                  validator :(password){
                    var confirmpass =password;
                    if(password!.isEmpty ||password.length <6){
                      return "Enter a valid password";
                    }else{
                      return null;
                    }
                  },
                ),
              ),


              TextFormField(
                decoration:InputDecoration(
                    helperText: "Username Must Be An Email",
                    prefixIcon: Icon(Icons.account_box_rounded),
                    suffixIcon: Icon(Icons.ac_unit_sharp),
                    hintText: 'USERNAME',
                    labelText: 'Username',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100))),
                validator : (uname){
                  if(uname!.isEmpty || !uname.contains('@')||!uname.contains('.')){
                    return 'Enter The Username';
                  }else{
                    return null;
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (cpass){
                    if(cpass!=confirmpass || cpass!.isEmpty){
                      return "Password is Mismatch";
                    }else{
                      return null;
                    }
                  },
                  obscureText: true,
                  obscuringCharacter: "*",

                  decoration:InputDecoration(
                      helperText: "Username Must Be An Email",
                      prefixIcon: Icon(Icons.account_box_rounded),
                      suffixIcon: Icon(Icons.ac_unit_sharp),
                      hintText: 'Conform Password',
                      labelText: 'Conform Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100))),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const home()));
                    },
                    child: const Text('Login',
                        style: TextStyle(fontSize: 15))),
              ),


            ],
          )
      ),
    ),
    );
  }
}




