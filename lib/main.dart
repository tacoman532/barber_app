import 'package:barber_app/screens/barber_screen.dart';
import 'package:barber_app/screens/celebrity_styles_page.dart';
import 'package:barber_app/screens/drawer_screen.dart';
import 'package:barber_app/screens/log_in_screen.dart';
import 'package:barber_app/screens/popular_barbers_page.dart';
import 'package:barber_app/screens/profile_info_screen.dart';
import 'package:barber_app/screens/profilelogin_screen.dart';
import 'package:barber_app/screens/signup_screen.dart';
import 'package:barber_app/screens/splash_screen.dart';
import 'package:barber_app/screens/styles_screen.dart';
import 'package:barber_app/screens/trending_styles_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'screens/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  await dotenv.load(fileName: "assets/.env");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        '/home': (context) => HomePage(),
        '/drawer': (context) => DrawerPage(),
        '/pro' : (context) => ProfileInfoPage(),
        '/prolog' : (context) => ProfileLogin(),
        '/log': (context) => LoginPage(),
        '/sign': (context) => SignupScreen(),
      },
    );
  }
}