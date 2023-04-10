import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ListCustom(),));
}

///silvers scorllable
class ListCustom extends StatelessWidget {
  var data =["D1","D2","D3","D4","D5","D6","D7","D8","D9"];
  var separate =["Item1","Item2","Item3","Item4","Item5","Item6","Item7","Item8","Item9"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Separate"),
      ),
      body: ListView.custom(
        //childrenDelegate: SliverChildListDelegate(
      //   [
      //     Icon(Icons.access_time_filled_outlined),
      //     Icon(Icons.access_time_filled_outlined),
      //     Icon(Icons.access_time_filled_outlined),
      //     Icon(Icons.access_time_filled_outlined),
      //     Icon(Icons.access_time_filled_outlined),
      //     Icon(Icons.access_time_filled_outlined),
      //
      //
      //   ],
      // )
      childrenDelegate: SliverChildBuilderDelegate(
          (ctx,index){
            return Card(
              color: Colors.red[color[index]],
              child: Text("Hii"),
            );
          },
        childCount: color.length
      ),
      ),

    );
  }
  var color = [100,200,300,400,500,600];
}
