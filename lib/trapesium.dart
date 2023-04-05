import 'package:flutter/material.dart';
import 'login_page.dart';
import 'dart:math';


class Trapesium extends StatefulWidget {
  @override
  _HitungTrapesiumState createState() => _HitungTrapesiumState();
}


class _HitungTrapesiumState extends State<Trapesium> {
  double sisiAtas = 0, sisiBawah = 0, tinggi = 0, luas = 0, keliling = 0;

  final TextEditingController sisiAtasController =
  TextEditingController(text: "");
  final TextEditingController sisiBawahController =
  TextEditingController(text: "");
  final TextEditingController tinggiController =
  TextEditingController(text: "");

  void hitung() {
    setState(() {
      sisiAtas = double.parse(sisiAtasController.text);
      sisiBawah = double.parse(sisiBawahController.text);
      tinggi = double.parse(tinggiController.text);
      luas = ((sisiAtas + sisiBawah) * tinggi) / 2;
      keliling = sisiAtas + sisiBawah + 2 * sqrt(pow(tinggi, 2) + pow(((sisiBawah - sisiAtas) / 2), 2));
    });
  }

  void hapus() {
    setState(() {
      sisiAtasController.text = "";
      sisiBawahController.text = "";
      tinggiController.text = "";
      luas = 0;
      keliling = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trapesium"),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                    (route) => false,
              );
            },
            icon: Icon(Icons.logout),
            tooltip: 'Logout',
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              width: 250,
              child: TextFormField(
                controller: sisiAtasController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white24,
                  labelText: 'Sisi atas',
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: 'Masukkan sisi atas',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Color(0xffffF5C518),
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              alignment: Alignment.center,
              width: 250,
              child: TextFormField(
                controller: sisiBawahController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white24,
                  labelText: 'Sisi bawah',
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: 'Masukkan sisi bawah',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Color(0xffffF5C518),
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              alignment: Alignment.center,
              width: 250,
              child: TextFormField(
                controller: tinggiController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white24,
                  labelText: 'Tinggi',
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: 'Masukkan tinggi',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Color(0xffffF5C518),
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text("Keliling : $keliling",
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            const SizedBox(height: 10),
            Text("Luas : $luas",
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: hitung,
                  child: const Text("Hitung"),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 40.0),
                    primary: Colors.red,
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: hapus,
                  child: const Text("Hapus"),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 40.0),
                    primary: Colors.red,
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
              ],
            ),
        ),
      );
  }
}