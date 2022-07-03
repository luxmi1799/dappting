import 'package:dapp/editprofile.dart';
import 'package:flutter/cupertino.dart';
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => edit_profile()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: Image.asset("assets/profile_eyecircle.png")
                              ),
                              // Front image
                              SizedBox(
                                  width: 16,
                                  height: 16,
                                  child: Image.asset("assets/edit.png")),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20.0,right: 20),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("assets/halfcircle.png")),
                                // Front image
                                SizedBox(
                                    width: 90,
                                    height: 90,
                                    child: Image.asset("assets/profilepic.png")),
                              ],
                            ),
                          ),

                          Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: Image.asset("assets/profile_eyecircle.png")),
                              // Front image
                              SizedBox(
                                  width: 16,
                                  height: 16,
                                  child: Image.asset("assets/ssetting.png")),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,bottom: 8),
                    child: Center(
                      child: Text("14788888",style: TextStyle(
                        color: Color(0xffCC0000),
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 0.0,bottom: 8),
                    child: Center(
                      child: Text("ID:14788888",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                      ),),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 0.0,bottom: 8),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Image.asset("assets/india.png"),
                          Text(" IN",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          ),),
                        ],
                      )
                    ),
                  ),

                  SizedBox(height: 120,),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:Color(0xff07D3DF).withOpacity(0.3),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                               Padding(
                                 padding: const EdgeInsets.only(top: 6.0,left: 6),
                                 child: Row(
                                     // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(" My Balance",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold
                                          ),),
                                        ),
                                        SizedBox(
                                          width: 10,
                                           height: 10,
                                            child: Image.asset("assets/redfrwd.png")),
                                      ],
                                    ),
                               ),

                              Padding(
                                padding:  EdgeInsets.only(top: 6,left: 6),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("750 Coins \u{1FA99}",
                                    style: TextStyle(
                                      color:  Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 80,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFFFEB974),
                                const Color(0xFF944C1E),
                                const Color(0xFF772F1A),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            //color:Color(0xff07D3DF).withOpacity(0.3),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Padding(
                                padding: const EdgeInsets.only(top: 8.0,left: 6),
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(" Premium / VIP",style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding:  EdgeInsets.only(top: 6,left: 6),
                                child: Row(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Get more privilleges",
                                        style: TextStyle(
                                          color:  Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        width: 10,
                                        height: 10,
                                        child: Image.asset("assets/whitefwrd.png")),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width:80,
                          height: 60,
                          color:Color(0xff07D3DF).withOpacity(0.15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Image.asset("assets/taskcenter.png"),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Text("Task Center",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),),
                              )
                            ],
                          ),
                        ),

                        Container(
                          width:80,
                          height: 60,
                          color:Color(0xff07D3DF).withOpacity(0.15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Image.asset("assets/credit.png"),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Text("Credit",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),),
                              )
                            ],
                          ),
                        ),

                        Container(
                          width:80,
                          height: 60,
                          color:Color(0xff07D3DF).withOpacity(0.15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Image.asset("assets/bagpack.png"),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Text("Bagpack",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [


                        Container(
                          width:80,
                          height: 60,
                          color:Color(0xff07D3DF).withOpacity(0.15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Image.asset("assets/custser.png"),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Text("Customer Service",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),),
                              )
                            ],
                          ),
                        ),

                        Container(
                          width:80,
                          height: 60,
                          color:Color(0xff07D3DF).withOpacity(0.15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Image.asset("assets/google.png"),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Text("Google Order",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),),
                              )
                            ],
                          ),
                        ),

                        Container(
                          width:80,
                          height: 60,
                          color:Color(0xff07D3DF).withOpacity(0.15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Image.asset("assets/setting.png"),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Text("Setings",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),),
                              )
                            ],
                          ),
                        ),

                      ],
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