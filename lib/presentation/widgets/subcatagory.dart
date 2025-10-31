import 'package:flutter/material.dart';
import 'package:glow_up/presentation/screens/home/model/subcatagory.dart';

class Subcatagory extends StatelessWidget {
  const Subcatagory({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),

            child: Row(
              children: List.generate(subcatagoryValue.length, (index) {
                return SubDesign(
                  subcolor: subcatagoryValue[index]["color"],
                  subname: subcatagoryValue[index]["name"],
                  subImg: subcatagoryValue[index]["subImg"],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class SubDesign extends StatelessWidget {
  const SubDesign({
    super.key,
    required this.subcolor,
    required this.subname,
    required this.subImg,
  });

  final List<Color> subcolor;
  final String subname;
  final String subImg;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: 130,

      child: Column(
        children: [
          Container(
            height: 140,
            width: 120,

            decoration: BoxDecoration(
              gradient: LinearGradient(colors: subcolor),

              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Image.asset(subImg),
          ),
          SizedBox(height: 10),
          Text(subname, style: TextStyle(fontSize: 16, color: Colors.black)),
        ],
      ),
    );
  }
}
