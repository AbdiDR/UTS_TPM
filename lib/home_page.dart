import 'package:flutter/material.dart';
import 'package:untitled/bangun_datar.dart';
import 'package:untitled/kalender.dart';
import 'package:untitled/menu_profile.dart';

import 'login_page.dart';

class HomePage extends StatefulWidget {

  final String username;

  HomePage({Key? key, required this.username}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Selamat datang\n' + widget.username, style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text('Pilih menu:', style: TextStyle(fontSize: 18)),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => SubMenu()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 40.0),
                    primary: Colors.red,
                  ),
                  icon: Icon(Icons.add_rounded),  //icon data for elevated button
                  label: Text("Bangun Datar"), //label text
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => MenuKalender()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 40.0),
                    primary: Colors.red,
                  ),
                  icon: Icon(Icons.calendar_today),  //icon data for elevated button
                  label: Text("Kalender"), //label text
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => MenuProfile()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 40.0),
                    primary: Colors.red,
                  ),
                  icon: Icon(Icons.account_circle),  //icon data for elevated button
                  label: Text("Profile"), //label text
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
