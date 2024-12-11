import 'dart:convert';
import 'package:barber_app/constants/color_constant.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

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

  Future<List<String>> fetchCelebrities() async {
    const String apiKey =
        "e6a90dacc9a2c982765a75f515975a9dac2c2a604c00de82d5ac0256c2725bdd";
    const String query = "headshot men celebrity hairstyle";
    const String location = "San Francisco, CA, California, United States";

    final Uri url = Uri.parse(
      "https://serpapi.com/search.json?engine=google_images&q=$query&location=$location&api_key=$apiKey",
    );

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);
        final List<dynamic> images = data['images_results'] ?? [];

        // Extract URLs from the response
        return images
            .map<String>((image) => image['thumbnail'] as String)
            .toList();
      } else {
        print("Failed to fetch images: ${response.statusCode}");
        return [];
      }
    } catch (e) {
      print("Error: $e");
      return [];
    }
  }

  Future<List<String>> fetchTrending() async {
    const String apiKey =
        "1b179a642c933a570453a3b12ee812184c1398fa8ad454df3e8478551056be43";
    const String query = "Men's trending hairstyles 2024";
    const String location = "San Francisco, CA, California, United States";

    final Uri url = Uri.parse(
      "https://serpapi.com/search.json?engine=google_images&q=$query&location=$location&imgar=s&api_key=$apiKey",
    );

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);
        final List<dynamic> images = data['images_results'] ?? [];

        // Extract URLs from the response
        return images
            .map<String>((image) => image['thumbnail'] as String)
            .toList();
      } else {
        print("Failed to fetch images: ${response.statusCode}");
        return [];
      }
    } catch (e) {
      print("Error: $e");
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                  'Celebrity Styles',
                  style: GoogleFonts.oswald(
                    fontSize: 25,
                    color: ColorConst.primaryColor,
                  ),
                ),
              ),
            ),
            FutureBuilder<List<String>>(
              future: fetchCelebrities(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text("Error loading images"));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(child: Text("No images found"));
                }

                final imageUrls = snapshot.data!;

                return Column(
                  children: [
                    // Flexible allows for unbounded parents
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection:
                      Axis.horizontal, // Enable horizontal scrolling
                      child: Row(
                        children: imageUrls.map((url) {
                          return Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                url,
                                width: 150,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                );
              },
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
            FutureBuilder<List<String>>(
              future: fetchTrending(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text("Error loading images"));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(child: Text("No images found"));
                }

                final imageUrls = snapshot.data!;

                return Column(
                  children: [
                    // Flexible allows for unbounded parents
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection:
                      Axis.horizontal, // Enable horizontal scrolling
                      child: Row(
                        children: imageUrls.map((url) {
                          return Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                url,
                                width: 150,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                );
              },
            ),
            SizedBox(height: 40),
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
                backgroundColor: ColorConst.containerColor,
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