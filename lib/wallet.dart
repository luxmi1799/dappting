import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mybalance extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _mybalance();
  }
}

class _mybalance extends State<mybalance> {
  double _opacity = 0.9;
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
       // Opacity(
       //     opacity: _opacity,
       //     child: Image.asset(
       //         'assets/homeheart.png',
       //         width: double.maxFinite,
       //         height: MediaQuery.of(context).size.height,
       //         fit: BoxFit.cover)
       // ),
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
                   TextSpan(text: "My Balance",
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 18,
                       )
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
                 Container(
                   width: MediaQuery.of(context).size.width,
                   height: 150,
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
                     //color:Color(0xff07D3DF).withOpacity(0.3),
                   ),
                   child: Stack(
                     children: [

                       Positioned(
                         right: -28,
                         top: 60,
                         child:Container(
                           width: 150,
                           height: 28,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30),
                             color: Colors.black,
                           ),
                           child: Align(
                             alignment: Alignment.center,
                             child: Text("Subscribe Now",
                               style: TextStyle(
                               fontWeight: FontWeight.bold,
                               color: Colors.white,
                               fontSize: 14
                             ),),
                           ),
                         )
                       ),

                       Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [

                         Padding(
                           padding: const EdgeInsets.only(top: 10.0,left: 12),
                           child: Row(
                             // mainAxisAlignment: MainAxisAlignment.center,
                             children: [

                               Align(
                                 alignment: Alignment.centerLeft,
                                 child: Text("5% discount on Membership Card",style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 13,
                                     fontWeight: FontWeight.bold
                                 ),),
                               ),
                             ],
                           ),
                         ),

                         Padding(
                           padding:  EdgeInsets.only(top: 6,left: 12),
                           child: Row(
                             children: [
                               Align(
                                 alignment: Alignment.centerLeft,
                                 child: Text("Pay for itself only about one purchase",
                                   style: TextStyle(
                                     color:  Colors.white,
                                     fontSize: 10,
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ),


                       ],
                      ),
                       Padding(
                         padding:  EdgeInsets.only(left: 12,right: 15,top: 100),
                         child: Align(
                           alignment: Alignment.bottomCenter,
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Align(
                                 alignment: Alignment.centerLeft,
                                 child: Text("₹ 260.00/ Month",
                                   style: TextStyle(
                                       color:  Colors.white,
                                       fontSize: 16,
                                       fontWeight: FontWeight.bold
                                   ),
                                 ),
                               ),

                               Text("loyalty card Member 123344",
                                 style: TextStyle(
                                   color:  Colors.white,
                                   fontSize: 12,
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                     ]
                   ),
                 ),

                 Container(
                   padding: const EdgeInsets.all(8.0),
                   color: Colors.transparent,
                   width: MediaQuery.of(context).size.width * 0.9,
                   height: MediaQuery.of(context).size.height,
                   child: ContainedTabBarView(
                     tabBarProperties: TabBarProperties(
                       //height: 32.0,
                       labelColor: Colors.red,
                       indicatorColor: Color(0xff07D3DF),
                       indicatorWeight: 1.0,
                       unselectedLabelColor: Colors.grey[400],
                     ),
                     tabs: [
                       Text('Wallet',
                         style: TextStyle(
                         //color: Colors.red,
                           fontSize: 13,
                         fontWeight: FontWeight.bold,
                       ),),
                       Text('Credit', style: TextStyle(
                         //color: Colors.red,
                         fontSize: 13,
                         fontWeight: FontWeight.bold,
                       ),),
                     ],
                     views: [
                       wallet_w(),
                       credit_w()
                       //Container(color: Colors.green),
                       //Container(color: Colors.green)
                     ],
                     onChange: (index) => print(index),
                   ),
                 ),
               ],
             ),
           )
       )
     ],
   );
  }

  Widget wallet_w(){
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0,bottom: 10),
            child: Text("My Balance \u{1FA99} 750 Coins",
              style: TextStyle(
              color: Color(0xffCC0000),
              fontSize: 13,
            ),),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Row(
            children: [
              SizedBox(
                  width:30,
                  height: 30,
                  child: Image.asset("assets/bigcoin.png")),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(" Buy Coins",style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                  Text(" Buy Coins and unlock special features specially \n curated for you.",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      )),

                ],
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(" \u{1FA99} 46 Coins",style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),

              Container(
               width: 50,
                height: 20,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff07D3DF),width: 1.5),
                ),
                child: Text("₹ 99.00",style: TextStyle(
                    fontSize: 12,
                    color: Colors.black
                ),),
              ),

            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(" \u{1FA99} 146 Coins",style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),

              Row(
                children: [

                  Text("VIP ₹249.00 ",style: TextStyle(
                    fontSize: 10,
                    color: Color(0xffCC0000),
                    fontWeight: FontWeight.bold,
                  ),),

                  Container(
                    width: 50,
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff07D3DF),width: 1.5),
                    ),
                    child: Text("₹ 99.00",style: TextStyle(
                        fontSize: 12,
                        color: Colors.black
                    ),),
                  ),
                ],
              ),

            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(" \u{1FA99} 426 Coins",style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    width: 60,
                    height: 15,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffCC0000),width: 1.5),
                    ),
                    child: Text("8% bonus",style: TextStyle(
                        fontSize: 10,
                        color: Colors.black
                    ),),
                  ),
                ],
              ),

              Row(
                children: [

                  Text("VIP ₹249.00 ",style: TextStyle(
                    fontSize: 10,
                    color: Color(0xffCC0000),
                    fontWeight: FontWeight.bold,
                  ),),

                  Container(
                    width: 50,
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff07D3DF),width: 1.5),
                    ),
                    child: Text("₹ 99.00",style: TextStyle(
                        fontSize: 12,
                        color: Colors.black
                    ),),
                  ),
                ],
              ),

            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(" \u{1FA99} 426 Coins",style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    width: 60,
                    height: 15,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffCC0000),width: 1.5),
                    ),
                    child: Text("10% bonus",style: TextStyle(
                        fontSize: 10,
                        color: Colors.black
                    ),),
                  ),
                ],
              ),

              Row(
                children: [

                  Text("VIP ₹249.00 ",style: TextStyle(
                    fontSize: 10,
                    color: Color(0xffCC0000),
                    fontWeight: FontWeight.bold,
                  ),),

                  Container(
                    width: 50,
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff07D3DF),width: 1.5),
                    ),
                    child: Text("₹ 99.00",style: TextStyle(
                        fontSize: 12,
                        color: Colors.black
                    ),),
                  ),
                ],
              ),

            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(" \u{1FA99} 426 Coins",style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    width: 60,
                    height: 15,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffCC0000),width: 1.5),
                    ),
                    child: Text("12% bonus",style: TextStyle(
                        fontSize: 10,
                        color: Colors.black
                    ),),
                  ),
                ],
              ),

              Row(
                children: [

                  Text("VIP ₹249.00 ",style: TextStyle(
                    fontSize: 10,
                    color: Color(0xffCC0000),
                    fontWeight: FontWeight.bold,
                  ),),

                  Container(
                    width: 50,
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff07D3DF),width: 1.5),
                    ),
                    child: Text("₹ 99.00",style: TextStyle(
                        fontSize: 12,
                        color: Colors.black
                    ),),
                  ),
                ],
              ),

            ],
          ),
        ),
      ],
    );
  }

  Widget credit_w(){
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0,bottom: 10),
            child: Text("100 \u{1FA99} Coins",
              style: TextStyle(
                color: Color(0xffCC0000),
                fontSize: 13,
              ),),
          ),
        ),

        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 0.0,bottom: 10),
            child: Text("Your Balance : ₹249.00 ",
              style: TextStyle(
                color: Color(0xffCC0000),
                fontSize: 13,
              ),),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Credit Balance",
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,

              ),),

              Text("0",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,

                ),),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Exchange to Coins",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,

                ),),

              Text("\u{1FA99} 0",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,

                ),),
            ],
          ),
        ),


        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 35,
            color: Color(0xffCC0000),
            child: FlatButton(
              onPressed: (){
              },
              child: Text("EXCHANGE",
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
    );
  }
}