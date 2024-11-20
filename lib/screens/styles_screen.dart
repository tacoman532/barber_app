import 'package:barber_app/constants/color_constant.dart';
import 'package:barber_app/screens/generated_image_screen.dart';
import 'package:barber_app/widgets/bubble_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const List<String> hairLineList = <String>['regular', 'receding', 'widows peak', 'rounded'];
const List<String> hairLengthTopList = <String>['very short (1 inch)', 'short (2 inch)', 'medium (3 inch)', 'long (5 inch)', 'very long (6 inch)'];
const List<String> hairLengthSideList = <String>['very short (1 inch)', 'short (2 inch)', 'medium (3 inch)', 'long (5 inch)', 'very long (6 inch)'];
const List<String> hairLengthBackList = <String>['very short (1 inch)', 'short (2 inch)', 'medium (3 inch)', 'long (5 inch)', 'very long (6 inch)'];
const List<String> hairTextureList = <String>['straight', 'wavy', 'curly', 'very curly'];

class StylesScreen extends StatefulWidget {
  const StylesScreen({super.key});

  @override
  State<StylesScreen> createState() => _StylesScreenState();
}

class _StylesScreenState extends State<StylesScreen> {
  String dropdownValue = hairLineList.first;
  String dropdownValue1 = hairLengthTopList.first;
  String dropdownValue2 = hairLengthSideList.first;
  String dropdownValue3 = hairLengthBackList.first;
  String dropdownValue4 = hairTextureList.first;
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
                   const SizedBox(
                    height: 20,
                  ),
                   const Padding(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                    borderSide:  const BorderSide(
                                        color: ColorConst.containerColor),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                menuStyle: MenuStyle(
                                  backgroundColor:
                                      const WidgetStatePropertyAll<Color>(
                                          Colors.white),
                                  shape: WidgetStatePropertyAll<
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
                                           const WidgetStatePropertyAll<Color>(
                                                Colors.white),
                                        foregroundColor:
                                           const WidgetStatePropertyAll<Color>(
                                                ColorConst.containerColor),
                                      ),
                                      labelWidget: Text(
                                        value,
                                        style: const TextStyle(
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
                  const SizedBox(
                    height: 8,
                  ),
                  const Padding(
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
                                  "What is your desired hair length on top?",
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
                                    borderSide: const BorderSide(
                                        color: ColorConst.containerColor),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                menuStyle: MenuStyle(
                                  backgroundColor:
                                const  WidgetStatePropertyAll<Color>(
                                      Colors.white),
                                  shape: WidgetStatePropertyAll<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                                onSelected: (String? value) {
                                  // This is called when the user selects an item.
                                  setState(() {
                                    dropdownValue1 = value!;
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
                                            WidgetStatePropertyAll<TextStyle>(
                                              GoogleFonts.oswald(
                                                fontSize: 18,
                                              ),
                                            ),
                                            backgroundColor:
                                          const  WidgetStatePropertyAll<Color>(
                                                Colors.white),
                                            foregroundColor:
                                          const  WidgetStatePropertyAll<Color>(
                                                ColorConst.containerColor),
                                          ),
                                          labelWidget: Text(
                                            value,
                                            style: const TextStyle(
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
                 const SizedBox(
                    height: 8,
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
                                  "What is your desired hair length on sides?",
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
                                initialSelection: hairLengthSideList.first,
                                inputDecorationTheme: InputDecorationTheme(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: ColorConst.containerColor),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                menuStyle: MenuStyle(
                                  backgroundColor:
                                 const  WidgetStatePropertyAll<Color>(
                                      Colors.white),
                                  shape: WidgetStatePropertyAll<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                                onSelected: (String? value) {
                                  // This is called when the user selects an item.
                                  setState(() {
                                    dropdownValue2 = value!;
                                  });
                                },
                                dropdownMenuEntries: hairLengthSideList
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
                                           const WidgetStatePropertyAll<Color>(
                                                Colors.white),
                                            foregroundColor:
                                          const WidgetStatePropertyAll<Color>(
                                                ColorConst.containerColor),
                                          ),
                                          labelWidget: Text(
                                            value,
                                            style: const TextStyle(
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
                  const SizedBox(
                    height: 8,
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
                                  "What is your desired hair length on back?",
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
                                initialSelection: hairLengthBackList.first,
                                inputDecorationTheme: InputDecorationTheme(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:  const BorderSide(
                                        color: ColorConst.containerColor),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                menuStyle: MenuStyle(
                                  backgroundColor:
                                  const WidgetStatePropertyAll<Color>(
                                      Colors.white),
                                  shape: WidgetStatePropertyAll<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                                onSelected: (String? value) {
                                  // This is called when the user selects an item.
                                  setState(() {
                                    dropdownValue3 = value!;
                                  });
                                },
                                dropdownMenuEntries: hairLengthBackList
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
                                            const WidgetStatePropertyAll<Color>(
                                                Colors.white),
                                            foregroundColor:
                                            const WidgetStatePropertyAll<Color>(
                                                ColorConst.containerColor),
                                          ),
                                          labelWidget: Text(
                                            value,
                                            style: const TextStyle(
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
                  const SizedBox(
                    height: 8,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                    borderSide: const BorderSide(
                                        color: ColorConst.containerColor),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                menuStyle: MenuStyle(
                                  backgroundColor:
                                  const WidgetStatePropertyAll<Color>(
                                      Colors.white),
                                  shape: WidgetStatePropertyAll<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                                onSelected: (String? value) {
                                  // This is called when the user selects an item.
                                  setState(() {
                                    dropdownValue4 = value!;
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
                                            WidgetStatePropertyAll<TextStyle>(
                                              GoogleFonts.oswald(
                                                fontSize: 18,
                                              ),
                                            ),
                                            backgroundColor:
                                          const WidgetStatePropertyAll<Color>(
                                                Colors.white),
                                            foregroundColor:
                                          const  WidgetStatePropertyAll<Color>(
                                                ColorConst.containerColor),
                                          ),
                                          labelWidget: Text(
                                            value,
                                            style: const TextStyle(
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
                  const SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ImageGenerationScreen(
                            hairLine: dropdownValue,
                            hairLengthTop: dropdownValue1,
                            hairLengthSide: dropdownValue2,
                            hairLengthBack: dropdownValue3,
                            hairTexture: dropdownValue4,
                        )));
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
