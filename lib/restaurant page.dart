import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'color.dart';

class gts extends StatefulWidget {
  const gts({super.key});

  @override
  State<gts> createState() => _gtsState();
}

class _gtsState extends State<gts> {
  var currentindex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgclr,
      body:
        CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: bgclr,
              leading: Icon(Icons.arrow_circle_left),
              actions: [
                Row(
                  children: [
                    Text("Help",style: TextStyle(),
                    ),
                    Icon(Icons.messenger_rounded)
                  ],
                ),


              ],
              expandedHeight: 400,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    CarouselSlider.builder(
                        options: CarouselOptions(
                          onPageChanged: (index, reason){
                            setState(() {
                              currentindex=index;
                            });
                          },
                          height: 500,
                          aspectRatio: 16/9,
                          viewportFraction: 1,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: false,
                          autoPlayInterval: Duration(seconds: 0),
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: false,
                          enlargeFactor: 0.1,

                          // onPageChanged: callbackFunction,
                          scrollDirection: Axis.horizontal,
                        ),
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
                        {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Image(image: AssetImage("assets/img/pp.jpg"),
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
                      padding: const EdgeInsets.only(top: 180.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 300.0),
                        child: Text("Gallery",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 185.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 355.0),
                        child: Icon(Icons.arrow_forward_ios_outlined,size: 15,color: Colors.white,
                      ),
                    )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 250.0),
                      child: Container(
                        height: 100,
                        width: 400,

                        decoration: BoxDecoration(

                          color: bgclr,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all()



                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 50.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("open TILL 11PM"),
                                  SizedBox(width: 210,),
                                  Icon(Icons.share),
                                  SizedBox(width: 10,),
                                  Icon(Icons.favorite_border),

                                ],
                              ),
                            ],
                          ),

                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverAppBar(
              backgroundColor: bgclr,
              title: Column(
                children: [
                  Row(
                    children: [
                      Text("Menu from Google"),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 10,),
                      ListTile(
                        leading: Hero(
                          tag: 'hero-rectangle',
                            child: BoxWidget(size: Size(100,200)),
                        ),
                        onTap: () => _gotoDetailsPage(context),
                      )
                    ],
                  )



                ],
              ),

            )



            
            






          ],
        )





















    );
  }
  void _gotoDetailsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Second Page'),
        ),
        body: const Center(
          child: Hero(
            tag: 'hero-rectangle',
            child: BoxWidget(size: Size(200.0, 200.0)),
          ),
        ),
      ),
    ));
  }
}
class BoxWidget extends StatelessWidget{
  const BoxWidget ({required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.blue,
    );
  }
}
