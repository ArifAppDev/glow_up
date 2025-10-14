import 'package:flutter/material.dart';

class BannerDesign extends StatelessWidget {
  BannerDesign({super.key});

  final List<String> bannerpath = [
    "assets/image/banner1.png",
    "assets/image/banner2.png",
    "assets/image/banner3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          spacing: 15,
          children: List.generate(bannerpath.length, (index) {
            return Image.asset(bannerpath[index]);
          }),
        ),
      ),
    );
  }
}
