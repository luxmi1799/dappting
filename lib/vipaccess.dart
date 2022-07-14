import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class vipaccess extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _vip();
  }
}

class _vip extends State<vipaccess> {
  double _opacity = 0.9;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
            opacity: _opacity,
            child: Image.asset(
                'assets/homeheart.png',
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover)
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
            backgroundColor: Colors.transparent,
            actions: <Widget>[
              IconButton(
                icon: ImageIcon(AssetImage("assets/search.png"),
                  color: Colors.black,
                  size: 28,
                ),
                onPressed: () {
                },
              ),
            ],
            elevation: 0.0,
          ),
          body: SingleChildScrollView(
            child:Column(
              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 50.0,left: 20,bottom: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("VIP Access",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.0,left: 20,bottom: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Upgrade to VIP and quickly find new people in your area and chat without having to match first",
                      style: TextStyle(
                        color: Color(0xff686868),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 15),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xff07D3DF),width: 1.5)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Standard",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                   fontSize: 17
                                ),
                              ),
                              Text("1 month subscription",
                                style: TextStyle(
                                  color: Color(0xff686868),
                                   fontSize: 15
                                ),
                              ),
                            ],
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                "30 \u{1FA99}/ min",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17
                                ),
                              ),
                            ),
                            Container(
                              width: 2,
                              height: 65,
                              color: Color(0xff07D3DF),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/vipheart.png"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 15),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xff07D3DF),width: 1.5)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Popular",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17
                                ),
                              ),
                              Text("6 months subscription",
                                style: TextStyle(
                                    color: Color(0xff686868),
                                    fontSize: 15
                                ),
                              ),
                            ],
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                "40 \u{1FA99}/ min",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17
                                ),
                              ),
                            ),
                            Container(
                              width: 2,
                              height: 65,
                              color: Color(0xff07D3DF),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/star.png"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 15),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xff07D3DF),width: 1.5)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Special Offer",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17
                                ),
                              ),
                              Text("1 year subscription",
                                style: TextStyle(
                                    color: Color(0xff686868),
                                    fontSize: 15
                                ),
                              ),
                            ],
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                "28 \u{1FA99}/ min",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17
                                ),
                              ),
                            ),
                            Container(
                              width: 2,
                              height: 65,
                              color: Color(0xff07D3DF),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:Text(
                                "25% OFF",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffCC0000),
                                  fontSize: 12
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                  child: Container(
                    width: MediaQuery.of(context).size.width *.8,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffCC0000),
                    ),
                    child: FlatButton(
                      onPressed: (){
                      },
                      child: Text("Subscribe",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          backgroundColor:  Color(0xffCC0000),
                        ),),
                      // color: Colors.white,
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ],
    );
  }
}