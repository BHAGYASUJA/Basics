import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: fit(),
  ));
}


class fit extends StatefulWidget {
  const fit({Key? key}) : super(key: key);

  @override
  State<fit> createState() => _fitState();
}

class _fitState extends State<fit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Fitted Box"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
      child:
          Card(
            color: Colors.greenAccent,
            child: Row(
              children: [

             Container(child:Text("Random Data"),),
                Container(height: 200,child: Image.asset("asset/images/1.jpg"),),

              ],
            ),
          )
          )
        ],
      ),

    );
  }
}
