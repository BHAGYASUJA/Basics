
import 'package:assignment1/Sqlite/login.dart';
import 'package:assignment1/Sqlite/signup.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: frontPage(),
  ));
}

class frontPage extends StatefulWidget {

  @override
  State<frontPage> createState() => _frontPageState();
}

class _frontPageState extends State<frontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Welcome Page"),
        backgroundColor: Colors.orangeAccent,
       // leading: Icon(Icons.backspace_outlined),
      ),
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 80.0),
              child:  Image.asset('asset/animation/ba.jpg'),
             /// Text("Hello There!",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            ),

      Padding(

        padding: EdgeInsets.all(25.0),
            child:
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> loginPage()));
            },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent.shade700),
                  minimumSize: MaterialStateProperty.all(Size(330, 50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                child: Text("Login")),),
      Padding(

        padding: EdgeInsets.all(25.0),
            child:
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> sign()));
            },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent.shade700),
                  minimumSize: MaterialStateProperty.all(Size(330, 50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                child: Text("SignUp")),),
          ],
        ),
      )
    );
  }
}
