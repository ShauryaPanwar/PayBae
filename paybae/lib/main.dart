import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:paybae/bills.dart';
import 'package:paybae/dashboard.dart';
import 'package:paybae/profile.dart';
import 'package:paybae/signup.dart';
import 'dashboard.dart';
import 'login-page.dart';
import 'profile.dart';
import 'bills.dart';
import 'expanses.dart';
import 'help.dart';

void main()async{
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(PayBae());
}

class PayBae extends StatefulWidget {
  PayBae({Key? key}) : super(key: key);

  String x = "";

  void signup(String email, String pass){
    try{
      x = "Signup Success";
    }
    catch(e){
      print(e);
    }
  }

  

  @override
  State<PayBae> createState() => _PayBaeState();
}

class _PayBaeState extends State<PayBae> {
  firebase_auth.FirebaseAuth firebaseAuth= firebase_auth.FirebaseAuth.instance; 
  String x = "";

    void signup(String email, String pass)async{
    try{
      await firebaseAuth.createUserWithEmailAndPassword(email: email, password: pass);
      x = "Signup Success";
    }
    catch(e){
      print(e);
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
    
  }
}


