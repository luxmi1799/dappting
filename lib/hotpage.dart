import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dapp/profile_dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

List discover1 = ["assets/discover1.png","assets/discover4.png"];
List discover2 = ["assets/discover2.png","assets/discover5.png"];
List discover3 = ["assets/discover3.png","assets/discover6.png"];

class hotpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _hot_match();
  }
}

class _hot_match extends State<hotpage> {
  double _opacity = 0.9;
  var hotprofile;


  @override
  void initState() {
    super.initState();
    getmembership();
  }

  Future<String> getmembership() async {
    //replace your restFull API here.
    String url = "https://hookupindia.in/hookup/ApiController/hotList";
    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);
    setState(() {
      hotprofile = responseData["data"]["HostList"];
    });
    print("hotprofile $hotprofile");
    //Creating a list to store input data;
    return "users";
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
                height: MediaQuery.of(context).size.height*0.5,
                fit: BoxFit.cover)),
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
                    TextSpan(text: "Discover",
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
              child: hotprofile!=null?Column(
                children: [

                  SizedBox(
                    height: 30,
                  ),

                  ListView.builder(
                    // the number of items in the list
                      itemCount: hotprofile.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: ScrollPhysics(),
                      // display each item of the product list
                      itemBuilder: (context, index) {
                        return  Padding(
                              padding: const EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 15),
                              child: Container(
                               width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height*.62,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                  color: Color(0xfff5cccc),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                     height: 10,
                                    ),

                                    Container(
                                      height: 360,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MasonryGridView.count(
                                          crossAxisSpacing: 8,
                                          mainAxisSpacing: 8,
                                          scrollDirection: Axis.vertical,
                                          physics: NeverScrollableScrollPhysics(),
                                          itemCount: hotprofile[index]["GalleryList"].length,
                                          itemBuilder: (context,i){
                                            return hotprofile[index]["GalleryList"][i]["image"]!=""?ClipRRect(
                                                borderRadius: BorderRadius.circular(10),
                                                child: Image.network(hotprofile[index]["GalleryList"][i]["image"])
                                            ): Align(
                                                alignment: Alignment.center,
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(30),
                                                  child: Image.network(hotprofile[index]["profile_image"],width: 200,height: 200,fit: BoxFit.cover,),
                                              ),
                                            );
                                          }, crossAxisCount: 2,
                                        ),
                                      ),
                                    ),


                                    /* Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: ClipRRect(
                                              borderRadius: BorderRadius.circular(10.0),
                                              child: Stack(
                                                children:
                                                [
                                                  Image.asset(discover1[index],fit: BoxFit.cover,
                                                  width:MediaQuery.of(context).size.width*0.4,
                                                  height: 370,
                                                ),
                                                Positioned(
                                                    left: 15,
                                                    top: 10,
                                                    child: Container(
                                                      width: 80,
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(8),
                                                        color:Colors.white.withOpacity(0.4),
                                                      ),
                                                        child: Container(
                                                         width: 80,
                                                          height: 30,
                                                           decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(8),
                                                            border: Border.all(color: Color(0xff07D3DF),width: 2)
                                                            ),
                                                        child: Center(
                                                          child: Text(
                                                            "30 \u{1FA99}/ min",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.white,
                                                              fontSize: 13
                                                            ),
                                                          ),
                                                        ),
                                                        ),
                                                    )
                                                 )
                                               ]
                                              )),
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(5.0),
                                              child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(10.0),
                                                  child: Image.asset(discover2[index],fit: BoxFit.cover,
                                                    width: MediaQuery.of(context).size.width*0.4,
                                                    height: 180,
                                                  )),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(5.0),
                                                  child: ClipRRect(
                                                      borderRadius: BorderRadius.circular(10.0),
                                                      child: Image.asset(discover3[index],fit: BoxFit.cover,
                                                        width:MediaQuery.of(context).size.width*0.4,
                                                        height: 180,
                                                      ))

                                            ),
                                          ],
                                        ),
                                      ],
                                    ), */
                                    
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical:6.0,horizontal: 20),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: InkWell(
                                          onTap: (){
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> profile_dashboard()));
                                          },
                                          child: Text(
                                              hotprofile[index]["name"],
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                                color: Colors.black
                                              ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical:0.0,horizontal: 20),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Australia",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff686868),
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),

                                          Row(
                                            children: [
                                              Image.asset("assets/msgred.png",height: 22,
                                              width: 22,),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Image.asset("assets/video.png",height: 22,
                                                width: 22,),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )

                                  ],
                                ),
                             ),
                          );
                   }),
                ],
              ):Center(child: CircularProgressIndicator(),),
            )
        ),
      ],
    );
  }
}