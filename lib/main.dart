import 'package:barber_app/screens/splash_screen.dart';
import 'package:barber_app/screens/trending_styles_page.dart';
import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Barber App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: SplashPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/home': (context) => HomePage(title: "barber app",),
        '/trend' : (context) => TrendingPage(),
      },
    );
  }
}