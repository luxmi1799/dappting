import 'dart:convert';
import 'dart:ui';

import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../provider/profile_provider.dart';
import '../show_profile.dart';


class OptionsScreen extends StatefulWidget{
  final int?index;
  const OptionsScreen({Key? key, this.index}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _OptionsScreen();
  }

}

class _OptionsScreen extends State<OptionsScreen> {
   var getuser;
   var membership;
  @override
  Widget build(BuildContext context) {
    context.read<hostlist_provider>().host_list();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Consumer<hostlist_provider>(
          builder: (context,value,child) {
            return value.map["data"]["HostList"]!=null? Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 110),
                        Center(
                          //alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top:MediaQuery.of(context).size.height/2,left: 10,right: 10,bottom: 0),
                            //child: Opacity(
                            child: value.map["data"]["HostList"]!=null?Container(
                              //alignment: Alignment.bottomCenter,
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 140,
                              color:const Color(0xffCC0000).withOpacity(0.4),
                              child: Container(
                                width: MediaQuery.of(context).size.width *.9,
                                child:Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20,top: 10,bottom: 3,right: 20),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                InkWell(
                                                    onTap: () async {
                                                      SharedPreferences prefs = await SharedPreferences.getInstance();
                                                      prefs.setString("host_id",  value.map["data"]["HostList"][widget.index]["user_id"].toString());
                                                      Navigator.of(context).push(MaterialPageRoute(builder:(context) => show_profile()));
                                                    },
                                                    child:
                                                    value.map["data"]["HostList"][widget.index]["profile_image"]!=null? ClipRRect(
                                                        borderRadius: BorderRadius.circular(20),
                                                        child: Image.network( value.map["data"]["HostList"][widget.index]["profile_image"],width: 40,height: 40,fit: BoxFit.fill,))
                                                        : const Icon(Icons.person)
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                                  child: Text( value.map["data"]["HostList"][widget.index]["name"]??"",
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.bold,
                                                    ),),
                                                ),
                                              ],
                                            ),
                                            FavoriteButton(
                                              isFavorite: true,
                                              iconDisabledColor: Colors.white,
                                              valueChanged: (_isFavorite) {
                                                print('Is Favorite : $_isFavorite');
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20,right: 10,top: 0),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("Australia",
                                              style: TextStyle(
                                                color: Colors.white.withOpacity(0.9),
                                                fontSize: 12,
                                              ),),
                                          ),
                                        ),

                                        Opacity(
                                          opacity: 0.9,
                                          child: Container(
                                            // color: Colors.green.withOpacity(5),
                                            width: 50,
                                            height: 17,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Colors.green.withOpacity(0.6),
                                            ),
                                            child: const Center(
                                              child: Text("online",style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Padding(
                                          padding:  EdgeInsets.only(left: 20.0,top: 0),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("Video Call @ 30 \u{1FA99}/ min",
                                              style: TextStyle(
                                                color:  Color(0xff07D3DF),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:  const EdgeInsets.only(right: 20.0),
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Row(
                                              children: [
                                                InkWell(
                                                    onTap: (){
                                                      //setState(() {
                                                      showDialog(
                                                        context: context,
                                                        builder: (context) =>  BackdropFilter(
                                                          filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
                                                          child: Center(
                                                            child: Container(
                                                              width: MediaQuery.of(context).size.width,
                                                              height: 270,
                                                              child: Dialog(
                                                                backgroundColor: Colors.transparent,
                                                                child: ListView.builder(
                                                                    scrollDirection: Axis.horizontal ,
                                                                    shrinkWrap: true,
                                                                    itemCount: membership["HostList"].length,
                                                                    itemBuilder: (ctx, i) {
                                                                      return _dialog(context,i);
                                                                    }),
                                                                //child: _dialogContent(context)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                      //});
                                                    },
                                                    child: const Icon(Icons.videocam,color: Colors.white,size: 38,))
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ):Center(child: SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator()),),
                            // ),
                          ),
                        ),
                        /*Row(
                      children: [
                        CircleAvatar(
                          child: Icon(Icons.person, size: 18),
                          radius: 16,
                        ),
                        SizedBox(width: 6),
                        Text('flutter_developer02'),
                        SizedBox(width: 10),
                        Icon(Icons.verified, size: 15),
                        SizedBox(width: 6),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Follow',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ), */
                        /*SizedBox(width: 6),
                    Text('Flutter is beautiful and fast 💙❤💛 ..'),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.music_note,
                          size: 15,
                        ),
                        Text('Original Audio - some music track--'),
                      ],
                    ), */
                      ],
                    ),
                    /* Column(
                  children: [
                    Icon(Icons.favorite_outline),
                    Text('601k'),
                    SizedBox(height: 20),
                    Icon(Icons.comment_rounded),
                    Text('1123'),
                    SizedBox(height: 20),
                    Transform(
                      transform: Matrix4.rotationZ(5.8),
                      child: Icon(Icons.send),
                    ),
                    SizedBox(height: 50),
                    Icon(Icons.more_vert),
                  ],
                )*/
                  ],
                ),
              ],
            ):Center(child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator()),);
          },
      ),
    );
  }

  Widget _dialog(BuildContext context,int index){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 8,top: 10,bottom: 10),
          child: Container(
            width: MediaQuery.of(context).size.width*0.7,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color:const Color(0xffCC0000).withOpacity(0.4),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(text: "My Balance: ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                )
                            ),
                            WidgetSpan(child: Image.asset("assets/smallcoin.png",width: 15,height: 15,)),
                             TextSpan(text:
                                membership["MyBalance"]["coins"],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                )
                            ),
                          ],
                        ),
                      ),

                      const Icon(Icons.clear_rounded,size: 15,color: Colors.white,)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.arrow_back_ios,size: 15,color: Colors.white,),
                      Center(
                        child: Image.asset("assets/bigcoin.png",width: 40,height: 40,),
                      ),
                      const Icon(Icons.arrow_forward_ios_rounded,size: 15,color: Colors.white,),
                    ],
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Center(
                      child: Text(
                        membership["HostList"][index]["Coins"],style:TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),)
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(membership["HostList"][index]["PlanPrice"],style:TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                      ),)
                  ),
                ),
              ],
            ),
          ),
        ),

        Container(
          width: 80,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color:const Color(0xffCC0000).withOpacity(0.4),
          ),
          child: Container(
            width: 80,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xffCC0000),width: 2)
            ),
            child: const Center(
              child: Text(
                "Buy Now",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 13
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    getmembership();
  }

    Future<String> getmembership() async {
    //replace your restFull API here.
    String url = "https://hookupindia.in/hookup/ApiController/membershipPlanList";
    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);
     setState(() {
       membership = responseData["data"];
     });
     print("membership $membership");
     //Creating a list to store input data;
    return "users";
    }

    //
}
