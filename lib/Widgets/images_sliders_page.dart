import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImagesSliderPage extends StatelessWidget {
  const ImagesSliderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Slider'),
      ),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlayCurve: Curves.easeOutQuart,
            height: 200,
            autoPlay: true,
            disableCenter: true,
            enlargeCenterPage: true,
          ),
          items: List.generate(
            images.length,
            (index) => Container(
              color: Colors.white,
              child: Image.asset(
                images[index],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<String> images = [
  'assets/andy-holmes-slUAEy_D0uE-unsplash.jpg',
  'assets/benson-low-cyqZHR9aazk-unsplash.jpg',
  'assets/bernd-dittrich-aGGBRGcitZ0-unsplash.jpg',
  'assets/david-clode-adKANlV3JHA-unsplash.jpg',
  'assets/hans-veth-az_nr7wv9Zk-unsplash.jpg',
];
