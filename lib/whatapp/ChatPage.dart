import 'package:assignment1/whatapp/Contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ()

      {
        Navigator.push(context, MaterialPageRoute(builder: (builder)=>ChatPage()));
      },
      child: Icon(Icons.contacts),),

      body: ListView(

        children: const [

          ListTile(
            leading: CircleAvatar(
              radius: 25,
            ),
            title: Text("RADHAKRISHNAN",
              style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
            ),
            ),
            subtitle: Text("Hi RADHAKRISHNAN",
            style: TextStyle(
                fontSize: 15 ,
                fontWeight: FontWeight.w500
            ),
            ),
            trailing: Text("13:06"),
          ),

          ListTile(
            leading: CircleAvatar(
              radius: 25,
            ),
            title: Text("Kyra",
              style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Text("Hi Kyra",
              style: TextStyle(
                  fontSize: 15 ,
                  fontWeight: FontWeight.w500
              ),
            ),
            trailing: Text("13:06"),
          ),


          ListTile(
            leading: CircleAvatar(
              radius: 25,
            ),
            title: Text("Bhagya",
              style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Text("Hi bhagya",
              style: TextStyle(
                  fontSize: 15 ,
                  fontWeight: FontWeight.w500
              ),
            ),
            trailing: Text("13:06"),
          ),


          ListTile(
            leading: CircleAvatar(
              radius: 25,
            ),
            title: Text("Kyaan",
              style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Text("Hi Kyaan",
              style: TextStyle(
                  fontSize: 15 ,
                  fontWeight: FontWeight.w500
              ),
            ),
            trailing: Text("13:06"),
          ),


          ListTile(
            leading: CircleAvatar(
              radius: 25,
            ),
            title: Text("DakshVeer",
              style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Text("Hi Dakshu",
              style: TextStyle(
                  fontSize: 15 ,
                  fontWeight: FontWeight.w500
              ),
            ),
            trailing: Text("13:06"),
          ),


          ListTile(
            leading: CircleAvatar(
              radius: 25,
            ),
            title: Text("Darshika",
              style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Text("Hi Darshika",
              style: TextStyle(
                  fontSize: 15 ,
                  fontWeight: FontWeight.w500
              ),
            ),
            trailing: Text("13:06"),
          ),


          ListTile(
            leading: CircleAvatar(
              radius: 25,
            ),
            title: Text("LIGIL",
              style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Text("Hi Ligil",
              style: TextStyle(
                  fontSize: 15 ,
                  fontWeight: FontWeight.w500
              ),
            ),
            trailing: Text("13:06"),
          ),

          ListTile(
            leading: CircleAvatar(
              radius: 25,
            ),
            title: Text("Pranish",
              style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Text("Hi Pranish",
              style: TextStyle(
                  fontSize: 15 ,
                  fontWeight: FontWeight.w500
              ),
            ),
            trailing: Text("13:06"),
          ),


          ListTile(
            leading: CircleAvatar(
              radius: 25,
            ),
            title: Text("Bhavya",
              style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Text("Hi Bhavya",
              style: TextStyle(
                  fontSize: 15 ,
                  fontWeight: FontWeight.w500
              ),
            ),
            trailing: Text("13:06"),
          ),


          ListTile(
            leading: CircleAvatar(
              radius: 25,
            ),
            title: Text("Navya",
              style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Text("Hi Navya",
              style: TextStyle(
                  fontSize: 15 ,
                  fontWeight: FontWeight.w500
              ),
            ),
            trailing: Text("13:06"),
          ),


          ListTile(
            leading: CircleAvatar(
              radius: 25,
            ),
            title: Text("Sujatha",
              style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Text("Hi Sujatha",
              style: TextStyle(
                  fontSize: 15 ,
                  fontWeight: FontWeight.w500
              ),
            ),
            trailing: Text("13:06"),
          ),
        ],
      ),
    );
  }
}
