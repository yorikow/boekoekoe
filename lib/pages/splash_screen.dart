import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:myperpustakaan/components/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myperpustakaan/pages/nav_bar.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 300,
                    margin: EdgeInsets.only(
                      bottom: 10,
                      top: 80,
                      left: 10,
                      right: 10,
                    ),
                    child: Lottie.asset("assets/logo.json"),
                  ),
                  Text(
                    "MyPerpustakaan",
                    style: GoogleFonts.robotoSlab(fontSize: 30),
                  ),
                ],
              ),
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                fixedSize: Size.fromWidth(300),
                foregroundColor: Clr.green,
                backgroundColor: Clr.green,
              ),
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => NavBar()));
              },
              label: Text('Get Started', style: TextStyle(color: Clr.ireng)),
            ),
          ],
        ),
      ),
    );
  }
}
