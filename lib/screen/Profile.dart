import '../localization/language/languages.dart';
import '../screen/auth/EditProfile1.dart';
import '../screen/auth/EditProfile2.dart';
import '../screen/auth/about_page.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:social_share/social_share.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constant.dart';
import 'auth/LoginApp.dart';
class Profile extends StatefulWidget {
    Profile({
    Key key,
  }) : super(key: key);
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
 //StudentProfileResponseModel studentProfileResponseModel = new  StudentProfileResponseModel();
//String imagePathFaculties=baseimagePath+"professor/";
double x_background_start;
double x_background_end;
String imagePathuser=baseimagePath ;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    // currentUserLogged.role!="stud"?getpr
    // getstudentprofileApiResponse();
    if(currentUserLogged.role=="stu")
    {
      imagePathuser+= "student/";
    }
    else{
imagePathuser+="professor/" ;
    }
    
       x_background_start=currentLanguge.languageCode!="ar"?80:0;
       x_background_end=currentLanguge.languageCode!="ar"?0:80;

  }
  @override
  Widget build(BuildContext context) {
    print("imagePathuser+currentUserLogged.profilePhotoUrl");
    print(imagePathuser+currentUserLogged.image);
    return Scaffold(
      backgroundColor: const Color(0xff1f7ddb),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: x_background_start, end: x_background_end),
            Pin(size: 392.0, end: 89.0),
            child:
            // background
                // Adobe XD layer: 'student_PNG135' (shape)

                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/image/profile_background.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
           Pinned.fromPins(
            Pin(size: 359.0, start: 20.0),
            Pin(size: 321.8, middle: 0.5522),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 2.8, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 10.0, end: 10.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: '#2' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 10.0, end: 10.0),
                              Pin(start: 50.0, end: 0.0),
                              child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                
                                children: <Widget>[
                    

                                  
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Container(
                       width: MediaQuery.of(context).size.width*0.3,
                       height: MediaQuery.of(context).size.height*0.04,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          gradient: LinearGradient(
                            begin: Alignment(1.0, 0.0),
                            end: Alignment(-1.0, 0.0),
                            colors: [
                              const Color(0xfffe9654),
                              const Color(0xfffd6c57)
                            ],
                            stops: [0.0, 1.0],
                          ),
                        ),
                        child: 
                
                InkWell(
                        onTap: (){
                               Navigator.push(
            context,
           //MaterialPageRoute(builder: (context) => OtpScreen()),
           MaterialPageRoute(builder: (context) => EditProfile1(
             )),
          );
                        },
                        child:
                       Center(
                         child: Text(
                         Languages.of(context).edite,
                          style: TextStyle(
                            fontFamily: 'Tofino',
                            fontSize: 15,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            height: 2.6666666666666665,
                          ),
                          textHeightBehavior:
                              TextHeightBehavior(applyHeightToFirstAscent: false),
                      //  textAlign: TextAlign.right,
                      ),
                       ),
                         ),
                     ),
                   ],
                 ),
           
                                  SizedBox(height:5),
                                                                      InkWell(
onTap: (){
    shareWatsapp();
},child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: <Widget>[
                                    //  SvgPicture.string(
                                    //         _svg_nv5sh8,
                                    //         allowDrawingOutsideViewBox: true,
                                    //         fit: BoxFit.fill,),
                                    // Container(width:20,
                                    // //child: Icon(Icons.),
                                    // ),

                                 
                                   Expanded(child:Text(
                                              Languages.of(context).inviteFriends,
                                              style: TextStyle(
                                                fontFamily: 'Tofino',
                                                fontSize: 15,
                                                color: const Color(0xffffffff),
                                              ),
                                           //   textAlign: TextAlign.left,
                                            ),
                                   ),
                                   
                                               
                                                      // Adobe XD layer: 'Arrow' (shape)
                                                      SvgPicture.string(
                                                    _svg_otnreb,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                
                                  
                                ],),

                             
                                                                      ),
                           
                                //  Row(
                                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                //   crossAxisAlignment: CrossAxisAlignment.center,

                                //   children: <Widget>[
                                //    Expanded(child:Text(
                                //               Languages.of(context).favouriteCollegeDoctors,
                                //               style: TextStyle(
                                //                 fontFamily: 'Tofino',
                                //                 fontSize: 15,
                                //                 color: const Color(0xffffffff),
                                //               ),
                                //               textAlign: TextAlign.left,
                                //             ),
                                //    ),
                                               
                                //                       // Adobe XD layer: 'Arrow' (shape)
                                //                       SvgPicture.string(
                                //                     _svg_otnreb,
                                //                     allowDrawingOutsideViewBox:
                                //                         true,
                                //                     fit: BoxFit.fill,
                                //                   ),
                                                
                                  
                                // ],),
                                                                  SizedBox(height:5),
                                                                  InkWell(
                                                                     onTap:(){
                                            Navigator.push(
            context,
           //MaterialPageRoute(builder: (context) => OtpScreen()),
           MaterialPageRoute(builder: (context) => EditProfile2(
             )),
          );
                                     },
                                                                    child: 
                                     Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: <Widget>[
                                //      SvgPicture.string(
                                // _svg_txmqtm,
                                // allowDrawingOutsideViewBox: true,
                                // fit: BoxFit.fill,
                                //      ),
                                   Expanded(
                                    
                                     child:Text(
                                              Languages.of(context).changePassword,
                                              style: TextStyle(
                                                fontFamily: 'Tofino',
                                                fontSize: 15,
                                                color: const Color(0xffffffff),
                                              ),
                                            //  textAlign: TextAlign.left,
                                            ),
                                   ),
                                               
                                                      // Adobe XD layer: 'Arrow' (shape)
                                                      SvgPicture.string(
                                                    _svg_otnreb,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                
                                  
                                ],),
                                                                  ),
                                                                  SizedBox(height:5),
                                                                  InkWell(child: 
                                                                
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: <Widget>[
                                   Expanded(child:Text(
                                              Languages.of(context).about,
                                              style: TextStyle(
                                                fontFamily: 'Tofino',
                                                fontSize: 15,
                                                color: const Color(0xffffffff),
                                              ),
                                         //     textAlign: TextAlign.left,
                                            ),
                                   ),
                                               
                                                      // Adobe XD layer: 'Arrow' (shape)
                                                      SvgPicture.string(
                                                    _svg_otnreb,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                
                                  
                                ],),
                                onTap: (){
                               //   shareWatsapp();
                             //  shareWatsapp1();
                                             Navigator.push(
            context,
           //MaterialPageRoute(builder: (context) => OtpScreen()),
           MaterialPageRoute(builder: (context) => AboutPage1(
             )),
          );
                                },
                                  ),
                                                                   SizedBox(height:5),
                                                                  InkWell(child: 
                                                                
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: <Widget>[
                                   Expanded(child:Text(
                                              Languages.of(context).bankacounts,
                                              style: TextStyle(
                                                fontFamily: 'Tofino',
                                                fontSize: 15,
                                                color: const Color(0xffffffff),
                                              ),
                                         //     textAlign: TextAlign.left,
                                            ),
                                   ),
                                               
                                                      // Adobe XD layer: 'Arrow' (shape)
                                                      SvgPicture.string(
                                                    _svg_otnreb,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                
                                  
                                ],),
                                onTap: (){
                               //   shareWatsapp();
                             //  shareWatsapp1();
                             _launchInBrowser(bankO6UURL);
                                }
                                  ),
                                                                  SizedBox(height:5),
                                                                  InkWell(
                                                                    onTap: (){
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
    LoginApp()), (Route<dynamic> route) => false);
 

  

                                                                    },
                                                                    child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: <Widget>[
                              //        SvgPicture.string(
                              //   _svg_8c9pwf,
                              //   allowDrawingOutsideViewBox: true,
                              //   fit: BoxFit.fill,
                              // ),
                                   Expanded(child:Text(
                                              Languages.of(context).signout,
                                              style: TextStyle(
                                                fontFamily: 'Tofino',
                                                fontSize: 15,
                                                color: const Color(0xffffffff),
                                              ),
                                           //   textAlign: TextAlign.left,
                                            ),
                                   ),
                                               
                                                      // Adobe XD layer: 'Arrow' (shape)
                                                      SvgPicture.string(
                                                    _svg_otnreb,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                
                                  
                                ],),
   
                                                                  ),
                              ],)
                                   
                             ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 20, start: 0),
                  Pin(start: 0.0, end: 9),
                  child: Stack(
                    children: <Widget>[
                      // Pinned.fromPins(
                      //   Pin(size: 23.2, start: 0.5),
                      //   Pin(size: 23.2, middle: 0.5224),
                      //   child:
                      //       // Adobe XD layer: 'noun_Key_677345' (group)
                      //   //     Stack(
                      //   //   children: <Widget>[
                      //   //     Pinned.fromPins(
                      //   //       Pin(start: 0.0, end: 0.0),
                      //   //       Pin(start: 0.0, end: 0.0),
                      //   //       child:
                      //   //       ),
                      //   //     ),
                      //   //   ],
                      //   // ),
                      // ),
                      // Pinned.fromPins(
                      //   Pin(size: 20.8, start: 3.0),
                      //   Pin(size: 26.2, middle: 0.3446),
                      //   child:
                      //       // Adobe XD layer: 'noun_invoice report…' (group)
                      //       Stack(
                      //     children: <Widget>[
                      //       Pinned.fromPins(
                      //         Pin(start: 0.0, end: 0.0),
                      //         Pin(start: 0.0, end: 0.0),
                      //         child:
                      //             // Adobe XD layer: 'Invoice report' (group)
                      //             Stack(
                      //           children: <Widget>[
                      //             Pinned.fromPins(
                      //               Pin(start: 0.0, end: 0.0),
                      //               Pin(start: 0.0, end: 0.0),
                      //               child: Stack(
                      //                 children: <Widget>[
                      //                   Pinned.fromPins(
                      //                     Pin(start: 0.0, end: 0.0),
                      //                     Pin(start: 0.0, end: 0.0),
                      //                     child: SvgPicture.string(
                      //                       _svg_neemxr,
                      //                       allowDrawingOutsideViewBox: true,
                      //                       fit: BoxFit.fill,
                      //                     ),
                      //                   ),
                      //                   Pinned.fromPins(
                      //                     Pin(size: 5.5, middle: 0.2499),
                      //                     Pin(size: 10.9, middle: 0.6667),
                      //                     child: SvgPicture.string(
                      //                       _svg_nv5sh8,
                      //                       allowDrawingOutsideViewBox: true,
                      //                       fit: BoxFit.fill,
                      //                     ),
                      //                   ),
                      //                   Pinned.fromPins(
                      //                     Pin(size: 7.3, middle: 0.7143),
                      //                     Pin(size: 1.8, middle: 0.25),
                      //                     child: SvgPicture.string(
                      //                       _svg_t1zmpc,
                      //                       allowDrawingOutsideViewBox: true,
                      //                       fit: BoxFit.fill,
                      //                     ),
                      //                   ),
                      //                   Pinned.fromPins(
                      //                     Pin(size: 7.3, middle: 0.7143),
                      //                     Pin(size: 1.8, middle: 0.3929),
                      //                     child: SvgPicture.string(
                      //                       _svg_17her7,
                      //                       allowDrawingOutsideViewBox: true,
                      //                       fit: BoxFit.fill,
                      //                     ),
                      //                   ),
                      //                   Pinned.fromPins(
                      //                     Pin(size: 5.5, middle: 0.75),
                      //                     Pin(size: 1.8, middle: 0.5357),
                      //                     child: SvgPicture.string(
                      //                       _svg_gvosoo,
                      //                       allowDrawingOutsideViewBox: true,
                      //                       fit: BoxFit.fill,
                      //                     ),
                      //                   ),
                      //                   Pinned.fromPins(
                      //                     Pin(size: 5.5, middle: 0.75),
                      //                     Pin(size: 1.8, middle: 0.6786),
                      //                     child: SvgPicture.string(
                      //                       _svg_zakdhl,
                      //                       allowDrawingOutsideViewBox: true,
                      //                       fit: BoxFit.fill,
                      //                     ),
                      //                   ),
                      //                   Pinned.fromPins(
                      //                     Pin(size: 7.3, middle: 0.7143),
                      //                     Pin(size: 1.8, middle: 0.8214),
                      //                     child: SvgPicture.string(
                      //                       _svg_cj6mtz,
                      //                       allowDrawingOutsideViewBox: true,
                      //                       fit: BoxFit.fill,
                      //                     ),
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // Pinned.fromPins(
                      //   Pin(start: 0.0, end: 2.5),
                      //   Pin(size: 20.9, end: 95.1),
                      //   child:
                      //       // Adobe XD layer: 'noun_follower_20868…' (group)
                      //       Stack(
                      //     children: <Widget>[
                      //       Pinned.fromPins(
                      //         Pin(start: 0.0, end: 0.0),
                      //         Pin(start: 0.0, end: 0.0),
                      //         child: Stack(
                      //           children: <Widget>[
                      //             Pinned.fromPins(
                      //               Pin(start: 0.0, end: 0.0),
                      //               Pin(start: 0.0, end: 0.0),
                      //               child: SvgPicture.string(
                      //                 _svg_hd7qdg,
                      //                 allowDrawingOutsideViewBox: true,
                      //                 fit: BoxFit.fill,
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // Pinned.fromPins(
                      //   Pin(start: 2.2, end: 3.1),
                      //   Pin(size: 22.2, middle: 0.1728),
                      //   child: SvgPicture.string(
                      //     _svg_7q0ip6,
                      //     allowDrawingOutsideViewBox: true,
                      //     fit: BoxFit.fill,
                      //   ),
                      // ),
                      // Pinned.fromPins(
                      //   Pin(size: 21.6, end: 0.2),
                      //   Pin(size: 21.7, end: 0.0),
                      //   child:
                      //       // Adobe XD layer: 'noun_logout_2082628' (group)
                      //     //   Stack(
                      //     // children: <Widget>[
                      //     //   Pinned.fromPins(
                      //     //     Pin(size: 14.4, start: 0.0),
                      //     //     Pin(start: 0.0, end: 0.0),
                      //     //     child:
                      //     //   ),
                      //     //   Pinned.fromPins(
                      //     //     Pin(size: 14.8, end: 0.0),
                      //     //     Pin(size: 9.0, middle: 0.5),
                      //     //     child: SvgPicture.string(
                      //     //       _svg_wndzwj,
                      //     //       allowDrawingOutsideViewBox: true,
                      //     //       fit: BoxFit.fill,
                      //     //     ),
                      //     //   ),
                      //     // ],
                      //   ),
                      // ),
                      // Pinned.fromPins(
                      //   Pin(start: 2.2, end: 0.0),
                      //   Pin(start: 0.0, end: 291.8),
                      //   child: SvgPicture.string(
                      //     _svg_ea9pj1,
                      //     allowDrawingOutsideViewBox: true,
                      //     fit: BoxFit.fill,
                      //   ),
                      // ),
                    //  Pinned.fromPins(
                      //  Pin(start: 1.9, end: 4.4),
                        //Pin(size: 23.0, end: 46.0),
                       // child:
                            // Adobe XD layer: 'ic_info' (group)
                        //     Stack(
                        //   children: <Widget>[
                        //     Pinned.fromPins(
                        //       Pin(start: 0.0, end: 0.0),
                        //       Pin(start: 0.0, end: 0.0),
                        //       child:
                        //           // Adobe XD layer: 'Calque 2' (group)
                        //           Stack(
                        //         children: <Widget>[
                        //           Pinned.fromPins(
                        //             Pin(start: 0.0, end: 0.0),
                        //             Pin(start: 0.0, end: 0.0),
                        //             child:
                        //                 // Adobe XD layer: 'Calque 2' (group)
                        //                 Stack(
                        //               children: <Widget>[
                        //                 Pinned.fromPins(
                        //                   Pin(size: 3.2, middle: 0.5),
                        //                   Pin(size: 3.2, middle: 0.2639),
                        //                   child: Container(
                        //                     decoration: BoxDecoration(
                        //                       borderRadius: BorderRadius.all(
                        //                           Radius.elliptical(
                        //                               9999.0, 9999.0)),
                        //                       color: const Color(0xfffd6c57),
                        //                     ),
                        //                   ),
                        //                 ),
                        //                 Pinned.fromPins(
                        //                   Pin(size: 2.7, middle: 0.5),
                        //                   Pin(size: 7.9, middle: 0.6546),
                        //                   child: SvgPicture.string(
                        //                     _svg_41j7e9,
                        //                     allowDrawingOutsideViewBox: true,
                        //                     fit: BoxFit.fill,
                        //                   ),
                        //                 ),
                        //                 Pinned.fromPins(
                        //                   Pin(start: 0.0, end: 0.0),
                        //                   Pin(start: 0.0, end: 0.0),
                        //                   child: SvgPicture.string(
                        //                     _svg_ku5h7s,
                        //                     allowDrawingOutsideViewBox: true,
                        //                     fit: BoxFit.fill,
                        //                   ),
                        //                 ),
                        //                 Pinned.fromPins(
                        //                   Pin(start: 0.0, end: 0.0),
                        //                   Pin(start: 0.0, end: 0.0),
                        //                   child: SvgPicture.string(
                        //                     _svg_ku5h7s,
                        //                     allowDrawingOutsideViewBox: true,
                        //                     fit: BoxFit.fill,
                        //                   ),
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ],
                        // ),
                     // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 90.0, start: 15.0),
            Pin(size: 105.0, start: 70.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: '20200319_173058' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child    :  CachedNetworkImage(
              // imageUrl: categorydataList[index].imagePath + categorydataList[index].image,
               imageUrl:
imagePathuser+ currentUserLogged.image,
               //currentUserLogged.profilePhotoUrl,
              // studentProfileResponseModel.content!=null?imagePathFaculties+studentProfileResponseModel.content.user.image :imagePathFaculties,
              
               //width: ScreenUtil().setWidth(120),
               //height: ScreenUtil().setHeight(70),
               fit: BoxFit.fill,
              // color:  Color(AppConstant.pinkcolor),
        placeholder: (context, url) => CircularProgressIndicator(),
               errorWidget: (context, url, error) => Image.asset("assets/image/splash_logo1.png"),
             ),
                        //const AssetImage('assets/image/splash_logo.png'),
                     //   fit: BoxFit.fill,
                     
                    ),
                  ),
        
              ],
            ),
          ),
          // Pinned.fromPins(
          //   Pin(size: 100, end: 20.0),
          //   Pin(size: 36.0, start: 14),
          //   child: Stack(
          //     children: <Widget>[
          //       Pinned.fromPins(
          //         Pin(start: 0.0, end: 0.0),
          //         Pin(start: 0.0, end: 0.0),
          //         child: Container(
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(18.0),
          //             gradient: LinearGradient(
          //               begin: Alignment(1.0, 0.0),
          //               end: Alignment(-1.0, 0.0),
          //               colors: [
          //                 const Color(0xfffe9654),
          //                 const Color(0xfffd6c57)
          //               ],
          //               stops: [0.0, 1.0],
          //             ),
          //           ),
          //         ),
          //       ),
          //       Pinned.fromPins(
          //         Pin(start: 30.0, end: 30),
          //         Pin(size: 20.0, middle: 0.5),
          //         child:InkWell(
          //           onTap: (){
          //                  Navigator.push(
          //   context,
          //  //MaterialPageRoute(builder: (context) => OtpScreen()),
          //  MaterialPageRoute(builder: (context) => EditProfile1(
          //    )),
          // );
          //           },
          //           child:
          //          Text(
          //          Languages.of(context).edite,
          //           style: TextStyle(
          //             fontFamily: 'Tofino',
          //             fontSize: 15,
          //             color: const Color(0xffffffff),
          //             fontWeight: FontWeight.w500,
          //             height: 2.6666666666666665,
          //           ),
          //           textHeightBehavior:
          //               TextHeightBehavior(applyHeightToFirstAscent: false),
          //         //  textAlign: TextAlign.right,
          //         ),
          //          ),  ),
          //     ],
          //   ),
          // ),
//           Pinned.fromPins(
//             Pin(start: 20.0, end: 20.0),
//             Pin(size: 70.0, middle: 0.30),
//             child:  Container(
//              child:Row(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children:<Widget> [
//                Column(children: <Widget>[
//  Text(
//                             "12",
//                             style: TextStyle(
//                               fontFamily: 'Tofino',
//                               fontSize: 18,
//                               color: const Color(0xff000000),
//                               fontWeight: FontWeight.w500,
//                               height: 2.2222222222222223,
//                             ),
//                             textHeightBehavior: TextHeightBehavior(
//                                 applyHeightToFirstAscent: false),
//                             textAlign: TextAlign.center,
//                           ),
//                           Text(
//                             Languages.of(context).following,
//                             style: TextStyle(
//                               fontFamily: 'Tofino',
//                               fontSize: 18,
//                               color: const Color(0xff000000),
//                               fontWeight: FontWeight.w500,
//                               height: 2.2222222222222223,
//                             ),
//                             textHeightBehavior: TextHeightBehavior(
//                                 applyHeightToFirstAscent: false),
//                             textAlign: TextAlign.center,
//                           ),


//                ],),
//                Column(children: <Widget>[
//  Text(
//                             "64",
//                             style: TextStyle(
//                               fontFamily: 'Tofino',
//                               fontSize: 18,
//                               color: const Color(0xff000000),
//                               fontWeight: FontWeight.w500,
//                               height: 2.2222222222222223,
//                             ),
//                             textHeightBehavior: TextHeightBehavior(
//                                 applyHeightToFirstAscent: false),
//                             textAlign: TextAlign.center,
//                           ),
//                           Text(
//                             Languages.of(context).follower,
//                             style: TextStyle(
//                               fontFamily: 'Tofino',
//                               fontSize: 18,
//                               color: const Color(0xff000000),
//                               fontWeight: FontWeight.w500,
//                               height: 2.2222222222222223,
//                             ),
//                             textHeightBehavior: TextHeightBehavior(
//                                 applyHeightToFirstAscent: false),
//                             textAlign: TextAlign.center,
//                           ),


//                ],),
//                Column(children: <Widget>[
//  Text(
//                             "24",
//                             style: TextStyle(
//                               fontFamily: 'Tofino',
//                               fontSize: 18,
//                               color: const Color(0xff000000),
//                               fontWeight: FontWeight.w500,
//                               height: 2.2222222222222223,
//                             ),
//                             textHeightBehavior: TextHeightBehavior(
//                                 applyHeightToFirstAscent: false),
//                             textAlign: TextAlign.center,
//                           ),
//                           Text(
//                             Languages.of(context).likes,
//                             style: TextStyle(
//                               fontFamily: 'Tofino',
//                               fontSize: 18,
//                               color: const Color(0xff000000),
//                               fontWeight: FontWeight.w500,
//                               height: 2.2222222222222223,
//                             ),
//                             textHeightBehavior: TextHeightBehavior(
//                                 applyHeightToFirstAscent: false),
//                             textAlign: TextAlign.center,
//                           ),


//                ],)
//              ],), 
//             ),
//             // child: SingleChildScrollView(
//             //   child: Wrap(
//             //     alignment: WrapAlignment.center,
//             //     spacing: 76,
//             //     runSpacing: 18,
//             //     children: [
//             //       {
//             //         'text': '128',
//             //         'text_0': 'Following',
//             //       },
//             //       {
//             //         'text': '640',
//             //         'text_0': 'Follower',
//             //       },
//             //       {
//             //         'text': '240',
//             //         'text_0': 'Likes',
//             //       }
//             //     ].map((itemData) {
//             //       final text = itemData['text'];
//             //       final text_0 = itemData['text_0'];
//             //       return SizedBox(
//             //         width: 56.0,
//             //         height: 43.0,
//             //         child: Stack(
//             //           children: <Widget>[
//             //             Pinned.fromPins(
//             //               Pin(size: 30.0, middle: 0.5),
//             //               Pin(size: 24.0, start: 0.0),
//             //               child: Text(
//             //                 text,
//             //                 style: TextStyle(
//             //                   fontFamily: 'Tofino',
//             //                   fontSize: 18,
//             //                   color: const Color(0xff000000),
//             //                   fontWeight: FontWeight.w500,
//             //                   height: 2.2222222222222223,
//             //                 ),
//             //                 textHeightBehavior: TextHeightBehavior(
//             //                     applyHeightToFirstAscent: false),
//             //                 textAlign: TextAlign.center,
//             //               ),
//             //             ),
//             //             Pinned.fromPins(
//             //               Pin(start: 0.0, end: 0.0),
//             //               Pin(size: 17.0, end: 0.0),
//             //               child: Text(
//             //                 text_0,
//             //                 style: TextStyle(
//             //                   fontFamily: 'Tofino',
//             //                   fontSize: 13,
//             //                   color: const Color(0xffffc400),
//             //                   height: 1.3846153846153846,
//             //                 ),
//             //                 textHeightBehavior: TextHeightBehavior(
//             //                     applyHeightToFirstAscent: false),
//             //                 textAlign: TextAlign.center,
//             //               ),
//             //             ),
//             //           ],
//             //         ),
//             //       );
//             //     }).toList(),
//             //   ),
//             // ),
           
//           ),
          // Pinned.fromPins(
          //   Pin(size: 24.0, end: 21.2),
          //   Pin(size: 24.0, start: 63.0),
          //   child: Stack(
          //     children: <Widget>[
          //       Pinned.fromPins(
          //         Pin(start: 0.0, end: 0.0),
          //         Pin(start: 0.0, end: 0.0),
          //         child:
          //             // Adobe XD layer: 'ic_settings' (group)
          //             Stack(
          //           children: <Widget>[
          //             Pinned.fromPins(
          //               Pin(start: 0.0, end: 0.0),
          //               Pin(start: 0.0, end: 0.0),
          //               child: Container(
          //                 decoration: BoxDecoration(),
          //               ),
          //             ),
          //             // Pinned.fromPins(
          //             //   Pin(start: 1.0, end: 1.0),
          //             //   Pin(start: 1.0, end: 1.0),
          //             //   child:
          //             //       // Adobe XD layer: 'settings' (shape)
          //             //       SvgPicture.string(
          //             //     _svg_qcjx2v,
          //             //     allowDrawingOutsideViewBox: true,
          //             //     fit: BoxFit.fill,
          //             //   ),
          //             // ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Pinned.fromPins(
          //   Pin(size: 24.9, end: 61.3),
          //   Pin(size: 24.0, start: 63.0),
          //   child: Stack(
          //     children: <Widget>[
          //       // Pinned.fromPins(
          //       //   Pin(size: 21.9, start: 0.0),
          //       //   Pin(start: 0.0, end: 0.0),
          //       //   child: Stack(
          //       //     children: <Widget>[
          //       //       // Pinned.fromPins(
          //       //       //   Pin(start: 0.0, end: 1.9),
          //       //       //   Pin(start: 0.0, end: 0.0),
          //       //       //   child:
          //       //       //       // Adobe XD layer: 'noun_notification_1…' (group)
          //       //       //     //   Stack(
          //       //       //     // children: <Widget>[
          //       //       //     //   Pinned.fromPins(
          //       //       //     //     Pin(start: 0.0, end: 0.0),
          //       //       //     //     Pin(start: 0.0, end: 0.0),
          //       //       //     //     child: 
          //       //       //     //     // Stack(
          //       //       //     //     //   children: <Widget>[
          //       //       //     //     //     Pinned.fromPins(
          //       //       //     //     //       Pin(start: 0.0, end: 0.0),
          //       //       //     //     //       Pin(start: 0.0, end: 0.0),
          //       //       //     //     //       child: SvgPicture.string(
          //       //       //     //     //         _svg_tnidx2,
          //       //       //     //     //         allowDrawingOutsideViewBox: true,
          //       //       //     //     //         fit: BoxFit.fill,
          //       //       //     //     //       ),
          //       //       //     //     //     ),
          //       //       //     //       ],
          //       //       //     //     ),
          //       //       //       ),
          //       //       //     ],
          //       //       //   ),
          //       //       // ),
          //       //       // Pinned.fromPins(
          //       //       //   Pin(size: 8.0, end: 0.0),
          //       //       //   Pin(size: 8.0, middle: 0.1887),
          //       //       //   child: Container(
          //       //       //     decoration: BoxDecoration(
          //       //       //       borderRadius: BorderRadius.all(
          //       //       //           Radius.elliptical(9999.0, 9999.0)),
          //       //       //       color: Colors.transparent,
          //       //       //       border: Border.all(
          //       //       //           width: 2.0, color: Colors.transparent),
          //       //       //     ),
          //       //       //   ),
          //       //       // ),
          //       //     ],
          //       //   ),
          //       // ),
          //       // Pinned.fromPins(
          //       //   Pin(size: 10.0, end: 0.0),
          //       //   Pin(size: 10.0, middle: 0.2157),
          //       //   child: Container(
          //       //     decoration: BoxDecoration(
          //       //       borderRadius:
          //       //           BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
          //       //       color: const Color(0xfffd6c57),
          //       //       border: Border.all(
          //       //           width: 2.0, color: const Color(0xffffffff)),
          //       //     ),
          //       //   ),
          //       // ),
          //     ],
          //   ),
          // ),
          Pinned.fromPins(
            Pin(size: 200.0, start: 100),
            Pin(size: 45.0, start: 104.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 4.0),
                  Pin(size: 27.0, start: 0.0),
                  child: Text(
                    currentUserLogged.name,
                    style: TextStyle(
                      fontFamily: 'Tofino',
                      fontSize: 20,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      height: 2,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 4.0),
                  Pin(size: 17.0, end: 0.0),
                  child: Text(
                    currentUserLogged.email,
                    style: TextStyle(
                      fontFamily: 'Tofino',
                      fontSize: 14,
                      color: const Color(0xffffc400),
                      height: 1.6923076923076923,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(),
        ],
      ),
    );
  }

  shareWatsapp() async {


SocialShare.shareOptions("Hello world");






  }
   shareWatsapp1() async {
    // String result = await FlutterSocialContentShare.shareOnWhatsapp( "00963937335293",  "Text mmmm here");
    // print(result);
     var phone = "+201011189035";

    var whatsappUrl ="whatsapp://send?phone=$phone";
await canLaunch(whatsappUrl)? launch(whatsappUrl):print("open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
  }
   Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }
  }
     
 

const String _svg_otnreb =
    '<svg viewBox="8.0 5.0 7.5 14.0" ><path transform="translate(-329.0, -3.0)" d="M 342.4819946289063 15 L 337 9.149346351623535 L 338.0768737792969 7.999999046325684 L 344.5384521484375 14.89607238769531 L 344.4410705566406 15 L 344.5384521484375 15.10392761230469 L 338.0768737792969 21.99999809265137 L 337 20.85065269470215 L 342.4819946289063 15 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_txmqtm =
    '<svg viewBox="0.0 0.0 23.2 23.2" ><path transform="translate(-2.97, -2.97)" d="M 13.76798152923584 18.73726463317871 L 14.85910129547119 19.82838439941406 C 15.09840869903564 20.07819366455078 15.431565284729 20.21611595153809 15.77742099761963 20.20854759216309 L 17.06849670410156 20.20854759216309 L 17.06849670410156 21.29966735839844 C 17.06849670410156 22.11769104003906 17.73163604736328 22.78082847595215 18.54965782165527 22.78082847595215 L 19.64077568054199 22.78082656860352 L 19.64077568054199 24.06943321228027 C 19.6418514251709 24.40926551818848 19.77560615539551 24.73523712158203 20.0135326385498 24.97788047790527 L 20.87013626098633 25.83448028564453 C 21.09730339050293 26.05966186523438 21.40440940856934 26.18569946289063 21.72426986694336 26.18502044677734 L 25.12599754333496 26.18502235412598 C 25.71168327331543 26.18366241455078 26.18613624572754 25.70920753479004 26.1874942779541 25.12352180480957 L 26.1874942779541 25.1235237121582 L 26.1874942779541 21.72179794311523 C 26.18844985961914 21.39946365356445 26.06044960021973 21.09013557434082 25.8320140838623 20.86272430419922 L 18.73726844787598 13.76797866821289 C 19.99035835266113 10.19644641876221 18.60610961914063 6.233064651489258 15.40194416046143 4.21827507019043 C 12.19777774810791 2.203484058380127 8.025979995727539 2.67320442199707 5.350065231323242 5.350059032440186 C 2.673209667205811 8.025974273681641 2.203488349914551 12.19777297973633 4.218278884887695 15.40194129943848 C 6.233068466186523 18.60610580444336 10.19645118713379 19.9903564453125 13.76798248291016 18.73726654052734 Z M 6.399218082427979 6.394278049468994 C 8.641468048095703 4.149075508117676 12.16042900085449 3.807965993881226 14.79215526580811 5.580710411071777 C 17.42388153076172 7.353453159332275 18.4300479888916 10.74271202087402 17.19192314147949 13.66429710388184 C 17.07434844970703 13.94194030761719 17.13683128356934 14.26314735412598 17.34991455078125 14.47646713256836 L 24.70386695861816 21.8328857421875 L 24.70386695861816 24.7038631439209 L 21.83288955688477 24.7038631439209 L 21.10959053039551 23.98056411743164 L 21.10959053039551 22.23526573181152 C 21.10959053039551 21.70900344848633 20.6829719543457 21.28238487243652 20.15671157836914 21.28238487243652 L 20.15671157836914 21.28238677978516 L 18.54965400695801 21.28238677978516 L 18.54965400695801 19.68026733398438 C 18.54965400695801 19.15400505065918 18.1230354309082 18.72738838195801 17.59677505493164 18.72738838195801 L 15.8539457321167 18.72739028930664 L 14.47646808624268 17.34991264343262 C 14.26315021514893 17.1368293762207 13.94194316864014 17.0743465423584 13.6643009185791 17.19192314147949 C 10.74309825897217 18.42747116088867 7.355984210968018 17.42035675048828 5.58441162109375 14.78947639465332 C 3.81283974647522 12.15859413146973 4.153374195098877 8.641371726989746 6.396750926971436 6.399214267730713 Z M 9.499776840209961 12.21769905090332 C 10.99948120117188 12.21769905090332 12.21523284912109 11.00194549560547 12.21523284912109 9.502241134643555 C 12.21523284912109 8.002534866333008 10.99948120117188 6.786784172058105 9.499775886535645 6.786784172058105 C 8.000070571899414 6.786784172058105 6.784319400787354 8.002535820007324 6.784319400787354 9.502241134643555 C 6.784319400787354 11.00194549560547 8.000070571899414 12.21769905090332 9.499775886535645 12.21769905090332 Z M 9.499776840209961 8.287691116333008 C 10.18146133422852 8.287691116333008 10.73407459259033 8.840305328369141 10.73407459259033 9.521989822387695 C 10.73407459259033 10.20367431640625 10.18146133422852 10.75628852844238 9.499776840209961 10.75628852844238 C 8.818092346191406 10.75628852844238 8.265478134155273 10.20367431640625 8.265478134155273 9.521989822387695 C 8.264822006225586 9.194206237792969 8.394575119018555 8.879623413085938 8.626121520996094 8.647613525390625 C 8.857668876647949 8.415603637695313 9.171991348266602 8.285223007202148 9.499775886535645 8.285223960876465 Z" fill="#fd6c57" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_neemxr =
    '<svg viewBox="0.0 0.0 20.8 26.2" ><path transform="translate(-5.0, -1.0)" d="M 22.93057632446289 0.9999998807907104 L 10.66228771209717 0.9999998807907104 C 10.35737705230713 0.9999998807907104 10.07126331329346 1.136197090148926 9.894088745117188 1.365671396255493 L 5.175530433654785 7.475159168243408 C 5.12230920791626 7.545165538787842 5.080575942993164 7.622066020965576 5.051685810089111 7.703365802764893 C 5.042296886444092 7.729097366333008 5.040361881256104 7.756048679351807 5.033661365509033 7.782476425170898 C 5.017902374267578 7.838423252105713 5.00825309753418 7.895691394805908 5.004859447479248 7.953420162200928 C 5.004548072814941 7.963274002075195 4.999999046325684 7.972437858581543 4.999999046325684 7.982292175292969 L 4.999999046325684 24.56523513793945 C 5.001706600189209 26.01066398620605 6.268253803253174 27.1820182800293 7.831144332885742 27.18359565734863 L 22.93057632446289 27.18359375 C 24.49346542358398 27.18201637268066 25.76001167297363 26.01066398620605 25.76171875 24.56523895263672 L 25.76171875 3.618359565734863 C 25.76001167297363 2.172934293746948 24.49346542358398 1.001578330993652 22.93057632446289 1.000000238418579 Z M 11.60600090026855 2.745573282241821 L 11.60600090026855 4.927539348602295 C 11.60447311401367 6.132019996643066 10.54907989501953 7.108092308044434 9.24671459197998 7.109505176544189 L 7.777690410614014 7.109505176544189 L 11.14797019958496 2.745573282241821 L 11.60600090026855 2.745573282241821 Z M 23.87428855895996 24.56523513793945 C 23.87361145019531 25.04699897766113 23.45149040222168 25.4373950958252 22.93057632446289 25.43801879882813 L 7.831143379211426 25.43802070617676 C 7.310225963592529 25.4373950958252 6.888106346130371 25.04699897766113 6.887429237365723 24.56523513793945 L 6.887428760528564 8.855076789855957 L 9.24671459197998 8.855076789855957 C 11.59105205535889 8.85271167755127 13.49087238311768 7.095677852630615 13.49343299865723 4.927539348602295 L 13.49343299865723 2.745573282241821 L 22.93057632446289 2.745573282241821 C 23.45149230957031 2.746197462081909 23.87361335754395 3.13659143447876 23.87428855895996 3.618359327316284 L 23.87428855895996 24.56523513793945 Z" fill="#fd6c57" stroke="none" stroke-width="0.4000000059604645" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nv5sh8 =
    '<svg viewBox="3.8 10.2 5.5 10.9" ><path transform="translate(-5.17, -2.82)" d="M 14.45944118499756 19.82467651367188 C 14.52189159393311 18.63802528381348 13.61629009246826 17.62277793884277 12.43023777008057 17.5497875213623 L 11.02890300750732 17.54978370666504 C 10.9769172668457 17.54978370666504 10.81961250305176 17.38849449157715 10.81961250305176 17.09480667114258 C 10.81961250305176 16.80111503601074 10.97689819335938 16.63982772827148 11.02890300750732 16.63982772827148 L 13.26739692687988 16.63982772827148 C 13.76995182037354 16.63982772827148 14.17735481262207 16.23242568969727 14.17735481262207 15.7298698425293 C 14.17735481262207 15.22731399536133 13.76995182037354 14.81991386413574 13.26739692687988 14.81991386413574 L 12.6395263671875 14.81991386413574 L 12.6395263671875 13.90995597839355 C 12.6395263671875 13.40740013122559 12.23212432861328 13 11.72957038879395 13 C 11.22701358795166 13 10.81961250305176 13.40740203857422 10.81961250305176 13.90995597839355 L 10.81961250305176 14.8436279296875 C 9.732470512390137 15.02837562561035 8.952572822570801 15.99308395385742 8.999697685241699 17.09480476379395 C 8.937246322631836 18.28145790100098 9.842848777770996 19.29671096801758 11.02890396118164 19.36969947814941 L 12.43023586273193 19.36969947814941 C 12.48222160339355 19.36969947814941 12.63952541351318 19.5309886932373 12.63952541351318 19.82467651367188 C 12.63952541351318 20.11836433410645 12.48223972320557 20.27965545654297 12.43023586273193 20.27965545654297 L 10.19174098968506 20.27965545654297 C 9.68918514251709 20.27965545654297 9.281784057617188 20.68705558776855 9.281784057617188 21.18961524963379 C 9.281784057617188 21.69216728210449 9.689186096191406 22.09957122802734 10.19174098968506 22.09957122802734 L 10.81961250305176 22.09957122802734 L 10.81961250305176 23.00952911376953 C 10.81961250305176 23.51208305358887 11.22701358795166 23.91948318481445 11.72957038879395 23.91948318481445 C 12.23212432861328 23.91948318481445 12.6395263671875 23.51208305358887 12.6395263671875 23.00952911376953 L 12.6395263671875 22.07585525512695 C 13.72667026519775 21.8911075592041 14.50656604766846 20.9263973236084 14.45944118499756 19.82467651367188 Z" fill="#fd6c57" stroke="none" stroke-width="0.4000000059604645" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_t1zmpc =
    '<svg viewBox="9.6 6.1 7.3 1.8" ><path transform="translate(-5.37, -1.91)" d="M 21.36969757080078 7.999999046325684 L 15.90995597839355 7.999999046325684 C 15.40740013122559 7.999999046325684 14.99999904632568 8.407402992248535 14.99999904632568 8.909957885742188 C 14.99999904632568 9.41251277923584 15.40740203857422 9.819913864135742 15.90995597839355 9.819913864135742 L 21.36969757080078 9.819913864135742 C 21.87225532531738 9.819913864135742 22.27965545654297 9.41251277923584 22.27965545654297 8.909957885742188 C 22.27965545654297 8.407401084899902 21.87225532531738 7.999999046325684 21.36969757080078 7.999999046325684 Z" fill="#fd6c57" stroke="none" stroke-width="0.4000000059604645" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_17her7 =
    '<svg viewBox="9.6 9.6 7.3 1.8" ><path transform="translate(-5.37, -2.43)" d="M 21.36969757080078 12 L 15.90995597839355 12 C 15.40740013122559 12 14.99999904632568 12.40740203857422 14.99999904632568 12.90995693206787 C 14.99999904632568 13.41251277923584 15.40740203857422 13.81991481781006 15.90995597839355 13.81991481781006 L 21.36969757080078 13.81991481781006 C 21.87225532531738 13.81991481781006 22.27965545654297 13.41251182556152 22.27965545654297 12.90995693206787 C 22.27965545654297 12.40740203857422 21.87225532531738 12 21.36969757080078 12 Z" fill="#fd6c57" stroke="none" stroke-width="0.4000000059604645" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gvosoo =
    '<svg viewBox="11.5 13.1 5.5 1.8" ><path transform="translate(-5.52, -2.95)" d="M 21.54978561401367 15.99999809265137 L 17.90995788574219 15.99999809265137 C 17.40740394592285 15.99999809265137 17 16.40740203857422 17 16.90995788574219 C 17 17.41251182556152 17.40740394592285 17.81991577148438 17.90995788574219 17.81991577148438 L 21.54978561401367 17.81991577148438 C 22.05233955383301 17.81991577148438 22.45974349975586 17.41251182556152 22.45974349975586 16.90995788574219 C 22.45974349975586 16.40740203857422 22.05233955383301 15.99999809265137 21.54978561401367 15.99999809265137 Z" fill="#fd6c57" stroke="none" stroke-width="0.4000000059604645" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_zakdhl =
    '<svg viewBox="11.5 16.5 5.5 1.8" ><path transform="translate(-5.52, -3.47)" d="M 21.54978561401367 19.99999618530273 L 17.90995788574219 19.99999618530273 C 17.40740394592285 19.99999618530273 17 20.40740013122559 17 20.90995407104492 C 17 21.41250991821289 17.40740394592285 21.81991195678711 17.90995788574219 21.81991195678711 L 21.54978561401367 21.81991195678711 C 22.05233955383301 21.81991195678711 22.45974349975586 21.41250991821289 22.45974349975586 20.90995407104492 C 22.45974349975586 20.40740013122559 22.05233955383301 19.99999618530273 21.54978561401367 19.99999618530273 Z" fill="#fd6c57" stroke="none" stroke-width="0.4000000059604645" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cj6mtz =
    '<svg viewBox="9.6 20.0 7.3 1.8" ><path transform="translate(-5.37, -3.99)" d="M 21.36969757080078 24 L 15.90995597839355 24 C 15.40740013122559 24 14.99999904632568 24.40740013122559 14.99999904632568 24.90995597839355 C 14.99999904632568 25.41250991821289 15.40740203857422 25.81991386413574 15.90995597839355 25.81991386413574 L 21.36969757080078 25.81991386413574 C 21.87225532531738 25.81991386413574 22.27965545654297 25.41250991821289 22.27965545654297 24.90995597839355 C 22.27965545654297 24.40740013122559 21.87225532531738 24 21.36969757080078 24 Z" fill="#fd6c57" stroke="none" stroke-width="0.4000000059604645" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hd7qdg =
    '<svg viewBox="-1.0 4.0 26.7 20.9" ><path transform="translate(-12.02, -15.46)" d="M 29.6787052154541 37.05925369262695 C 29.40098571777344 36.75410079956055 29.35298538208008 36.28437805175781 29.71985054016113 35.96551132202148 L 32.79534912109375 32.8900146484375 C 33.48793411254883 32.19400024414063 34.54396057128906 33.24659729003906 33.85137557983398 33.93918228149414 L 32.01018524169922 35.78036880493164 L 36.04913330078125 35.78036880493164 C 36.17256927490234 35.36206817626953 36.25141906738281 35.06035232543945 36.25141906738281 34.61120223999023 C 36.25141906738281 31.96770668029785 33.5256462097168 30.43167304992676 31.1324520111084 30.43167304992676 C 29.27069664001465 30.43167304992676 27.25122261047363 31.30940818786621 26.3906307220459 33.04087448120117 C 27.28893661499023 34.1860466003418 27.81694793701172 35.56093597412109 27.81694793701172 37.0455436706543 C 27.81694793701172 38.02955627441406 27.57351303100586 38.9998664855957 27.13121795654297 39.87760925292969 C 26.69578170776367 40.75533676147461 25.36203384399414 40.09017944335938 25.8009033203125 39.21244049072266 C 26.14376831054688 38.53014755249023 26.32205581665039 37.81012725830078 26.32205581665039 37.0455436706543 C 26.32205581665039 33.4728889465332 22.6602611541748 31.3642635345459 19.4167594909668 31.3642635345459 C 16.17668533325195 31.3642635345459 12.51831531524658 33.4728889465332 12.51831531524658 37.0455436706543 C 12.51831531524658 37.81698608398438 12.68974781036377 38.51985931396484 13.03604316711426 39.20901489257813 C 13.47833633422852 40.08673858642578 12.14459323883057 40.75533676147461 11.70572757720947 39.88103485107422 C 11.26343059539795 39.00329971313477 11.01999664306641 38.02613067626953 11.01999664306641 37.0455436706543 C 11.01999664306641 33.88432693481445 13.35147857666016 31.42598533630371 16.19725608825684 30.41795921325684 C 14.50007629394531 29.3207950592041 13.46805381774902 27.44189262390137 13.46805381774902 25.41213035583496 C 13.46805381774902 22.12748718261719 16.13554191589355 19.45999717712402 19.4167594909668 19.45999717712402 C 22.70483589172363 19.45999717712402 25.37232208251953 22.12748718261719 25.37232208251953 25.41213035583496 C 25.37232208251953 27.44532203674316 24.33687019348145 29.3207950592041 22.63969039916992 30.41795921325684 C 23.64428901672363 30.77110862731934 24.54601860046387 31.28883934020996 25.30717849731445 31.92656517028809 C 26.00319480895996 30.81225776672363 27.08321952819824 29.97909545898438 28.29352951049805 29.48536682128906 C 27.10036277770996 28.58706283569336 26.39749145507813 27.19160079956055 26.39749145507813 25.69328117370605 C 26.39749145507813 23.07722473144531 28.51982116699219 20.95488929748535 31.1324520111084 20.95488929748535 C 33.75193786621094 20.95488929748535 35.87084197998047 23.07379150390625 35.87084197998047 25.69328117370605 C 35.87084197998047 27.19160079956055 35.16797256469727 28.59049224853516 33.97137451171875 29.48536682128906 C 36.08341598510742 30.34595680236816 37.74631500244141 32.23857116699219 37.74631500244141 34.61120223999023 C 37.74631500244141 34.99520874023438 37.69831085205078 35.38264465332031 37.60916519165039 35.76322937011719 C 37.52001953125 36.14037704467773 37.38288116455078 36.50724411010742 37.20458602905273 36.86382675170898 C 37.07429885864258 37.12439727783203 36.813720703125 37.2752571105957 36.5394287109375 37.2752571105957 L 32.01361083984375 37.2786865234375 L 33.85136795043945 39.11643981933594 C 34.54738998413086 39.81245803833008 33.49136352539063 40.86848068237305 32.79534530639648 40.17246627807617 L 29.6787052154541 37.05925369262695 Z M 19.4167594909668 20.95831871032715 C 16.95499229431152 20.95831871032715 14.96294403076172 22.95036506652832 14.96294403076172 25.41213035583496 C 14.96294403076172 27.88075828552246 16.9481315612793 29.86251640319824 19.4167594909668 29.86251640319824 C 21.88538932800293 29.86251640319824 23.87400436401367 27.88075828552246 23.87400436401367 25.41213035583496 C 23.87400436401367 22.95379066467285 21.87853240966797 20.95831871032715 19.4167594909668 20.95831871032715 Z M 31.1324520111084 22.44977951049805 C 29.34612655639648 22.44977951049805 27.89238166809082 23.90352821350098 27.89238166809082 25.69328308105469 C 27.89238166809082 27.48646926879883 29.34269905090332 28.92992782592773 31.13588523864746 28.92992782592773 C 32.93248748779297 28.92992782592773 34.37595367431641 27.48989486694336 34.37595367431641 25.69328308105469 C 34.37595367431641 23.90352821350098 32.92563629150391 22.44978332519531 31.1324520111084 22.44978332519531 Z" fill="#fd6c57" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8c9pwf =
    '<svg viewBox="0.0 0.0 14.4 21.7" ><path transform="translate(-12.0, -4.0)" d="M 12.90279197692871 25.66717529296875 L 25.54185485839844 25.66717529296875 C 26.04045295715332 25.66717529296875 26.44464683532715 25.26297760009766 26.44464683532715 24.76437568664551 L 26.44464683532715 21.08095550537109 C 26.44464683532715 20.58235549926758 26.04045295715332 20.17815780639648 25.54185485839844 20.17815780639648 C 25.04325866699219 20.17815780639648 24.63906669616699 20.58235549926758 24.63906669616699 21.08095550537109 L 24.63906669616699 23.86157608032227 L 13.80558204650879 23.86157608032227 L 13.80558204650879 5.805598258972168 L 24.63906669616699 5.805598258972168 L 24.63906669616699 8.216071128845215 C 24.63906669616699 8.714673042297363 25.04325866699219 9.118870735168457 25.54185485839844 9.118870735168457 C 26.04045295715332 9.118870735168457 26.44464683532715 8.71467399597168 26.44464683532715 8.216071128845215 L 26.44464683532715 4.902799129486084 C 26.44464683532715 4.404197692871094 26.04045295715332 4 25.54185485839844 4 L 12.90279197692871 4 C 12.40419578552246 4 12.00000190734863 4.404197692871094 12.00000190734863 4.902799129486084 L 12.00000190734863 24.76437568664551 C 12.00000190734863 25.26297760009766 12.40419578552246 25.66717529296875 12.90279197692871 25.66717529296875 Z" fill="#fd6c57" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wndzwj =
    '<svg viewBox="6.8 6.3 14.8 9.0" ><path transform="translate(2.76, -4.68)" d="M 4.946994781494141 14.61111927032471 L 15.78047752380371 14.61111927032471 L 13.71308708190918 12.54370880126953 C 13.54217720031738 12.37419319152832 13.44604301452637 12.14344215393066 13.44604301452637 11.90272235870361 C 13.44604301452637 11.66200160980225 13.54217720031738 11.43125057220459 13.71308708190918 11.26173496246338 C 14.06520938873291 10.91169929504395 14.6338996887207 10.91169929504395 14.98602104187012 11.26173496246338 L 18.5971851348877 14.8729305267334 C 18.76809310913086 15.04244613647461 18.86422729492188 15.27319717407227 18.86422729492188 15.51391792297363 C 18.86422729492188 15.75463771820068 18.76809310913086 15.98538780212402 18.5971851348877 16.15490531921387 L 14.98602104187012 19.76609992980957 C 14.82686614990234 19.92441749572754 14.61443614959717 20.01775741577148 14.39017868041992 20.02791404724121 C 14.15021514892578 20.02930068969727 13.91957092285156 19.93509292602539 13.7491979598999 19.76609992980957 C 13.57828807830811 19.59658432006836 13.48215389251709 19.36583137512207 13.48215389251709 19.12511253356934 C 13.48215389251709 18.8843936920166 13.57828807830811 18.65364074707031 13.7491979598999 18.48412704467773 L 15.78047561645508 16.41671752929688 L 4.946994781494141 16.41671752929688 C 4.448396682739258 16.41671752929688 4.04420280456543 16.01251983642578 4.04420280456543 15.51391792297363 C 4.04420280456543 15.01531600952148 4.448396682739258 14.61111927032471 4.946994781494141 14.61111927032471 Z" fill="#fd6c57" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7q0ip6 =
    '<svg viewBox="4.5 33.0 23.9 22.2" ><path transform="translate(4.5, 33.0)" d="M 11.95507907867432 22.20228958129883 C 5.526910305023193 17.76922035217285 2.155590295791626 13.73631763458252 0.7729643583297729 10.36103248596191 C -2.93101692199707 1.315685629844666 7.648668766021729 -3.010073661804199 11.95507907867432 2.329593181610107 C 16.2614917755127 -3.010073661804199 26.84117698669434 1.315685629844666 23.13719367980957 10.36103248596191 C 21.75456809997559 13.73631763458252 18.38324928283691 17.76922035217285 11.95507907867432 22.20228958129883 Z" fill="none" stroke="#fd6c57" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_41j7e9 =
    '<svg viewBox="10.2 9.9 2.7 7.9" ><path transform="translate(-188.83, -183.25)" d="M 201.6577758789063 194.4488983154297 L 201.6577758789063 199.7133178710938 C 201.6577758789063 200.4472503662109 201.0628204345703 201.042236328125 200.3289031982422 201.042236328125 C 199.594970703125 201.042236328125 199 200.4472503662109 199 199.7133178710938 L 199 194.4488983154297 C 199 193.7149505615234 199.594970703125 193.1199798583984 200.3289031982422 193.1199798583984 C 201.0628204345703 193.1199798583984 201.6577758789063 193.7149505615234 201.6577758789063 194.4488983154297 Z" fill="#fd6c57" stroke="none" stroke-width="0.30000001192092896" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ku5h7s =
    '<svg viewBox="0.0 0.0 23.0 23.0" ><path  d="M 11.5 0 C 5.148933410644531 0 0 5.148933410644531 0 11.5 C 0 17.85106658935547 5.148933410644531 23 11.5 23 C 17.85106658935547 23 23 17.85106658935547 23 11.5 C 23 5.148932933807373 17.85106658935547 0 11.5 0 Z M 18.18584251403809 18.18584251403809 C 14.49346351623535 21.87871360778809 8.506537437438965 21.87871170043945 4.813912391662598 18.18608856201172 C 1.121288180351257 14.49346351623535 1.121288895606995 8.506537437438965 4.813913345336914 4.813912391662598 C 8.506414413452148 1.121166586875916 14.49334144592285 1.121167421340942 18.18596649169922 4.813791275024414 C 21.87859153747559 8.506414413452148 21.87859153747559 14.49334144592285 18.18596649169922 18.18596649169922 Z" fill="#fd6c57" stroke="none" stroke-width="0.30000001192092896" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ea9pj1 =
    '<svg viewBox="4.5 -17.0 27.0 19.7" ><path transform="translate(4.5, -17.08)" d="M 0 0.5720767974853516 C 0.1195013150572777 0.277076929807663 0.295234888792038 0.05582864955067635 0.6045286059379578 0.08041374385356903 C 2.24941349029541 0.2197160571813583 3.901330471038818 0.3754087090492249 5.48997974395752 0.9408212900161743 C 5.792247295379639 1.047347187995911 6.073423385620117 1.211236119270325 6.354599475860596 1.375121831893921 C 6.677957057952881 1.571789979934692 6.811522483825684 1.899564266204834 6.727160453796387 2.325671434402466 C 6.706069946289063 2.432197570800781 6.706069946289063 2.54692006111145 6.692000865936279 2.70261812210083 L 6.9661545753479 2.70261812210083 C 7.298529624938965 2.70261812210083 7.63043737411499 2.70313024520874 7.962147235870361 2.703641653060913 L 7.96278715133667 2.703641653060913 C 8.956809043884277 2.705177307128906 9.948833465576172 2.706707239151001 10.94482517242432 2.694421768188477 C 11.08541584014893 2.694421768188477 11.25411510467529 2.620671987533569 11.37361431121826 2.522339344024658 C 12.21714115142822 1.809427976608276 13.12394046783447 1.358737826347351 14.19241905212402 1.489844083786011 C 14.85317897796631 1.571789979934692 15.46473503112793 1.842204570770264 16.0762882232666 2.145398855209351 C 17.01120376586914 2.604279279708862 17.95316314697266 3.054975271224976 18.89509773254395 3.505656957626343 C 18.972412109375 3.546638250350952 19.05677604675293 3.571221590042114 19.14815902709961 3.603989839553833 C 19.14815902709961 2.997624397277832 19.23249816894531 2.858310222625732 19.7175350189209 2.645255327224731 C 21.22184562683105 1.973316788673401 22.78940582275391 1.64554226398468 24.38508033752441 1.498040556907654 C 24.99663352966309 1.440677762031555 25.61530876159668 1.43248438835144 26.22684097290039 1.391514539718628 C 26.57818603515625 1.366931438446045 26.84527015686035 1.481650710105896 27 1.866790652275085 L 27 14.03546142578125 C 26.84527015686035 14.39599418640137 26.59223175048828 14.51891231536865 26.24778366088867 14.51891231536865 C 25.50985717773438 14.50661945343018 24.77168083190918 14.50815200805664 24.03350830078125 14.50968360900879 C 23.78751754760742 14.51020526885986 23.5414981842041 14.51072692871094 23.29550743103027 14.51072692871094 C 22.73315620422363 14.51072692871094 22.62068176269531 14.41239261627197 22.45197868347168 13.78141593933105 C 22.42386817932129 13.68308353424072 22.39575386047363 13.59296417236328 22.35357666015625 13.44546413421631 C 22.07239723205566 13.66671371459961 21.80528831481934 13.8715648651123 21.54517936706543 14.09281158447266 C 21.50302124023438 14.12558078765869 21.4959774017334 14.23212623596191 21.4959774017334 14.30587768554688 C 21.53815650939941 15.56780052185059 20.85630989074707 16.50196075439453 19.77378463745117 16.66585922241211 C 19.67535209655762 16.68222808837891 19.5488338470459 16.76419258117676 19.49260711669922 16.86252403259277 C 19.00052642822266 17.77209854125977 18.29056549072266 18.14084815979004 17.3978328704834 18.07528305053711 C 17.2642650604248 18.06709861755371 17.1939697265625 18.09168243408203 17.13069915771484 18.22278022766113 C 16.67380142211914 19.14875793457031 15.66859436035156 19.6977710723877 14.86722183227539 19.36179351806641 C 14.81801891326904 19.34542274475098 14.74070262908936 19.35360717773438 14.69852066040039 19.38637733459473 C 14.05180835723877 19.86166763305664 13.36995601654053 19.82068634033203 12.66701793670654 19.59943771362305 C 11.95003414154053 19.3700065612793 11.34549903869629 18.91110992431641 10.76907825469971 18.38667869567871 C 9.377243041992188 17.11654090881348 7.971362113952637 15.87098407745361 6.61468505859375 14.56807613372803 C 5.932834625244141 13.91254615783691 5.34237003326416 13.13407039642334 4.709723949432373 12.41297340393066 C 4.688633441925049 12.38838958740234 4.660520553588867 12.35559272766113 4.604270935058594 12.29824256896973 C 4.55506706237793 12.46214008331299 4.519908428192139 12.60142612457275 4.477751731872559 12.73255348205566 C 4.386366367340088 13.03573799133301 4.203597068786621 13.20781803131104 3.922421216964722 13.20781803131104 L 0.5764109492301941 13.20781803131104 C 0.2882079184055328 13.20781803131104 0.1335581541061401 13.00296878814697 0 12.7653226852417 L 0 0.5720767974853516 Z M 1.131736278533936 1.440683603286743 C 2.643060207366943 1.604569315910339 4.14032506942749 1.768458127975464 5.602456569671631 2.350260019302368 C 5.166623115539551 5.636206150054932 4.344185352325439 8.750082969665527 3.528769731521606 11.86392974853516 L 1.131736278533936 11.86392974853516 L 1.131736278533936 1.440683603286743 Z M 25.86120414733887 2.710811614990234 C 24.03360557556152 2.7599778175354 22.25516891479492 3.038577079772949 20.5118579864502 3.694137811660767 C 20.77896690368652 4.464400291442871 21.06719017028809 5.201894760131836 21.29916191101074 5.955787181854248 C 22.01614570617676 8.274787902832031 22.71206665039063 10.6020040512085 23.40798568725586 12.92922019958496 C 23.47125625610352 13.13407039642334 23.54857063293457 13.19142150878906 23.72431755065918 13.18323516845703 C 23.95604515075684 13.17094421386719 24.18385124206543 13.17247486114502 24.41361045837402 13.1740083694458 C 24.49050712585449 13.17453002929688 24.56760025024414 13.17505168914795 24.64528656005859 13.17505168914795 L 25.86120414733887 13.17505168914795 L 25.86120414733887 2.710811614990234 Z M 21.86151695251465 12.22449207305908 C 21.58033752441406 12.46214008331299 21.28509330749512 12.68338775634766 20.98282623291016 12.92100524902344 C 19.8018970489502 11.27393436431885 18.35383605957031 10.0201940536499 16.94795608520508 8.668119430541992 C 16.11847114562988 7.865088939666748 15.30305576324463 7.045631408691406 14.48763942718506 6.218017101287842 C 14.25566864013672 5.980370998382568 14.03074073791504 5.931204795837402 13.74251747131348 6.05411958694458 C 13.23641490936279 6.275367736816406 12.71622085571289 6.439265251159668 12.21011924743652 6.668699264526367 C 12.05546188354492 6.734262943267822 11.91487503051758 6.906346321105957 11.80239868164063 7.07021427154541 C 11.46499729156494 7.570091724395752 11.09243583679199 8.012588500976563 10.50899410247803 8.078124046325684 C 10.31217861175537 8.102706909179688 10.10832023620605 8.078124046325684 9.911482810974121 8.028957366943359 C 9.496764183044434 7.922440052032471 9.419424057006836 7.774940967559814 9.517829895019531 7.291461944580078 C 9.686555862426758 6.463849067687988 10.06613826751709 5.775520324707031 10.55117416381836 5.177311420440674 C 11.01512050628662 4.611898899078369 11.52122211456299 4.079283237457275 12.04141807556152 3.579406261444092 C 12.96928405761719 2.686225414276123 14.00262928009033 2.571505784988403 15.10624217987061 3.095957279205322 C 16.6527099609375 3.825237989425659 18.19917869567871 4.54636287689209 19.73862838745117 5.275644302368164 C 19.81594276428223 5.316625118255615 19.89328193664551 5.414958477020264 19.92139434814453 5.505105495452881 C 20.59622192382813 7.64384126663208 21.27105140686035 9.782574653625488 21.93180847167969 11.92949485778809 C 21.95991897583008 12.0114278793335 21.9177417755127 12.17532634735107 21.86151695251465 12.22449207305908 Z M 6.572502613067627 4.021903038024902 C 6.059353828430176 6.234386444091797 5.55325174331665 8.405919075012207 5.054147720336914 10.57742023468018 C 5.026034832000732 10.6921501159668 5.019012928009033 10.86423301696777 5.075238227844238 10.92976856231689 C 5.743043899536133 11.73282909393311 6.368668556213379 12.59323978424072 7.099720478057861 13.29796600341797 C 8.70946216583252 14.83849239349365 10.36138343811035 16.31348037719727 12.02032661437988 17.77209854125977 C 12.35070610046387 18.06709861755371 12.79356098175049 18.19819641113281 13.18718814849854 18.37028121948242 C 13.29441547393799 18.41571807861328 13.41512012481689 18.41785621643066 13.55637454986572 18.42034339904785 C 13.61888313293457 18.42144393920898 13.68543148040771 18.42263031005859 13.7565860748291 18.42763328552246 C 13.6722240447998 18.31293106079102 13.63708972930908 18.26376533508301 13.60193061828613 18.22278022766113 C 13.07473945617676 17.59180450439453 12.54049777984619 16.96904182434082 12.01327991485596 16.33806419372559 C 11.80239868164063 16.09223175048828 11.59853839874268 15.83821582794189 11.40172576904297 15.57598686218262 C 11.19084167480469 15.2892017364502 11.20491313934326 14.91224193572998 11.42983722686768 14.66640949249268 C 11.64776611328125 14.42057704925537 11.97814559936523 14.42879199981689 12.21011924743652 14.6828088760376 C 12.28743362426758 14.76474189758301 12.35772895812988 14.86307430267334 12.42802333831787 14.94503879547119 C 13.27155113220215 15.92836380004883 14.11507892608643 16.91168975830078 14.97267627716064 17.88680458068848 C 15.23276233673096 18.18180084228516 15.47880172729492 18.19819641113281 15.78104686737061 17.96055221557617 C 15.96381568908691 17.81305313110352 16.1114501953125 17.59180450439453 16.30826377868652 17.35418701171875 C 15.5280065536499 16.46097946166992 14.78990745544434 15.62515258789063 14.05885314941406 14.78932476043701 C 13.90419673919678 14.60905933380127 13.74956512451172 14.42879199981689 13.61599922180176 14.22391319274902 C 13.43322849273682 13.95349788665771 13.46134185791016 13.59296417236328 13.6722240447998 13.36350345611572 C 13.88310718536377 13.12588405609131 14.20646381378174 13.11767101287842 14.43843746185303 13.35531806945801 C 14.52279853820801 13.44546413421631 14.60011577606201 13.54379749298096 14.67743110656738 13.64212989807129 C 15.48582553863525 14.58447551727295 16.28014945983887 15.53503513336182 17.10258674621582 16.46097946166992 C 17.46812629699707 16.8788948059082 18.00236511230469 16.82972717285156 18.37492561340332 16.41181373596191 C 18.5295581817627 16.23973274230957 18.57174110412598 16.1086311340332 18.38194847106934 15.8873815536499 C 17.37674140930176 14.73197555541992 16.38557815551758 13.55198287963867 15.39443969726563 12.37199115753174 C 15.12733268737793 12.05240917205811 15.12028503417969 11.66726303100586 15.3593053817749 11.38866519927979 C 15.59829998016357 11.11006450653076 15.92165660858154 11.13464832305908 16.19578742980957 11.4542293548584 C 16.46994018554688 11.77381038665771 16.73002624511719 12.10157680511475 17.00417900085449 12.42115783691406 C 17.7703914642334 13.31433582305908 18.5295581817627 14.20754241943359 19.2957706451416 15.09253787994385 C 19.54181289672852 15.37113761901855 19.77375984191895 15.37932109832764 20.05493545532227 15.15807342529297 C 20.36425018310547 14.92045593261719 20.46967697143555 14.53530883789063 20.30097770690918 14.14197826385498 C 20.19552612304688 13.88796234130859 20.05493545532227 13.63391590118408 19.89328193664551 13.43725204467773 C 19.45042991638184 12.89642143249512 19.00757217407227 12.35559272766113 18.52253913879395 11.87214374542236 C 17.03931617736816 10.39715385437012 15.5350284576416 8.946746826171875 14.03776454925537 7.496340751647949 C 13.98153686523438 7.438961982727051 13.84797191619873 7.430777072906494 13.76360988616943 7.463544845581055 C 13.48945426940918 7.570091724395752 13.2293701171875 7.725774765014648 12.94819259643555 7.807708740234375 C 12.75840187072754 7.865088939666748 12.6248607635498 7.971606731414795 12.49831676483154 8.143688201904297 C 11.71805953979492 9.192578315734863 10.75500965118408 9.626862525939941 9.574079513549805 9.266328811645508 C 8.660257339477539 8.987700462341309 8.231448173522949 8.184670448303223 8.414216995239258 7.111196041107178 C 8.54076099395752 6.316349983215332 8.857070922851563 5.628022193908691 9.250722885131836 4.980646133422852 C 9.447535514831543 4.652881145477295 9.679510116577148 4.341484069824219 9.904459953308105 4.005533695220947 C 8.758665084838867 4.021903038024902 7.640982627868652 4.021903038024902 6.572502613067627 4.021903038024902 Z" fill="#fd6c57" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qcjx2v =
    '<svg viewBox="1.0 1.0 22.0 22.0" ><path transform="translate(0.0, 0.0)" d="M 22.99862670898438 13.35261249542236 L 22.99862670898438 10.602783203125 L 19.72587203979492 10.06793975830078 C 19.53200912475586 9.292946815490723 19.22769355773926 8.564239501953125 18.82667541503906 7.896944999694824 L 20.73414993286133 5.178280353546143 L 18.78956031799316 3.234611034393311 L 16.10572052001953 5.164072036743164 C 15.43659973144531 4.758931636810303 14.70331192016602 4.450034618377686 13.92281723022461 4.255712509155273 L 13.35223007202148 0.9990001916885376 L 10.60240173339844 0.9990001916885376 L 10.07259750366211 4.245172023773193 C 9.291647911071777 4.43674373626709 8.554232597351074 4.741515159606934 7.883277893066406 5.144822597503662 L 5.207235813140869 3.232776880264282 L 3.262649774551392 5.17644739151001 L 5.144906997680664 7.868529319763184 C 4.737932205200195 8.542238235473633 4.42857551574707 9.278738975524902 4.231965065002441 10.06472969055176 L 0.9999999403953552 10.602783203125 L 0.9999999403953552 13.35261249542236 L 4.228299140930176 13.92503547668457 C 4.42307710647583 14.70919895172119 4.732890129089355 15.44569206237793 5.141239166259766 16.12030982971191 L 3.233318328857422 18.78902626037598 L 5.176988124847412 20.73452186584473 L 7.872274398803711 18.84676742553711 C 8.54506778717041 19.2509880065918 9.280651092529297 19.55806159973145 10.06160163879395 19.75100135803223 L 10.60240173339844 22.99900245666504 L 13.3522310256958 22.99900245666504 L 13.93015098571777 19.74275016784668 C 14.70697498321533 19.54568290710449 15.44118309020996 19.2363224029541 16.1075553894043 18.83072471618652 L 18.82163429260254 20.73497772216797 L 20.76576805114746 18.78948211669922 L 18.82851219177246 16.0992317199707 C 19.22952651977539 15.43194198608398 19.53384399414063 14.70232009887695 19.72587203979492 13.92732810974121 L 22.99862670898438 13.35261249542236 Z M 11.99931049346924 15.66521835327148 C 9.974523544311523 15.66521835327148 8.33287525177002 14.02356815338135 8.33287525177002 11.99878025054932 C 8.33287525177002 9.97398567199707 9.974523544311523 8.33233642578125 11.99931049346924 8.33233642578125 C 14.02410316467285 8.33233642578125 15.66575050354004 9.97398567199707 15.66575050354004 11.99878025054932 C 15.66575050354004 14.02356815338135 14.02410316467285 15.66521835327148 11.99931049346924 15.66521835327148 Z" fill="none" stroke="#333333" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" /></svg>';
const String _svg_tnidx2 =
    '<svg viewBox="0.0 0.0 20.0 24.0" ><path transform="translate(-13.05, -7.0)" d="M 14.03985595703125 28.19124603271484 L 20.28569602966309 28.19124603271484 C 20.28569602966309 29.72482299804688 21.54044151306152 30.97956466674805 23.07401847839355 30.97956466674805 C 24.60759544372559 30.97956466674805 25.86233901977539 29.72482299804688 25.86233901977539 28.19124603271484 L 32.10818481445313 28.19124603271484 C 32.47066497802734 28.19124603271484 32.77738189697266 28.02394676208496 32.94467926025391 27.71723175048828 C 33.11198043823242 27.4105167388916 33.13986206054688 27.04803466796875 32.94467926025391 26.74131774902344 L 31.21592140197754 23.64628028869629 C 30.79767227172852 22.89343452453613 30.57460784912109 22.02905464172363 30.57460784912109 21.16467475891113 L 30.57460784912109 17.20525550842285 C 30.57460784912109 17.01007270812988 30.57460784912109 16.8427734375 30.54672431945801 16.64759063720703 C 30.54672431945801 16.59182357788086 30.54672431945801 16.56394195556641 30.54672431945801 16.50817680358887 C 30.51884269714355 16.34087562561035 30.51884269714355 16.17357635498047 30.49095726013184 16.03415870666504 C 30.49095726013184 15.95051002502441 30.46307182312012 15.86686038970947 30.46307182312012 15.81109523773193 C 30.4351921081543 15.72744560241699 30.4351921081543 15.64379596710205 30.40730667114258 15.56014728546143 C 30.37942695617676 15.39284706115723 30.32365798950195 15.22554779052734 30.26789283752441 15.03036403656006 C 30.26789283752441 15.00248146057129 30.24001121520996 14.9745979309082 30.24001121520996 14.94671535491943 C 29.93329429626465 13.97080326080322 29.43139457702637 13.07853889465332 28.79008483886719 12.29780960083008 C 28.79008483886719 12.29780960083008 28.79008483886719 12.26992416381836 28.7622013092041 12.26992416381836 C 28.53913497924805 11.99109268188477 28.28818702697754 11.74014472961426 28.00935554504395 11.48919582366943 C 27.98147010803223 11.46131134033203 27.92570304870605 11.43342876434326 27.8978214263916 11.40554618835449 C 27.78628730773926 11.32189655303955 27.67475318908691 11.21036338806152 27.56322288513184 11.12671375274658 C 27.47957229614258 11.07094764709473 27.39592361450195 11.01518058776855 27.34015655517578 10.95941543579102 C 27.28439140319824 10.90364742279053 27.22862434387207 10.87576484680176 27.14497375488281 10.81999778747559 C 27.00555801391602 10.73634910583496 26.86614227294922 10.6526985168457 26.75461006164551 10.56904983520508 C 26.72672653198242 10.54116630554199 26.6988410949707 10.54116630554199 26.67095947265625 10.51328372955322 C 26.50366020202637 10.42963409423828 26.36424446105957 10.34598350524902 26.19694519042969 10.26233386993408 C 26.19694519042969 10.26233386993408 26.1690616607666 10.26233386993408 26.1690616607666 10.234450340271 C 25.973876953125 10.15080070495605 25.80658149719238 10.06715202331543 25.61139869689941 9.983502388000488 C 25.61139869689941 9.983502388000488 25.61139869689941 9.983502388000488 25.61139869689941 9.983502388000488 C 25.41621398925781 9.89985179901123 25.22103309631348 9.844085693359375 25.02584838867188 9.788318634033203 L 25.02584838867188 8.951822280883789 C 25.02584838867188 7.864376068115234 24.16147041320801 6.999995708465576 23.07402229309082 6.999995708465576 C 21.9865779876709 6.999995708465576 21.1221981048584 7.864376068115234 21.1221981048584 8.951822280883789 L 21.1221981048584 9.760435104370117 C 21.09431648254395 9.760435104370117 21.09431648254395 9.760435104370117 21.06643104553223 9.788318634033203 C 20.92701721191406 9.816202163696289 20.78759765625 9.871968269348145 20.64818382263184 9.927734375 C 20.56453323364258 9.955618858337402 20.48088455200195 9.983502388000488 20.3972339630127 10.01138496398926 C 20.36935043334961 10.01138496398926 20.34146881103516 10.03926658630371 20.31358528137207 10.03926658630371 C 18.75212478637695 10.6526985168457 17.46949577331543 11.76802730560303 16.63299942016602 13.16218757629395 C 16.63299942016602 13.19007301330566 16.60511589050293 13.19007301330566 16.60511589050293 13.21795558929443 C 16.5214672088623 13.38525390625 16.40993309020996 13.5525541305542 16.32628440856934 13.71985340118408 C 16.29840087890625 13.77561950683594 16.27051734924316 13.83138561248779 16.24263381958008 13.88715171813965 C 16.21475219726563 13.97080135345459 16.15898513793945 14.05445098876953 16.13110160827637 14.13810062408447 C 16.0753345489502 14.27751731872559 16.01956939697266 14.3890495300293 15.96380233764648 14.52846717834473 C 15.93592071533203 14.5842342376709 15.93592071533203 14.63999938964844 15.90803527832031 14.72364902496338 C 15.85226917266846 14.86306571960449 15.82438564300537 14.9745979309082 15.7965030670166 15.11401557922363 C 15.7965030670166 15.1418981552124 15.76862049102783 15.19766426086426 15.76862049102783 15.22554779052734 C 15.74073505401611 15.39284706115723 15.68496990203857 15.56014728546143 15.6570873260498 15.72744560241699 C 15.6570873260498 15.75532722473145 15.6292028427124 15.81109523773193 15.6292028427124 15.83897876739502 C 15.60132026672363 16.00627708435059 15.57343673706055 16.20145988464355 15.57343673706055 16.36876106262207 C 15.57343673706055 16.39664268493652 15.57343673706055 16.45240783691406 15.57343673706055 16.48029136657715 C 15.5455493927002 16.64759063720703 15.5455493927002 16.8427734375 15.5455493927002 17.03795623779297 L 15.5455493927002 21.13678932189941 C 15.5455493927002 22.00117111206055 15.32248401641846 22.86555099487305 14.90423583984375 23.6183967590332 L 13.17547607421875 26.71343421936035 C 13.00817584991455 27.02014923095703 13.00817584991455 27.38263130187988 13.17547607421875 27.68934631347656 C 13.3706579208374 28.02394676208496 13.67737293243408 28.19124603271484 14.03985595703125 28.19124603271484 Z M 23.07401847839355 29.86423683166504 C 22.15387153625488 29.86423683166504 21.40102386474609 29.11139297485352 21.40102386474609 28.19124603271484 L 24.74701118469238 28.19124603271484 C 24.74701118469238 29.11139297485352 23.99416542053223 29.86423683166504 23.07401847839355 29.86423683166504 Z M 22.23752212524414 8.951824188232422 C 22.23752212524414 8.477807998657227 22.60000419616699 8.115325927734375 23.07401847839355 8.115325927734375 C 23.54803466796875 8.115325927734375 23.91051292419434 8.477807998657227 23.91051292419434 8.951824188232422 L 23.91051292419434 9.565255165100098 C 23.5759162902832 9.509488105773926 23.26919937133789 9.509488105773926 22.93460273742676 9.509488105773926 C 22.7115364074707 9.509488105773926 22.4605884552002 9.537371635437012 22.23752212524414 9.565255165100098 L 22.23752212524414 8.951824188232422 Z M 15.88014793395996 24.17606163024902 C 16.38204574584961 23.25591850280762 16.6608772277832 22.19635200500488 16.6608772277832 21.13678932189941 L 16.6608772277832 17.03795623779297 C 16.6608772277832 16.87065696716309 16.6608772277832 16.7033576965332 16.68876075744629 16.53605842590332 C 16.68876075744629 16.50817680358887 16.68876075744629 16.48029136657715 16.68876075744629 16.45240783691406 C 16.71664428710938 16.28511238098145 16.71664428710938 16.14569473266602 16.74452781677246 15.97839546203613 C 16.74452781677246 15.95051193237305 16.74452781677246 15.89474487304688 16.77240943908691 15.86686038970947 C 16.80029296875 15.72744560241699 16.82818031311035 15.56014728546143 16.88394355773926 15.42073059082031 C 16.88394355773926 15.39284896850586 16.91182708740234 15.33708190917969 16.91182708740234 15.30919647216797 C 16.9397087097168 15.19766426086426 16.99547576904297 15.05824756622314 17.02335739135742 14.94671535491943 C 17.05124473571777 14.89094829559326 17.07912635803223 14.80730056762695 17.10700988769531 14.75153255462646 C 17.1348934173584 14.66788387298584 17.16277694702148 14.5842342376709 17.21854209899902 14.50058364868164 C 17.2743091583252 14.3890495300293 17.33007431030273 14.27751731872559 17.38584327697754 14.16598510742188 C 17.41372489929199 14.1102180480957 17.44160842895508 14.05445098876953 17.46949005126953 14.02656841278076 C 18.13868713378906 12.79970741271973 19.19824981689453 11.79591083526611 20.48088073730469 11.21036338806152 C 20.50876235961914 11.21036338806152 20.53664588928223 11.18247985839844 20.56452751159668 11.18247985839844 C 20.67606163024902 11.12671375274658 20.75971031188965 11.09883117675781 20.87124633789063 11.07094764709473 C 20.9827766418457 11.04306411743164 21.06642532348633 10.98729801177979 21.17795944213867 10.95941543579102 C 21.23372459411621 10.93153095245361 21.28949165344238 10.93153095245361 21.34525871276855 10.90364742279053 C 21.48467445373535 10.87576484680176 21.62409019470215 10.81999778747559 21.79138946533203 10.79211521148682 C 22.18175315856934 10.70846557617188 22.57211685180664 10.6526985168457 22.99036598205566 10.6526985168457 C 23.5759162902832 10.6526985168457 24.13357925415039 10.70846557617188 24.69124412536621 10.87576484680176 C 24.74700927734375 10.90364742279053 24.80277633666992 10.90364742279053 24.85854148864746 10.93153095245361 C 25.02584266662598 10.98729801177979 25.19314193725586 11.04306411743164 25.38832664489746 11.09883117675781 C 25.38832664489746 11.09883117675781 25.41620635986328 11.09883117675781 25.41620635986328 11.09883117675781 C 26.00175666809082 11.32189655303955 26.53153419494629 11.65649604797363 27.03343200683594 12.04685974121094 C 27.03343200683594 12.04685974121094 27.03343200683594 12.04685974121094 27.03343200683594 12.04685974121094 C 27.20073318481445 12.18627738952637 27.36803245544434 12.32569217681885 27.5074462890625 12.46510887145996 C 28.28817939758301 13.24583721160889 28.87372398376465 14.19386863708496 29.20832443237305 15.22554779052734 C 29.20832443237305 15.25343036651611 29.20832443237305 15.28131294250488 29.23620414733887 15.28131294250488 C 29.29197311401367 15.420729637146 29.31985664367676 15.56014728546143 29.34774017333984 15.69956207275391 C 29.37562370300293 15.78321170806885 29.37562370300293 15.83897876739502 29.40350532531738 15.92262840270996 C 29.40350532531738 15.9783935546875 29.43138885498047 16.06204223632813 29.43138885498047 16.11781120300293 C 29.45926856994629 16.25722503662109 29.48715400695801 16.39664077758789 29.48715400695801 16.53605842590332 C 29.48715400695801 16.56394195556641 29.48715400695801 16.61970710754395 29.48715400695801 16.64759063720703 C 29.48715400695801 16.81488990783691 29.51503372192383 16.98219108581543 29.51503372192383 17.14948844909668 L 29.51503372192383 21.10890769958496 C 29.51503372192383 22.1684684753418 29.79386901855469 23.20014762878418 30.29576683044434 24.14817810058594 L 31.88511657714844 27.0759162902832 L 24.49606323242188 27.0759162902832 L 21.65197372436523 27.0759162902832 L 14.26292037963867 27.0759162902832 L 15.88014793395996 24.17606163024902 Z" fill="#333333" stroke="#333333" stroke-width="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

