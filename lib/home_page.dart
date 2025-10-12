import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  final _searchitem = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,

        child: Column(
          children: [
            DrawerHeader(child: Image.asset("assets/image/wolves.png")),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color.fromARGB(255, 199, 210, 216),
                    width: 0.4,
                  ),

                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: ListTile(
                  leading: Icon(Icons.person_add, color: Colors.blue),
                  title: Text("Edit Profile"),
                ),
              ),
            ),

            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color.fromARGB(255, 199, 210, 216),
                    width: 0.4,
                  ),

                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: const Color.fromARGB(255, 68, 14, 216),
                  ),
                  title: Text("Seggings"),
                ),
              ),
            ),

            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color.fromARGB(255, 199, 210, 216),
                    width: 0.4,
                  ),

                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: ListTile(
                  leading: Icon(Icons.archive, color: Colors.green),
                  title: Text("Archive"),
                ),
              ),
            ),
          ],
        ),
      ),

      key: _key,
      // app bar............
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),

          child: CircleAvatar(child: Image.asset("assets/image/user.png")),
        ),

        title: Column(
          children: [
            Text(
              "Good morning!",
              style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "User Name",
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined, size: 27),
          ),
          SizedBox(width: 1),
          IconButton(
            onPressed: () {
              _key.currentState?.openDrawer();
            },
            icon: Icon(Icons.menu, size: 29),
          ),
          SizedBox(width: 10),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _searchitem,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hint: Text("Search here"),

                        prefixIcon: Icon(
                          Icons.search_sharp,
                          color: Colors.deepPurple,
                        ),

                        // when the border is not focused
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 233, 238, 241),

                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),

                        // when the border is foucsed
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 233, 238, 241),

                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 233, 238, 241),
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20),

                  Container(
                    height: 45,
                    width: 45,

                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 91, 78, 207),
                      borderRadius: BorderRadius.all(Radius.circular(120)),
                    ),
                    child: Icon(
                      Icons.filter_alt_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 150,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),

                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 7, left: 7),
                    child: Container(
                      child: Image.asset("assets/image/person1.png"),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 7, left: 7),
                    child: Container(
                      child: Image.asset("assets/image/person2.png"),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 7, left: 7),
                    child: Container(
                      child: Image.asset("assets/image/person3.png"),
                    ),
                  ),
                ],
              ),
            ),

            // catagory section..............
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 25,
                  ),
                  child: Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),

            // catatory sections.............
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 7),
                      // first catagory........
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 228, 81, 13),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        width: 160,
                        height: 50,

                        child: Row(
                          children: [
                            SizedBox(width: 5),
                            Image.asset("assets/image/elipse1.png"),
                            SizedBox(width: 25),

                            Text(
                              "Aesthetics",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 15),

                      // Second catagory........
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 90, 65, 231),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        width: 185,
                        height: 50,

                        child: Row(
                          children: [
                            SizedBox(width: 9),
                            Image.asset("assets/image/elipse2.png"),
                            SizedBox(width: 10),

                            Text(
                              "Cuisine & Pastry",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15),

                      // Third catagory........
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 102, 196, 106),

                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        width: 185,
                        height: 50,

                        child: Row(
                          children: [
                            SizedBox(width: 9),
                            Image.asset("assets/image/elipse2.png"),
                            SizedBox(width: 10),

                            Text(
                              "Cuisine & Pastry",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 50),

            // item sections..........
            SizedBox(
              height: 150,

              child: ListView(
                scrollDirection: Axis.horizontal,

                children: [
                  SizedBox(width: 20),

                  Column(
                    children: [
                      Image.asset("assets/image/group1.png"),
                      SizedBox(height: 10),

                      Text(
                        "Wedding",
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),

                  Column(
                    children: [
                      Image.asset("assets/image/group2.png"),
                      SizedBox(height: 10),

                      Text(
                        "Birthday",
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),

                  Column(
                    children: [
                      Image.asset("assets/image/group2.png"),
                      SizedBox(height: 10),
                      Text(
                        "Birthday",
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  SizedBox(width: 10),
                  Column(
                    children: [
                      Image.asset("assets/image/group1.png"),
                      SizedBox(height: 10),

                      Text(
                        "Wedding",
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            SizedBox(
              height: 400,
              child: ListView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                children: [
                  // first container..........
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 241, 240),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),

                    height: 290,
                    width: double.infinity,

                    child: Column(
                      children: [
                        Image.asset(
                          "assets/image/rectangle1.png",
                          height: 230,
                          width: 360,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 3),

                            Text(
                              "I will Singing all types of Songs",
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              "\$100",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 19,
                              ),
                            ),
                            SizedBox(width: 3),
                          ],
                        ),

                        Row(
                          children: [
                            SizedBox(width: 20),
                            Icon(
                              Icons.star,
                              color: const Color.fromARGB(255, 235, 194, 13),
                              size: 20,
                            ),
                            SizedBox(width: 7),
                            Text(
                              "4.5 (120+ Ratings)",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 145, 164, 173),
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),

                  // Second container..........
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 241, 240),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),

                    height: 290,
                    width: double.infinity,

                    child: Column(
                      children: [
                        Image.asset(
                          "assets/image/rectangle2.png",
                          height: 230,
                          width: 360,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 3),

                            Text(
                              "I will Singing all types of Songs",
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              "\$100",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 19,
                              ),
                            ),
                            SizedBox(width: 3),
                          ],
                        ),

                        Row(
                          children: [
                            SizedBox(width: 20),
                            Icon(
                              Icons.star,
                              color: const Color.fromARGB(255, 235, 194, 13),
                              size: 20,
                            ),
                            SizedBox(width: 7),
                            Text(
                              "4.5 (120+ Ratings)",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 145, 164, 173),
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10),

                  // Third container..........
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 241, 240),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),

                    height: 290,
                    width: double.infinity,

                    child: Column(
                      children: [
                        Image.asset(
                          "assets/image/rectangle3.png",
                          height: 230,
                          width: 360,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 3),

                            Text(
                              "I will Singing all types of Songs",
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              "\$100",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 19,
                              ),
                            ),
                            SizedBox(width: 3),
                          ],
                        ),

                        Row(
                          children: [
                            SizedBox(width: 20),
                            Icon(
                              Icons.star,
                              color: const Color.fromARGB(255, 235, 194, 13),
                              size: 20,
                            ),
                            SizedBox(width: 7),
                            Text(
                              "4.5 (120+ Ratings)",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 145, 164, 173),
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
