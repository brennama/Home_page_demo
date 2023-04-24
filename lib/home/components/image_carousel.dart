import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> images = [
  'https://pbs.twimg.com/media/Ft7gcUhWIAYUBcr?format=jpg&name=medium',
  'https://pbs.twimg.com/media/FtbJ0iAXsAAWmvM?format=jpg&name=medium',
  'https://pbs.twimg.com/media/Frs54HMXsAIue4X?format=jpg&name=medium',
  'https://pbs.twimg.com/media/FrcID4oWIAAak7j?format=jpg&name=medium',
  'https://pbs.twimg.com/media/Fp6TcOCX0AA-PKr?format=jpg&name=medium',
];

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key, required this.images});
  final List<String> images;

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<ImageCarousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              height: 172.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: images.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: (_current == entry.key ? 20.0 : 10.0),
              height: 3.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.0),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black)
                      .withOpacity(_current == entry.key ? 0.9 : 0.2)),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}

final List<Widget> imageSliders = images
    .map((item) => Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 1.0),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              child: Stack(
                children: <Widget>[
                  Image.network(item, fit: BoxFit.cover, width: 1000.0),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(200, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                    ),
                  ),
                ],
              )),
        ))
    .toList();
