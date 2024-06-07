import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileLogin extends StatefulWidget {
  const ProfileLogin({super.key});

  @override
  State<ProfileLogin> createState() => _ProfileLoginState();
}

class _ProfileLoginState extends State<ProfileLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                      width: 150,
                      child: ElevatedButton(onPressed: (){
                        Navigator.pushNamed(context, "/log");
                      }, child: Text(
                        "Login",
                      ),
                      ),
                    ),
                  ),
                    Text(
                      "or",
                      style: GoogleFonts.oswald(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                      width: 150,
                      child: ElevatedButton(onPressed: (){
                        Navigator.pushNamed(context, "/sign");
                      }, child: Text(
                        "Sign Up",
                      ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
        )
    );
  }
}
