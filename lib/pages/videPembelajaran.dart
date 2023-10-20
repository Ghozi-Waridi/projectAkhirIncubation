import 'package:flutter/material.dart';
import 'package:project/colors.dart';
import 'package:project/widgets/appBar.dart';

class VideoPembelajaran extends StatelessWidget {
  const VideoPembelajaran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(backgroundColor),
      appBar: DesainAtas(judulPages: "Video Pembelajaran"),
      body: Center(
        child: Text(
          'COMMING SOON',
          style: TextStyle(
              fontFamily: "Mochiy",
              color: Color(colorText),
              fontSize: 50,
              letterSpacing: 5,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
