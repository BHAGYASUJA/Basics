import 'package:assignment1/CredentialsValidation.dart';
import 'package:assignment1/LoginScreen.dart';
import 'package:assignment1/SignUpScreen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      home:Welcome(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
  body: SingleChildScrollView(
  child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(
                "asset/images/ww.jpg", fit: BoxFit.cover,
              ),
            ),
            const Text(
              "Hi THERE !!",  textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 30.0),
            ),

            const Text(
              "The Yoga Sutra is the essential text on yoga philosophy.",  textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 25.0),
            ),


        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Loginscreen()));
                  },
              child: const Text('Login',
                  style: TextStyle(fontSize: 35))),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SighUpScreen()));
              },
              child: const Text('SighIn',
                  style: TextStyle(fontSize: 35))),
        ),

      ],
  ),

  )
  );
}
