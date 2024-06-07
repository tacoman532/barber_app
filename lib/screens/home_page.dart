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
  final text = 'Welcome ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  PageView(scrollDirection: Axis.horizontal, children: <Widget>[
                Container(
                  child: Row(
                    children: [
                      BubbleWidget(
                        child: Image.network(
                          'https://qph.cf2.quoracdn.net/main-qimg-9aca24ac294d684ced5677d9eea05298',
                        ),
                      ),
                      BubbleWidget(
                        child: Image.network(
                          height: 110,
                          'https://www.gatsbyglobal.com/en/technique/best-haircuts-men-top-mens-hairstyles-today/images/img11.jpg',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      GestureDetector(
                        child: BubbleWidget(
                          child: Image.network(
                            'https://i.pinimg.com/170x/ce/8e/7e/ce8e7e07a92b261dcef587ef7f696d6c.jpg',
                            height: 100,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/trend');
                        },
                      ),
                      GestureDetector(
                        child: BubbleWidget(
                          child: Image.network(
                            'https://assets.pokemon.com/assets/cms2/img/pokedex/full//149.png',
                            height: 100,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/celeb');
                        },
                      ),
                    ],
                  ),
                )
              ]),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: Text(
                  'Celebrity Styles',
                  style: GoogleFonts.oswald(
                    fontSize: 25,
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
                  PageView(scrollDirection: Axis.horizontal, children: <Widget>[
                Container(
                  child: Row(
                    children: [
                      BubbleWidget(
                        child: Image.network(
                          'https://assets.pokemon.com/assets/cms2/img/pokedex/full//149.png',
                        ),
                      ),
                      BubbleWidget(
                        child: Image.network(
                          height: 110,
                          'https://assets.pokemon.com/assets/cms2/img/pokedex/full//149.png',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      GestureDetector(
                        child: BubbleWidget(
                          child: Image.network(
                            'https://assets.pokemon.com/assets/cms2/img/pokedex/full//149.png',
                            height: 100,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/trend');
                        },
                      ),
                      GestureDetector(
                        child: BubbleWidget(
                          child: Image.network(
                            'https://assets.pokemon.com/assets/cms2/img/pokedex/full//149.png',
                            height: 100,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/celeb');
                        },
                      ),
                    ],
                  ),
                )
              ]
                  ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: Text(
                  'Popular Barbers',
                  style: GoogleFonts.oswald(
                    fontSize: 25,
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
              PageView(scrollDirection: Axis.horizontal, children: <Widget>[
                Container(
                  child: Row(
                    children: [
                      BubbleWidget(
                        child: Image.network(
                          'https://assets.pokemon.com/assets/cms2/img/pokedex/full//149.png',
                        ),
                      ),
                      BubbleWidget(
                        child: Image.network(
                          height: 110,
                          'https://assets.pokemon.com/assets/cms2/img/pokedex/full//149.png',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      GestureDetector(
                        child: BubbleWidget(
                          child: Image.network(
                            'https://assets.pokemon.com/assets/cms2/img/pokedex/full//149.png',
                            height: 100,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/trend');
                        },
                      ),
                      GestureDetector(
                        child: BubbleWidget(
                          child: Image.network(
                            'https://assets.pokemon.com/assets/cms2/img/pokedex/full//149.png',
                            height: 100,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/celeb');
                        },
                      ),
                    ],
                  ),
                )
              ]
              ),
            ),
          ]),
        ));
  }
}
