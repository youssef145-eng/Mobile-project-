import 'package:flutter/material.dart';
import 'package:my_project/views/widgets/custom_scaffold.dart';

class saved_items extends StatefulWidget {
  const saved_items({super.key});

  @override
  State<saved_items> createState() => _sign_inState();
}

class _sign_inState extends State<saved_items> {
  final _formSignInKey = GlobalKey<FormState>(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
    );
  }
}