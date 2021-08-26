import 'package:first_order/Colors/colors.dart';
import 'package:first_order/bootom%20navbar/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Login_Page extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login_Page> {
  bool _buttonpressed = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              //container for logo
              SizedBox(height:MediaQuery.of(context).size.height*0.155,),
          Container(
            height:MediaQuery.of(context).size.height*0.505,
           width:MediaQuery.of(context).size.width*1,
          //   height:302 ,
          // width: 375,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              image: DecorationImage(
                  image: new AssetImage(
                      "assets/logo.png"
                  ),
                  fit: BoxFit.fill
              )),

              child:

              Padding(
                padding: const EdgeInsets.fromLTRB(0,150,0,0),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [


                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text('U N P L U G G E D',
                          style: GoogleFonts.staatliches(
                              textStyle: TextStyle(
                                  fontSize: 40,
                                  //fontWeight: FontWeight.normal,
                                  color: AppColors.kRed
                              ))),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text('PERTH',
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: AppColors.kOrange
                            )),),
                    ),

                  ],
                ),
              ),

          ),
              SizedBox(height:MediaQuery.of(context).size.height*0.11,),
              Container(
                height:MediaQuery.of(context).size.height*0.1120,
                width:MediaQuery.of(context).size.width*0.8690,
                // height: 66,
                // width: 335,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30)),
                // ignore: deprecated_member_use
                child: RaisedButton(
                    color: _buttonpressed? AppColors.kPink:AppColors.kRed,
                    shape: StadiumBorder(),
                    onPressed: () async {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Navbar()),
                      );
                      setState(() {
                        _buttonpressed=  !_buttonpressed;
                      });

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text('Sign in with Email',
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white
                                )),),
                        ),
                      ],
                    )),
              ),

              SizedBox(height:MediaQuery.of(context).size.height*0.023,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
             children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text("Don't have an account?",
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: AppColors.kBlack
                  )),),
              ),
               InkWell(
                 onTap:()=> {

                 },
                 child: FittedBox(
                   fit: BoxFit.scaleDown,
                   child: Text(' Sign up',
                     style: GoogleFonts.openSans(
                         textStyle: TextStyle(
                             fontSize: 16.0,
                             fontWeight: FontWeight.w500,
                             color: AppColors.kRed,
                           decoration: TextDecoration.underline,

                         )),),
                 ),
               ),
          ],
          ),

              SizedBox(height:MediaQuery.of(context).size.height*0.155,),

            ],

          ),
        ),


        ),
    );

  }


}
