import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';
//
// void main() {
//   runApp(MyApp());
// }

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      home:MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}