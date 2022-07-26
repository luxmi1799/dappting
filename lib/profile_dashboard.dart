import 'package:dapp/show_profile.dart';
import 'package:dapp/vipaccess.dart';
import 'package:flutter/material.dart';

class profile_dashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _profile_d();
  }
}

class _profile_d extends State<profile_dashboard> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Image.asset("assets/banner.png",height: 150,width: MediaQuery.of(context).size.width,fit: BoxFit.cover,),

              Padding(
                padding: const EdgeInsets.only(top: 10.0,left: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("For You",
                    style: TextStyle(
                    color: Color(0xffCC0000),
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ),

              GridView.builder(
                    gridDelegate:
                    new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    scrollDirection: Axis.vertical,
                    itemCount: 6,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return  Container(
                        //height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: EdgeInsets.symmetric(vertical: 7, horizontal: 7),
                        child: GridTile(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => show_profile()));
                          },
                          child: Container(
                            //height: 300,
                           decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                           image: DecorationImage(
                           image: AssetImage("assets/discover1.png"),
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.topCenter,
                             ),
                             ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    // color: Colors.green.withOpacity(5),
                                    width: 50,
                                    height: 17,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.green.withOpacity(0.4),
                                    ),
                                    child: Center(
                                      child: Text("online",style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff05FF00),
                                        fontSize: 12,
                                      ),),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      //alignment: Alignment.bottomCenter,
                                      width: MediaQuery.of(context).size.width,
                                      height: 60,
                                      color:Color(0xff000000).withOpacity(0.35),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                                      child: Text("Tiffany ",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 13,
                                                          fontWeight: FontWeight.bold,
                                                        ),),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets.only(left: 2,right: 2,top: 5),
                                                          child: Align(
                                                            alignment: Alignment.centerLeft,
                                                            child: Text("Delhi",
                                                              style: TextStyle(
                                                                color: Colors.white.withOpacity(0.9),
                                                                fontSize: 12,
                                                              ),),
                                                          ),
                                                        ),
                                                        Image.asset("assets/india.png"),
                                                      ],
                                                    ),
                                                  ],
                                                ),

                                             Row(
                                              children: [
                                                Image.asset("assets/msgred.png",height: 25,
                                                  width: 25,color: Colors.white,),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 8.0),
                                                  child: InkWell(
                                                    onTap: (){
                                                      showModalBottomSheet<void>(
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.vertical(
                                                              top: Radius.circular(20),
                                                            ),
                                                          ),
                                                        context: context,
                                                        builder: (BuildContext context) {
                                                         return vipaccess();
                                                        },
                                                      );
                                                      //Navigator.of(context).push(MaterialPageRoute(builder: (context) => vipaccess()));
                                                    },
                                                    child: Image.asset("assets/video.png",height: 25,
                                                      width: 25,color: Colors.white,),
                                                  ),
                                                ),
                                              ],
                                            ),
                                              ],

                                        ),
                                    ),
                                  ),
                                ),
                              ],

                            ),
                          ),
                        ),
                        ), //just for testing, will fill with image later
                      );
                    },
                  )
            ],
          ),
        ),
      );
  }
}
