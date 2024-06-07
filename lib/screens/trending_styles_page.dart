import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrendingPage extends StatefulWidget {
  const TrendingPage({super.key});

  @override
  State<TrendingPage> createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: Text(
                    'Trending Styles',
                    style: GoogleFonts.oswald(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
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
                    'Short Hair',
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
                        image: NetworkImage(
                            'https://images.squarespace-cdn.com/content/v1/5616c8cde4b0bbc1cabb7c79/1700014680884-A1KQ4RMZHDH4J6ILHBQT/HOW%2BTO%2BSTYLE%2BYOUR%2BNEW%2BHAIRCUT.jpg?format=1500w'),
                      ),
                    ),
                    Container(
                      height: 150.0,
                      child: Image(
                        height: 100.0,
                        image: NetworkImage(
                            'https://i.pinimg.com/736x/d5/c3/a0/d5c3a02af08d0d94352e1c6a5b75ed07.jpg'),
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: Text(
                    'Medium Hair',
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
                        image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/e/e8/Chris_Hemsworth_by_Gage_Skidmore_2_%28cropped%29.jpg'),
                      ),
                    ),
                    Container(
                      height: 150.0,
                      child: Image(
                        height: 100.0,
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaqBbvIMX5bgceNDwGBS31zl7BCXepFGKeaDGUhK-TiA&s'),
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: Text(
                    'Long Hair',
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
                        image: NetworkImage(
                            'https://content.latest-hairstyles.com/wp-content/uploads/black-mens-disconnected-long-haircut.jpg'),
                      ),
                    ),
                    Container(
                      height: 150.0,
                      child: Image(
                        height: 100.0,
                        image: NetworkImage(
                            'https://manofmany.com/wp-content/uploads/2024/01/Ways-to-Style-Long-Hair-for-Men-Long-Hairstyle-for-Men-3.jpg'),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
