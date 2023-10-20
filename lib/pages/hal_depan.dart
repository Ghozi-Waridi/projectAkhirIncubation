import 'package:flutter/material.dart';
import 'package:project/colors.dart';
import 'package:project/pages/login.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HalDepan extends StatelessWidget {
  const HalDepan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(backgroundColor),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/Logo_uin.png",
              width: 250,
              height: 250,
            ).animate().scaleXY(duration: 500.ms),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, bottom: 150),
                  child: Column(
                    children: [
                      Text(
                        "UIN MALIKI MALANG",
                        style: TextStyle(
                            color: Color(colorText),
                            fontSize: 30,
                            fontFamily: "Mochiy",
                            fontWeight: FontWeight.w800),
                      ).animate().fade(duration: 600.ms),
                      SizedBox(
                        width: 350,
                        child: Text(
                            "Unggul, Berdaya Saing, dan Bereputasi Internasional",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            )).animate().fade(duration: 600.ms),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35)),
                      backgroundColor: Color(colorText),
                      elevation: 5,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      "GET STARTED",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Mochiy",
                          fontWeight: FontWeight.w100,
                          color: Color(colorSecond)),
                    )).animate().slideY(duration: 500.ms, delay: 200.ms),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
