import 'package:flutter/material.dart';
import 'package:paybae/bills.dart';
import 'package:paybae/dashboard.dart';
import 'package:paybae/profile.dart';
import 'dashboard.dart';
import 'login-page.dart';
import 'profile.dart';
import 'bills.dart';
import 'expanses.dart';
import 'help.dart';

void main() {
  runApp(const PayBae());
}

class PayBae extends StatelessWidget {
  const PayBae({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
      ),

    initialRoute: "/",
    routes: {
      "/":(context) => const LoginPage(),
      "/dashboard" :(context) => const Dashboard(),
      "/profile" :(context) => const Profile(),
      "/bills" :(context) => const Bills(),
      "/expanses" :(context) => const Expanses(),
      "/help" :(context) => const Help(),
    },
    );
  }
}
