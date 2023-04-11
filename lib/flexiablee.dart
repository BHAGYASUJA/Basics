import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      home:flexablee(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class flexablee extends StatelessWidget {
  const flexablee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Center(
        child:Container(
        child: Padding(
          padding: EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                          fit: FlexFit.tight,
                            flex:2,
                      child:
                      Container(width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red,
                      ),),),
                      SizedBox(
                        height: 50,
                      ),
                      Container(width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green,
                        ),),
                      ]),
                        Row(
                         children:[
                      Flexible(
                       fit: FlexFit.loose,
                        flex:2,
                      child:
                      Container(width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                        ),),),

                      SizedBox(
                        height: 50,
                      ),
          Row(
            children:[
              Flexible(
                  fit: FlexFit.loose,
                  flex:2,
                   child:   Container(width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green,
                        ),),),
                           Container(width: 300,
                             height: 300,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                               color: Colors.yellowAccent,
                             ),),

                    ],
                  ),

    ])
          ],)))))
    );
  }
}
