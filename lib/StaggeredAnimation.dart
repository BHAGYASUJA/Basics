import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(DevicePreview(
    builder:(BuildContext context)=>const MaterialApp(
      useInheritedMediaQuery: true,
      home:StGrid(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class StGrid extends StatelessWidget {
  const StGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        StaggeredGrid.count(
        crossAxisCount:3,
        mainAxisSpacing:20,
        crossAxisSpacing:20,
        children:const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: StaggeredGridTile.count(
            crossAxisCellCount:2,
             mainAxisCellCount: 2,
             child:Card(color:Colors.green,),
    ),
          ),
           StaggeredGridTile.count(crossAxisCellCount:2,mainAxisCellCount: 2,
               child:Card(color:Colors.red,),
            ),
    StaggeredGridTile.count(
    crossAxisCellCount:2,
    mainAxisCellCount: 2,
    child:
    Card(color:Colors.black,),
    ),
    StaggeredGridTile.count(
    crossAxisCellCount:2,
    mainAxisCellCount: 2,
    child:Card(color:Colors.blueGrey,),
    ),
        ],

        ),
    );
  }
}


