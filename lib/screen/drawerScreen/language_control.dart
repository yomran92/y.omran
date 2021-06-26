import 'dart:developer';

import '../../localization/locale_constant.dart';
import 'package:url_launcher/url_launcher.dart';

//import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';
class LanguageControl extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LanguageControl();
  }
}
class _LanguageControl extends State <LanguageControl>
{
    
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
                              left:0,
                              
    
                                child:
                                
                                   Container(
                                     width: MediaQuery.of(context).size.width,
                                     height: MediaQuery.of(context).size.height*0.15,
                                     padding: const EdgeInsets.all(8.0),
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       children: <Widget>[

  SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                            
                                Container(

                                    width: MediaQuery.of(context).size.width*0.3,
                                     height: MediaQuery.of(context).size.height*0.1,
                                       
                                         
                                          
                 padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Color(0xffD5E6F2),
                    borderRadius: BorderRadius.circular(40)),
                           child:
                            InkWell(
                             onTap: (){
                                changeLanguage(context, "ar");


                             },
                             child:Center(child:
                 
                   //Image.asset(imagePath),
          
         Text("العربية",style: TextStyle(fontSize: 20, color: Colors.black),),))
      ),
      
                                 
              
                                      
                            
                        
                          
                           SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                           Container(
                             width: MediaQuery.of(context).size.width*0.3,
                                     height: MediaQuery.of(context).size.height*0.1,
                                          
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Color(0xffD5E6F2),
                    borderRadius: BorderRadius.circular(40)),
                           child:
                           InkWell(
                             onTap: (){
 changeLanguage(context, "en");

                             },
                             child:
                             Center(child:
                           Text("English",style: TextStyle(fontSize: 20, color: Colors.black),),)
                           )
                        
                           ),
                 SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                           ],

                           ),
                                   ),
                                   

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
