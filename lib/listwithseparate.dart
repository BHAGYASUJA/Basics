import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: List_Separate(),));
}

class List_Separate extends StatelessWidget {
  var data =["D1","D2","D3","D4","D5","D6","D7","D8","D9"];
  var separate =["Item1","Item2","Item3","Item4","Item5","Item6","Item7","Item8","Item9"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Separarte"),
      ),
      body: Container(
        decoration: const BoxDecoration(image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("asset/images/p1.jpg")
        )),
        child: ListView.separated(
            itemBuilder: (ctx,index){
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  child: Text(data[index]),
                ),
              );
            },
            separatorBuilder: (ctx,index){
              return Text(separate[index]);
            },
            itemCount: data.length),
      ),
    );
  }
}
