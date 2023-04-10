import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      home:bottombar(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
class bottombar extends StatefulWidget {
  //const bottombar({Key? key}) : super(key: key);


  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  List screens =const[
    Text("Home"),
    Text("Favorite"),
    Text("Camera"),
    Text("Home"),
    Text("Search"),

  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Bar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.shifting,
        onTap: (tapindex){
        setState(() {
          index =tapindex;
    });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite,),label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.people,),label: "People"),
          BottomNavigationBarItem(icon: Icon(Icons.camera_alt_rounded,),label: "Camera"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_sharp,),label: "Favorite"),

        ],
      ),
      body: Center(
        child: screens[index],
      ),
    );
  }
}
