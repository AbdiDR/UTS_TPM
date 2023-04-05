import 'package:flutter/material.dart';

import 'login_page.dart';

class MenuDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Profile'),
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                width: 3,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(140),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 10,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage("../assets/pic.jpg"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Abdi Dwi Ramdani",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("NIM : 123200143", style: TextStyle(fontSize: 25)),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Kelas : IF-D", style: TextStyle(fontSize: 25)),
                  SizedBox(
                    height: 10,
                  ),
                  Text("TTL : 14 Desember 2001", style: TextStyle(fontSize: 25)),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Harapan : Sukses Dunia Akhirat", style: TextStyle(fontSize: 25)),
                ]),
          ),
        ),
      ),
    );
  }
}

