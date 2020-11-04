import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';
import 'package:flutter/material.dart';

//LoginScreen

class LoginScreen extends StatelessWidget {
  final _phoneController = TextEditingController();
  final _codeController = TextEditingController();

  Future<bool> loginUser(String phone, BuildContext context) async{
    FirebaseAuth _auth = FirebaseAuth.instance;

    _auth.verifyPhoneNumber(
        phoneNumber: phone,
        timeout: Duration(seconds: 60),
        verificationCompleted: (AuthCredential credential) async{
          Navigator.of(context).pop();

          AuthResult result = await _auth.signInWithCredential(credential);

          FirebaseUser user = result.user;

          if(user != null){
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => HomeScreen(user: user,)
            ));
          }else{
            print("Error");
          }

          //This callback would gets called when verification is done auto
        },
        verificationFailed: (AuthException exception){
          print('hola');
        },
        codeSent: (String verificationId, [int forceResendingToken]){
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                title: Text("Give the code?",
                style: GoogleFonts.montserrat(),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextField(
                      controller: _codeController,
                    ),
                  ],
                ),
                actions: <Widget>[
                  FlatButton(
                    child: Text("Confirm",
                      style: GoogleFonts.montserrat(),
                    ),
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () async{
                      final code = _codeController.text.trim();
                      final AuthCredential credential = PhoneAuthProvider.getCredential(verificationId: verificationId, smsCode: code);
                      try {
                        await FirebaseAuth.instance.signInWithCredential(credential);
                        Navigator.pushReplacementNamed(context, 'home');

                        } catch (e) {
                          Navigator.pop(context);
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              content: Text(e.code),
                            )
                          );
                        }

                      //AuthResult result = await _auth.signInWithCredential(credential);

                      //FirebaseUser user = result.user;

                      // if(user != null){
                      //   Navigator.push(context, MaterialPageRoute(
                      //       builder: (context) => HomeScreen(user: user,)
                      //   ));
                      // }else{
                      //   print("Error");
                      // }
                    },
                  )
                ],
              );
            }
          );
        },
        codeAutoRetrievalTimeout: null
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color:Colors.grey,
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text('Login', style: GoogleFonts.montserrat(color: Colors.grey[600]),),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Form(
            child: Column(
              children: <Widget>[
                SizedBox(height: 16,),
                TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: "Mobile Number",
                    hintStyle: GoogleFonts.montserrat(),
                  ),
                  controller: _phoneController,
                ),
                SizedBox(height: 16,),
                Container(
                  width: double.infinity,
                  child: FlatButton(
                    child: Text("LOGIN",
                      style: GoogleFonts.montserrat(),
                    ),
                    textColor: Colors.white,
                    padding: EdgeInsets.all(16),
                    onPressed: () {
                      final phone = _phoneController.text.trim();

                      loginUser(phone, context);

                    },
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}