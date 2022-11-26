import 'package:flutter/material.dart';
import 'package:paybae/bills.dart';
import 'package:paybae/expanses.dart';
import 'package:paybae/help.dart';
import 'package:paybae/login-page.dart';
import 'package:paybae/profile.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard"), 
      backgroundColor: Colors.blue,),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('PayBae Header'),
          ),
          ListTile(
            title: const Text("Dashboard"),
            onTap: () {
              Navigator.push(context, 
                  MaterialPageRoute(builder: 
                  (context) => const Dashboard()));
            },
          ),
           ListTile(
            title: const Text("Profile"),
            onTap: () {
              Navigator.push(context, 
                  MaterialPageRoute(builder: 
                  (context) => const Profile()));
            },
          ),
          ListTile(
            title: const Text("Bills"),
            onTap: () {
              Navigator.push(context, 
                  MaterialPageRoute(builder: 
                  (context) => const Bills()));
            },
          ),
          ListTile(
            title: const Text("Expanses"),
            onTap: () {
              Navigator.push(context, 
                  MaterialPageRoute(builder: 
                  (context) => const Expanses()));
            },
          ),
          ListTile(
            title: const Text("Help"),
            onTap: () {
              Navigator.push(context, 
                  MaterialPageRoute(builder: 
                  (context) => const Help()));
            },
          ),
          ListTile(
            title: const Text("Log Out"),
            onTap: () {
              Navigator.push(context, 
                  MaterialPageRoute(builder: 
                  (context) => const Login()));
            },
          )

         

        ],
      )),
    );
  }
}
