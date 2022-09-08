import 'package:flutter/material.dart';
import 'package:paybae/login-page.dart';

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
            child: Text('Drawer Header'),
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
            title: const Text("Payment"),
            onTap: () {
              Navigator.push(context, 
                  MaterialPageRoute(builder: 
                  (context) => const LoginPage()));
            },
          )
        ],
      )),
    );
  }
}
