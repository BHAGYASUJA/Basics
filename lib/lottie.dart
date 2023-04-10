import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=>const MaterialApp(
      useInheritedMediaQuery: true,
      home:lottiees(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
class lottiees extends StatelessWidget {
  const lottiees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          Lottie.network("https://assets5.lottiefiles.com/packages/lf20_gbMihFZDYu.json"),
          Lottie.asset("asset/json/140656-little-cute-octopus.json",height: 20,),
      ],
      ),
    );
  }
}
