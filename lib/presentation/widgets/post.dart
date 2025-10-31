import 'package:flutter/material.dart';
import 'package:glow_up/presentation/screens/home/model/post_item.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: List.generate(postvalue.length, (index) {
              return PostDesign(
                postImg: postvalue[index]["postImg"],
                price: postvalue[index]["price"],
                posttitle: postvalue[index]["title"],
                ragtings: postvalue[index]["ragings"],
              );
            }),
          ),
        ),
      ],
    );
  }
}

class PostDesign extends StatelessWidget {
  const PostDesign({
    super.key,
    required this.postImg,
    required this.price,
    required this.posttitle,
    required this.ragtings,
  });

  final String postImg;
  final String price;
  final String posttitle;
  final String ragtings;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),

          height: 320,
          width: 365,
          child: Padding(
            padding: const EdgeInsets.all(13),
            child: Column(
              children: [
                Image.asset(postImg),

                SizedBox(height: 15),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 6,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        posttitle,
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      Text(
                        price,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 17,
                    vertical: 2,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 19),
                      SizedBox(width: 10),
                      Text(
                        ragtings,
                        style: TextStyle(fontSize: 12, color: Colors.blueGrey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
