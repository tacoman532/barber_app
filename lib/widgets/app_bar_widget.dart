import 'package:barber_app/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  const AppBarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: ColorConst.backgroundColor,
      title: Text(
        title,
        style: GoogleFonts.oswald(
          textStyle: TextStyle(
            color: ColorConst.primaryColor,
            fontSize: 30,
          ),
        ),
      ),
      iconTheme: IconThemeData(color: ColorConst.primaryColor),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
