import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_project/Models/news_item.dart';

class carousel_slider extends StatefulWidget {

  const carousel_slider({super.key});

  @override
  State<carousel_slider> createState() => _carousel_sliderState();
}

class _carousel_sliderState extends State<carousel_slider> {
  final _controller=CarouselController();
  int _current=0;

  @override
  Widget build(BuildContext context) {

    
      final List<Widget> imageSliders = news
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item.imgurl, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      top: 10.0,
                      left: 10.0,
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DecoratedBox (
                          decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(46.0)),
                          child: Text(item.category,style: TextStyle(color:Colors.white ),),),
                      )
                      )
                    
                    ,Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                     

                      child: Column(
                       
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            child: Text(
                              item.title,
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();
return Column(
      children: [
        CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
      


 Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: news.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        )
      
 ] )  ;

  }
}