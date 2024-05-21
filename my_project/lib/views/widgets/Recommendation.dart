import 'package:flutter/material.dart';
import 'package:my_project/Models/news_item.dart';

class Recommendation extends StatelessWidget {
  final news_item i1;
  const Recommendation({Key? key, required this.i1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0), // Add vertical padding
      child: Row(
        children: [
          // Image with consistent height and width
          Container(
            height: 100,
            width: 100,
            child: Image.network(i1.imgurl, fit: BoxFit.cover),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  i1.category,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 12.0),
                Text(
                  i1.title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(
                  '${i1.author} • ${i1.time}',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              savedItems.add(i1);
            },
            child: Icon(Icons.bookmark),),
        ],
      ),
    );
  }
}
