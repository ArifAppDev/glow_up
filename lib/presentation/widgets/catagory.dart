import 'package:flutter/material.dart';
import 'package:glow_up/presentation/screens/home/model/catagory_item.dart';

class CatagoryDesign extends StatelessWidget {
  const CatagoryDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Category",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 15,
              children: List.generate(catagory.length, (index) {
                return CatagoryCardDesign(
                  colors: catagory[index]["color"],
                  catagoryName: catagory[index]["name"],
                  catagoryImgpath: catagory[index]["ctImg"],
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}

class CatagoryCardDesign extends StatelessWidget {
  const CatagoryCardDesign({
    super.key,
    required this.colors,
    required this.catagoryName,
    required this.catagoryImgpath,
  });

  final List<Color> colors;
  final String catagoryName;
  final String catagoryImgpath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: colors),

          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Image.asset(catagoryImgpath),
              SizedBox(width: 15),
              Text(catagoryName, style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
