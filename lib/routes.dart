
import 'package:bhagavad_gita_app/views/detail_screen.dart';
import 'package:bhagavad_gita_app/views/home_page.dart';
import 'package:bhagavad_gita_app/views/splash_screen.dart';
import 'package:flutter/material.dart';


class MyRoutes{
  static Map<String, Widget Function(BuildContext)> myRoutes = {
    '/' : (context) => const SplashScreen(),
    '/detail' : (context) => const DetailScreen(),
    '/home' : (context) => const HomeScreen(),
  };
}