import 'package:dapp/chatmessage.dart';
import 'package:dapp/demo.dart';
import 'package:dapp/female_user/chat_tab_female.dart';
import 'package:dapp/female_user/female_profile.dart';
import 'package:dapp/hotpage.dart';
import 'package:dapp/myprofile.dart';
import 'package:dapp/newhot.dart';
import 'package:dapp/profile_dashboard.dart';
import 'package:dapp/show_profile.dart';
import 'package:dapp/swipecard.dart';
import 'package:dapp/vipaccess.dart';
import 'package:dapp/wallet.dart';
import 'package:flutter/material.dart';

import 'female_dashboard.dart';

class female_home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _home();
  }
}

class _home extends State<female_home> {
  int currentTabIndex = 0;
  List<Widget> tabs = [
    female_dash(),
    chat_tab(),
    chatmessage(),
    female_profile(),
  ];
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
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
            icon: Icon(Icons.dashboard_customize,size: 30,),
            // icon: ImageIcon(
            //   AssetImage("assets/home.png"),
            //   // color: Colors.white,
            //   size: 30,
            // ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded,size: 30,),
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