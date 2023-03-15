import 'dart:async';

import 'package:assignment1/Welcome.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=>const Padding(
      padding: EdgeInsets.all(8.0),
      child: MaterialApp(
        useInheritedMediaQuery: true,
        home:Splashh(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  ));
}

class Splashh extends StatefulWidget {
  const Splashh({Key? key}) : super(key: key);

  @override
  State<Splashh> createState() => _SplashhState();
}

class _SplashhState extends State<Splashh> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Welcome()));
    });
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("asset/images/ww.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
