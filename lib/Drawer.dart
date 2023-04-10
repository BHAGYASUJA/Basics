import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=> MaterialApp(
      useInheritedMediaQuery: true,
      home:Drawerr(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Drawerr extends StatelessWidget {
  ///const Drawer({Key? key,  child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Drawer"),
      ),
      drawer: Drawer(
        child:Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
             colors: [Colors.orange,
             Colors.orangeAccent,
             Colors.deepOrange,],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            )
          ),
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/ww.jpg"))),

                  accountName: Text("Bhagya "),
                  accountEmail: Text("bhagyasuja123@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("asset/images/p2.jpg"),
                  ),
              ),
              const ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("Dashboard"),
              ),
              const ListTile(
                leading: Icon(Icons.leaderboard_sharp),
                title: Text("Leads"),
              ),
              const ListTile(
                leading: Icon(Icons.people),
                title: Text("Clients"),
              ),

              const ListTile(
                leading: Icon(Icons.people_alt_outlined),
                title: Text("Patners"),
              ),
              const ListTile(
                leading: Icon(Icons.subscriptions),
                title: Text("Subscriptions"),
              ),
              const ListTile(
                leading: Icon(Icons.payment),
                title: Text("Payment"),
              ),

              const ListTile(
                leading: Icon(Icons.supervised_user_circle_sharp),
                title: Text("Users"),
              ),
              const ListTile(
                leading: Icon(Icons.library_add),
                title: Text("Library"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.bottomCenter,
                  foregroundColor: Colors.white, backgroundColor: Colors.orange,
                  shadowColor: Colors.greenAccent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: const Size(10, 40), //////// HERE
                ),
                onPressed:(){},
                // style: const ButtonStyle(alignment: Alignment.bottomCenter,),
                 child: const Text("Logout" ,style: TextStyle(fontSize: 24,backgroundColor: Colors.deepOrange),),
                  )
            ],
          ),
        ),
      ),
    );
  }
}
