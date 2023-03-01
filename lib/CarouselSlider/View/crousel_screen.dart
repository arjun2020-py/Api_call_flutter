import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselScreen extends StatefulWidget {
  CarouselScreen({super.key});

  @override
  State<CarouselScreen> createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  final activeIndex = 0;
  final urlImages = [
    ' assets/images/tree-736885__480.jpg',
    'assets/images/1660032830980_1660032829776_mv1928.jpg',
    'assets/images/WhatsApp Image 2023-02-17 at 20.35.26.jpeg',
    'assets/images/pro.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Carousel Slider'),
      ),
      body: ListView(
        children: [
          Center(
            child: SizedBox(
                height: 500,
                width: double.infinity,
                child: Column(
                  children: [
                    CarouselSlider.builder(
                        itemCount: urlImages.length,
                        itemBuilder: (context, index, realIndex) {
                          final urlImage = urlImages[index];
                          return BuildImages(urlImage, index);
                        },
                        options: CarouselOptions(
                          height: 400,
                          autoPlay: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              final activeIndex = index;
                            });
                          },
                        )),
                    buildIndicator(),
                  ],
                )),
          )
        ],
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: JumpingDotEffect(),
      );

  Widget BuildImages(String urlImage, int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      color: Colors.grey,
      child: Image.asset(urlImage),
    );
  }
}
