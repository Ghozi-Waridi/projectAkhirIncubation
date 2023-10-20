import 'package:flutter/material.dart';
import 'package:project/colors.dart';
import 'package:project/pages/hal_depan.dart';
import 'package:project/data/data_mahasiswa.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(backgroundColor),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 100),
              width: 500,
              height: 900,
              margin: EdgeInsets.only(top: 100),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Color(colorSecond)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(namaMhs[DataMahasiswa.IndexMahasiswa]["nama"],
                          style: TextStyle(
                              color: Color(colorText),
                              fontSize: 35,
                              fontFamily: "Mochiy",
                              letterSpacing: 2,
                              fontWeight: FontWeight.w600)),
                      Text(namaMhs[DataMahasiswa.IndexMahasiswa]["nim"],
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 35,
                          )),
                    ],
                  ),
                  Container(
                    width: 450,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Program Studi",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Color(colorText),
                                    )),
                                Text(
                                    namaMhs[DataMahasiswa.IndexMahasiswa]
                                        ["prodi"],
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 20)),
                              ]),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Email",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                    color: Color(colorText),
                                  )),
                              Text(
                                  namaMhs[DataMahasiswa.IndexMahasiswa]
                                      ["email"],
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Tanggal Lahir",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                    color: Color(colorText),
                                  )),
                              Text(namaMhs[DataMahasiswa.IndexMahasiswa]["ttl"],
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Alamat",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                    color: Color(colorText),
                                  )),
                              Text(
                                  namaMhs[DataMahasiswa.IndexMahasiswa]
                                      ["alamat"],
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      DataMahasiswa.IndexMahasiswa = -1;
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => HalDepan())));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 150,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(colorText)),
                      child: Text(
                        "LOGOUT",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: 150,
              top: 10,
              child: CircleAvatar(
                backgroundImage:
                    AssetImage(namaMhs[DataMahasiswa.IndexMahasiswa]["foto"]),
                radius: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
