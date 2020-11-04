import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:logindemo/pages/loginscreen.dart';


//MainPage

class MainPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage('assets/slider.png'),
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      color: Color.fromRGBO(255, 255, 255, 0.3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Icon(Icons.language),
                                Text('French', style: GoogleFonts.montserrat(),),
                                Icon(Icons.keyboard_arrow_down)
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                // FlatButton(
                                //   onPressed: (){
                                //     //Navigator.push(context, MaterialPageRoute(builder: (context) => RegistroPage()),);
                                //     //Navigator.pushReplacementNamed(context, 'registro');
                                //   }, 
                                //   child: Text('Sign up', style: TextStyle(fontSize: 20, color: Colors.grey[800]),)
                                // ),
                                // VerticalDivider(
                                //   color: Colors.black,
                                // ),
                                FlatButton(
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()),);
                                    //Navigator.pushReplacementNamed(context, 'login');
                                  }, 
                                  child: Text('Login', style: GoogleFonts.montserrat(fontSize: 20, color: Colors.grey[800])),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 1, color: Colors.grey[300]))
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Text('A new way to', style: GoogleFonts.montserrat(fontSize: 20),),
                    SizedBox(height: 10,),
                    Text('Sell and buy sport equipment', style: GoogleFonts.montserrat(fontSize: 20),),
                    SizedBox(height: 10,),
                    Text('anywhere everywhere', style: GoogleFonts.montserrat(fontSize: 20),),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Text('HOW DOES IT WORK?', style: GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Image(
                              image: AssetImage('assets/icon1.png'),
                              height: 55,
                            ),
                            SizedBox(height: 5,),
                            Text('1. ADD A PRODUCT', style: GoogleFonts.montserrat(fontSize: 10),)
                          ],
                        ),
                        Column(
                          children: [
                            Image(
                              image: AssetImage('assets/icon2.png'),
                              height: 55,
                            ),
                            SizedBox(height: 5,),
                            Text('2. REQUEST/NEGOCIATE', style: GoogleFonts.montserrat(fontSize: 10),)
                          ],
                        ),
                        Column(
                          children: [
                            Image(
                              image: AssetImage('assets/icon3.png'),
                              height: 55,
                            ),
                            SizedBox(height: 5,),
                            Text('3. SEAL THE DEAL', style: GoogleFonts.montserrat(fontSize: 10),)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Image(
                              image: AssetImage('assets/icon4.png'),
                              height: 55,
                            ),
                            SizedBox(height: 5,),
                            Text('4. CONFIRM & RATE YORU SELLER', style: GoogleFonts.montserrat(fontSize: 10),)
                          ],
                        ),
                        Column(
                          children: [
                            Image(
                              image: AssetImage('assets/icon5.png'),
                              height: 55,
                            ),
                            SizedBox(height: 5,),
                            Text('5. RECEIVE YOUR MONEY', style: GoogleFonts.montserrat(fontSize: 10),)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: (){

                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(5)
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Center(child: Text('Continue with Facebook', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 18),)),
                ),
              ),
              InkWell(
                onTap: (){

                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Center(child: Text('Continue with Google', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 18),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}