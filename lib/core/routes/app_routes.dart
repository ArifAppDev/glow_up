import 'package:get/get.dart';
import 'package:glow_up/presentation/screens/home/home_screen.dart';
import 'package:glow_up/presentation/screens/login/login.dart';

class AppRoutes {
  static const String loginscreen = "/loginscreen";
  static const String homescreen = "/homescreen";

  static List<GetPage> routes = [
    GetPage(name: loginscreen, page: () => LoginScreen()),
    GetPage(name: homescreen, page: () => Homescreen()),
  ];
}
