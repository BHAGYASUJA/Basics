import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=> MaterialApp(
      useInheritedMediaQuery: true,
      home:Contact(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text("Select Contacts",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
            Text("100 Contacts", style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
          ],
        ),
        actions: [
          const Icon(Icons.camera_alt),
          const Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context){
            return[
              const PopupMenuItem(child :Text("Settings")),
              const PopupMenuItem(child :Text("NewGroup")),
              const PopupMenuItem(child :Text("New Broadcast")),
              const PopupMenuItem(child :Text("Linked Devices")),
            ];
          }),
     ListView(
      children: const [
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xff128C7E),
            foregroundColor: Color(0xff128C7E),
            //radius: 30,
            backgroundImage: AssetImage('asset/images/p1.jpg'),
          ),
          title: Text("Bhagya",
            style:TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),
          ),
          subtitle: Text("Hey there! i am Using Whats app",
            style: TextStyle(
                fontSize: 15 ,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xff128C7E),
            foregroundColor: Color(0xff128C7E),
            //radius: 30,
            backgroundImage: AssetImage('asset/images/p2.jpg'),
          ),
          title: Text("Bhavya",
            style:TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),
          ),
          subtitle: Text("Can't talk ,Whats only",
            style: TextStyle(
                fontSize: 15 ,
                fontWeight: FontWeight.w500
            ),
          ),
        ),

        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xff128C7E),
            foregroundColor: Color(0xff128C7E),
            //radius: 30,
            backgroundImage: AssetImage('asset/images/p3.jpg'),
          ),
          title: Text("Dakshveer",
            style:TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),
          ),
          subtitle: Text("Can't talk ,Whats only",
            style: TextStyle(
                fontSize: 15 ,
                fontWeight: FontWeight.w500
            ),
          ),
        ),

        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xff128C7E),
            foregroundColor: Color(0xff128C7E),
            //radius: 30,
            backgroundImage: AssetImage('asset/images/p4.jpg'),
          ),
          title: Text("Darshika",
            style:TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),
          ),
          subtitle: Text("Can't talk ,Whats only",
            style: TextStyle(
                fontSize: 15 ,
                fontWeight: FontWeight.w500
            ),
          ),
        ),

        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xff128C7E),
            foregroundColor: Color(0xff128C7E),
            //radius: 30,
            backgroundImage: AssetImage('asset/images/p1.jpg'),
          ),
          title: Text("Kyra",
            style:TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),
          ),
          subtitle: Text("Can't talk ,Whats only",
            style: TextStyle(
                fontSize: 15 ,
                fontWeight: FontWeight.w500
            ),
          ),
        ),

        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xff128C7E),
            foregroundColor: Color(0xff128C7E),
            //radius: 30,
            backgroundImage: AssetImage('asset/images/f.jpg'),
          ),
          title: Text("Kyaan",
            style:TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),
          ),
          subtitle: Text("Can't talk ,Whats only",
            style: TextStyle(
                fontSize: 15 ,
                fontWeight: FontWeight.w500
            ),
          ),
        ),



          ],
    ),




    ],
      ),
    );
  }
}
