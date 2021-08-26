import 'package:first_order/Colors/colors.dart';
import 'package:first_order/event%20states/bad_state.dart';
import 'package:first_order/event%20states/ok_state.dart';
import 'package:first_order/ui/home.dart';
import 'package:first_order/ui/profile.dart';
import '../event states/good_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Navbar extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<Navbar> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: AppColors.kBlue,
        //showSelectedLabels: true,
        //showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: new Image.asset("assets/profile.png",height:32,width: 32,),
              activeIcon: new Image.asset("assets/profilefilled.png",height: 32,width: 32,),
              title: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text('Profile', style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.normal,
                ))),
              )),
          BottomNavigationBarItem(icon: new Image.asset("assets/homes.png",height: 32,width: 32,),
              activeIcon: new Image.asset("assets/homefilled.png",height: 32,width: 32,),
              title: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text('Home', style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.normal,
                ))),
              )),
          BottomNavigationBarItem(
              icon: new Image.asset("assets/events.png",height: 32,width: 32,),
              activeIcon: new Image.asset("assets/message.png",height: 32,width: 32,),
              title: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text('Events', style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.normal,
                ))),
              )),

        ],
        onTap: _onTappedBar,
        selectedItemColor: AppColors.kBlue,
        currentIndex: _selectedIndex,
      ),
      body: PageView(
        controller: _pageController,
          physics:NeverScrollableScrollPhysics(),
        children: <Widget>[
          GoodState(),
          OkState(),
          BadState(),
        ],
      ),
    );
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}