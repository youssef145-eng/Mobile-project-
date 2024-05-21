import 'package:flutter/material.dart';
import 'package:my_project/Models/news_item.dart';
import 'package:my_project/views/pages/saved_items.dart';
import 'package:my_project/views/widgets/Recommendation.dart';
import 'package:my_project/views/widgets/app_bar_icons.dart';
import 'package:my_project/views/widgets/carousel_slider.dart';
import 'package:my_project/views/widgets/home_title_widget.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppBaricon(icone: Icons.menu),
                    Row(
                      children: [
                        AppBaricon(icone: Icons.search),
                        SizedBox(width: 8.0),
                        AppBaricon(icone: Icons.notifications),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 16.0),
                const home_title_widget(title: 'Breaking News'),
                const SizedBox(height: 0.8),
                const carousel_slider(),
                const SizedBox(height: 16.0),
                const home_title_widget(title: 'ٌRecommendation'),
                const SizedBox(height: 8.0),
                ...news.map((news_item) => Recommendation(i1: news_item)).toList(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 1) {
            // Navigate to the Saved Items page
            Navigator.push(context, MaterialPageRoute(builder: (context) => saved_items()));
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Saved',
          ),
        ],
      ),
    );
  }
}

class SavedItemsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Saved Items Page'), // Customize with your content
    );
  }
}

