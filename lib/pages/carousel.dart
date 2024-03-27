import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<Widget> myData = [
    // ignore: sized_box_for_whitespace
    Container(
      height: 300,
      width: 300,
      child: Image.asset(
        'assets/images/image1.png',
        scale: 0.2,
      ),
    ),
    // ignore: sized_box_for_whitespace
    Container(
      height: 300,
      width: 300,
      child: Image.asset(
        'assets/images/image2.png',
        scale: 0.2,
      ),
    ),
    // ignore: sized_box_for_whitespace
    Container(
      height: 300,
      width: 300,
      child: Image.asset(
        'assets/images/image3.png',
        scale: 0.2,
      ),
    ),
    // ignore: sized_box_for_whitespace
    Container(
      height: 300,
      width: 300,
      child: Image.asset(
        'assets/images/image4.png',
        scale: 0.2,
      ),
    ),
    // ignore: sized_box_for_whitespace
    Container(
      height: 300,
      width: 300,
      child: Image.asset(
        'assets/images/image5.png',
        scale: 0.2,
      ),
    ),
    // ignore: sized_box_for_whitespace
    Container(
      height: 300,
      width: 300,
      child: Image.asset(
        'assets/images/image6.png',
        scale: 0.2,
      ),
    ),
    // ignore: sized_box_for_whitespace
    Container(
      height: 300,
      width: 300,
      child: Image.asset(
        'assets/images/image7.png',
        scale: 0.2,
      ),
    ),
    // ignore: sized_box_for_whitespace
    Container(
      height: 300,
      width: 300,
      child: Image.asset(
        'assets/images/image8.png',
        scale: 0.2,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Carousel with indicator controller demo')),
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              items: myData,
              carouselController: _controller,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                onPageChanged: (index, reason) {
                  setState(
                    () {
                      _current = index;
                    },
                  );
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: myData.asMap().entries.map(
              (entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 7.0,
                    height: 7.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}
