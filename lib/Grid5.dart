import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'CustomWidget.dart';
void main(){
  runApp(DevicePreview(
    builder:(BuildContext context)=>const MaterialApp(
      useInheritedMediaQuery: true,
      home:Grid5(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Grid5 extends StatelessWidget {
  const Grid5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 120,
        children: [
          Card(child: Center(child: Icon(Icons.ac_unit, size: 30,),),),
          Card(child: Center(child: Icon(Icons.ac_unit, size: 30,),),),
          Card(child: Center(child: Icon(Icons.ac_unit, size: 30,),),),
          Card(child: CustomWidget(
            bgColor: Colors.deepOrange,
            title: Text("Hello"),
            onPress: (){},
            icon:Icon(Icons.icecream))),
          ///Card(child: Center(child: Icon(Icons.ac_unit, size: 30,),),),
        ],),
    );
  }
}
