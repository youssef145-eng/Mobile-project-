import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:log_in_app/pages/sign_up.dart';
class welcome_button extends StatelessWidget {
  const welcome_button({super.key, this.buttontext, this.onTap, this.color});
final String? buttontext;
final Widget? onTap;
final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.push(context, MaterialPageRoute(builder:(e)=> onTap! ));
      } ,
      child:Container(
        padding: const EdgeInsets.all(30.0),
      decoration: BoxDecoration(color:color!,
      borderRadius:BorderRadius.only(
        topLeft: Radius.circular(50)
      ) ,),
      child:  Text(buttontext!,textAlign: TextAlign.center
      , style:const TextStyle(fontSize: 25.0
  ,fontWeight:FontWeight.bold,color:Color.fromARGB(255, 0, 0, 0) ),
      )
    ));
  }
}