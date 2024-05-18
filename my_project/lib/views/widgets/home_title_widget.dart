import 'package:flutter/material.dart';

class home_title_widget extends StatelessWidget {
  final String title;
  const home_title_widget({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(

  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(title , style:Theme.of(context).textTheme.titleLarge ),
    TextButton(onPressed:(){}, child: const Text('View all'), ),
  ],
);
  }
}