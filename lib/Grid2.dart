import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home:Grid2(),
  ));
}
class Grid2 extends StatelessWidget {
  const Grid2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid 2"),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20
          ),
          itemBuilder: (ctx,index){
            return Card(
            child: Text("Grid $index"),
            );
    }
          ),
    );
  }
}
