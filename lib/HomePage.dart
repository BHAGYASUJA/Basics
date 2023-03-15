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
        home:home(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  ));
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
