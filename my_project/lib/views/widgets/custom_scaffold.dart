import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('assets/images/jon-tyson-XmMsdtiGSfo-unsplash.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: child,
      ),

      // Stack(
      //   children: [
      //     Image.asset(
      //       //'assets/images/bg1.png',
      //       'assets/images/jon-tyson-XmMsdtiGSfo-unsplash.jpg',
      //       fit: BoxFit.cover,
      //       width: double.infinity,
      //       height: double.infinity,
      //     ),
      //     if (child != null) child!,
      //   ],
      // ),
    );
  }
}
