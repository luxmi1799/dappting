import 'package:flutter/material.dart';

class myprofile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return _myprofile();
  }
}

class _myprofile extends State<myprofile> {
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
          //  backgroundColor: Color(0xffCC0000),
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              centerTitle: true,
              leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
              backgroundColor: Colors.transparent,
              title: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "My Profile",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        )
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search,color: Colors.black,),
                  onPressed: () {
                  },
                ),
              ],
              elevation: 0.0,
            ),

            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                ],
              ),
            )
        ),
      ],
    );
  }
}