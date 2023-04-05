import 'package:flutter/material.dart';
import 'package:untitled/tabung.dart';
import 'login_page.dart';
import 'trapesium.dart';
import 'tabung.dart';


class SubMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bangun Datar'),
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
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: ListTile(
                title: Text('Tabung'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tabung()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Trapesium'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Trapesium()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
