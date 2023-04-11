import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      home: hotelpage(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class hotelpage extends StatefulWidget {
  const hotelpage({Key? key}) : super(key: key);

  @override
  State<hotelpage> createState() => _hotelpageState();
}

class _hotelpageState extends State<hotelpage> {
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        toolbarHeight: 60,
        actions: [
          Padding(padding: EdgeInsets.all(8.0),
          child: Icon(Icons.favorite_outlined,size: 25,),)
        ],
        leading: Icon(Icons.menu,size: 25,color: Colors.white,),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(8.0),
                child: Text("Type Your Location",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,
                    color: Colors.white),),),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30),),
                      borderSide: BorderSide.none),
                      filled:true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search,size: 25,color: Colors.grey),
                    hintText: "Buddha,Kathumandu",))],
                  ),
                  ),
                )
              
            ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
            children: [
              ElevatedButton(onPressed: (){},
                  style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Color.fromARGB(255,195,2,73)),
                    minimumSize: MaterialStateProperty.all(Size.square(100),)),
                  child: Column(
                    children: [
                      Icon(Icons.hotel,size: 25,),
                      Text("Hotel",style: TextStyle(fontSize: 15),)
                    ],
                  )),
              ElevatedButton(onPressed: (){},style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Color.fromARGB(255,242,139,4)),
                  minimumSize: MaterialStateProperty.all(Size.square(100),)), 
                  child: Column(
                    children: [
                      Icon(Icons.restaurant,size: 25,),
                      Text("Restaurant",style: TextStyle(fontSize: 15),),
                    ],
                  )),
              ElevatedButton(onPressed: (){},style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Color.fromARGB(255,242,139,4)),
                  minimumSize: MaterialStateProperty.all(Size.square(100),)),
                  child: Column(
                    children: [
                      Icon(Icons.local_cafe,size: 25,),
                      Text("Cafe",style: TextStyle(fontSize: 15),
                      ),
                    ],)
              ),
            ],
          ),),
          Card(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    SizedBox(height: 200,
                      child: Image.asset("asset/images/room.jpg",
                      fit: BoxFit.fill,),
                    ),
                    Positioned(
                      right: 15,
                        left: 20,
                        child: TextButton(
                          onPressed: (){}, child: Text("\$40",style: TextStyle(fontSize: 15,color: Colors.black),),
                        )),
                    Positioned(top:17,
                        right: 17,
                        child: Icon(Icons.star,color: Colors.white,)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 10,),
                      child: Text("Awesome Room Near me Bouddha",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                    Text("Bouddha ,Kathamandu",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    Padding(padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green,),
                        Text("220 Reviews",style: TextStyle(fontSize: 15),)
                      ],
                    ),)
                  ],
                )
              ],
            ),
          )
        ],
      ),

          
      
    );
  }}


