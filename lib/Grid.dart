import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=>const MaterialApp(
      useInheritedMediaQuery: true,
      home:Grid(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
class Grid extends StatelessWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid 1"),
      ),
      body: GridView(gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
         // crossAxisCount: 2,
          crossAxisSpacing:20,
           mainAxisSpacing: 20,
           maxCrossAxisExtent: 100,
           mainAxisExtent: 100,),


          children: [
            Image.asset("asset/images/p1.jpg",width: 200,height: 200,),
            Image.asset("asset/images/p2.jpg"),
            Image.asset("asset/images/p3.jpg"),
            Image.asset("asset/images/p4.jpg"),
            Image.asset("asset/images/fg.jpg"),

          ],

      )
    );
  }
}
