import 'package:flutter/material.dart';
import 'dart:math';

import 'login_page.dart';

class Tabung extends StatefulWidget {
  @override
  _HitungTabungState createState() => _HitungTabungState();
}

class _HitungTabungState extends State<Tabung> {
  double jariJari = 0, tinggi = 0, luas = 0, keliling = 0;

  final TextEditingController jariJariController =
  TextEditingController(text: "");
  final TextEditingController tinggiController =
  TextEditingController(text: "");

  void hitung() {
    setState(() {
      jariJari = double.parse(jariJariController.text);
      tinggi = double.parse(tinggiController.text);
      luas = 2 * pi * jariJari * (jariJari + tinggi);
      keliling = 2 * pi * jariJari;
    });
  }

  void hapus() {
    setState(() {
      jariJariController.text = "";
      tinggiController.text = "";
      luas = 0;
      keliling = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tabung"),
        backgroundColor: Colors.red,
        centerTitle: true,
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
                controller: jariJariController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white24,
                  labelText: 'Jari-jari',
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: 'Masukkan jari-jari',
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
              child: TextField(
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
              ],
            )
          ],
        ),
      ),
    );
  }
}