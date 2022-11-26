import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paybae/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
    firebase_auth.FirebaseAuth firebaseAuth= firebase_auth.FirebaseAuth.instance; 
    TextEditingController _emailcontroller = TextEditingController();
    TextEditingController _pwdcontroller = TextEditingController();
    bool circular=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Sign Up", style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold
            )
            ,),
            SizedBox(
              height: 20,
            ),

            // buttonItem('assets/images/google.svg', "Continue With Google",25),
            SizedBox(height: 15,),
            // buttonItem('assets/images/phone.svg', "Continue With Phone",30),
            SizedBox(
              height: 15,

            ),
            // Text("Or",style: TextStyle(color: Colors.white,fontSize: 18),),

            SizedBox(
              height: 15,

            ),
            textItem('E-mail...',_emailcontroller,false),

            SizedBox(
              height: 15,

            ),
            textItem('Password..',_pwdcontroller,true),

            SizedBox(
              height: 30,

            ),

            colorButton(),
            
            
            ],
          ),
        )
         ),

    );
    
  }




  Widget colorButton(){
    return InkWell(
      onTap: ()async {
        setState(() {
          circular=true;
        });
       try{
        firebase_auth.UserCredential userCredential= await firebaseAuth.createUserWithEmailAndPassword(
          email: _emailcontroller.text, password: _pwdcontroller.text); 
          print(userCredential.user!.email);
          
          setState(() {
          circular=false;
        });

        Navigator.pushAndRemoveUntil(context, 
        MaterialPageRoute(builder: (builder)=>Dashboard()), (route) => false);
       }
       catch(e){
        final snackbar= SnackBar(content: Text(e.toString()));
        ScaffoldMessenger.of(context).showSnackBar(snackbar);

        setState(() {
          circular=false;
        });
        

       }
      },
      child: Container(
        width: MediaQuery.of(context).size.width-90,
                height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(colors: [
          Color(0xfffd746c),
          Color(0xffffd9068),
          Color(0xfffd746c),
          ]
    
    
          )
        ),
        child: Center(child: circular?CircularProgressIndicator() :Text("Sign Up", style: TextStyle(color: Colors.white,fontSize: 20),)),
    
      ),
    );
  }






  // Widget buttonItem(String imagepath, String buttonName, double size){
  //   return Container(
  //             width: MediaQuery.of(context).size.width-60,
  //             height: 60,
  //             child: Card( 
  //               color: Colors.black,
  //               elevation: 8,
  //               shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(15),
  //               side: BorderSide(
  //                 width: 1,
  //                 color: Colors.grey
  //               )
  //               ),
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   SvgPicture.asset(imagepath,height: size,width: size,
  //                   ),
  //                   SizedBox(width: 15,),
  //                   Text( buttonName, style: TextStyle(color: Colors.white,
  //                   fontSize: 17),)
  //                 ],
  //               ),
  //             ),
  //           );
  // }

  Widget textItem(String labeltext, TextEditingController controller,bool obscureText){
    return Container(
      width: MediaQuery.of(context).size.width-70,
      height: 55,
      child: TextFormField(
        style:TextStyle(fontSize: 17, color: Colors.white,
          ), 
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labeltext,
          labelStyle: TextStyle(fontSize: 17, color: Colors.white,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.amber
                )
          ),


          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.grey
                )
          )
        ),
      ),
    );
  }
}