import 'package:barber_app/constants/color_constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

import '../widgets/bubble_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  // final VoidCallback onLearnPageNavigation;
  // const HomePage({super.key, required this.onLearnPageNavigation});
  final text = 'Welcome ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConst.backgroundColor,
        body: SingleChildScrollView(
          child: Column(children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: Text(
                  text.length > 16 ? '${(text.substring(0, 16))}...' : text,
                  style: GoogleFonts.oswald(
                    fontSize: 30,
                    color: ColorConst.primaryColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: Text(
                  'Trending Styles',
                  style: GoogleFonts.oswald(
                    fontSize: 25,
                    color: ColorConst.primaryColor,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              height: 150,
              width: (MediaQuery.of(context).size.width),
              alignment: Alignment.centerLeft,
              child:
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        BubbleWidget(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://qph.cf2.quoracdn.net/main-qimg-9aca24ac294d684ced5677d9eea05298',
                            fit: BoxFit.cover,
                          ),
                          ),
                        ),
                        BubbleWidget(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://www.gatsbyglobal.com/en/technique/best-haircuts-men-top-mens-hairstyles-today/images/img11.jpg',
                            fit: BoxFit.cover,
                          ),
                          ),
                        ),
                        BubbleWidget(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://i.pinimg.com/170x/ce/8e/7e/ce8e7e07a92b261dcef587ef7f696d6c.jpg',
                            fit: BoxFit.cover,
                          ),
                          ),
                        ),
                        BubbleWidget(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://assets.pokemon.com/assets/cms2/img/pokedex/full//149.png',
                            fit: BoxFit.cover,
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: Text(
                  'Celebrity Styles',
                  style: GoogleFonts.oswald(
                    fontSize: 25,
                    color: ColorConst.primaryColor,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              height: 150,
              width: (MediaQuery.of(context).size.width),
              alignment: Alignment.centerLeft,
              child:
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                BubbleWidget(
                child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://media.4-paws.org/b/8/d/5/b8d5441fec6b84e9c3cba899549b84bb0f193fff/VIER%20PFOTEN_2019-07-18_013-2890x2000.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                ),
                BubbleWidget(
                  child: Image.network(
                    height: 110,
                    'https://mymodernmet.com/wp/wp-content/uploads/2023/01/how-to-draw-a-duck-fb-thumbnail.jpg',
                  ),
                ),
                BubbleWidget(
                  child: Image.network(
                    'https://assets.pokemon.com/assets/cms2/img/pokedex/full//149.png',
                    height: 100,
                  ),
                ),
                BubbleWidget(
                  child: Image.network(
                    'https://assets.pokemon.com/assets/cms2/img/pokedex/full//149.png',
                    height: 100,
                  ),
                ),
                ]),
                  ),
            ),
            SizedBox(height:40),
            ElevatedButton.icon(
              onPressed: () {
                // onLearnPageNavigation();
              },
              icon: Icon(Icons.arrow_forward, color: ColorConst.primaryColor),
              label: Text(
                'See What Style Fits You!',
                style: GoogleFonts.oswald(
                  fontSize: 18,
                  color: ColorConst.primaryColor,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorConst.extraColor,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              ),
            ),
            SizedBox(height: 20),
          ],
          ),
        ),
    );
  }
}