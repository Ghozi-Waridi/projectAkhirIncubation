import 'package:flutter/material.dart';
import 'package:project/colors.dart';
import 'package:project/widgets/soalTugas.dart';

class SoalSoal extends StatelessWidget {
  const SoalSoal({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(backgroundColor),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(colorText),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Color(backgroundColor),
                ),
                child: TabBar(
                  labelColor: Color(colorText),
                  indicatorColor: Color(colorText),
                  indicatorWeight: 5,
                  indicatorPadding: EdgeInsets.all(10),
                  tabs: [
                    Tab(
                      text: "Latihan",
                    ),
                    Tab(
                      text: "Ujian",
                    ),
                  ],
                ),
              )),
        ),
        body: TabBarView(
          children: [
            Latihan(),
            Center(
              child: Text(
                "COMING SOON",
                style: TextStyle(color: Color(colorText), fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
