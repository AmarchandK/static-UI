
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SwipableImage extends StatelessWidget {
  const SwipableImage({
    Key? key,
    required this.size,
    required this.imges,
  }) : super(key: key);

  final Size size;
  final List imges;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 2,
      child: CarouselSlider.builder(
        itemCount: 3,
        itemBuilder: (context, index, realIndex) {
          return Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(imges[index]),
              ),
            ),
          );
        },
        options: CarouselOptions(
          viewportFraction: 1,
          aspectRatio: 23 / 20,
          autoPlayInterval: const Duration(seconds: 5),
          enableInfiniteScroll: true,
        ),
      ),
    );
  }
}
