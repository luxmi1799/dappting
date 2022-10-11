import 'dart:convert';
import 'package:dapp/loading_bar.dart';
import 'package:http/http.dart'as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:dapp/editprofile.dart';
import 'package:dapp/wallet.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_activity.dart';

bool editprof = false;
class myprofile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return _myprofile();
  }
}

class _myprofile extends State<myprofile> {
  double _opacity = 0.9;
  List<File> imagesfile =[];
  var nickname = new TextEditingController();
  var birthday = new TextEditingController();
  var city = new TextEditingController();
  var height = new TextEditingController();
  var weight = new TextEditingController();
  var language = new TextEditingController();
  var gender = new TextEditingController();
  var haircolor = new TextEditingController();
  var interest = new TextEditingController();
  var user_id;
  File? imageFile;


  void initState() {
    super.initState();
    // loading(context);
    //context.read<country_provider>().country_list();
    Future.delayed(Duration(seconds: 2), () {});
    get_blogdetails(context);
    // isNumeric("8076799976");
  }

  get_blogdetails(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      user_id = prefs.getString("user_id");
    });
    print("blodid $user_id");
  }

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
        editprof==false? Scaffold(
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
                        setState(() {
                          editprof = true;
                        });
                        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => edit_profile()));
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


                 // Padding(
                 //   padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15),
                 //      child: Container(
                 //     width: MediaQuery.of(context).size.width,
                 //     height: 70,
                 //     decoration: BoxDecoration(
                 //       color: Color(0xff07D3DF),
                 //       borderRadius: BorderRadius.circular(20)
                 //     ),
                 //   ),
                 // ),

                  SizedBox(height: 50,),

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
                                  child: Row(
                                    children: [
                                      Text("750 Coins ",
                                        style: TextStyle(
                                          color:  Colors.black,
                                          fontSize: 12,
                                        ),
                                      ),
                                      Image.asset("assets/smallcoin.png",width: 12,height: 12,),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        InkWell(
                          onTap: (){
                             Navigator.of(context).push(MaterialPageRoute(builder: (context) => mybalance()));
                          },
                          child: Container(
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
                                        child: InkWell(
                                          onTap: (){
                                            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => mybalance()));
                                          },
                                          child: Text(" Premium / VIP",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold
                                          ),),
                                        ),
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

                  Offstage(
                    offstage: true,
                    child: Padding(
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
                  ),

                ],
              ),
            )
        ):editprofile(context),
      ],
    );
  }
  Widget editprofile(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35.0), // he,
        child: AppBar(
          centerTitle: true,
          title: Text("Edit Information",style: TextStyle(color: Colors.black),),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
              onPressed: () {
                setState(() {
                  editprof = false;
                });
              }),
          backgroundColor: Colors.transparent,
         /* title: SizedBox(
            height: 250,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset("assets/pg1.png"),
                ),
                Column(
                  children: [
                    Image.asset("assets/pg2.png"),
                    Image.asset("assets/pg3.png"),
                  ],
                ),
              ],
            ),
          ),*/
          elevation: 0.0,
        ),
      ),
       body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

            /*  Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                        icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
                        onPressed: () {
                          setState(() {
                            editprof = false;
                          });
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SizedBox(
                        width:180,
                        height: 180,
                        child: Image.asset("assets/pg1.png",fit: BoxFit.fill,)),
                  ),
                  Column(
                    children: [
                      SizedBox(
                         width: 100,
                          height: 90,
                          child: Image.asset("assets/pg2.png",fit: BoxFit.fill,)),
                      SizedBox(
                          width:100,
                          height: 90,
                          child: Image.asset("assets/pg3.png",fit: BoxFit.fill,)),
                    ],
                  ),
                ],
              ),*/

              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                          width: 115,
                          height: 115,
                          child: Image.asset("assets/halfcircle.png")),
                      // Front image
                      Stack(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: imageFile!= null ? CircleAvatar(backgroundImage: Image.file(imageFile!).image):Icon(Icons.person,size: 80,)),
                          Positioned(
                            bottom: -1,
                            right: 2,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: ShapeDecoration(
                                shape: CircleBorder(),
                                color: Color(0xffCC0000),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  _getFromGallery();
                                },
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                         ]
                      ),
                    ],
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(top: 10.0,bottom: 10),
                child: Center(
                  child: Text("14788888",style: TextStyle(
                      color: Color(0xffCC0000),
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ),



              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text("Photo Album",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.black
                    ),),
                    SizedBox(
                      width: 5,
                    ),
                    Text("( Fill in all to get \u{1FA99} )",style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue
                    ),),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: DottedBorder(
                    //customPath: (size) => customPath, // PathBuilder
                    color: Colors.grey,
                    dashPattern: [8, 4],
                    strokeWidth: 2,
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey.withAlpha(40),
                      child: IconButton(
                        icon: Icon(Icons.add,size: 30,),
                        onPressed: () {
                          getimageslist();
                        },
                      ),
                    ),
                  ),
                ),
              ),


              imagesfile != null?Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Wrap(
                    children: imagesfile.map((imageone){
                      return Card(
                        child: Column(
                          children: [
                            InkWell(
                              onTap:(){
                              },
                              child: Container(
                                height: 100, width:100,
                                child: Image.file(File(imageone.path)),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ):Container(),

              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 20),
                child: Row(
                  children: [
                    Text("Basic Information",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.black
                    ),),
                     SizedBox(
                       width: 5,
                     ),
                     Text("( Fill in all to get \u{1FA99} )",style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue
                    ),),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 20,right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Nick Name",style: TextStyle(
                        fontSize: 14,
                        color: Colors.black
                    ),),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 70,
                      height: 30,
                      child: TextField(
                       controller:  nickname,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black
                        ),
                        decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            hintText: "unfiled",
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 10,right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Birthday",style: TextStyle(
                        fontSize: 14,
                        color: Colors.black
                    ),),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 70,
                      height: 30,
                      child: TextField(
                        controller:  birthday,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black
                       ),
                       decoration: InputDecoration(
                         isDense: true,
                         border: InputBorder.none,
                         hintText: "unfiled",
                         hintStyle: TextStyle(
                           color: Colors.black,
                           fontSize: 14
                         )
                       ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 10,right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("City",style: TextStyle(
                        fontSize: 14,
                        color: Colors.black
                    ),),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 70,
                      height: 30,
                      child: TextField(
                        controller:city,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black
                        ),
                        decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            hintText: "unfiled",
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 10,right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Height",style: TextStyle(
                        fontSize: 14,
                        color: Colors.black
                    ),),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 70,
                      height: 30,
                      child: TextField(
                        controller:  height,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black
                        ),
                        decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            hintText: "unfiled",
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 10,right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Weight",style: TextStyle(
                        fontSize: 14,
                        color: Colors.black
                    ),),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 70,
                      height: 30,
                      child: TextField(
                        controller:  weight,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black
                        ),
                        decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            hintText: "unfiled",
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 10,right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Language",style: TextStyle(
                        fontSize: 14,
                        color: Colors.black
                    ),),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 70,
                      height: 30,
                      child: TextField(
                        controller:  language,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black
                        ),
                        decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            hintText: "unfiled",
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 10,right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sexual Orientation",style: TextStyle(
                        fontSize: 14,
                        color: Colors.black
                    ),),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 70,
                      height: 30,
                      child: TextField(
                        controller:  gender,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black
                       ),
                       decoration: InputDecoration(
                         isDense: true,
                         border: InputBorder.none,
                         hintText: "unfiled",
                         hintStyle: TextStyle(
                           color: Colors.black,
                           fontSize: 14
                         )
                       ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 10,right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Hair Color",style: TextStyle(
                        fontSize: 14,
                        color: Colors.black
                    ),),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 70,
                      height: 30,
                      child: TextField(
                        controller:  haircolor,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black
                       ),
                       decoration: InputDecoration(
                         isDense: true,
                         border: InputBorder.none,
                         hintText: "unfiled",
                         hintStyle: TextStyle(
                           color: Colors.black,
                           fontSize: 14
                         )
                       ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 10,right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Interests",style: TextStyle(
                        fontSize: 14,
                        color: Colors.black
                    ),),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 70,
                      height: 30,
                      child: TextField(
                        controller:  interest,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black
                       ),
                       decoration: InputDecoration(
                         isDense: true,
                         border: InputBorder.none,
                         hintText: "unfiled",
                         hintStyle: TextStyle(
                           color: Colors.black,
                           fontSize: 14
                         )
                       ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xffCC0000),
                  ),
                  child: FlatButton(
                    onPressed: (){
                      circle(context);
                      update_profile("first_name", "last_name", "email_address", user_id, "user_name",
                          "country", "state", "city", "pincode", "address", "User", "profile_image", "profile_video");
                    },
                    child: Text("SAVE",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        backgroundColor:  Color(0xffCC0000),
                      ),),
                    // color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }

  Future getimageslist() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg','png'],
    );
    if (result != null) {
      setState(() {
        imagesfile = result.paths.map((path) => File(path!)).toList();
        for(int i =0; i<result.count;i++){
        }
        print("resumefile$imagesfile");
      });
    }
    else {

    }
    // User canceled the picker
  }

  update_profile(String first_name,String last_name,String email_address ,String user_id ,String user_name ,String country ,
      String state ,String city,String pincode,String address,String type,String profile_image, String profile_video
      ) async {
    String postUrl = "https://hookupindia.in/hookup/ApiController/updateUserProfile";
    print("stringrequest");
    var request = new http.MultipartRequest(
        "POST", Uri.parse(postUrl));
    request.fields['first_name'] = first_name;
    request.fields['last_name'] = last_name;
    request.fields['email_address'] = email_address;
    request.fields['user_id'] = user_id;
    request.fields['user_name'] = user_name;
    request.fields['country'] = country;
    request.fields['state'] = state;
    request.fields['city'] = city;
    request.fields['pincode'] = pincode;
    request.fields['address'] = address;
    request.fields['type'] = type;
    request.fields['profile_image'] = profile_image;
    request.fields['profile_video'] = profile_video;

    request.send().then((response) {
      http.Response.fromStream(response).then((onValue) {
        try {
          Navigator.pop(context);
          print("onValue1${onValue.body}");
          Map mapRes = json.decode(onValue.body);
          var status= mapRes["status"];
          if (status == "1")
          {
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context) => home_home()));
            });
          }
          else{
            Fluttertoast.showToast(
                msg: mapRes["message"],
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1
            );
          }
          //   print("getdatata$email $name)");

        } catch (e) {
          print("response$e");
        }
      });
    });
  }
  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      // maxWidth: 1800,
      // maxHeight: 1800,
    );
    setState(() {
      if (pickedFile != null) {
        imageFile = File(pickedFile.path);
      }
    });
  }
}