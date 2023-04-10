import 'package:assignment1/Welcome.dart';
import 'package:assignment1/whatapp/ChatWidget.dart';
import 'package:assignment1/whatapp/test.dart';
import 'package:assignment1/whatapp/ChatPage.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'CameraPage.dart';

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=>const MaterialApp(
      useInheritedMediaQuery: true,
      home:MyTab(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class MyTab extends StatelessWidget {
  const MyTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Whats app"),
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
            })
          ],
          bottom:  TabBar(
            labelPadding:EdgeInsets.zero,
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .1,
                child:
              const Tab(icon: Icon(Icons.people),)),

              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child:
                  const Tab(text: "Chat",),),

              SizedBox(
                width: MediaQuery.of(context).size.width * .3,
                child:
                const Tab(text: "Status",),),

              SizedBox(
                width: MediaQuery.of(context).size.width * .3,
                child:
                const Tab(text: "Call",),),
          ],

          ),
        ),
        body:  const TabBarView(children: [
          ChatPage(),
          ChatPage(),
          ChatPage(),
          ChatPage(),

          // Center(child: Text("Community"),
          // ),
          // Center(child: Text("Chat"),
          //  ),
          // Center(child: Text("Status"),
          // ),
          // Center(child: Text("Calls"),
          // ),
        ],),
      ),

    );
  }


}
