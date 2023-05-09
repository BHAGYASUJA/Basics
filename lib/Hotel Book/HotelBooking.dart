import 'package:assignment1/Grid.dart';
import 'package:assignment1/Hotel%20Book/DetailsScreen.dart';
import 'package:assignment1/Hotel%20Book/Home%20Screen.dart';
import 'package:assignment1/Hotel%20Book/global.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelBooking(),
  ));
}

class HotelBooking extends StatelessWidget {
  const HotelBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchController = TextEditingController();
    // final List<String>destinationsList = ['Crown Plaza','Presidency','Grand Hyatt'];
    // final List<String>  = ['Crown Plaza','Presidency','Grand Hyatt'];
      var hotelnames = ['Crown Plaza','Presidency','Grand Hyatt'];

      var images = ['https://cf.bstatic.com/xdata/images/hotel/max1024x768/173526790.jpg?k=68220a8ee669aa94b3675a8f3a6562685b6376dc199ce2798a843bc36f7195a8&o=&hp=1',
  'https://cf.bstatic.com/xdata/images/hotel/max1024x768/407898336.jpg?k=96e29c1ed74ec7dc82f914d40908eda8e83cdb75e1012f47ab1fe98e2784f148&o=&hp=1',
  'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/22/80/d7/e0/caption.jpg?w=1200&h=-1&s=1' ,
  ];
      var subname =['4Star Hotel in Kochi','5star Hotel in Kochi','3 star Hotel in Kochi'];
       var rate = ['69 / night','99/night','89/night'];
        var star = ['3.5','4.5','5.0'];
    int _selectedIndex = 0;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text("Hello@ Arjun \n"
              "Find Your Favorite hotel",
            style: TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.bold),),
          titleSpacing: 2,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                        "https://images.unsplash.com/photo-1543427127-c331ce4346b8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80"),
                  ),
                )
              ],
            ),
          ]
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(
                    Icons.search, color: Colors.black, size: 20,),
                  prefixIconConstraints: BoxConstraints(
                      maxHeight: 20, minWidth: 25),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.blueGrey),
                ),
              ),
            ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Popular Hotel',style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            SizedBox(
              height: 15,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: hotelnames.length,
                itemBuilder: (ctx, i) {
                  return GestureDetector(
                    onTap: () =>
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => HotelBooking(),
                          ),
                        ),
                    child: Container(
                      width: 250,
                      height: 350,
                      margin:
                      const EdgeInsets.symmetric(horizontal: 11.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: Image.network(
                                    images[i],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 9.0, vertical: 5.0),
                                      decoration: BoxDecoration(
                                        color: MyColors.lighterBlue,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(15),
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: <Widget>[
                                          Text(
                                              "${hotelnames[i]}",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white)),
                                          Text(
                                            star[i],
                                          ),
                                          Text(subname[i]),
                                          Text(rate[i]),

                                        ],),
                                    ))
                              ])
                      ),
                    ),

                  );

                },
              ),
            ),
          ],
        ),
      ),
        Padding(
            padding: const EdgeInsets.all(15.0),
      child: Column(
       //   crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Hotel Packages",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25, fontWeight: FontWeight.bold,
                    ),
                  )

                ]),),

            Align( alignment: Alignment.bottomCenter,
              child:Container(
                padding: EdgeInsets.only(left: 20, top: 10, bottom: 20),
                height: 150,
                child:ListView.builder(itemBuilder: (context,i){
                  return Card(
                    color: Colors.white,
                    child: ListTile(
                      title: Text(hotelnames[i],style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      subtitle: Text("${subname[i]}",style:TextStyle(color: Colors.black)),
                      leading: Image(image: NetworkImage(images[i]),),
                      trailing: Wrap(children: [
                        //Icon(Icons.star,color: Colors.pink,),
                        TextButton(onPressed: (){}, style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        elevation: 2,
                        backgroundColor: Colors.white),
                     child: Text("Book")),
                        SizedBox(
                          width: 20,
                        ),

                      ],),
                    ),
                  );
                },
                  itemCount: hotelnames.length,
                ),),),
            BottomNavigationBar(
              //currentIndex:index,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Explore',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_box),
                  label: 'Account',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.amber[800],
             // onTap: _onItemTapped,
            ),

          ])

)

    );
  }
}

