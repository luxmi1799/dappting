import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home_match extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _home_match();
  }
}

class _home_match extends State<home_match> {
  double _opacity = 0.9;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

       Container(
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage('assets/milad.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
        Opacity(
                      opacity: _opacity,
                      child: Image.asset(
                          'assets/homeheart.png',
                          width: double.maxFinite,
                          height: MediaQuery.of(context).size.height*0.5,
                          fit: BoxFit.cover)),
        Scaffold(
          //  backgroundColor: Color(0xffCC0000),
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.transparent,
              title: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "Congratulations!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )
                    ),
                    TextSpan(
                      text: "\n       It's a Match",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              elevation: 0.0,
            ),

            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    //alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top:MediaQuery.of(context).size.height/2.2,left: 20,right: 20,bottom: 20),
                      //child: Opacity(
                        child: Container(
                          //alignment: Alignment.bottomCenter,
                          width: MediaQuery.of(context).size.width,
                          height: 300,
                          color:Color(0xffCC0000).withOpacity(0.3),
                            child: Container(
                               width: MediaQuery.of(context).size.width,
                               height: 300,
                               decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff07D3DF),width: 2)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 10,bottom: 10),
                                    child: Center(
                                      child: Text("Tiffany also likes you!",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                     Container(
                                      width: 100,
                                      height: 130,
                                      decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff07D3DF),width: 2),
                                      borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset("assets/milad.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                     ),

                                      SizedBox(
                                        height: 70,
                                        width: 70,
                                        child: Image.asset("assets/likeheart.png",
                                        ),
                                      ),
                                      Container(
                                      width: 100,
                                      height: 130,
                                      decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff07D3DF),width: 2),
                                      borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset("assets/boy.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                     ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                        ),
                     // ),
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