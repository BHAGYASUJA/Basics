import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=> MaterialApp(
      useInheritedMediaQuery: true,
      home:List_Builder(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class List_Builder extends StatelessWidget {
 // const List_Builder({Key? key}) : super(key: key);


  var name = ["Adam", "Bhavana", "Clerin", "Darson", "febin"];
  var images = [
    "asset/images/p1.jpg",
    "asset/images/p2.jpg",
    "asset/images/p3.jpg",
    "asset/images/p4.jpg",
    "asset/images/ww.jpg"
  ];
  var p =["9656430050","8979797990","987654432","987654321","897867566"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("List With Builder"),
      ),
      ///item builder is the function ,parameter
      ///item of List View
      body: ListView.builder(itemBuilder: (context,index){
      return Card(
        child: ListTile(
          title: Text(name[index]),
          subtitle: Text("${p[index]}"),
          leading: Image(image: AssetImage(images[index]),),
          trailing: Wrap(children: [
            Icon(Icons.favorite),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.shopping_cart),

          ],),
        ),
      );
      },
        itemCount: name.length,
      ),
    );
  }
}
