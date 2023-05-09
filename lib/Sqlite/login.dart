
import 'package:flutter/material.dart';
import 'package:assignment1/Sqlite/admin.dart';
import 'package:assignment1/Sqlite/home.dart';
import 'package:assignment1/Sqlite/signup.dart';

import 'SQLHelper.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  var formkey = GlobalKey<FormState>();
  final TextEditingController conemail = TextEditingController();
  final TextEditingController conpass = TextEditingController();

  void logincheck(String email, String password) async {


    if (email == 'admin@gmail.com' && password == '123456') {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => admin()));
    } else {
      var data = await SQLHelper.CheckLogin(email, password);
      if (data.isNotEmpty) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Home(data: data,)));
        print('Login Success');
      } else if (data.isEmpty) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => sign()));
        print('Login faild');
      }
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login Page"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: conemail,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.drive_file_rename_outline),
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                textInputAction: TextInputAction.next,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: conpass,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.drive_file_rename_outline),
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                color: Colors.pink,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: () {
                  final valid = formkey.currentState!.validate();

                  if (valid) {
                    logincheck(conemail.text, conpass.text);
                  } else {

                  }
                },
                child: const Text("LOGIN"),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => sign()));
                },
                child: const Text('Not a User? Register Here!!!'))
          ],
        ),
      ),
    );
  }
}
