import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBaricon extends StatelessWidget {
  final IconData icone;
  const AppBaricon({super.key, required this.icone});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color:Colors.grey
      ),
    child:Icon(icone),
    
   
    );
  }
}