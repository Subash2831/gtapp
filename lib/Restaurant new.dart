import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtapp/Menu.dart';
import 'package:gtapp/class.dart';
import 'package:gtapp/model.dart';

import 'color.dart';

class rp extends StatefulWidget {
  const rp({super.key});

  @override
  State<rp> createState() => _rpState();
}

class _rpState extends State<rp> {
  var currentindex = 0;

  static List<String> menuImage = [
    "assets/img/cake.jpg",
    "assets/img/pp.jpg",
  ];

  final List<menuPhoto> menudata = List.generate(
      menuImage.length, (index) => menuPhoto('${menuImage[index]}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children:[
            SingleChildScrollView(
      child: Column(children: [
          Stack(
            children: [
              CarouselSlider.builder(
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentindex = index;
                      });
                    },
                    height: 380,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: false,
                    enlargeFactor: 0.1,

                    // onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ),
                  itemCount: Donut.length,
                  itemBuilder:
                      (BuildContext context, int Index, int pageViewIndex) {
                    return Container(
                      decoration: BoxDecoration(),
                      child: Image(
                        image: AssetImage(Donut[Index].image),
                        fit: BoxFit.fill,
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                          colors: [
                            Colors.black,
                            Colors.transparent,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: [0, 10.0],
                        ),
                      ),
                    );
                  }
                  ),

              Padding(
                padding: const EdgeInsets.only(top: 176.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 300.0),
                  child: Text(
                    "Gallery",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 185.0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 380.0),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                  )),
              Icon(Icons.arrow_circle_left,size: 50,color: Colors.white,),
              Padding(
                padding: const EdgeInsets.only(top: 250.0),
                child: Container(
                    height: 100,
                    width: 400,
                    decoration: BoxDecoration(),
                    child: Center(
                        child: Text(
                      "The Donuts",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ))),
              )
            ],
          ),
          Row(
            children: [
              Expanded(child: Divider()),
              Text("Menu from Google",style: dividertext,),
              Expanded(child: Divider()),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: wf,
              child: Container(

                height: MediaQuery.of(context).size.height *0.2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(

                ),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: gt.length,
                    itemBuilder: (BuildContext con, index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => m1(
                                      Gts: gt[index],
                                    )));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(image: AssetImage(gt[index].image),fit: BoxFit.fill,),
                          ));
                    }),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(child: Divider()),
              Text("payment Offer",style: dividertext,),
              Expanded(child: Divider()),

            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height*.2,
              width: MediaQuery.of(context).size.width*1,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black
              ),
              child: CarouselSlider.builder(
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentindex = index;
                      }
                      );
                    },
                    height: double.infinity,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 1,

                    // onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ),
                  itemCount: dis.length,
                  itemBuilder:
                      (BuildContext context, int Index, int pageViewIndex) {
                    return Container(
                      height: MediaQuery.of(context).size.height*1,
                      width: MediaQuery.of(context).size.width*1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),

                        image: DecorationImage(
                          image: AssetImage(dis[Index].image),
                          fit: BoxFit.fill
                        )
                      ),

                    );
                  }
                  ),
            ),
          ),
          Row(
            children: [
              Expanded(child: Divider()),
              Text("Location and timing",style: dividertext,),
              Expanded(child: Divider()),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.location_on_outlined,size: 40,),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("163 VRG Complex NSR Road Saibaba Colony"
                      "Coimbbatore",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                ),
              ),
            ],
          ),
          Card(
            elevation: 20,
            child: Row(children: [SizedBox(width: 80,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("View On Map",style:
                TextStyle(color: gtgreen,fontSize: 25,fontWeight: FontWeight.bold),),
              )
            ],
            ),
          ),
          SizedBox(height: 10,),
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.access_time_outlined,size: 40,),
            ),
            SizedBox(width: 25,),
            Text("CLOSED, OPEN AT 11AM",style:
            TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
          ],
          ),
          Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Card(
                     elevation: 20,
                     child: ExpansionTile(
                       title: Text("         Weekly Timings",style:
                       TextStyle(color: gtgreen,fontSize: 25,fontWeight: FontWeight.bold),
                       ),
                       children: [
                         Container(
                           height: MediaQuery.of(context).size.height*0.7,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             border: Border.all(color: Colors.green)
                           ),
                           child: Column(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Text("Timings",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                     ),
                                     Icon(Icons.cancel),
                                   ],
                                 ),
                               ),
                               Row(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Column(children: [
                                       Text("Monday",style:
                                       TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                                       Text("11AM - 9.30PM",style:
                                       TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                                     SizedBox(height: 5,),
                                       Text("Tuesday",style:
                                       TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                                       Text("11AM - 9.30PM",style:
                                       TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                                       SizedBox(height: 5,),
                                       Text("Wednesday",style:
                                       TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                                       Text("11AM - 9.30PM",style:
                                       TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                                       SizedBox(height: 5,),
                                       Text("Thursday",style:
                                       TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                                       Text("11AM - 9.30PM",style:
                                       TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                                       SizedBox(height: 5,),
                                       Text("Friday",style:
                                       TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                                       Text("11AM - 9.30PM",style:
                                       TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                                       SizedBox(height: 5,),
                                       Text("Saturday",style:
                                       TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                                       Text("11AM - 9.30PM",style:
                                       TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                                       SizedBox(height: 5,),
                                       Text("Sunday",style:
                                       TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                                       Text("11AM - 9.30PM",style:
                                       TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                                     ],
                                     ),
                                   ),
                                 ],
                               )
                             ],
                           ),
                         ),

                       ],
                     ),
                   ),
                 ),
          Row(children: [
            Expanded(child: Divider()),
            Text("Features",style: dividertext,),
            Expanded(child: Divider()),
          ],
          ),
          Row(children: [
            Icon(Icons.wifi,size: 30,),
            Text(" Free Wifi"),
            SizedBox(width: 50,),
            Icon(Icons.credit_card),
            Text(" Card Accepted"),

          ],
          ),
           Divider(),
          SizedBox(height: 10,),
          Container(
            height: 415,
            color: wf,
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Similar restaurant",style:
                    TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                  ],
                ),
    Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Container(
    height:MediaQuery.of(context).size.height*.30,
    width: MediaQuery.of(context).size.width*1,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),

    ),
    child:
    ListView.builder   (
      scrollDirection: Axis.horizontal,
      itemCount: Similar.length,
      itemBuilder: (BuildContext context, int index) {

          return Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Stack(
                children: [
                  Container(
                    height:MediaQuery.of(context).size.height*.20,
                    width: MediaQuery.of(context).size.width*1,
                    foregroundDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black,
                            Colors.black12,
                          ]
                      ),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Similar[index].image),fit: BoxFit.fill
                        ),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25),
                          topRight: Radius.circular(20),topLeft: Radius.circular(20),)
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.height*.020,
                    bottom: MediaQuery.of(context).size.height*.035,
                    child: Text(Similar[index].hotelName,
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.height*.04,
                    bottom: MediaQuery.of(context).size.height*.02,
                    child: Text(Similar[index].cusine,
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: 15,
                      ),),
                  ),
                ]
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(top:2.0),
                    child: Icon(Icons.location_on_outlined,color: gtgreen,),
                  ),
                  Text(  Similar[index].place,
                    style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontSize: 16,fontWeight: FontWeight.bold
                    ),),
                ],),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Row(
                    children: [

                      Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Container(
                          height:MediaQuery.of(context).size.height*.02,
                          width: MediaQuery.of(context).size.width*.04,
                          color: Colors.green,
                          child:  RatingBar.builder(
                            glowRadius: 3,
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 1,
                            itemSize: 15,
                            itemPadding: const EdgeInsets.symmetric(horizontal:0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star_rate,
                              size:1,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                            },
                          ),),
                      ),Text(Similar[index].rating,
                        style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 16,fontWeight: FontWeight.bold
                        ),)
                    ],
                  ),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(Similar[index].distance,
                  style: GoogleFonts.openSans(
                      color: Colors.black,
                      fontSize: 16,fontWeight: FontWeight.bold
                  ),),

              ],),
            Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Parking",style: GoogleFonts.openSans(fontSize:16,color: Colors.black,fontWeight: FontWeight.bold),),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 25,
                    width:45,
                    decoration: BoxDecoration(border: Border.all(),color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black87,
                            spreadRadius: 0.5,
                            blurRadius: 25,
                            offset: const Offset(0, 5),
                          )
                        ]
                    ),
                    child: Center(child: Icon(Icons.directions_car,color:Colors.red,))),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 25,
                    width:45,
                    decoration: BoxDecoration(border: Border.all(),color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black87,
                            spreadRadius: 0.5,
                            blurRadius: 25,
                            offset: const Offset(0, 5),
                          )
                        ]
                    ),
                    child: Center(child: Icon(Icons.two_wheeler,color:Colors.green,))),
              ),
              SizedBox(width: 150,),
              Icon(Icons.directions,color:Colors.green,size: 35,)

            ],)
          ],);
      },

    )),





              ],
            ),
          ]
    )








    ),
   ] )
    ),
            Container(
              height: 90,
              width: double.infinity,
              color: Colors.white,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width*.4,
                    decoration: BoxDecoration(
                        color: gtgreen.withOpacity(.6),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.call),
                  ),
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width*.4,
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(.6),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.share),
                  ),
                ],
              ),
            )
          ]
        ),

    );
  }
}
