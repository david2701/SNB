import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logindemo/pages/choice_page.dart';

class HomeScreen extends StatelessWidget {

  final FirebaseUser user;

  HomeScreen({this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('User data',
          style: GoogleFonts.montserrat(color: Colors.grey[600],),
        ),
      ),
      body: Form(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Name',
                  labelStyle: GoogleFonts.montserrat(),
                  alignLabelWithHint: true,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Last Name',
                  labelStyle: GoogleFonts.montserrat(),
                  alignLabelWithHint: true,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Email',
                  labelStyle: GoogleFonts.montserrat(),
                  alignLabelWithHint: true,
                ),
              ),
            ),
            Container(
              height: 40,
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Text('Preferences', style: GoogleFonts.montserrat(),),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChoicePage()));
                },
              )
            ),
          ],
        ),
      ),
      //  Center(
      //   child: Container(
      //     color: Colors.white54,
      //     padding: EdgeInsets.all(32),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: <Widget>[
      //         Text("You are Logged in succesfully", style: TextStyle(color: Colors.blue,fontFamily: 'Jost', fontSize: 32),),
      //         SizedBox(height: 16,),
      //         Text("${user.phoneNumber}", style: TextStyle(color: Colors.grey, ),),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}