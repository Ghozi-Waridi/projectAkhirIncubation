import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:project/colors.dart';
import 'package:project/data/data_judul_tugas.dart';

int waktu = 500;

class Latihan extends StatelessWidget {
  const Latihan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tugas.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(20),
          // color: Colors.red,
          child: Column(
            children: [
              Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(bottom: 20),
                      height: 70,
                      decoration: BoxDecoration(
                          color: Color(colorSecond),
                          borderRadius: BorderRadius.circular(20)),
                      // width: double.infinity,
                      // color: Colors.amber,
                      child: Text(tugas[index]["matkul"],
                          style: TextStyle(
                              color: Color(colorText),
                              fontSize: 25,
                              fontFamily: "Mochiy",
                              letterSpacing: 2.5,
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.start))
                  .animate()
                  .fade(duration: 800.ms),
              Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  width: double.infinity,
                  // color: Colors.amber,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: tugas[index]["tugas"].length,
                    itemBuilder: (BuildContext context, int i) {
                      return Container(
                        // margin: EdgeInsets.only(right: 100),
                        // color: Colors.amber,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(tugas[index]["tugas"][i],
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.start)
                                    .animate()
                                    .slideY(duration: (waktu += 300).ms)),
                            Text("5",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.start)
                                .animate()
                                .fade(duration: (waktu += 300).ms),
                          ],
                        ),
                      );
                    },
                  )),
              Divider(
                color: Color(colorSecond),
                thickness: 2,
              )
            ],
          ),
        );
      },
    );
  }
}
