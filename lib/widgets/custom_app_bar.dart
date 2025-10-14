import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldkey;
  const CustomAppBar({super.key, required this.scaffoldkey});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, right: 20, left: 20, bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset("assets/image/user.png"),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("Good morning!"), Text("User Name")],
                  ),
                ],
              ),

              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/image/notification.png"),
                  ),

                  IconButton(
                    onPressed: () {
                      scaffoldkey.currentState?.openDrawer();
                    },
                    icon: Image.asset("assets/image/menu.png"),
                  ),
                ],
              ),
            ],
          ),

          // search box..........................
          SizedBox(height: 17),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Search here",
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/image/search.png"),
                    ),

                    // when the field is not focushed.....
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(70),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 230, 227, 227),
                        width: 1,
                      ),
                    ),

                    // when the border is  foucshed.
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(70),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 230, 227, 227),
                        width: 1,
                      ),
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(70)),
                    ),
                  ),
                ),
              ),

              SizedBox(width: 13),

              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff9C8EEF),
                      Color(0xff6C57EC),
                      Color(0xff5443BB),
                    ],
                  ),

                  borderRadius: BorderRadius.all(Radius.circular(120)),
                ),

                child: Image.asset("assets/image/vector.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
