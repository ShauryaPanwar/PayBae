
import 'package:flutter/material.dart';
import 'dashboard.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset(
            "assets/images/logo.png",
            height: 320.0,
            fit: BoxFit.cover),
            const SizedBox(
              height: 2.0,
            ),
        const Text(
          "Welcome To PayBae",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 32),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: 
                  (context) => const Dashboard()));
                },
              style: TextButton.styleFrom(),
               child: const Text("Log in"))

          ]),
          
          )
          




        ]),
    );
  }
}
