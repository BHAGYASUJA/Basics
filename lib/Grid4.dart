import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const MaterialApp(
    home:Grid4(),
  ));
}

class Grid4 extends StatelessWidget {
  const Grid4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: GridView.custom(
            gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),///for setting cross axis
            childrenDelegate: SliverChildBuilderDelegate((ctx, index) {
              return
                Card(child: Image(image:AssetImage("asset/images/p4.jpg"),),);
              ///const Card(child: Image(image:AssetImage("asset/images/p4.jpg"),),);

              },childCount: 10))
    //SliverChildBuilderDelegate(
              // [
              //  const Card(child: Center(child: Icon(Icons.ac_unit,size: 30,),),),
              //
              //
              // ],))


    );
  }
}
