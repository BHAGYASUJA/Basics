import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=>const MaterialApp(
      useInheritedMediaQuery: true,
      home:MainScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset("asset/animation/ba.jpg"),
            Text(" Welocome Page",textAlign: TextAlign.center,
            ) ,
            FittedBox(
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text("Skip",
                    style: TextStyle(),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
