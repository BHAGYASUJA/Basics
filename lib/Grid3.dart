import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




void main(){
  runApp(const MaterialApp(
    home:Grid3(),
  ));
}
class Grid3 extends StatelessWidget {
  const Grid3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children:
        List.generate(20, (index){
          return Card(
            child: Column(
              children: [
                Image.asset("asset/images/p2.jpg",height:20,width: 30,),
                const Center(child: Text("mm",))
              ],
            ),
          );
        }),
      ));
  }
}
