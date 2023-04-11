import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      home: pop(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}


class pop extends StatelessWidget {
  const pop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple,
      ),
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 1,
        crossAxisSpacing:20,
        mainAxisSpacing: 20,
        mainAxisExtent: 100,),
        children: [
          Container(
            //height: 200,width: 200,
            child: Image.asset("asset/images/germany.jpg",fit: BoxFit.fill,),),
          Container(child:
          Image.asset("asset/images/France.jpg",fit: BoxFit.fill,),
          ),
          Container(child:
          Image.asset("asset/images/Italy.jpg",fit: BoxFit.fill,),),
          Container(child:
          Image.asset("asset/images/india.jpg",fit: BoxFit.fill,),),

          Container(child:
          Image.asset("asset/images/finland.jpg",fit: BoxFit.fill,),),

          Container(child:
          Image.asset("asset/images/london.jpg",fit: BoxFit.fill,),),

          Container(child:
          Image.asset("asset/images/switzerland.jpg",fit: BoxFit.fill,),),


        ],

      ),
    );
  }
}
