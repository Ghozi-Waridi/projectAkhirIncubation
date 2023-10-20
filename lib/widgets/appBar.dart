// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:project/colors.dart';

class DesainAtas extends StatelessWidget implements PreferredSizeWidget {
  final String judulPages;
  DesainAtas({Key? key, required this.judulPages});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      toolbarHeight: 200,
      title: Row(
        children: [
          Container(
            padding: EdgeInsets.all(4),
            margin: EdgeInsets.only(left: 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(colorText)),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Color(colorSecond),
                size: 30,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Text(
              judulPages,
              style: TextStyle(
                  color: Color(colorText),
                  fontWeight: FontWeight.w900,
                  fontFamily: "Poppins",
                  letterSpacing: 2,
                  fontSize: 28),
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.0);
}
