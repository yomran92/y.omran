import 'dart:developer';

import '../../localization/language/languages.dart';
import 'package:url_launcher/url_launcher.dart';

//import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';
class HelpmeScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HelpmeScreen();
  }
}
class _HelpmeScreen extends State <HelpmeScreen>
{
        TextEditingController requestText = new TextEditingController();
    TextEditingController choosePlaceText = new TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return 
    Scaffold(

      //    backgroundColor: Colors.black,
    body:
 //Center(child:Text("hglk")),
          SingleChildScrollView(
            child:
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      height:MediaQuery.of(context).size.height-60,
                      width: MediaQuery.of(context).size.width,
                      child:
                      Stack(
    
                          children: [
    
                            Positioned(
    
                              child:
                              Container(
                                height: MediaQuery.of(context).size.height-60,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.grey.shade200,
                                      //     offset: Offset(2, 4),
                                      //   blurRadius: 5,
                                      // spreadRadius: 2
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              //bottom: 250,
    
                              child:
                              Container(
                                height: 350,
                                width: MediaQuery.of(context).size.width,
    
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(50),bottomRight:Radius.circular(50) ),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                          color: Colors.grey.shade200,
                                          offset: Offset(2, 4),
                                          blurRadius: 5,
                                          spreadRadius: 2)
                                    ],
                                    gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.center,
                                        colors: [Colors.purple.shade200,
                                          Colors.purple.shade600])),
                              ),
                            ),
    
                            Positioned(
                              top:MediaQuery.of(context).size.height*0.25,
                              left:MediaQuery.of(context).size.width*0.095,
                              
    
                                child:Container(
                                 
                                     
                                       
                                        
               // padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Color(0xffD5E6F2),
                    borderRadius: BorderRadius.circular(40)),
                           child:ClipRRect(
    borderRadius: BorderRadius.circular(40.0),
                child: Image.asset(
                  "assets/image/request.jpg",
                height: MediaQuery.of(context).size.height*0.25,
                width: MediaQuery.of(context).size.width*0.8,
                fit: BoxFit.fill,
                
                
                  //width: 200,
                ),
              ),)
              
                                    ),
                                      
                                       
                                
                             
                            Container(
              
                              padding: EdgeInsets.only(
                                  left: 24,
                                  right: 24,
                                  top: 50
                              ),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      child: Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.share,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                  SizedBox(
                                    width: 24,
                                  ),
                                  Image.asset(
                                    "assets/image/heart.png",
                                    height: 24,
                                    width: 24,
                                  )
                                ],
                              ),
                            ),
              
                            Positioned(
                              top:MediaQuery.of(context).size.height*0.55,
       
                                child:Container(
                                  width: MediaQuery.of(context).size.width*0.9,
                                  height: MediaQuery.of(context).size.height*0.4,

                                  child: Column(
                                    children:<Widget>[
                                      Container(
                                        padding: EdgeInsets.all(16),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            Languages.of(context).contactUs,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          // TextField(
            
              
          //     controller:  requestText,
          //     decoration: InputDecoration(
          //         border: InputBorder.none,
          //         //fillColor: Color(0xfff3f3f4),
          //         filled: true)),
                 
          
        ],
      ),
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.3,
                                      //  child:
           //                           TextButton(
         //                               onPressed: (){},
       //                                  style: TextButton.styleFrom(
    //  primary: Colors.transparent,
    //  backgroundColor: Colors.purple.shade200,
    //    shadowColor: Colors.red,
    //    elevation: 5,
    //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),

    // ),
              // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
              // color: Colors.purple.shade50.withAlpha(40),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                   //Image.asset(imagePath),
                   InkWell(
                     onTap: (){
                       shareWatsapp();
                     },
                   child: Image.asset("assets/image/whatsapp.png")
        // Text(Languages.of(context).whatsapp,style: TextStyle(fontSize: 20, color: Colors.black),),
                   )
      
      
                                  ],
               ),
                                      )
                                   //   )

                                      
                                    ]
                                  ),
                                )
                                 
                                     
                               
                                    ),
    
                          ]
                      )

                  )

                ],
              ),
         ),
          ),

 
 );
    
 
  }
  shareWatsapp() async {
    // String result = await FlutterSocialContentShare.shareOnWhatsapp( "00963937335293",  "Text mmmm here");
    // print(result);
    var phone = "+963931651765";
  
    var whatsappUrl ="whatsapp://send?phone=$phone";
    await canLaunch(whatsappUrl)? launch(whatsappUrl):print("open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
  }
  }

    // Scaffold(
    //     body:
    //     Container(
    //       height: MediaQuery.of(context).size.height,
    //       decoration: BoxDecoration(
    //           borderRadius: BorderRadius.all(Radius.circular(5)),
    //           boxShadow: <BoxShadow>[
    //             BoxShadow(
    //                 color: Colors.grey.shade200,
    //                 offset: Offset(2, 4),
    //                 blurRadius: 5,
    //                 spreadRadius: 2)
    //           ],
    //           gradient: LinearGradient(
    //               begin: Alignment.topRight,
    //               end: Alignment.center,
    //               colors: [Colors.yellow.shade200,
    //                 Colors.grey.shade600])),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: <Widget>[

    //           Container(
    //             //height: MediaQuery.of(context).size.height*0.7,
    //             padding:EdgeInsets.only(
    //               //top:MediaQuery.of(context).padding.top,
    //               left:16,
    //               right:16,
    //             ),

    //             //width:300.0,
    //             //height: 300.0,
    //             child:Image.asset('assets/images/helpImage.png'),
    //            // SvgPicture.asset('assets/images/helpme.svg',height: MediaQuery.of(context).size.height*0.6,),
    //           ),
    //           //Padding(padding: EdgeInsets.all(2.0)),
    //           Container(
    //             padding: const EdgeInsets.only(top : 8.0),
    //             child: Text("\nHow can we help you?",
    //               style:TextStyle(
    //                 fontSize: 24.0,
    //                 fontWeight: FontWeight.bold, ),
    //               textAlign: TextAlign.center,


    //             ),
    //           ),

    //           Expanded(
    //               child:Padding(
    //                 padding: const EdgeInsets.all(8.0),
    //                 child:Center(child: Container(
    //                     width:140,
    //                     height:40 ,
    //                     decoration: BoxDecoration(color: Colors.grey.shade400,
    //                       borderRadius: const BorderRadius.all(Radius.circular(5.0)),
    //                       boxShadow: <BoxShadow> [
    //                         BoxShadow(color: Colors.grey.withOpacity(0.5),
    //                             offset:const Offset(6,6),
    //                             blurRadius: 8.0 )
    //                       ],
    //                     ),

    //                     child:Material(
    //                         color: Colors.transparent,
    //                         child : InkWell(
    //                           onTap: (){
    //                             //_launchURL("0931651765");
    //                            // shareWatsapp();
    //                             //  sharefacebookapp();
    //                             // final RenderBox box =
    //                             //                         context.findRenderObject();
    //                             //                     Share.share("text",
    //                             //                         subject: "Hellow",
    //                             //                         sharePositionOrigin:
    //                             //                             box.localToGlobal(
    //                             //                                     Offset.zero) &
    //                             //                                 box.size);

    //                           },

    //                           child: Center (
    //                               child:Padding(
    //                                 padding: const EdgeInsets.all(4.0),
    //                                 child: Text('Contact Us',
    //                                   style:TextStyle(
    //                                       fontWeight: FontWeight.w600,
    //                                       color:Colors.white
    //                                   ) ,),

    //                               )


    //                           ),
    //                         )

    //                     )

    //                 ),

    //                 ),)
    //           ),


    //           // SizedBox(
    //           //   height: MediaQuery.of(context).size.height*0.4,
    //           // )

    //         ],

    //       ),
    //     )


    // );

  // _launchURL(String  url) async {
  //   //String  url =tourPlaceTour[index].placeUrl;
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  // shareWatsapp() async {
  //   // String result = await FlutterSocialContentShare.shareOnWhatsapp( "00963937335293",  "Text mmmm here");
  //   // print(result);
  //   var phone = "+972509562366";
  //
  //   var whatsappUrl ="whatsapp://send?phone=$phone";
  //   await canLaunch(whatsappUrl)? launch(whatsappUrl):print("open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
  // }
  // sharefacebookapp() async {
  //
  // }
