import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> imgList = [
  'assets/vip1.png',
  'assets/vip2.png',
  'assets/vip3.png'
];


class vipaccess extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _vip();
  }
}

class _vip extends State<vipaccess> {
  List<Widget> imageSliders = imgList
      .map((item) => Container(
    child: Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.asset(item, fit: BoxFit.fill, width: 140.0),
            ],
          )),
    ),
  ))
      .toList();

  double _opacity = 0.9;
  @override
  Widget build(BuildContext context) {
    int _current = 0;
    final CarouselController _controller = CarouselController();
    return Stack(
      children: [
        Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(children: [
                  Container(
                    width: double.maxFinite,
                    height: MediaQuery.of(context).size.height*.5,
                    color: Colors.white,
                  ),
                  Opacity(
                      opacity: _opacity,
                      child: Image.asset(
                          'assets/hearts_1.png',
                          width: double.maxFinite,
                          height: MediaQuery.of(context).size.height*0.5,
                          fit: BoxFit.cover)),
                ]),
              ],
            )
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
              mainAxisSize: MainAxisSize.min,
              children: [
                  Container(
                    height: 140,
                    child: CarouselSlider(
                      items: imageSliders,
                      carouselController: _controller,
                      options: CarouselOptions(
                          autoPlay: true,
                          // enlargeCenterPage: true,
                          //aspectRatio: 4.0,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness == Brightness.dark
                                  ? Colors.white
                                  : Color(0xffCC0000))
                                  .withOpacity(_current == entry.key ? 0.8 : 0.4)),
                        ),
                      );
                    }).toList(),
                  ),


                Padding(
                  padding: const EdgeInsets.only(top: 30.0,left: 20,bottom: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("VIP Access",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
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
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 15),
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
                              child: Image.asset("assets/vipheart.png",width: 40,height: 40,),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 15),
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
                              child: Image.asset("assets/star.png",width: 40,height: 40,),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 15),
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
                    width: MediaQuery.of(context).size.width *.6,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffCC0000),
                    ),
                    child: FlatButton(
                      onPressed: (){
                      },
                      child: Text("Buy",
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