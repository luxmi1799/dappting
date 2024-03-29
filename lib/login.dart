import 'dart:convert';
import 'package:dapp/create_account.dart';
import 'package:dapp/female_user/female_dashboard.dart';
import 'package:dapp/female_user/female_home_activity.dart';
import 'package:dapp/female_user/female_login.dart';
import 'package:dapp/forget_password.dart';
import 'package:dapp/home_activity.dart';
import 'package:dapp/loading_bar.dart';
import 'package:dapp/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'otp_screen.dart';

class login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _sign_up();
  }
}

class _sign_up extends State<login> {
  final mobilecontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    double _opacity = 0.9;
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
            // appBar: AppBar(
            //   automaticallyImplyLeading: false,
            //   backgroundColor: Colors.transparent,
            //   elevation: 0.0,
            // ),
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


                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Center(
                      child: Text("Login to Continue",
                        style: TextStyle(
                          fontWeight:FontWeight.bold,
                          fontSize: 26,
                          color: Colors.white,
                        ),),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                    child: Container(
                      color: Colors.white.withOpacity(0.15),
                      child: TextField(
                        controller: mobilecontroller,
                        style: TextStyle(
                          color: Colors.white
                        ),
                        keyboardType: TextInputType.number,
                        decoration: new InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          hintText: "Mobile No.",
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  /*Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                    child: TextField(
                      decoration: new InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 1.0),
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),*/

                  InkWell(
                    onTap: (){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => forgot_pwsd()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                      child: Center(
                        child: Text("Forgot Password?",
                          style: TextStyle(
                            fontWeight:FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right:20,top: 30,bottom: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Color(0xff07D3DF),
                      child: FlatButton(
                        onPressed: (){
                          circle(context);
                          send_mobile_otp(mobilecontroller.text);
                        },
                        child: Text("GET OTP",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            backgroundColor:  Color(0xff07D3DF),
                          ),),
                        // color: Colors.white,
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => female_login()));
                      },
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Vendor Login',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff07D3DF),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => create_account()));
                      },
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: "Don't have an account ? ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  )
                              ),
                              TextSpan(
                                text: 'SignUp',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff07D3DF),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
        ),
      ],
    );
  }

  send_mobile_otp(String mobile) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String postUrl = "https://hookupindia.in/hookup/ApiController/userlogin";
    print("stringrequest");
    var request = new http.MultipartRequest(
        "POST", Uri.parse(postUrl));
    request.fields['mobile'] = mobile;
    request.send().then((response) {
      http.Response.fromStream(response).then((onValue) {
        try {
          Navigator.pop(context);
          print("onValue${onValue.body}");
          Map mapRes = json.decode(onValue.body);
          var success = mapRes["status"];
          var msg = mapRes["message"];

          if(success == "1"){
            var otpdetail= mapRes["data"]["otp"];
            var user_id= mapRes["data"]["user_id"];
            print("user_id$user_id");
            setState(() {
              var getotp = otpdetail;
              prefs.setString("new_account", " ");
              prefs.setString("mobile_number",mobile);
              prefs.setString("otp_found",getotp);
              prefs.setString("user_id",user_id);
            });
            userdata(user_id);
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => otp_screen()));
          }
          else{

            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(8.0)), //this right here
                    child: Container(
                      height: 160,
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width:340.0,
                            height: 50,
                            child: FlatButton(
                              onPressed: (){},
                              child: Text("Invalid Number",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  backgroundColor:  Color(0xff07D3DF),
                                ),),
                              color: Color(0xff07D3DF),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),

                          Center(
                            child: Text("Your login credentials is incorrect ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 110,
                                height: 50,
                                child: RaisedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    "Relogin",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  color:  Colors.white,
                                ),
                              ),

                              SizedBox(
                                width: 110,
                                height: 50,
                                child: RaisedButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => create_account()));
                                    // Navigator.pushNamed(context, Myroutes.practical_home);
                                  },
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  color: Colors.white,
                                ),
                              ),
                              // ),


                            ],
                          ),
                          // SizedBox(
                          //   width: 320.0,
                          //   child: RaisedButton(
                          //     onPressed: () {},
                          //     child: Text(
                          //       "Save",
                          //       style: TextStyle(color: Colors.white),
                          //     ),
                          //     color: const Color(0xFF1BC0C5),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  );
                });
            // showDialog(
            //     context: context,
            //     builder: (BuildContext context) {
            //       return AlertDialog(
            //         title: Text("Mobile number not valid"),
            //         content: Text("Please check number / Register Your number first"),
            //         actions: <Widget>[
            //           FlatButton(
            //             child: Text("Close"),
            //             onPressed: () {
            //               Navigator.of(context).pop();
            //             },
            //           )
            //         ],
            //       );
            //     }
            // );


            // Fluttertoast.showToast(
            //     msg: msg,
            //     toastLength: Toast.LENGTH_LONG,
            //     gravity: ToastGravity.CENTER,
            //     timeInSecForIosWeb: 1
            // );

          }

        } catch (e) {
          print("response$e");
        }
      });
    });
  }
  userdata(String UserId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String postUrl = "https://hookupindia.in/hookup/ApiController/userDetail";
    print("stringrequest");
    var request = new http.MultipartRequest(
        "POST", Uri.parse(postUrl));
    request.fields['UserId'] = UserId;
    request.send().then((response) {
      http.Response.fromStream(response).then((onValue) {
        try {
          print("onValue1${onValue.body}");
          Map mapRes = json.decode(onValue.body);
          var emaildetail= mapRes["commandResult"]["data"]["Email"];
          var namedetail= mapRes["commandResult"]["data"]["Name"];
          var Mobile= mapRes["commandResult"]["data"]["Mobile"];
          setState(() {
            prefs.setString("email_id","$emaildetail");
            prefs.setString("name_user","$namedetail");
            prefs.setString("Mobile","$Mobile");
          });
          //   print("getdatata$email $name)");

        } catch (e) {
          print("response$e");
        }
      });
    });
  }
}


//https://www.figma.com/file/4BeISemeJcYA2qt1tub2tX/Dating-App?node-id=50%3A289