import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dapp/chatmessage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class show_profile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return _profile_show();
  }
}

class _profile_show extends State<show_profile> {
  bool gift = true;
  double _opacity = 0.9;
  var host_id;
  var host_details;
  final GlobalKey expansionTileKey = GlobalKey();


  @override
  void initState() {
    super.initState();
    getuser(context);
  }

  getuser(BuildContext context) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    host_id  = (prefs.getString('host_id')??"");
    print("user_id$host_id");
    this.hostdetails(host_id);
  }

  Future<String> hostdetails(String user_id) async {
    String postUrl = "https://hookupindia.in/hookup/ApiController/userDetail";
    var request = new http.MultipartRequest(
        "POST", Uri.parse(postUrl));
    request.fields['user_id'] = user_id;

    request.send().then((response) {
      http.Response.fromStream(response).then((onValue) {
        try {
          Map mapRes = json.decode(onValue.body);
          var status = mapRes["status"];
          setState(() {
            host_details = mapRes["data"]["userData"];
          });
          if(status == "1"){
           print("host_details$host_details");
          }
        } catch (e) {
          print("response$e");
        }
      });
    });
    return "";
  }

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
                     color: Colors.white,
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
           backgroundColor: Colors.transparent,
           bottomSheet: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: InkWell(
                   onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder:(context) => chatmessage()));
                   },
                   child: Container(
                     width: 100,
                     height: 45,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color:Color(0xffCC0000),
                     ),
                     child: Container(
                       width: 80,
                       height: 30,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           border: Border.all(color: Color(0xffCC0000),width: 2)
                       ),
                       child: Center(
                         child: Text(
                           "Message",
                           style: TextStyle(
                               //fontWeight: FontWeight.bold,
                               color: Colors.white,
                               fontSize: 10
                           ),
                         ),
                       ),
                     ),
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Container(
                   width: 100,
                   height: 45,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color:Color(0xffCC0000),
                   ),
                   child: Container(
                     width: 80,
                     height: 30,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         border: Border.all(color: Color(0xffCC0000),width: 2)
                     ),
                     child: Center(
                       child: Text(
                         "Video call 20/ min",
                         style: TextStyle(
                            // fontWeight: FontWeight.bold,
                             color: Colors.white,
                             fontSize: 10
                         ),
                       ),
                       // TextButton.icon(     // <-- TextButton
                       //   onPressed: () {},
                       //   icon: Icon(
                       //     Icons.download,
                       //     size: 24.0,
                       //   ),
                       //   label: Text('Download'),
                       // ),
                     ),
                   ),
                 ),
               )
             ],
           ),
           body: SingleChildScrollView(
             child: host_details!=null?Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(
                   height: 5,
                 ),
                 Stack(
                   //alignment: Alignment.center,
                   children: [
                     Container(
                         width:MediaQuery.of(context).size.width,
                         child: Image.network(host_details["profile_image"],height: 300,fit: BoxFit.cover,)
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 25),
                       child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           InkWell(
                               onTap: (){
                                 Navigator.pop(context);
                               },
                               child: Icon(Icons.arrow_back_ios,size: 25,color: Colors.white,)),
                           Icon(Icons.more_vert,size: 25,color: Colors.white,),
                         ],
                       ),
                     ),
                     Positioned(
                       top: 100,
                       left: MediaQuery.of(context).size.width*0.8,
                       right: -10,
                         child: Container(
                           height: 200,
                           child: ListView.builder(
                             itemExtent: 40,
                             shrinkWrap: true,
                             itemCount: 6,
                             itemBuilder: (context, i){
                                 return ListTile(
                                   leading:Image.asset("assets/profilepp.png",width: 30,height: 30,fit: BoxFit.cover,),
                                 );
                             },
                           ),
                         ),
                     )
                   ],
                 ),


                 Padding(
                   padding: const EdgeInsets.only(top: 20.0,bottom: 8,left: 20),
                     child: Text(host_details["fname"]+" "+host_details["lname"],style: TextStyle(
                         color: Color(0xffCC0000),
                         fontSize: 17,
                         fontWeight: FontWeight.bold
                     ),),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(top: 0.0,bottom: 8,left: 20),
                     child: Text("ID:14788888",style: TextStyle(
                       color: Color(0xffCC0000),
                       fontSize: 13,
                     ),),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(top: 0.0,bottom: 8,left: 20),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Image.asset("assets/india.png"),
                           Text(" IN",style: TextStyle(
                             color: Colors.grey,
                             fontSize: 10,
                           ),),
                             SizedBox(
                               width: 10,
                             ),
                             Container(
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
                         ],
                   ),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(left: 2.0),
                   child: ExpansionTile(
                     initiallyExpanded: true,
                     key: expansionTileKey,
                     onExpansionChanged: (value) {
                       if (value) {
                         _scrollToSelectedContent(expansionTileKey: expansionTileKey);
                       }
                     },
                     title: Text("Basic Information",style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 14,
                         // color: Colors.black
                     ),),
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only(left: 20.0,top: 0,right: 20),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text("Nick Name",style: TextStyle(
                                 fontSize: 14,
                                 color: Colors.black
                             ),),
                             SizedBox(
                               width: 5,
                             ),
                             Text("Trifi",style: TextStyle(
                                 fontSize: 14,
                                 color: Color(0xffCC0000),
                                 fontWeight: FontWeight.bold
                             ),),
                           ],
                         ),
                       ),

                       Padding(
                         padding: const EdgeInsets.only(left: 20.0,top: 10,right: 20),
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
                             Text("24/jan/2000",style: TextStyle(
                                 fontSize: 14,
                                 color: Color(0xffCC0000)
                             ),),
                           ],
                         ),
                       ),

                       Padding(
                         padding: const EdgeInsets.only(left: 20.0,top: 10,right: 20),
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
                             Text("Delhi",style: TextStyle(
                                 fontSize: 14,
                                 color: Color(0xffCC0000)
                             ),),
                           ],
                         ),
                       ),

                       Padding(
                         padding: const EdgeInsets.only(left: 20.0,top: 10,right: 20),
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
                             Text("English",style: TextStyle(
                                 fontSize: 14,
                                 color: Color(0xffCC0000)
                             ),),
                           ],
                         ),
                       ),

                       Padding(
                         padding: const EdgeInsets.only(left: 20.0,top: 10,right: 20),
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
                             Text("Heter",style: TextStyle(
                                 fontSize: 14,
                                 color: Color(0xffCC0000)
                             ),),
                           ],
                         ),
                       ),

                       Padding(
                         padding: const EdgeInsets.only(left: 20.0,top: 10,right: 20),
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
                             Text(host_details["hair_color"],style: TextStyle(
                                 fontSize: 14,
                                 color: Color(0xffCC0000)
                             ),),
                           ],
                         ),
                       ),

                       Padding(
                         padding: const EdgeInsets.only(left: 20.0,top: 10,right: 20),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text("Body Type",style: TextStyle(
                                 fontSize: 14,
                                 color: Colors.black
                             ),),
                             SizedBox(
                               width: 5,
                             ),
                             Text(host_details["body_type"],style: TextStyle(
                                 fontSize: 14,
                                 color: Color(0xffCC0000)
                             ),),
                           ],
                         ),
                       ),

                       Padding(
                         padding: const EdgeInsets.only(left: 20.0,top: 10,right: 20,bottom: 5),
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
                             Text("unfiled",style: TextStyle(
                                 fontSize: 14,
                                 color: Color(0xffCC0000)
                             ),),
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(top: 10.0,bottom: 8,left: 20,right: 10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text.rich(
                         TextSpan(
                           children: [
                             TextSpan(text: "Gifts",
                                 style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 14,
                                 )
                             ),
                             TextSpan(text: "  (Recieved 3/53)",
                                 style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 12,
                                 )
                             ),
                           ],
                         ),
                       ),

                       InkWell(
                         onTap: (){
                           setState(() {
                             gift = false;
                           });
                         },
                         child: Row(
                           children: [
                             Text("All gifts",style: TextStyle(
                               fontWeight: FontWeight.bold,
                               color: Color(0xffCC0000),
                               fontSize: 12
                             ),),
                             Icon( Icons.arrow_forward_ios_rounded,size: 15,color: Color(0xffCC0000),)
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),

                 Offstage(
                   offstage: gift,
                   child: Container(
                     margin: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 20),
                     height: 200.0,
                     child: ListView(
                       // This next line does the trick.
                       scrollDirection: Axis.horizontal,
                       shrinkWrap: true,
                       children: <Widget>[
                         Container(
                           width: 150.0,
                           color: Colors.transparent,
                           child: Image.asset("assets/vip1.png"),
                         ),
                         Container(
                           width: 150.0,
                           color: Colors.transparent,
                           child: Image.asset("assets/vip3.png"),
                         ),
                         Container(
                           width: 150.0,
                           color: Colors.transparent,
                           child: Image.asset("assets/vip2.png"),
                         ),
                       ],
                     ),
                   ),
                 ),

               ],
             ):Center(child: CircularProgressIndicator(),),
           ),
         ),
       ],
     );
  }
  void _scrollToSelectedContent({required GlobalKey expansionTileKey}) {
    final keyContext = expansionTileKey.currentContext;
    if (keyContext != null) {
      Future.delayed(Duration(milliseconds: 200)).then((value) {
        Scrollable.ensureVisible(keyContext,
            duration: Duration(milliseconds: 200));
      });
    }
  }
}