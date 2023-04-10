import 'package:assignment1/whatapp/Chat.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'ChatPage.dart';




void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=>const MaterialApp(
      useInheritedMediaQuery: true,
      home:HomeScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex:1,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: const Padding(
              padding: EdgeInsets.only(top:15),
              child:Text("WhatsApp",
              style: TextStyle(fontSize: 21),),
            ),
            actions: [
              const Padding(padding:
              EdgeInsets.only(top: 10, right:15),
              child: Icon(Icons.search,
              size:28,),
              ),
              PopupMenuButton(
                elevation: 10,
                padding: EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,
                itemBuilder: (context)=>[
                  const PopupMenuItem(
                    value: 1,
                    child:Text(
                      "New Group",
                      style:  TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child:Text(
                      "New Broadcast",
                      style:  TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child:Text(
                      "Linked Device",
                      style:  TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 4,
                    child:Text(
                      "Starred Device",
                      style:  TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 5,
                    child:Text(
                      "Setting",
                      style:  TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        body: Column(children: [
          Container(
            color: const Color(0xFF075E55),
            child:TabBar(
              isScrollable:true,
              indicatorColor: Colors.white,
              indicatorWeight: 4,
              labelStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              tabs: [
                ///tab 1
                Container(
                  width: 25,
                  child: const Tab(
                    icon: Icon(Icons.camera_alt),
                  ),
                ),
                ///Tab 2
                SizedBox(
                  width: 90,
                  child: Tab(
                    child:Row(children: [
                      const Text("Chats"),
                      const SizedBox(
                        width: 8
                        ,
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding:const EdgeInsets.all(10),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "10",style: TextStyle(
                          color:Color(0xFF075E55),
                          fontSize: 14,
                        ),
                        ),
                      ),
                    ],)
                  ),
                ),
                //.tab3
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 85,child: Tab(child: Text("STATUS"),),
                  ),
                ),
                const SizedBox(
                  width: 85,child: Tab(child: Text("CALLS"),
                ),
                ),

              ],
            ),
          ),
          Flexible(flex: 1,
            child: TabBarView(
              children: [
            ///Camera
            Container(color: Colors.black),
            ///ChatPage
           const Padding(
             padding: EdgeInsets.all(8.0),
             child: ChatPage(),
           ),
            ///status Wideget
            Container(color: Colors.black),
            Container(color: Colors.black),

          ],

          ),)
        ],),
      ),);
  }
}
