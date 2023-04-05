import 'package:flutter/material.dart';

import 'login_page.dart';
import 'menu_detail.dart';

class MenuProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
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
                    backgroundImage: AssetImage("../assets/fotooo.jpg"),
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
                  height: 20,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => MenuDetail()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    primary: Colors.red,
                  ),
                  icon: Icon(Icons.account_box),  //icon data for elevated button
                  label: Text("Detail"), //label text
                )
            ]),
          ),
        ),
      ),
    );
  }
}

