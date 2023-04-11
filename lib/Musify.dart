import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      home:musicplayer(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}


class musicplayer extends StatefulWidget {
  const musicplayer({Key? key}) : super(key: key);

  @override
  State<musicplayer> createState() => _musicplayerState();
}

class _musicplayerState extends State<musicplayer> {
  var image = [
    "asset/images/tt.jpg",
    "asset/images/p1.jpg",
        "asset/images/Dn.jpg",
    "asset/images/Im-Good-Blue.jpg",
    "asset/images/lmu.png",
  ];

  List<String>images = <String>[
    "asset/images/p1.jpg",
    "asset/images/2.jpg",
    "asset/images/3.jpg",
    "asset/images/4.jpg",
    "asset/images/5.jpg",
  ];
  var title = ["Hero",
    "Unholy",
    "Lift Me Up",
    "Depression",
    "im Good",];
  var subtitle = ["Taylor Swift",
    "Sam Smit Kim Petras" ,
    "Rihanna",
    "Dax",
    "David Guetta  Bebe Rexha",];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Musify.", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            fontFamily: 'Hind',
            color: Colors.pink),),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.shifting,
        onTap: (tapindex) {
          setState(() {
           index =tapindex;
           });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,),
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.favorite,),
              label: "Favorite",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.save_sharp,),
              label: "People",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.camera_alt_rounded,),
              label: "Camera",
              backgroundColor: Colors.black),
        ],
      ),

      body: Column(

          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Suggested Playlists", style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 25,
          fontFamily: 'Hind',
          color: Colors.pink)),
      Container(
        color: Colors.black,
        margin: EdgeInsets.all(15),
        child: CarouselSlider.builder(
          itemCount: images.length,
          options: CarouselOptions(
            enlargeCenterPage: true,
            height: 200,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            reverse: false,
            aspectRatio: 5.0,
          ),
          itemBuilder: (context, i, id) {
            //for onTap to redirect to another screen
            return GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white,)
                ),
                //ClipRRect for image border radius
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    images[i],
                    width: 500,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                var url = images[i];
                print(url.toString());
              },
            );
          },
        ),
      ),

      Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Recommended For You",
              style: TextStyle(
                color: Colors.pink,
                fontSize: 22, fontWeight: FontWeight.bold,
              ),
            ),
          ]),
    Align( alignment: Alignment.bottomCenter,
    child:Container(
        padding: EdgeInsets.only(left: 20, top: 10, bottom: 20),
        height: 350,
        child:ListView.builder(itemBuilder: (context,index){
          return Card(
            color: Colors.black,
            child: ListTile(
              title: Text(title[index],style:TextStyle(color: Colors.pink),),
              subtitle: Text("${subtitle[index]}",style:TextStyle(color: Colors.pink)),
              leading: Image(image: AssetImage(image[index]),),
              trailing: Wrap(children: [
                Icon(Icons.star,color: Colors.pink,),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.download,color: Colors.pink,),

              ],),
            ),
          );
        },
          itemCount: title.length,
        ),),),

])
    );
  }
}
