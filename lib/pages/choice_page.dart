import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 
class ChoicePage extends StatefulWidget {
  @override
  _ChoicePageState createState() => _ChoicePageState();
}

//preference selection page

class _ChoicePageState extends State<ChoicePage> {
  bool _selec = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 60,
                color: Color.fromRGBO(255, 255, 255, 0.7),
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
                      width: 80,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(0)
                      ),
                      height: 30,
                      child: Center(child: Text('NEXT', style: GoogleFonts.montserrat(color: Colors.grey[400]),)),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Text('1. Tell us about your preference', style: GoogleFonts.montserrat(fontSize: 20),),
                    SizedBox(height: 10,),
                    Container(
                      height: 250,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {
                                if(_selec == false){
                                  _selec = true;
                                }else{
                                  _selec = false;
                                }
                              });
                            },
                            child: _selec 
                            ? Container(
                              color: Colors.blue,
                              padding: EdgeInsets.all(2),
                              width: 300,
                              margin: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(
                                    image: AssetImage('assets/slider.png'),
                                    width: 300,
                                    height: 180,
                                    fit: BoxFit.cover,
                                  ),
                                  Text('Watersport', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 20),),
                                  SizedBox(height: 0,),
                                ],
                              )
                            ) 
                            : Container(
                              padding: EdgeInsets.all(2),
                              width: 300,
                              margin: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(
                                    image: AssetImage('assets/slider.png'),
                                    width: 300,
                                    height: 180,
                                    fit: BoxFit.cover,
                                  ),
                                  Text('Watersport', style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 20),),
                                  SizedBox(height: 0,),
                                ],
                              )
                            ) ,
                          ),
                          Container(
                            padding: EdgeInsets.all(2),
                            width: 300,
                            margin: EdgeInsets.all(5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(
                                  image: AssetImage('assets/slider.png'),
                                  width: 300,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                                Text('Wintersport', style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 20),),
                                SizedBox(height: 0,),
                              ],
                            )
                          ),
                          Container(
                            padding: EdgeInsets.all(2),
                            width: 300,
                            margin: EdgeInsets.all(5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(
                                  image: AssetImage('assets/slider.png'),
                                  width: 300,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                                Text('Mountainsport', style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 20),),
                                SizedBox(height: 0,),
                              ],
                            )
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: _selec 
                ? Column(
                  children: [
                    Text('2. Choose at least one category', style: GoogleFonts.montserrat(fontSize: 20),),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(70),
                                      child: Image(
                                        image: AssetImage('assets/sport1.png'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text('Windsurf', style: GoogleFonts.montserrat(),)
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(70),
                                      child: Image(
                                        image: AssetImage('assets/sport7.png'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text('Kitesurf', style: GoogleFonts.montserrat(),)
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(70),
                                      child: Image(
                                        image: AssetImage('assets/sport1.png'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text('S.U.P', style: GoogleFonts.montserrat(),)
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(70),
                                      child: Image(
                                        image: AssetImage('assets/sport3.png'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text('Surf', style: GoogleFonts.montserrat(),)
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(70),
                                      child: Image(
                                        image: AssetImage('assets/sport2.png'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text('Surfwear', style: GoogleFonts.montserrat(),)
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(70),
                                      child: Image(
                                        image: AssetImage('assets/sport6.png'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text('Kayak', style: GoogleFonts.montserrat(),)
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(70),
                                      child: Image(
                                        image: AssetImage('assets/sport4.png'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text('Wakesurf', style: GoogleFonts.montserrat(),)
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(70),
                                      child: Image(
                                        image: AssetImage('assets/sport5.png'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text('Others', style: GoogleFonts.montserrat(),)
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
                : Container()
              ),   
            ],
          ),
        ),
      ),
    );
  }
}