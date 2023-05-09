
import 'package:assignment1/Hotel%20Book/DetailsScreen.dart';
import 'package:assignment1/Hotel%20Book/Home%20Screen.dart';
import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'OpenSans'
        ),
        home: HomeScreen(),
        routes: {
          //'details' : (ctx) => DetailsScreen(),
        }
    );
  }
}