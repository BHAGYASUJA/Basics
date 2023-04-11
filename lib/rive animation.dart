import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(MaterialApp(
    home: ranimation(),
  ));
}

class ranimation extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: RiveAnimation.asset("asset/json/4565-9261-sisters-bday.riv"),
      ),
    );
  }
}
