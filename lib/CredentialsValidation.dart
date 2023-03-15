import 'package:assignment1/HomePage.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=>
        MaterialApp(
          theme: ThemeData(primarySwatch:Colors.blueGrey),
          useInheritedMediaQuery: true,
          home:validation(),
          debugShowCheckedModeBanner: false,
        ),
  ));
}

class validation extends StatefulWidget {
  const validation({Key? key}) : super(key: key);



  @override
  State<validation> createState() => _validationState();
}

class _validationState extends State<validation> {
  GlobalKey<FormState> formkey = GlobalKey();

  /// for fetching the current state of form
  bool showpass = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const  Text("Login Validation"),
        ),
      ),
        body: SingleChildScrollView(

        child: Form(
                child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WELCOME BUDDY!!",
                        style: TextStyle(color: Colors.black, fontSize: 35.0),
                      ),
                      const Text(
                        "The Yoga Sutra is the essential text on yoga philosophy.",
                        style: TextStyle(color: Colors.black, fontSize: 25.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "UserName",
                              prefixIcon: Icon(Icons.account_box_sharp),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100))),
                          validator: (uname) {
                            if (uname!.isEmpty ||
                                !uname.contains('@') ||
                                !uname.contains('.')) {
                              return 'Enter a valid UserName';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          obscuringCharacter: '*',
                          obscureText: showpass,
                          decoration: InputDecoration(
                              hintText: "PassWord",
                              prefixIcon: const Icon(Icons.password),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (showpass) {
                                      showpass = false;
                                    } else {
                                      showpass = true;
                                    }
                                  });
                                },
                                icon: Icon(showpass == true
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              ),

                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100))),
                          validator: (password) {
                            if (password!.isEmpty || password.length < 6) {
                              return "enter a valid password";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            final valid = formkey.currentState!.validate();
                            if(valid){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                            }
                          },
                          child: const Text('Login',
                              style:TextStyle(fontSize: 15))),

                    ],

                  )
        ),
        ),
    );
  }
}
