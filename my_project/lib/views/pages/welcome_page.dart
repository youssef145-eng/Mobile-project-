// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:my_project/views/pages/sign_in.dart';
import 'package:my_project/views/pages/sign_up.dart';
import 'package:my_project/views/widgets/custom_scaffold.dart';
import 'package:my_project/views/widgets/welcome_button.dart';
class welcome_page extends StatelessWidget {
  const welcome_page({super.key});

  @override
  Widget build(BuildContext context) {
  return CustomScaffold(
    child: Column(children: [Flexible(child: Container(
      padding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 40.0,
      ),
      child:Center( child: RichText(textAlign: TextAlign.center,
      text: const TextSpan(
        children: [
          TextSpan(
            text:'Welcome!\n' ,
            style: TextStyle(
              fontSize: 45.0,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 0, 0, 0),
            )
          ),
          TextSpan(
            text: '\nenter personal datails\n for your account\n',
            style: TextStyle(
              fontSize: 30.0,
 color: Color.fromARGB(255, 0, 0, 0),
            )
          )
        ]
      ),),
      )

    )),
    Flexible(child: Align(
      alignment: Alignment.bottomRight,
      child: Row(
      children: [
       Expanded(child:welcome_button(
        buttontext:'sign up' ,
        onTap: SignUp(),
        color: Colors.transparent,
       )),
       Expanded(child: welcome_button(
        buttontext: 'sign in',
        onTap: SignIn(),
        color: Colors.white,
       ))
      
      ]),
    )),
    ],
  
    ),
  );
  }
}