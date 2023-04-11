import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      home:Cliperrr(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}


class Cliperrr extends StatelessWidget {
  const Cliperrr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ClipRect(
            child: Container(
              child: Align(
                alignment: Alignment.center,
                widthFactor: .7,
                heightFactor: .4,
                child: Image.network("https://images.unsplash.com/photo-1591608971362-f08b2a75731a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child:Image.network("https://images.unsplash.com/photo-1591608971362-f08b2a75731a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80")
          ),
          SizedBox(
            height: 50,
          ),
          ClipOval(
            child: Container(
              child: Image.network("https://images.unsplash.com/photo-1591608971362-f08b2a75731a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ClipPath(
            clipper:
            SideCutClipper(),
           child: Container(
             height: 100,
            width: 100,
            child:Image.network("https://images.unsplash.com/photo-1591608971362-f08b2a75731a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80") ,
            )
          ),
          SizedBox(
            height: 50,
          ),
          ClipPath(
              clipper:HexagonalClipper(reverse: true),
              child: Container(
                height: 100,
                width: 100,
                child:Image.network("https://images.unsplash.com/photo-1591608971362-f08b2a75731a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80") ,
              )
          ),

          SizedBox(
            height: 50,
          ),
          ClipPath(
              clipper:ParallelogramClipper(),
              child: Container(
                height: 100,
                width: 100,
                child:Image.network("https://images.unsplash.com/photo-1591608971362-f08b2a75731a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80") ,
              )
          )
        ],
      )
    );
  }
}
