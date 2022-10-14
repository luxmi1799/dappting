import 'package:dapp/login.dart';
import 'package:dapp/provider/country_provider.dart';
import 'package:dapp/provider/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<country_provider>(create: (context)=>country_provider()),
        ChangeNotifierProvider<apperance_provider>(create: (context)=>apperance_provider()),
        ChangeNotifierProvider<ethencity_provider>(create: (context)=>ethencity_provider()),
        ChangeNotifierProvider<childrenhave_provider>(create: (context)=>childrenhave_provider()),
        ChangeNotifierProvider<children_want_provider>(create: (context)=>children_want_provider()),
        ChangeNotifierProvider<body_type_provider>(create: (context)=>body_type_provider()),
        ChangeNotifierProvider<drink_provider>(create: (context)=>drink_provider()),
        ChangeNotifierProvider<education_provider>(create: (context)=>education_provider()),
        ChangeNotifierProvider<english_provider>(create: (context)=>english_provider()),
        ChangeNotifierProvider<eye_color_provider>(create: (context)=>eye_color_provider()),
        ChangeNotifierProvider<hair_color_provider>(create: (context)=>hair_color_provider()),
        ChangeNotifierProvider<height_provider>(create: (context)=>height_provider()),
        ChangeNotifierProvider<occupation_provider>(create: (context)=>occupation_provider()),
        ChangeNotifierProvider<maritial_provider>(create: (context)=>maritial_provider()),
        ChangeNotifierProvider<religion_provider>(create: (context)=>religion_provider()),
        ChangeNotifierProvider<smoke_provider>(create: (context)=>smoke_provider()),
        ChangeNotifierProvider<starsign_provider>(create: (context)=>starsign_provider()),
        ChangeNotifierProvider<weight_provider>(create: (context)=>weight_provider()),
      ],
      child: MaterialApp(
        title: 'Splash Screen',
        home: Splash2(),
        theme: ThemeData(
          primarySwatch: Colors.red,
      ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
class Splash2 extends StatelessWidget {
  double _opacity = 0.9;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(children: [
                  Container(
                    width: double.maxFinite,
                    height: MediaQuery.of(context).size.height,
                    color: Color(0xffCC0000),
                  ),
                  Opacity(
                      opacity: _opacity,
                      child: Image.asset(
                          'assets/hearts_1.png',
                          width: double.maxFinite,
                          height: MediaQuery.of(context).size.height,
                          fit: BoxFit.cover)),
                ]),
              ],
            )
        ),
        Scaffold(
          //  backgroundColor: Color(0xffCC0000),
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50.0),
                    child: Center(
                      child: Image.asset("assets/logo.png",
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => login()));
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            width: 70,
                              height: 70,
                              child: Image.asset("assets/homecircle.png")),
                          // Front image
                          Image.asset("assets/rectangle.png"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
        ),
      ],
    );
  }
}

