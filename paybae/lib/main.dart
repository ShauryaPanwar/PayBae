import 'package:flutter/material.dart';
import 'package:paybae/dashboard.dart';
import 'dashboard.dart';
import 'login-page.dart';

void main() {
  runApp(PayBae());
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
    },
    );
  }
}
