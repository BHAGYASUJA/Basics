import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'countrydetails.dart';
import 'detailsscreen.dart';
//
// void main(){
//   runApp(const MaterialApp(home:TourismAppUi()));
// }


void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      home:MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
class MyApp extends StatelessWidget {
  static String id = 'My_App';
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.deepPurple,
    ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                const Text(
                  'Popular',
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(height: 15),
                ListView.separated(
                  itemCount: countriesDataList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(index: index),
                          ));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height * .15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(countriesDataList[index]['image']),
                            fit: BoxFit.cover),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          countriesDataList[index]['country'],
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
                )
              ],
            ),

          ),
        ),
      ),
    );
  }
}