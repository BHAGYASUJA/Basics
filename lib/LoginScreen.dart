import 'package:assignment1/HomePage.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=>const MaterialApp(
      useInheritedMediaQuery: true,
      home:Loginscreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}


class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) =>Scaffold(
                body: SingleChildScrollView(
                   child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Image.asset("asset/images/ww.jpg", fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          "WELCOME BACK !!",
                          style: TextStyle(color: Colors.black, fontSize: 20.0),
                        ),
                        const Text(
                          "The Yoga Sutra is the essential text on yoga philosophy.",
                          style: TextStyle(color: Colors.black, fontSize: 10.0),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.account_box_sharp),
                              hintText: 'UserName',
                              labelText: 'UserName',
                              helperText: "Username must be an email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            obscureText: true,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                              helperText: "Password length should be greater than 6",
                              prefixIcon: const Icon(Icons.password),
                              suffixIcon: const Icon(Icons.visibility_off),
                              hintText: 'Password',
                              labelText: 'Password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100)),
                            ),
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
                   ),
                )
  );
}
