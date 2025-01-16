import 'package:barber_app/screens/drawer_screen.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

import '../constants/color_constant.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image(image: AssetImage("assets/realLogo.png")),
      logoWidth: 120,
      loaderColor: Colors.white,
      backgroundColor: ColorConst.backgroundColor,
      showLoader: true,
      navigator: DrawerPage(),
      durationInSeconds: 20,
    );
  }
}