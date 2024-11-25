import 'package:bhagavad_gita_app/provider/detail_page_provider.dart';
import 'package:bhagavad_gita_app/provider/home_page_provider.dart';
import 'package:bhagavad_gita_app/provider/shloks_provider.dart';
import 'package:bhagavad_gita_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GitaProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeScreenProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DetailScreenProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: MyRoutes.myRoutes,
    );
  }
}
