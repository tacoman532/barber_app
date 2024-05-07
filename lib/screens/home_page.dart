import 'package:barber_app/widgets/app_bar_widget.dart';
import 'package:barber_app/widgets/drawer_widget.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          title: "Home",
        ),
        drawer: DrawerWidget(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: Text(
                    'Welcome, Michael',
                    style: GoogleFonts.oswald(
                      fontSize: 30,

                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: Text(
                    'Trending Styles',
                    style: GoogleFonts.oswald(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 150.0,
                      child: Image(
                        height: 100.0,
                        image: NetworkImage('https://cdn-fnknc.nitrocdn.com/jwqHRGAzpUgGskUSHlppNQzwuXgXIKwg/assets/images/optimized/rev-bf6d941/www.fashionbeans.com/wp-content/uploads/2023/08/smartcutzbarbers_manwithnumber2andskinfadehaircut-696x445.jpg'),
                      )
                  ),
                  Container(
                      height: 150.0,
                      child: Image(
                        height: 100.0,
                        image: NetworkImage('https://content.latest-hairstyles.com/wp-content/uploads/short-swept-up-fade-taper-haircut-for-men.jpg'),
                      )
                  )
                ],
              ))
            ]
            ),
          ),
        )
    );
  }
}
