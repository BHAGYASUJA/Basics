import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Stacks(),));
}

class Stacks extends StatefulWidget {
  const Stacks({Key? key}) : super(key: key);

  @override
  State<Stacks> createState() => _StacksState();
}

class _StacksState extends State<Stacks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(color: Colors.indigo,height: 500,width: 500,),
              Positioned(child:Container(color: Colors.red,height: 400,width: 400,),left: 20,top: 30,),
              Positioned(child:Container(color: Colors.blue,height: 200,width: 200,),),
              Container(color: Colors.yellowAccent,height: 100,width: 100,),
              Container(color: Colors.orange,height: 150,width: 150,),
          ],
        ),
      ),
    );
  }
}
