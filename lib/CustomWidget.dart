import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
final Color? bgColor;
final Text title;
final Icon icon;
VoidCallback onPress;

CustomWidget({required this.bgColor, required this.title,required this.onPress,required this.icon});

  @override
  Widget build(BuildContext context) {
   return Card(
     color:bgColor,
     child:ListTile(
       leading: icon,
       title: title,
         onTap: onPress,
     ),
   );
  }
}
