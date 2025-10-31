import 'package:flutter/material.dart';
import 'package:glow_up/presentation/widgets/banner.dart';
import 'package:glow_up/presentation/widgets/catagory.dart';
import 'package:glow_up/presentation/widgets/custom_app_bar.dart';
import 'package:glow_up/presentation/widgets/post.dart';
import 'package:glow_up/presentation/widgets/subcatagory.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: IconButton(
                onPressed: () {},
                icon: Image.asset("assets/image/wolves.png"),
              ),
            ),

            // drewer prifile
            ListTile(
              leading: IconButton(
                onPressed: () {},
                icon: Image.asset("assets/image/profile_icon.png"),
              ),
              title: Text("Edit Profile"),
            ),

            // drawer setting
            ListTile(
              leading: IconButton(
                onPressed: () {},
                icon: Image.asset("assets/image/setting_icon.png"),
              ),
              title: Text("Settings"),
            ),

            // rawer archive
            ListTile(
              leading: IconButton(
                onPressed: () {},
                icon: Image.asset("assets/image/archive_icon.png"),
              ),
              title: Text("Archive"),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // custom app bar..........
          CustomAppBar(scaffoldkey: _scaffoldkey),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // banner ...................
                  BannerDesign(),

                  // catagory...........
                  CatagoryDesign(),

                  // subcatagory..........
                  Subcatagory(),
                  // post................
                  Post(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
