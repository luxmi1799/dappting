import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dapp/chatmessage.dart';
import 'package:dapp/demo.dart';
import 'package:dapp/hotpage.dart';
import 'package:dapp/myprofile.dart';
import 'package:dapp/newhot.dart';
import 'package:dapp/profile_dashboard.dart';
import 'package:dapp/screens/home_page.dart';
import 'package:dapp/show_profile.dart';
import 'package:dapp/swipecard.dart';
import 'package:dapp/vipaccess.dart';
import 'package:dapp/wallet.dart';
import 'package:flutter/material.dart';

import 'card.dart';
import 'home_matchpage.dart';

class home_home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
      return _home();
  }
}

class _home extends State<home_home> {
  int currentTabIndex = 0;
  var getuser;
  List<Widget> tabs = [
   // Example(),
    home_user(),
   // home_match(),
    hotpage(),
    chatmessage(),
    profile_dashboard()
    ,
    myprofile(),
  ];
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: tabs[currentTabIndex],
       bottomNavigationBar: BottomNavigationBar(
         onTap: onTapped,
         showSelectedLabels: false,
         showUnselectedLabels: false,
         landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
         currentIndex: currentTabIndex,
         type: BottomNavigationBarType.fixed,
         selectedItemColor: Color(0xffCC0000),
         unselectedItemColor: Colors.white,// Fixed
         backgroundColor: Color(0xff07D3DF),
         items: const [
           BottomNavigationBarItem(
             icon: ImageIcon(
               AssetImage("assets/home.png"),
               // color: Colors.white,
               size: 30,
             ),
             label: "",
           ),
           BottomNavigationBarItem(
             icon: ImageIcon(
               AssetImage("assets/hot.png"),
               // color: Colors.white,
               size: 30,
             ),
             label: "",
           ),
           BottomNavigationBarItem(
             icon: ImageIcon(
               AssetImage("assets/msg.png"),
               // color: Colors.white,
               size: 30,
             ),
             label: "",
           ),
           BottomNavigationBarItem(
             icon: ImageIcon(
               AssetImage("assets/breakheart.png"),
               // color: Colors.white,
               size: 30,
             ),
             label: "",
           ),
           BottomNavigationBarItem(
             icon: ImageIcon(
               AssetImage("assets/profile.png"),
               // color: Colors.white,
               size: 30,
             ),
             label: "",
           )
         ],
       ),
     );
  }
}