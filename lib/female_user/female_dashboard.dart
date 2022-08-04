import 'package:dapp/female_user/female_balance.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class female_dash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
      return _female_d();
  }
}

class _female_d extends State<female_dash> {
  bool _switchValue=true;
  @override
  Widget build(BuildContext context) {
   return Stack(
     children: [
       Opacity(
           opacity: 0.9,
           child: Image.asset(
               'assets/homeheart.png',
               width: double.maxFinite,
               height: MediaQuery.of(context).size.height,
               fit: BoxFit.cover)),

       Scaffold(
         backgroundColor: Colors.transparent,
         body: SingleChildScrollView(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               SizedBox(
                 height: 30,
               ),
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 20.0,right: 20),
                     child: Stack(
                       alignment: Alignment.center,
                       children: [
                         // Front image
                         SizedBox(
                             width: 90,
                             height: 90,
                             child: Image.asset("assets/profilepic.png")),
                       ],
                     ),
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
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
                     ],
                   ),
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Container(
                       width: MediaQuery.of(context).size.width * 0.4,
                       height: 80,
                       decoration: BoxDecoration(
                         gradient: LinearGradient(
                           colors: [
                             const Color(0xff4de6f1),
                             const Color(0xff60ecf6),
                             const Color(0xff02ecfc),
                           ],
                           begin: Alignment.topCenter,
                           end: Alignment.bottomCenter,
                         ),
                         borderRadius: BorderRadius.circular(10),
                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [

                           Padding(
                             padding: const EdgeInsets.only(top: 6.0,left: 6),
                             child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                               children: [

                                 Align(
                                   alignment: Alignment.centerLeft,
                                   child: Text("Daily Task ",style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 13,
                                       fontWeight: FontWeight.bold
                                   ),),
                                 ),
                                 SizedBox(
                                     width: 10,
                                     height: 10,
                                     child: Image.asset("assets/whitefwrd.png",color: Colors.black,)),
                               ],
                             ),
                           ),

                           Padding(
                             padding:  EdgeInsets.only(top: 6,left: 6),
                             child: Align(
                               alignment: Alignment.centerLeft,
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Text("Get 100 coins",
                                     style: TextStyle(
                                       color:  Colors.black,
                                       fontSize: 12,
                                     ),
                                   ),
                                   //Image.asset("assets/smallcoin.png",width: 12,height: 12,),
                                 ],
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),

                     InkWell(
                       onTap: (){

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
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [

                             Padding(
                               padding: const EdgeInsets.only(top: 6.0,left: 6),
                               child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                 children: [

                                   Align(
                                     alignment: Alignment.centerLeft,
                                     child: Text("Gift ",style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 13,
                                         fontWeight: FontWeight.bold
                                     ),),
                                   ),
                                   SizedBox(
                                       width: 10,
                                       height: 10,
                                       child: Image.asset("assets/whitefwrd.png")),
                                 ],
                               ),
                             ),

                             Padding(
                               padding:  EdgeInsets.only(top: 6,left: 6),
                               child: Align(
                                 alignment: Alignment.centerLeft,
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Text("Get 4000 coins",
                                       style: TextStyle(
                                         color:  Colors.white,
                                         fontSize: 12,
                                       ),
                                     ),
                                     //Image.asset("assets/smallcoin.png",width: 12,height: 12,),
                                   ],
                                 ),
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
                 padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15),
                 child: Container(
                  width: MediaQuery.of(context).size.width*0.85,
                  height: 40,
                   decoration: BoxDecoration(
                     gradient: LinearGradient(
                       colors: [
                         const Color(0xFFCC0000),
                         const Color(0xFFD02525),
                         const Color(0xFFD23737),
                       ],
                       begin: Alignment.topCenter,
                       end: Alignment.bottomCenter,
                     ),
                     borderRadius: BorderRadius.circular(10),
                     //color:Color(0xff07D3DF).withOpacity(0.3),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                      Icon(Icons.card_giftcard,color: Colors.white,size: 20,),
                       Align(
                         alignment: Alignment.centerLeft,
                         child: Text("  Gift",style: TextStyle(
                             color: Colors.white,
                             fontSize: 13,
                             fontWeight: FontWeight.bold
                         ),),
                       ),
                     ],
                   ),
                  ),
                 ),

               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 25),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("My Data Today",style: TextStyle(
                       fontWeight: FontWeight.bold,
                       color: Colors.black,
                       fontSize: 15
                     ),),

                     Row(
                       children: [
                         Text("Working",style: TextStyle(
                             fontWeight: FontWeight.bold,
                             color: Colors.green,
                             fontSize: 12
                         ),),

                         Transform.scale(
                           scale: 0.8,
                           child: CupertinoSwitch(
                               value: _switchValue,
                               trackColor: Color(0xffCC0000),
                               onChanged: (value) {
                                 setState(() {
                                   _switchValue = value;
                                 });
                               },
                             ),
                         ),
                       ],
                     ),
                   ],
                 ),
               ),


               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 25),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(" Wallet",style: TextStyle(
                             color: Colors.black,
                             fontSize: 12
                         ),),
                         SizedBox(
                           height: 6,
                         ),
                         InkWell(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context) => female_balance()));
                           },
                           child: Container(
                             width: MediaQuery.of(context).size.width*0.4,
                             height: 35,
                             decoration: BoxDecoration(
                               color: Colors.black.withOpacity(0.1),
                               borderRadius: BorderRadius.circular(15)
                             ),
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text("\$0",style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 12,
                                       fontWeight: FontWeight.bold
                                   ),),
                                   Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,
                                   size: 12,)
                                 ],
                               ),
                             ),
                           ),
                         ),
                       ],

                     ),

                     Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(" Coin",style: TextStyle(
                             color: Colors.black,
                             fontSize: 12
                         ),),
                         SizedBox(
                           height: 6,
                         ),
                         Container(
                           width: MediaQuery.of(context).size.width*0.4,
                           height: 35,
                           decoration: BoxDecoration(
                               color: Colors.black.withOpacity(0.1),
                               borderRadius: BorderRadius.circular(15)
                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text("\$0",style: TextStyle(
                                     color: Colors.black,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 12
                                 ),),
                                 Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,
                                   size: 12,)
                               ],
                             ),
                           ),
                         ),
                       ],

                     ),

                   ],
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 25),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(" Charm Level",style: TextStyle(
                             color: Colors.black,
                             fontSize: 12
                         ),),
                         SizedBox(
                           height: 6,
                         ),
                         Container(
                           width: MediaQuery.of(context).size.width*0.4,
                           height: 35,
                           decoration: BoxDecoration(
                               color: Colors.black.withOpacity(0.1),
                               borderRadius: BorderRadius.circular(15)
                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text("B1",style: TextStyle(
                                     color: Colors.black,
                                     fontSize: 12,
                                     fontWeight: FontWeight.bold
                                 ),),
                                 Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,
                                   size: 12,)
                               ],
                             ),
                           ),
                         ),
                       ],

                     ),

                     Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(" Chat Price",style: TextStyle(
                             color: Colors.black,
                             fontSize: 12
                         ),),
                         SizedBox(
                           height: 6,
                         ),
                         Container(
                           width: MediaQuery.of(context).size.width*0.4,
                           height: 35,
                           decoration: BoxDecoration(
                               color: Colors.black.withOpacity(0.1),
                               borderRadius: BorderRadius.circular(15)
                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text("\u{1FA99} 20",style: TextStyle(
                                     color: Colors.black,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 12
                                 ),),
                                 Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,
                                   size: 12,)
                               ],
                             ),
                           ),
                         ),
                       ],

                     ),

                   ],
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 25),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(" Live",style: TextStyle(
                             color: Colors.black,
                             fontSize: 12
                         ),),
                         SizedBox(
                           height: 6,
                         ),
                         Container(
                           width: MediaQuery.of(context).size.width*0.4,
                           height: 35,
                           decoration: BoxDecoration(
                               color: Colors.black.withOpacity(0.1),
                               borderRadius: BorderRadius.circular(15)
                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text("\$0",style: TextStyle(
                                     color: Colors.black,
                                     fontSize: 12,
                                     fontWeight: FontWeight.bold
                                 ),),
                                 Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,
                                   size: 12,)
                               ],
                             ),
                           ),
                         ),
                       ],

                     ),

                     Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(" Number of Match",style: TextStyle(
                             color: Colors.black,
                             fontSize: 12
                         ),),
                         SizedBox(
                           height: 6,
                         ),
                         Container(
                           width: MediaQuery.of(context).size.width*0.4,
                           height: 35,
                           decoration: BoxDecoration(
                               color: Colors.black.withOpacity(0.1),
                               borderRadius: BorderRadius.circular(15)
                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text("\$0",style: TextStyle(
                                     color: Colors.black,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 12
                                 ),),
                                 Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,
                                   size: 12,)
                               ],
                             ),
                           ),
                         ),
                       ],
                     ),
                   ],
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                 child: Container(
                   width: MediaQuery.of(context).size.width,
                   decoration: BoxDecoration(
                     color: Color(0xffCC0000).withOpacity(0.25),
                     borderRadius: BorderRadius.circular(20)
                   ),
                   child: FlatButton(
                     onPressed: (){
                   //    Navigator.of(context).push(MaterialPageRoute(builder: (context) => home_home()));
                     },
                     child: Text("Live for call",
                       textAlign: TextAlign.center,
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 18,
                         fontWeight: FontWeight.bold,
                         //backgroundColor:  Color(0xffCC0000).withOpacity(0.2),
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