import 'package:barber_app/constants/color_constant.dart';
import 'package:barber_app/widgets/bubble_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const List<String> hairLineList = <String>['regular', 'receding', 'widows peak', 'rounded'];
const List<String> hairLengthTopList = <String>['short', 'eyebrow length', 'long', 'very long'];
const List<String> hairLengthSideList = <String>['short', 'ear length', 'long', 'very long'];
const List<String> hairTextureList = <String>['straight', 'wavy', 'curly', 'very curly'];

class StylesScreen extends StatefulWidget {
  const StylesScreen({super.key});

  @override
  State<StylesScreen> createState() => _StylesScreenState();
}

class _StylesScreenState extends State<StylesScreen> {
  String dropdownValue = hairLineList.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConst.backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Hair Line",
                        style: TextStyle(color: Colors.white)),
                  ),
                  BubbleWidget(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        SizedBox(
                          width: (MediaQuery.of(context).size.width / 2) - 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "What hairline do you have?",
                                  style: GoogleFonts.oswald(
                                    fontSize: 18,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: (MediaQuery.of(context).size.width / 2) - 8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              DropdownMenu<String>(
                                textStyle: GoogleFonts.oswald(
                                    fontSize: 18,
                                    color: ColorConst.backgroundColor),
                                width: (MediaQuery.of(context).size.width / 2) -
                                    16,
                                initialSelection: hairLineList.first,
                                inputDecorationTheme: InputDecorationTheme(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: ColorConst.containerColor),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                menuStyle: MenuStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Colors.white),
                                  shape: MaterialStatePropertyAll<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                                onSelected: (String? value) {
                                  // This is called when the user selects an item.
                                  setState(() {
                                    dropdownValue = value!;
                                  });
                                },
                                dropdownMenuEntries: hairLineList
                                    .map<DropdownMenuEntry<String>>(
                                        (String value) {
                                  return DropdownMenuEntry<String>(
                                      value: value,
                                      label: value,
                                      style: ButtonStyle(
                                        textStyle:
                                            MaterialStatePropertyAll<TextStyle>(
                                          GoogleFonts.oswald(
                                            fontSize: 18,
                                          ),
                                        ),
                                        backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.white),
                                        foregroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                ColorConst.containerColor),
                                      ),
                                      labelWidget: Text(
                                        value,
                                        style: TextStyle(
                                          color: ColorConst.backgroundColor,
                                        ),
                                      ));
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Hair Length",
                        style: TextStyle(color: Colors.white)),
                  ),
                  BubbleWidget(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        SizedBox(
                          width: (MediaQuery.of(context).size.width / 2) - 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Choose the length of your hair",
                                  style: GoogleFonts.oswald(
                                    fontSize: 18,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: (MediaQuery.of(context).size.width / 2) - 8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              DropdownMenu<String>(
                                textStyle: GoogleFonts.oswald(
                                    fontSize: 18,
                                    color: ColorConst.backgroundColor),
                                width: (MediaQuery.of(context).size.width / 2) -
                                    16,
                                initialSelection: hairLengthTopList.first,
                                inputDecorationTheme: InputDecorationTheme(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: ColorConst.containerColor),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                menuStyle: MenuStyle(
                                  backgroundColor:
                                  MaterialStatePropertyAll<Color>(
                                      Colors.white),
                                  shape: MaterialStatePropertyAll<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                                onSelected: (String? value) {
                                  // This is called when the user selects an item.
                                  setState(() {
                                    dropdownValue = value!;
                                  });
                                },
                                dropdownMenuEntries: hairLengthTopList
                                    .map<DropdownMenuEntry<String>>(
                                        (String value) {
                                      return DropdownMenuEntry<String>(
                                          value: value,
                                          label: value,
                                          style: ButtonStyle(
                                            textStyle:
                                            MaterialStatePropertyAll<TextStyle>(
                                              GoogleFonts.oswald(
                                                fontSize: 18,
                                              ),
                                            ),
                                            backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.white),
                                            foregroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                ColorConst.containerColor),
                                          ),
                                          labelWidget: Text(
                                            value,
                                            style: TextStyle(
                                              color: ColorConst.backgroundColor,
                                            ),
                                          ));
                                    }).toList(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Hair Texture",
                        style: TextStyle(color: Colors.white)),
                  ),
                  BubbleWidget(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        SizedBox(
                          width: (MediaQuery.of(context).size.width / 2) - 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "What is your hair texture?",
                                  style: GoogleFonts.oswald(
                                    fontSize: 18,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: (MediaQuery.of(context).size.width / 2) - 8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              DropdownMenu<String>(
                                textStyle: GoogleFonts.oswald(
                                    fontSize: 18,
                                    color: ColorConst.backgroundColor),
                                width: (MediaQuery.of(context).size.width / 2) -
                                    16,
                                initialSelection: hairTextureList.first,
                                inputDecorationTheme: InputDecorationTheme(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: ColorConst.containerColor),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                menuStyle: MenuStyle(
                                  backgroundColor:
                                  MaterialStatePropertyAll<Color>(
                                      Colors.white),
                                  shape: MaterialStatePropertyAll<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                                onSelected: (String? value) {
                                  // This is called when the user selects an item.
                                  setState(() {
                                    dropdownValue = value!;
                                  });
                                },
                                dropdownMenuEntries: hairTextureList
                                    .map<DropdownMenuEntry<String>>(
                                        (String value) {
                                      return DropdownMenuEntry<String>(
                                          value: value,
                                          label: value,
                                          style: ButtonStyle(
                                            textStyle:
                                            MaterialStatePropertyAll<TextStyle>(
                                              GoogleFonts.oswald(
                                                fontSize: 18,
                                              ),
                                            ),
                                            backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.white),
                                            foregroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                ColorConst.containerColor),
                                          ),
                                          labelWidget: Text(
                                            value,
                                            style: TextStyle(
                                              color: ColorConst.backgroundColor,
                                            ),
                                          ));
                                    }).toList(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: (){
                        //do something
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConst.containerColor,
                      ),
                      child: Text(
                        "Submit",
                        style: GoogleFonts.oswald(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
