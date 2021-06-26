import '../../localization/language/languages.dart';
import '../../model/all_professor_response.dart';
import '../../model/allfaculties_response_model.dart';
import '../../model/getfaculty_response_model.dart';
import '../../services/services.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'dart:ui' as ui;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../model/all_faculty_search_response.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constant.dart';
import 'CollegePage.dart';
class SearchCollege extends StatefulWidget {
    SearchCollege({
    Key key,
  }) : super(key: key);
  @override
  _SearchCollegeState createState() => _SearchCollegeState();
}

class _SearchCollegeState extends State<SearchCollege> {

   String imagePathFaculties=baseimagePath+"faculty/";
     String imagePathProfessor=baseimagePath+"professor/";

 AllFacultiesResponseModel  allFacultiesResponse=new AllFacultiesResponseModel();
 
 AllprofessorsResponse allprofessorsResponse=new AllprofessorsResponse();
GetfacultyResponseModel getfacultyResponseModel=new GetfacultyResponseModel();
  TextEditingController searchController = new TextEditingController();
  searchfacultyModel searhfacultyresult=new searchfacultyModel();
Widget tmp1 ;
  String websiteURL;
    List <String> imagelisttmp=new List<String>();

  var imagelist;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    tmp1=Container();
    allfacultyData();
//allprofessourApiResponse();  
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f7ddb),
      body: SingleChildScrollView(
        
        child: Container(
          height: MediaQuery.of(context).size.height*1,
          child: Stack(
            children: <Widget>[
              Container(),
              Pinned.fromPins(
                Pin(start: 0.0, end: 0.0),
                Pin(start:MediaQuery.of(context).size.height*0.1, end: MediaQuery.of(context).size.height*0.4),
                child: Stack(
                  children: <Widget>[
                  //   Pinned.fromPins(
                  //     Pin(size: 70.0, start: 0.0),
                  //     Pin(size: 88.0, end: 0.0),
                  //     child: Stack(
                  //       children: <Widget>[
                  //         Pinned.fromPins(
                  //           Pin(start: 1.0, end: 5.0),
                  //           Pin(size: 64.0, start: 0.0),
                  //           child: Stack(
                  //             children: <Widget>[
                  //               Pinned.fromPins(
                  //                 Pin(start: 0.0, end: 0.0),
                  //                 Pin(start: 0.0, end: 0.0),
                  //                 child: Container(
                  //                   decoration: BoxDecoration(
                  //                     borderRadius: BorderRadius.all(
                  //                         Radius.elliptical(9999.0, 9999.0)),
                  //                     border: Border.all(
                  //                         width: 1.5,
                  //                         color: const Color(0xfffd6c57)),
                  //                   ),
                  //                 ),
                  //               ),
                  //               Pinned.fromPins(
                  //                 Pin(start: 4.0, end: 4.0),
                  //                 Pin(start: 4.0, end: 4.0),
                  //                 child:
                  //                     // Adobe XD layer: '6717563c1db1c6fb9cc…' (shape)
                  //                     Container(
                  //                   decoration: BoxDecoration(
                  //                     borderRadius: BorderRadius.circular(1000.0),
                  //                     image: DecorationImage(
                  //                       image: 
                  //                       const AssetImage('assets/image/splash_logo.png'),
                  //                       fit: BoxFit.cover,
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         Pinned.fromPins(
                  //           Pin(start: 0.0, end: 0.0),
                  //           Pin(size: 17.0, end: 0.0),
                  //           child: Text(
                  //             'Dr.Rouqia',
                  //             style: TextStyle(
                  //               fontFamily: 'Tofino',
                  //               fontSize: 12,
                  //               color: const Color(0xffffffff),
                  //               height: 3.3333333333333335,
                  //             ),
                  //             textHeightBehavior: TextHeightBehavior(
                  //                 applyHeightToFirstAscent: false),
                  //             textAlign: TextAlign.center,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  //   Pinned.fromPins(
                  //     Pin(size: 70.0, middle: 0.2455),
                  //     Pin(size: 88.0, end: 0.0),
                  //     child: Stack(
                  //       children: <Widget>[
                  //         Pinned.fromPins(
                  //           Pin(start: 1.0, end: 5.0),
                  //           Pin(size: 64.0, start: 0.0),
                  //           child: Stack(
                  //             children: <Widget>[
                  //               Pinned.fromPins(
                  //                 Pin(start: 0.0, end: 0.0),
                  //                 Pin(start: 0.0, end: 0.0),
                  //                 child: Container(
                  //                   decoration: BoxDecoration(
                  //                     borderRadius: BorderRadius.all(
                  //                         Radius.elliptical(9999.0, 9999.0)),
                  //                     border: Border.all(
                  //                         width: 1.5,
                  //                         //color: const Color(0xfffd6c57)),
                  //                         color:Colors.red),
                  //                   ),
                  //                 ),
                  //               ),
                  //               Pinned.fromPins(
                  //                 Pin(start: 4.4, end: 3.6),
                  //                 Pin(start: 4.8, end: 2.3),
                  //                 child:
                  //                     // Adobe XD layer: 'images (11)' (shape)
                  //                     Container(
                  //                   decoration: BoxDecoration(
                  //                     borderRadius: BorderRadius.circular(24.0),
                  //                     image: DecorationImage(
                  //                       image: const AssetImage(''),
                  //                       fit: BoxFit.fill,
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         Pinned.fromPins(
                  //           Pin(start: 0.0, end: 0.0),
                  //           Pin(size: 17.0, end: 0.0),
                  //           child: Text(
                  //             'Dr.Gamal',
                  //             style: TextStyle(
                  //               fontFamily: 'Tofino',
                  //               fontSize: 12,
                  //               color: const Color(0xfffffbfb),
                  //               height: 3.3333333333333335,
                  //             ),
                  //             textHeightBehavior: TextHeightBehavior(
                  //                 applyHeightToFirstAscent: false),
                  //             textAlign: TextAlign.center,
                  //           ),
                  //         ),
                  //         Pinned.fromPins(
                  //           Pin(start: 5.0, end: 4.0),
                  //           Pin(size: 18.0, middle: 0.7429),
                  //           child: Stack(
                  //             children: <Widget>[
                  //               Pinned.fromPins(
                  //                 Pin(start: 0.0, end: 0.0),
                  //                 Pin(start: 0.0, end: 0.0),
                  //                 child: Stack(
                  //                   children: <Widget>[
                  //                     Pinned.fromPins(
                  //                       Pin(start: 0.0, end: 0.0),
                  //                       Pin(start: 0.0, end: 0.0),
                  //                       child: Container(
                  //                         decoration: BoxDecoration(
                  //                           borderRadius:
                  //                               BorderRadius.circular(9.0),
                  //                           gradient: LinearGradient(
                  //                             begin: Alignment(-1.0, 0.0),
                  //                             end: Alignment(1.0, 0.0),
                  //                             colors: [
                  //                               const Color(0xfffb6c56),
                  //                               const Color(0xfffb6b56)
                  //                             ],
                  //                             stops: [0.0, 1.0],
                  //                           ),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                     Pinned.fromPins(
                  //                       Pin(start: 9.0, end: 8.0),
                  //                       Pin(size: 12.0, middle: 0.5),
                  //                       child: Text(
                  //                         'Featured',
                  //                         style: TextStyle(
                  //                           fontFamily: 'Tofino',
                  //                           fontSize: 9,
                  //                           color: const Color(0xffffffff),
                  //                           fontWeight: FontWeight.w700,
                  //                           height: 4.444444444444445,
                  //                         ),
                  //                         textHeightBehavior: TextHeightBehavior(
                  //                             applyHeightToFirstAscent: false),
                  //                         textAlign: TextAlign.center,
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  //   Pinned.fromPins(
                  //     Pin(size: 70.0, middle: 0.4967),
                  //     Pin(size: 87.0, end: 1.0),
                  //     child: Stack(
                  //       children: <Widget>[
                  //         Pinned.fromPins(
                  //           Pin(start: 0.0, end: 6.0),
                  //           Pin(size: 64.0, start: 0.0),
                  //           child: Stack(
                  //             children: <Widget>[
                  //               Pinned.fromPins(
                  //                 Pin(start: 0.0, end: 0.0),
                  //                 Pin(start: 0.0, end: 0.0),
                  //                 child: Container(
                  //                   decoration: BoxDecoration(
                  //                     borderRadius: BorderRadius.all(
                  //                         Radius.elliptical(9999.0, 9999.0)),
                  //                     border: Border.all(
                  //                         width: 1.5,
                  //                         color: const Color(0xfffd6c57)),
                  //                   ),
                  //                 ),
                  //               ),
                  //               Pinned.fromPins(
                  //                 Pin(start: 4.0, end: 4.0),
                  //                 Pin(start: 4.0, end: 4.0),
                  //                 child: Container(
                  //                   decoration: BoxDecoration(
                  //                     borderRadius: BorderRadius.circular(1000.0),
                  //                     image: DecorationImage(
                  //                       image: const AssetImage(''),
                  //                       fit: BoxFit.cover,
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         Pinned.fromPins(
                  //           Pin(start: 0.0, end: 0.0),
                  //           Pin(size: 17.0, end: 0.0),
                  //           child: Text(
                  //             'Dr.Ahlam',
                  //             style: TextStyle(
                  //               fontFamily: 'Tofino',
                  //               fontSize: 12,
                  //               color: const Color(0xfffff2f2),
                  //               height: 3.3333333333333335,
                  //             ),
                  //             textHeightBehavior: TextHeightBehavior(
                  //                 applyHeightToFirstAscent: false),
                  //             textAlign: TextAlign.center,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  //   Pinned.fromPins(
                  //     Pin(size: 80.0, middle: 0.7405),
                  //     Pin(size: 88.0, end: 0.0),
                  //     child: Stack(
                  //       children: <Widget>[
                  //         Pinned.fromPins(
                  //           Pin(start: 8.0, end: 8.0),
                  //           Pin(size: 64.0, start: 0.0),
                  //           child: Stack(
                  //             children: <Widget>[
                  //               Pinned.fromPins(
                  //                 Pin(start: 0.0, end: 0.0),
                  //                 Pin(start: 0.0, end: 0.0),
                  //                 child: Container(
                  //                   decoration: BoxDecoration(
                  //                     borderRadius: BorderRadius.all(
                  //                         Radius.elliptical(9999.0, 9999.0)),
                  //                     border: Border.all(
                  //                         width: 1.5,
                  //                         color: const Color(0xfffd6c57)),
                  //                   ),
                  //                 ),
                  //               ),
                  //               Pinned.fromPins(
                  //                 Pin(start: 3.1, end: 2.9),
                  //                 Pin(start: 3.8, end: 3.3),
                  //                 child:
                  //                     // Adobe XD layer: 'images (12)' (shape)
                  //                     Container(
                  //                   decoration: BoxDecoration(
                  //                     borderRadius: BorderRadius.circular(29.0),
                  //                     image: DecorationImage(
                  //                       image: const AssetImage(''),
                  //                       fit: BoxFit.fill,
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         Pinned.fromPins(
                  //           Pin(start: 0.0, end: 0.0),
                  //           Pin(size: 17.0, end: 0.0),
                  //           child: Text(
                  //             'Dr.Jihan Yahya',
                  //             style: TextStyle(
                  //               fontFamily: 'Tofino',
                  //               fontSize: 12,
                  //               color: const Color(0xffffffff),
                  //               height: 3.3333333333333335,
                  //             ),
                  //             textHeightBehavior: TextHeightBehavior(
                  //                 applyHeightToFirstAscent: false),
                  //             textAlign: TextAlign.center,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  //   Pinned.fromPins(
                  //     Pin(size: 74.0, end: 0.0),
                  //     Pin(size: 88.0, end: 0.0),
                  //     child: Stack(
                  //       children: <Widget>[
                  //         Pinned.fromPins(
                  //           Pin(start: 2.0, end: 8.0),
                  //           Pin(size: 64.0, start: 0.0),
                  //           child: Stack(
                  //             children: <Widget>[
                  //               Pinned.fromPins(
                  //                 Pin(start: 0.0, end: 0.0),
                  //                 Pin(start: 0.0, end: 0.0),
                  //                 child: Container(
                  //                   decoration: BoxDecoration(
                  //                     borderRadius: BorderRadius.all(
                  //                         Radius.elliptical(9999.0, 9999.0)),
                  //                     border: Border.all(
                  //                         width: 1.5,
                  //                         color: const Color(0xfffd6c57)),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         Pinned.fromPins(
                  //           Pin(start: 0.0, end: 0.0),
                  //           Pin(size: 17.0, end: 0.0),
                  //           child: Text(
                  //             'Dr.Gamal Sa',
                  //             style: TextStyle(
                  //               fontFamily: 'Tofino',
                  //               fontSize: 12,
                  //               color: const Color(0xffffffff),
                  //               height: 3.3333333333333335,
                  //             ),
                  //             textHeightBehavior: TextHeightBehavior(
                  //                 applyHeightToFirstAscent: false),
                  //             textAlign: TextAlign.center,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  //   Pinned.fromPins(
                  //     Pin(size: 141.0, start: 3.0),
                  //     Pin(size: 24.0, start: 0.0),
                  //     child: Text(
                  //       'Doctors, Teacher',
                  //       style: TextStyle(
                  //         fontFamily: 'Tofino',
                  //         fontSize: 18,
                  //         color: const Color(0xff000000),
                  //         fontWeight: FontWeight.w700,
                  //         height: 2.2222222222222223,
                  //       ),
                  //       textHeightBehavior:
                  //           TextHeightBehavior(applyHeightToFirstAscent: false),
                  //       textAlign: TextAlign.left,
                  //     ),
                  //   ),

                   ],
                ),
              ),
              // Pinned.fromPins(
              //   Pin(size: 155.0, start: 16.0),
              //   Pin(size: 24.0, middle: 0.4967),
              //   child: Text.rich(
              //     TextSpan(
              //       style: TextStyle(
              //         fontFamily: 'Tofino',
              //         fontSize: 18,
              //         color: const Color(0xff000000),
              //         height: 2.2222222222222223,
              //       ),
              //       children: [
              //         TextSpan(
              //           text: 'Results found ',
              //           style: TextStyle(
              //             fontWeight: FontWeight.w700,
              //           ),
              //         ),
              //         // TextSpan(
              //         //   text: '(12)',
              //         //   style: TextStyle(
              //         //     color: const Color(0xff999999),
              //         //     fontWeight: FontWeight.w700,
              //         //   ),
              //         // ),
              //       ],
              //     ),
              //     textHeightBehavior:
              //         TextHeightBehavior(applyHeightToFirstAscent: false),
              //     textAlign: TextAlign.left,
              //   ),
              // ),
              //All Doctor faculties student
              // Pinned.fromPins(
              //   Pin(start: 16.0, end: 26.0),
              //   Pin(start: MediaQuery.of(context).size.height*0.4, end: MediaQuery.of(context).size.height*0.5),
              //   child: Stack(
              //     children: <Widget>[
                     
                
              //       Pinned.fromPins(
              //   Pin(start: 10.0, end: 10.0),
              //   //Pin(size: 30.0, end: MediaQuery.of(context)),
              //    Pin(size:30,end: 0),
              //   child: 
              //   Row(children: <Widget>[
              //   //   Text.rich(
              //   //   TextSpan(
              //   //     style: TextStyle(
              //   //       fontFamily: 'Tofino',
              //   //       fontSize: 18,
              //   //       color: const Color(0xff000000),
              //   //       height: 2.2222222222222223,
              //   //     ),
              //   //     children: [
              //   //       TextSpan(
              //   //         text: Languages.of(context).resultsfound,
              //   //         style: TextStyle(
              //   //           fontWeight: FontWeight.w700,
              //   //         ),
              //   //       ),
              //   //       // TextSpan(
              //   //       //   text: '(12)',
              //   //       //   style: TextStyle(
              //   //       //     color: const Color(0xff999999),
              //   //       //     fontWeight: FontWeight.w700,
              //   //       //   ),
              //   //       // ),

              //   //     ],
              //   //   ),
              //   //   textHeightBehavior:
              //   //       TextHeightBehavior(applyHeightToFirstAscent: false),
              //   //   textAlign: TextAlign.left,
              //   // ),
              //   ],)
              // ),
                 
              //     ],
              //   ),
              // ),
                
          //// rsult found  background white
              // Pinned.fromPins(
              //   Pin(start: 7.0, end: 26.0),
              //   Pin(size: 103.3, middle: 0.5907),
              //   child: Stack(
              //     children: <Widget>[
              //       Pinned.fromPins(
              //         Pin(start: 10.5, end: 0.5),
              //         Pin(size: 1.0, end: -1.0),
              //         child: SvgPicture.string(
              //           _svg_br66xs,
              //           allowDrawingOutsideViewBox: true,
              //           fit: BoxFit.fill,
              //         ),
              //       ),
              //       Pinned.fromPins(
              //         Pin(start: 0.0, end: 0.0),
              //         Pin(start: 0.0, end: 0.3),
              //         child: Container(
              //           decoration: BoxDecoration(
              //             color: const Color(0xffffffff),
              //             border: Border.all(
              //                 width: 1.0, color: const Color(0xff707070)),
              //           ),
              //         ),
              //       ),
              //       Pinned.fromPins(
              //         Pin(start: 9.0, end: 15.0),
              //         Pin(start: 6.3, end: 12.0),
              //         child: Stack(
              //           children: <Widget>[
              //             Pinned.fromPins(
              //               Pin(size: 110.0, start: 0.0),
              //               Pin(start: 2.0, end: 0.0),
              //               child: Container(
              //                 decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(10.0),
              //                   image: DecorationImage(
              //                     image: const AssetImage(''),
              //                     fit: BoxFit.cover,
              //                   ),
              //                 ),
              //               ),
              //             ),
              //             Pinned.fromPins(
              //               Pin(size: 153.0, middle: 0.6198),
              //               Pin(size: 21.0, start: 0.0),
              //               child: Text(
              //                 'Media & Mass Comm',
              //                 style: TextStyle(
              //                   fontFamily: 'Tofino',
              //                   fontSize: 18,
              //                   color: const Color(0xff000000),
              //                   fontWeight: FontWeight.w500,
              //                   height: 2.5,
              //                 ),
              //                 textHeightBehavior: TextHeightBehavior(
              //                     applyHeightToFirstAscent: false),
              //                 textAlign: TextAlign.left,
              //               ),
              //             ),
              //             Pinned.fromPins(
              //               Pin(size: 100.0, middle: 0.5026),
              //               Pin(size: 17.0, end: 3.0),
              //               child: Text(
              //                 '8:30 am - 5:00pm',
              //                 style: TextStyle(
              //                   fontFamily: 'Tofino',
              //                   fontSize: 13,
              //                   color: const Color(0xfffd6c57),
              //                   height: 3.076923076923077,
              //                 ),
              //                 textHeightBehavior: TextHeightBehavior(
              //                     applyHeightToFirstAscent: false),
              //                 textAlign: TextAlign.left,
              //               ),
              //             ),
              //             Pinned.fromPins(
              //               Pin(size: 167.0, middle: 0.6785),
              //               Pin(size: 16.0, middle: 0.3188),
              //               child: Text(
              //                 'The Dean College is Dr. Ibrahim',
              //                 style: TextStyle(
              //                   fontFamily: 'Tofino',
              //                   fontSize: 12,
              //                   color: const Color(0xff1f7ddb),
              //                   height: 1.5,
              //                 ),
              //                 textHeightBehavior: TextHeightBehavior(
              //                     applyHeightToFirstAscent: false),
              //                 textAlign: TextAlign.left,
              //               ),
              //             ),
              //             Pinned.fromPins(
              //               Pin(size: 71.0, end: 4.0),
              //               Pin(size: 30.0, end: 2.0),
              //               child: Stack(
              //                 children: <Widget>[
              //                   Pinned.fromPins(
              //                     Pin(start: 0.0, end: 0.0),
              //                     Pin(start: 0.0, end: 0.0),
              //                     child: Container(
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(17.0),
              //                         color: const Color(0xfffd6c57),
              //                       ),
              //                     ),
              //                   ),
              //                   Pinned.fromPins(
              //                     Pin(size: 34.0, middle: 0.5676),
              //                     Pin(size: 20.0, start: 4.0),
              //                     child: Text(
              //                       'Enter',
              //                       style: TextStyle(
              //                         fontFamily: 'Tofino',
              //                         fontSize: 15,
              //                         color: const Color(0xffffffff),
              //                         fontWeight: FontWeight.w500,
              //                         height: 2.6666666666666665,
              //                       ),
              //                       textHeightBehavior: TextHeightBehavior(
              //                           applyHeightToFirstAscent: false),
              //                       textAlign: TextAlign.right,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //             Pinned.fromPins(
              //               Pin(size: 35.0, middle: 0.4204),
              //               Pin(size: 17.0, middle: 0.6397),
              //               child: Stack(
              //                 children: <Widget>[
              //                   Pinned.fromPins(
              //                     Pin(size: 17.0, end: 0.0),
              //                     Pin(start: 0.0, end: 0.0),
              //                     child: Text(
              //                       '3.5',
              //                       style: TextStyle(
              //                         fontFamily: 'Tofino',
              //                         fontSize: 13,
              //                         color: const Color(0xff999999),
              //                         fontWeight: FontWeight.w500,
              //                         height: 3.3846153846153846,
              //                       ),
              //                       textHeightBehavior: TextHeightBehavior(
              //                           applyHeightToFirstAscent: false),
              //                       textAlign: TextAlign.right,
              //                     ),
              //                   ),
              //                   Pinned.fromPins(
              //                     Pin(size: 12.1, start: 0.0),
              //                     Pin(size: 11.6, end: 2.4),
              //                     child:
              //                         // Adobe XD layer: 'ic_star' (group)
              //                         Stack(
              //                       children: <Widget>[
              //                         Pinned.fromPins(
              //                           Pin(start: 0.0, end: 0.0),
              //                           Pin(start: 0.0, end: 0.0),
              //                           child: Stack(
              //                             children: <Widget>[
              //                               Pinned.fromPins(
              //                                 Pin(start: 0.0, end: 0.0),
              //                                 Pin(start: 0.0, end: 0.0),
              //                                 child: Stack(
              //                                   children: <Widget>[
              //                                     Pinned.fromPins(
              //                                       Pin(start: 0.0, end: 0.0),
              //                                       Pin(start: 0.0, end: 0.0),
              //                                       child: SvgPicture.string(
              //                                         _svg_1ip9pl,
              //                                         allowDrawingOutsideViewBox:
              //                                             true,
              //                                         fit: BoxFit.fill,
              //                                       ),
              //                                     ),
              //                                   ],
              //                                 ),
              //                               ),
              //                             ],
              //                           ),
              //                         ),
              //                       ],
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //             Pinned.fromPins(
              //               Pin(size: 48.2, end: 0.0),
              //               Pin(size: 16.0, start: 3.0),
              //               child: Stack(
              //                 children: <Widget>[
              //                   Pinned.fromPins(
              //                     Pin(size: 35.0, end: 0.0),
              //                     Pin(start: 0.0, end: 0.0),
              //                     child: Text(
              //                       '1.2 km',
              //                       style: TextStyle(
              //                         fontFamily: 'Tofino',
              //                         fontSize: 12,
              //                         color: const Color(0xff000000),
              //                         height: 1.5,
              //                       ),
              //                       textHeightBehavior: TextHeightBehavior(
              //                           applyHeightToFirstAscent: false),
              //                       textAlign: TextAlign.left,
              //                     ),
              //                   ),
              //                   Pinned.fromPins(
              //                     Pin(size: 8.6, start: 0.0),
              //                     Pin(size: 11.8, end: 1.3),
              //                     child:
              //                         // Adobe XD layer: 'ic_location' (group)
              //                         Stack(
              //                       children: <Widget>[
              //                         Pinned.fromPins(
              //                           Pin(start: 0.0, end: 0.0),
              //                           Pin(start: 0.0, end: 0.0),
              //                           child: Stack(
              //                             children: <Widget>[
              //                               Pinned.fromPins(
              //                                 Pin(start: 0.0, end: 0.0),
              //                                 Pin(start: 0.0, end: 0.0),
              //                                 child: SvgPicture.string(
              //                                   _svg_dg9sv4,
              //                                   allowDrawingOutsideViewBox: true,
              //                                   fit: BoxFit.fill,
              //                                 ),
              //                               ),
              //                             ],
              //                           ),
              //                         ),
              //                       ],
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //             Pinned.fromPins(
              //               Pin(size: 110.0, start: 0.0),
              //               Pin(start: 2.0, end: 0.0),
              //               child:
              //                   // Adobe XD layer: 'images (6)' (shape)
              //                   Container(
              //                 decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(11.0),
              //                   image: DecorationImage(
              //                     image: const AssetImage(''),
              //                     fit: BoxFit.fill,
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // 
              
             ///result found 
             ///
          
              Pinned.fromPins(
                Pin(start: 0.0, end:0.0),
               Pin(start: MediaQuery.of(context).size.height*0.32, end: MediaQuery.of(context).size.height*0.0),
                child: 
                //getCardViewResultDoctor()
                SingleChildScrollView(
                  child: Container(
                    height:MediaQuery.of(context).size.height*0.65 ,
                    child: Column(children: [
                      Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Tofino',
                          fontSize: 18,
                          color: const Color(0xff000000),
                          height: 2.2222222222222223,
                        ),
                        children: [
                          TextSpan(
                            text: Languages.of(context).resultsfound,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                       
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                            
                          
                            tmp1,
                          
                            
                    ],),
                  ),
                )
                  

                ),
//                    Pinned.fromPins(
//                 Pin(start: 10.0, end: 10.0),
//                 Pin(start: MediaQuery.of(context).size.height*0.32, 
//                 end: MediaQuery.of(context).size.height*0.51),
//                 child:
//                 Column(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                      Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: <Widget>[
// // Text(
// //                          Languages.of(context).all,
// //                         style: TextStyle(
// //                           fontFamily: 'Tofino',
// //                           fontSize: 16,
// //                           color: const Color(0xff000000),
// //                           fontWeight: FontWeight.w700,
// //                           height: 2.5,
// //                         ),
// //                         textHeightBehavior:
// //                             TextHeightBehavior(applyHeightToFirstAscent: false),
// //                         textAlign: TextAlign.center,
// //                       ),
//                        Text(
//                          Languages.of(context).doctors,
//                         style: TextStyle(
//                           fontFamily: 'Tofino',
//                           fontSize: 16,
//                         //  color: const Color(0xff88ff00),
//                           fontWeight: FontWeight.w500,
//                           height: 2.5,
//                         ),
//                         textHeightBehavior:
//                             TextHeightBehavior(applyHeightToFirstAscent: false),
//                         textAlign: TextAlign.center,
//                       ),
// //                        Text(
// //                         Languages.of(context).faculties+"&"+Languages.of(context).departement,
// //                         style: TextStyle(
// //                           fontFamily: 'Tofino',
// //                           fontSize: 14,
// //                           color: const Color(0xff88ff00),
// //                           fontWeight: FontWeight.w500,
// //                           height: 2.5,
// //                         ),
// //                         textHeightBehavior:
// //                             TextHeightBehavior(applyHeightToFirstAscent: false),
// //                         textAlign: TextAlign.center,
// //                       ),
// //  Text(
// //                         Languages.of(context).students,
// //                         style: TextStyle(
// //                           fontFamily: 'Tofino',
// //                           fontSize: 16,
// //                           color: const Color(0xff88ff00),
// //                           fontWeight: FontWeight.w500,
// //                           height: 2.5,
// //                         ),
// //                         textHeightBehavior:
// //                             TextHeightBehavior(applyHeightToFirstAscent: false),
// //                         textAlign: TextAlign.center,
// //                       ),
//                       ],
//                       ),
//                       Container(
//                         height:MediaQuery.of(context).size.height*0.12,
//                       child:
// getCardViewResultDoctor(),
//                       )
//                 ],) 
                    
//                     ),
                //getCardViewResultFound()),
              ////  
              // Pinned.fromPins(
              //   Pin(start: 16.0, end: 35.5),
              //   Pin(size: 188.0, end: 109.8),
              //   child: 
              //   Stack(
              //     children: <Widget>[
              //       Pinned.fromPins(
              //         Pin(size: 110.0, start: 0.0),
              //         Pin(size: 83.0, start: 2.0),
              //         child: Container(
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10.0),
              //             image: DecorationImage(
              //               image: const AssetImage(''),
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //         ),
              //       ),
              //       Pinned.fromPins(
              //         Pin(size: 128.0, middle: 0.5306),
              //         Pin(size: 21.0, start: 0.0),
              //         child: Text(
              //           'Computer Science',
              //           style: TextStyle(
              //             fontFamily: 'Tofino',
              //             fontSize: 16,
              //             color: const Color(0xff000000),
              //             fontWeight: FontWeight.w500,
              //             height: 2.5,
              //           ),
              //           textHeightBehavior:
              //               TextHeightBehavior(applyHeightToFirstAscent: false),
              //           textAlign: TextAlign.left,
              //         ),
              //       ),
              //       Pinned.fromPins(
              //         Pin(size: 100.0, middle: 0.478),
              //         Pin(size: 17.0, middle: 0.3801),
              //         child: Text(
              //           '8:00 am - 4:45pm',
              //           style: TextStyle(
              //             fontFamily: 'Tofino',
              //             fontSize: 13,
              //             color: const Color(0xfffd6c57),
              //             height: 3.076923076923077,
              //           ),
              //           textHeightBehavior:
              //               TextHeightBehavior(applyHeightToFirstAscent: false),
              //           textAlign: TextAlign.left,
              //         ),
              //       ),
              //       Pinned.fromPins(
              //         Pin(size: 166.0, middle: 0.6304),
              //         Pin(size: 16.0, start: 22.0),
              //         child: Text(
              //           'The Dean College is Dr. Anwaar',
              //           style: TextStyle(
              //             fontFamily: 'Tofino',
              //             fontSize: 12,
              //             color: const Color(0xffffffff),
              //             height: 1.5,
              //           ),
              //           textHeightBehavior:
              //               TextHeightBehavior(applyHeightToFirstAscent: false),
              //           textAlign: TextAlign.left,
              //         ),
              //       ),
              //       Pinned.fromPins(
              //         Pin(start: 1.5, end: 0.0),
              //         Pin(size: 1.0, middle: 0.516),
              //         child: SvgPicture.string(
              //           _svg_tc6ppd,
              //           allowDrawingOutsideViewBox: true,
              //           fit: BoxFit.fill,
              //         ),
              //       ),
              //       Pinned.fromPins(
              //         Pin(size: 73.5, end: 16.0),
              //         Pin(size: 135.0, end: 0.0),
              //         child: Stack(
              //           children: <Widget>[
              //             Pinned.fromPins(
              //               Pin(start: 0.0, end: 2.5),
              //               Pin(size: 30.0, start: 0.0),
              //               child: Container(
              //                 decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(17.0),
              //                   color: const Color(0xfffd6c57),
              //                 ),
              //               ),
              //             ),
              //             Pinned.fromPins(
              //               Pin(size: 34.0, middle: 0.5316),
              //               Pin(size: 20.0, start: 4.0),
              //               child: Text(
              //                 'Enter',
              //                 style: TextStyle(
              //                   fontFamily: 'Tofino',
              //                   fontSize: 15,
              //                   color: const Color(0xffffffff),
              //                   fontWeight: FontWeight.w500,
              //                   height: 2.6666666666666665,
              //                 ),
              //                 textHeightBehavior: TextHeightBehavior(
              //                     applyHeightToFirstAscent: false),
              //                 textAlign: TextAlign.right,
              //               ),
              //             ),
              //             Pinned.fromPins(
              //               Pin(start: 2.5, end: 0.0),
              //               Pin(size: 30.0, end: 0.0),
              //               child: Container(
              //                 decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(17.0),
              //                   color: const Color(0xfffd6c57),
              //                 ),
              //               ),
              //             ),
              //             Pinned.fromPins(
              //               Pin(size: 34.0, middle: 0.5949),
              //               Pin(size: 20.0, end: 6.0),
              //               child: Text(
              //                 'Enter',
              //                 style: TextStyle(
              //                   fontFamily: 'Tofino',
              //                   fontSize: 15,
              //                   color: const Color(0xffffffff),
              //                   fontWeight: FontWeight.w500,
              //                   height: 2.6666666666666665,
              //                 ),
              //                 textHeightBehavior: TextHeightBehavior(
              //                     applyHeightToFirstAscent: false),
              //                 textAlign: TextAlign.right,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //       Pinned.fromPins(
              //         Pin(size: 35.0, middle: 0.3842),
              //         Pin(size: 17.0, middle: 0.2339),
              //         child: Stack(
              //           children: <Widget>[
              //             Pinned.fromPins(
              //               Pin(size: 17.0, end: 0.0),
              //               Pin(start: 0.0, end: 0.0),
              //               child: Text(
              //                 '4.0',
              //                 style: TextStyle(
              //                   fontFamily: 'Tofino',
              //                   fontSize: 13,
              //                   color: const Color(0xff999999),
              //                   fontWeight: FontWeight.w500,
              //                   height: 3.3846153846153846,
              //                 ),
              //                 textHeightBehavior: TextHeightBehavior(
              //                     applyHeightToFirstAscent: false),
              //                 textAlign: TextAlign.right,
              //               ),
              //             ),
              //             Pinned.fromPins(
              //               Pin(size: 12.1, start: 0.0),
              //               Pin(size: 11.6, end: 2.4),
              //               child:
              //                   // Adobe XD layer: 'ic_star' (group)
              //                   Stack(
              //                 children: <Widget>[
              //                   Pinned.fromPins(
              //                     Pin(start: 0.0, end: 0.0),
              //                     Pin(start: 0.0, end: 0.0),
              //                     child: Stack(
              //                       children: <Widget>[
              //                         Pinned.fromPins(
              //                           Pin(start: 0.0, end: 0.0),
              //                           Pin(start: 0.0, end: 0.0),
              //                           child: Stack(
              //                             children: <Widget>[
              //                               Pinned.fromPins(
              //                                 Pin(start: 0.0, end: 0.0),
              //                                 Pin(start: 0.0, end: 0.0),
              //                                 child: SvgPicture.string(
              //                                   _svg_1ip9pl,
              //                                   allowDrawingOutsideViewBox: true,
              //                                   fit: BoxFit.fill,
              //                                 ),
              //                               ),
              //                             ],
              //                           ),
              //                         ),
              //                       ],
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //       Pinned.fromPins(
              //         Pin(size: 48.2, end: 18.5),
              //         Pin(size: 16.0, start: 2.0),
              //         child: Stack(
              //           children: <Widget>[
              //             Pinned.fromPins(
              //               Pin(size: 35.0, end: 0.0),
              //               Pin(start: 0.0, end: 0.0),
              //               child: Text(
              //                 '3.0 km',
              //                 style: TextStyle(
              //                   fontFamily: 'Tofino',
              //                   fontSize: 12,
              //                   color: const Color(0xff000000),
              //                   height: 1.5,
              //                 ),
              //                 textHeightBehavior: TextHeightBehavior(
              //                     applyHeightToFirstAscent: false),
              //                 textAlign: TextAlign.left,
              //               ),
              //             ),
              //             Pinned.fromPins(
              //               Pin(size: 8.6, start: 0.0),
              //               Pin(size: 11.8, end: 1.3),
              //               child:
              //                   // Adobe XD layer: 'ic_location' (group)
              //                   Stack(
              //                 children: <Widget>[
              //                   Pinned.fromPins(
              //                     Pin(start: 0.0, end: 0.0),
              //                     Pin(start: 0.0, end: 0.0),
              //                     child: Stack(
              //                       children: <Widget>[
              //                         Pinned.fromPins(
              //                           Pin(start: 0.0, end: 0.0),
              //                           Pin(start: 0.0, end: 0.0),
              //                           child: SvgPicture.string(
              //                             _svg_dg9sv4,
              //                             allowDrawingOutsideViewBox: true,
              //                             fit: BoxFit.fill,
              //                           ),
              //                         ),
              //                       ],
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
             
             ///
          
              Pinned.fromPins(
                Pin(size: 212.0, end: 37.5),
                Pin(size: 1.0, middle: 0.498),
                child: SvgPicture.string(
                  _svg_l43dm8,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
              Pinned.fromPins(
                Pin(start: 0.0, end: 0.0),
                Pin(size: 157.0, start: 48.3),
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(start: 0.0, end: 0.0),
                      child:
                          // Adobe XD layer: 'Background' (shape)
                          ClipRect(
                        child: BackdropFilter(
                          filter: ui.ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 16.0, end: 15.0),
                      Pin(size: 36.0, end: 15.0),
                      child:
                          // Adobe XD layer: 'Search Field Type' (group)
                          Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(start: 1.0, end: 0.0),
                            Pin(start: 0.0, end: 0.0),
                            child:
                                // Adobe XD layer: '↳ Field Links to' (shape)
                                Container(
                              decoration: BoxDecoration(),
                            ),
                          ),
                          // Pinned.fromPins(
                          //   Pin(start: 0.0, end: 70.0),
                          //   Pin(start: 0.0, end: 0.0),
                          //   child:
                  
                          // //       // Adobe XD layer: 'Search Field' (shape)
                          // //       Container(
                          // //     decoration: BoxDecoration(
                          // //       borderRadius: BorderRadius.circular(10.0),
                          // //       color: const Color(0x3d8e8e93),
                          // //     ),
                          // //   ),
                          //  ),               
                            //       Pinned.fromPins(
                            // Pin(size: 60.0, start: 33.0),
                            // Pin(size: 21.0, middle: 0.4667),
                            // child:
                                // Adobe XD layer: '↳ Placeholder Label' (text)
          

                            //     Text(
                            // Languages.of(context).faculties,
                            //   style: TextStyle(
                            //     fontFamily: 'Tofino',
                            //     fontSize: 16,
                            //     color: const Color(0xff000000),
                            //     height: 1.375,
                            //   ),
                            //   textHeightBehavior: TextHeightBehavior(
                            //       applyHeightToFirstAscent: false),
                            //   textAlign: TextAlign.left,
                            // ),
                         // ),
                          Pinned.fromPins(
                            Pin(size: 14.0, start: 11.0),
                            Pin(size: 14.0, middle: 0.5),
                            child:
                                // Adobe XD layer: 'Search Glyph' (group)
                                Stack(
                              children: <Widget>[
                                Pinned.fromPins(
                                  Pin(start: 0.0, end: 0.0),
                                  Pin(start: 0.0, end: 0.0),
                                  child:
                                      // Adobe XD layer: 'Search Glyph backgr…' (shape)
                                      Container(
                                    color: const Color(0x00000000),
                                  ),
                                ),
                                // Pinned.fromPins(
                                //   Pin(start: 0.0, end: 0.0),
                                //   Pin(start: 0.0, end: 0.0),
                                //   child:

                                
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Pinned.fromPins(
                    //   Pin(size: 96.0, start: 35.0),
                    //   Pin(size: 20.0, middle: 0.5328),
                    //   child:
                    //       // Adobe XD layer: 'Large Title' (text)
                    //       Text(
                    //         Languages.of(context).octoberCity,
                    //     style: TextStyle(
                    //       fontFamily: 'Tofino',
                    //       fontSize: 15,
                    //       color: const Color(0xff000000),
                    //       fontWeight: FontWeight.w500,
                    //       height: 2.7333333333333334,
                    //     ),
                    //     textHeightBehavior:
                    //         TextHeightBehavior(applyHeightToFirstAscent: false),
                    //     textAlign: TextAlign.left,
                    //   ),
                    // ),
                    // Pinned.fromPins(
                    //   Pin(size: 69.0, start: 16.0),
                    //   Pin(size: 16.0, middle: 0.383),
                    //   child:
                    //       // Adobe XD layer: '↳ Label' (text)
                    //   //     Text(
                    //   //   Languages.of(context).yourlocation,
                    //   //   style: TextStyle(
                    //   //     fontFamily: 'Tofino',
                    //   //     fontSize: 12,
                    //   //     color: const Color(0xff999999),
                    //   //     fontWeight: FontWeight.w500,
                    //   //     height: 1.8333333333333333,
                    //   //   ),
                    //   //   textHeightBehavior:
                    //   //       TextHeightBehavior(applyHeightToFirstAscent: false),
                    //   //   textAlign: TextAlign.left,
                    //   // ),
                    // ),
                    // Pinned.fromPins(
                    //   Pin(size: 12.4, start: 16.0),
                    //   Pin(size: 17.1, middle: 0.5426),
                    //   child:
                    //       // Adobe XD layer: 'ic_location' (group)
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
                    //                 _svg_1jp57c,
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
                    //   Pin(size: 14.0, middle: 0.4889),
                    //   Pin(size: 14.0, middle: 0.5455),
                    //   child:
                    //       // Adobe XD layer: 'ic_direction' (group)
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
                    //                 _svg_5j90le,
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
                       Pinned.fromPins(
                      Pin(start: 20.0, end: 20.0),
                      Pin(size: 50.0, end: 50.0),
                      child:
                      Center(child:
                      Text.rich(
                      TextSpan(
                        
                        style: TextStyle(
                          
                          fontFamily: 'Tofino',
                          fontSize: 18,
                          color: const Color(0xff000000),
                          height: 2.2222222222222223,
                        ),
                        children: [
                          TextSpan(
                            text: Languages.of(context).search,
                            
                            style: TextStyle(
                              
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                       
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                      ),
                       ),
                    Pinned.fromPins(
                      Pin(start: 20.0, end: 20.0),
                      Pin(size: 50.0, end: 00.0),
                      child:
                          // Adobe XD layer: '↳ Placeholder Label' (text)
                     
                 
            Row(
            crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
                 InkWell(
                                    onTap: (){
                                    searchfacultyData();
                                    },
                                    child:
                                    Container(
                                      height: 40,
                                      width: 40,

                                      // Adobe XD layer: 'Search' (shape)
                                     child: SvgPicture.string(
                                    _svg_1aqnps,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                    ),
                                  ),
             Container(
               width:MediaQuery.of(context).size.width*0.6,
               height: 40,
               child:
              TextField(
                  
                  controller: searchController,
                     style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
    decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade100,
           hintText:"",
          contentPadding:
              const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.7),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.7),
          ),
    ),
                      ),
                       
             ),
  
                      //     Text(
                      //  Languages.of(context).cancel,
                      //   style: TextStyle(
                      //     fontFamily: 'Tofino',
                      //     fontSize: 15,
                      //     color: const Color(0xfffd6c57),
                      //     fontWeight: FontWeight.w700,
                      //     height: 1.4666666666666666,
                      //   ),
                      //   textHeightBehavior:
                      //       TextHeightBehavior(applyHeightToFirstAscent: false),
                      //   textAlign: TextAlign.left,
                      // ),
                      ],
          ),
                    ),
                    Container(),
                  ],
                ),
              ),
              Pinned.fromPins(
                Pin(size: 56.0, end: 13.0),
                Pin(size: 56.0, end: 50.0),
                child:
                    // Adobe XD layer: 'ic_map' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(start: 0.0, end: 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                          color: const Color(0xfffd6c57),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x3c000000),
                              offset: Offset(0, 4),
                              blurRadius: 8,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 24.7, middle: 0.5114),
                      Pin(size: 25.9, middle: 0.4987),
                      child:
                          // Adobe XD layer: 'noun_Map_2443283' (group)
                          Stack(
                        children: <Widget>[
                          InkWell(
                            onTap: (){
                                _launchInBrowser(universityURL);
                            },
                            child:
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(start: 0.0, end: 0.0),
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromPins(
                                  Pin(start: 0.0, end: 0.0),
                                  Pin(start: 0.0, end: 0.0),
                                  child: SvgPicture.string(
                                    _svg_ag2ryy,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                       
                           ), ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(),
              Pinned.fromPins(
                Pin(size: 110.1, start: 16.0),
                Pin(size: 83.9, middle: 0.727),
                child:
                    // Adobe XD layer: 'images (8)' (shape)
                    Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.0),
                    image: DecorationImage(
                      image: const AssetImage(''),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Pinned.fromPins(
                Pin(size: 110.1, start: 16.0),
                Pin(size: 84.0, end: 103.0),
                child:
                    // Adobe XD layer: 'images (1)' (shape)
                    Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    image: DecorationImage(
                      image: const AssetImage(''),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              // Pinned.fromPins(
              //   Pin(size: 64.0, end: 9.0),
              //   Pin(size: 64.0, middle: 0.3835),
              //   child: Stack(
              //     children: <Widget>[
              //       Pinned.fromPins(
              //         Pin(start: 0.0, end: 0.0),
              //         Pin(start: 0.0, end: 0.0),
              //         child: Container(
              //           decoration: BoxDecoration(
              //             borderRadius:
              //                 BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              //             border: Border.all(
              //                 width: 1.5, color: const Color(0xfffd6c57)),
              //           ),
              //         ),
              //       ),
              //       Pinned.fromPins(
              //         Pin(start: 4.4, end: 3.6),
              //         Pin(start: 4.8, end: 2.3),
              //         child:
              //             // Adobe XD layer: 'images (11)' (shape)
              //             Container(
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(24.0),
              //             image: DecorationImage(
              //               image: const AssetImage(''),
              //               fit: BoxFit.fill,
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

Future<AllFacultiesResponseModel> allfacultyData(){

   Services.allfacultyApiResponse(

   ).then((value) {
     setState(() {
       
        if(value.result.trim()=="success")
        {
          //  Fluttertoast.showToast(
          //     msg: "success",
          //     textColor: Colors.white,
          //     toastLength: Toast.LENGTH_SHORT,
          //     timeInSecForIos: 1,
          //     gravity: ToastGravity.TOP,
          //     backgroundColor: Colors.red,
          //   );
            allFacultiesResponse=value;
//                         for(int i=0;i<value.content.length;i++){
//                      String imagePath=
// value.content[i].profile.image.substring(1,value.content[i].profile.image.length-1);

//             imagelist=imagePath.split(",");

// imagelist[i]=imagelist[i].substring(1,imagelist[i].length-1);
//   //print(imagelist[i]);
//     //print("${imagelist.length}");

// imagelisttmp.add(imagelist[0]);
     
//                         }

            tmp1=getListView();
         // currentUserLogged=value.content.user;
          //  Navigator.push(
          //   context,
          //  //MaterialPageRoute(builder: (context) => OtpScreen()),
          //  MaterialPageRoute(builder: (context) => LoginApp()),
          //);


        }
        else {
           Fluttertoast.showToast(
              msg: value.message,
              textColor: Colors.white,
              toastLength: Toast.LENGTH_SHORT,
              timeInSecForIos: 1,
              gravity: ToastGravity.TOP,
              backgroundColor: Colors.red,
            );

        }
        
      });
     

   }
   );
 
}
Future<searchfacultyModel> searchfacultyData(){

   Services.searchfacultyApiResponse("fac",searchController.text

   ).then((value) {
     setState(() {
       
        if(value.result.trim()=="success")
        {
          //  Fluttertoast.showToast(
          //     msg: "success",
          //     textColor: Colors.white,
          //     toastLength: Toast.LENGTH_SHORT,
          //     timeInSecForIos: 1,
          //     gravity: ToastGravity.TOP,
          //     backgroundColor: Colors.red,
          //   );
            searhfacultyresult=value;
//                       for(int i=0;i<value.content.length;i++){
//                      String imagePath=
// value.content[i].image.substring(1,value.content[i].image.length-1);

//             imagelist=imagePath.split(",");

// imagelist[i]=imagelist[i].substring(1,imagelist[i].length-1);
  //print(imagelist[i]);
    //print("${imagelist.length}");

//imagelisttmp.add(imagelist[0]);
     
                    //    }

            tmp1=getListView1();
         // currentUserLogged=value.content.user;
          //  Navigator.push(
          //   context,
          //  //MaterialPageRoute(builder: (context) => OtpScreen()),
          //  MaterialPageRoute(builder: (context) => LoginApp()),
          //);


        }
        else {
           Fluttertoast.showToast(
              msg: value.message,
              textColor: Colors.white,
              toastLength: Toast.LENGTH_SHORT,
              timeInSecForIos: 1,
              gravity: ToastGravity.TOP,
              backgroundColor: Colors.red,
            );

        }
        
      });
     

   }
   );
 
}
Future<AllprofessorsResponse> allprofessourApiResponse(){
print("fac_id_selected.toString()");
print(fac_id_selected.toString());
   Services.allprofessourApiResponse(fac_id_selected

   ).then((value) {
     setState(() {
       
        if(value.result.trim()=="success")
        {
          //  Fluttertoast.showToast(
          //     msg: "success",
          //     textColor: Colors.white,
          //     toastLength: Toast.LENGTH_SHORT,
          //     timeInSecForIos: 1,
          //     gravity: ToastGravity.TOP,
          //     backgroundColor: Colors.red,
          //   );
            allprofessorsResponse=value;
         // currentUserLogged=value.content.user;
          //  Navigator.push(
          //   context,
          //  //MaterialPageRoute(builder: (context) => OtpScreen()),
          //  MaterialPageRoute(builder: (context) => LoginApp()),
          //);
        }
        else {
           Fluttertoast.showToast(
              msg: value.message,
              textColor: Colors.white,
              toastLength: Toast.LENGTH_SHORT,
              timeInSecForIos: 1,
              gravity: ToastGravity.TOP,
              backgroundColor: Colors.red,
            );

        }
        
      });
     

   }
   );
 
}


  Widget getCardViewResultDoctor(){
    return 
    
     ListView.separated(
      scrollDirection: Axis.horizontal,
      
       separatorBuilder:(BuildContext context, int index) {
                                    return SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03);},
                      shrinkWrap: true,
                   //   physics: NeverScrollableScrollPhysics(),
                      itemCount: allprofessorsResponse.content!=null?allprofessorsResponse.content.length:0,//
                      itemBuilder: (BuildContext context, int index) {
  return   Container(
      width: MediaQuery.of(context).size.width*0.2,
       //height: MediaQuery.of(context).size.height*0.19,
      //padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //alignment: AlignmentDirectional.center,
        children: <Widget>[
          Container(
      height:60,
           width: 60,
                                // decoration: BoxDecoration(
                                //   borderRadius:  BorderRadius.circular(1000.0),
                                //   border: Border.all(
                                //       width: 1.6,
                                //       color: const Color(0xfffd6c57)),
                                //       //color:Colors.red),
                                // ),
                              child:
          //imagePathProfessor
          ClipRRect(
  borderRadius: BorderRadius.all(Radius.circular(100.0)),//or 15.0
  child:
      //     Container(
      //        width: 90,
      //        height: 70,
      //        //                             borderRadius:  BorderRadius.circular(1000.0),
      // //                             border: Border.all(
      // //                                 width: 1.6,
      // //                                 color: const Color(0xfffd6c57)),
      // //                                 //color:Colors.red),
      // //                           ),
      // //                         ),
      //        //height: 100,
      //        padding: EdgeInsets.only(
      //          left: 
      //          8, 
      //          right: 8
      //          ),
      //        child: 
             CachedNetworkImage(
              // imageUrl: categorydataList[index].imagePath + categorydataList[index].image,
               imageUrl: imagePathProfessor+
              allprofessorsResponse.content[index].profile.image,
              
               //width: ScreenUtil().setWidth(120),
               //height: ScreenUtil().setHeight(70),
               fit: BoxFit.fill,
              // color:  Color(AppConstant.pinkcolor),
        placeholder: (context, url) => CircularProgressIndicator(),
               errorWidget: (context, url, error) => Image.asset("assets/image/splash_logo.png"),
             ),
           ),
           ),
      //     Container(
      // height: MediaQuery.of(context).size.height*0.1,
      //                           decoration: BoxDecoration(
      //                             borderRadius: BorderRadius.circular(1000.0),
      //                             image: DecorationImage(
      //                               image: 
      //                               const AssetImage('assets/image/splash_logo.png'),
      //                               fit: BoxFit.cover,
      //                             ),
      //                           ),
      //                         ), 
                            
           Text(

             currentLanguge.languageCode!="ar"?allprofessorsResponse.content[index].profile.name:allprofessorsResponse.content[index].profile.namear,
                          style: TextStyle(
                            fontFamily: 'Tofino',
                            fontSize: 12,
                          //  color: const Color(0xffffffff),
                            color: Colors.black,
                            height: 3.3333333333333335,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                         )


      ],),
    );
}
                    );
  }

 Widget getListView(){
    return

     Container(
       height: MediaQuery.of(context).size.height*0.56,
       child: ListView.separated(
        scrollDirection: Axis.vertical,
  //physics:  AlwaysScrollableScrollPhysics(),
         separatorBuilder:(BuildContext context, int index) {
                                      return SizedBox(
                                          height:
                                              MediaQuery.of(context).size.height *
                                                  0.03);},
 
         
          

                        shrinkWrap: true,
                     //   physics: NeverScrollableScrollPhysics(),
                        itemCount: allFacultiesResponse.content!=null?allFacultiesResponse.content.length:0,//
                        itemBuilder: (BuildContext context, int index) {

 
 
  return  Container(
                                      height: MediaQuery.of(context).size.height*0.2,
                              //        width:  MediaQuery.of(context).size.width,

    padding: EdgeInsets.all(8),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: Colors.grey.shade300,
          //elevation: 5,
          child:
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             InkWell(
             onTap: (){
                                print(index);
        

                   Navigator.of(context).pop();
       Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => new
                      CollagePage(fac_id:allFacultiesResponse.content[index].id.toString())));       
        //  //new SalonEditeScreen( ownerId: salondataList[index].ownerId,salonId: salondataList[index].salonId,salonData: salondataList[index],)));
        //     new FgHomeService(title: salondataList[index].name,salonId:salondataList[index].salonId,ownerId:salondataList[index].ownerId)));
        // //  new ServiceCreateScreen(salon_id:salondataList[index].salonId)));
  

    } ,
         child:
             Container(
               width: MediaQuery.of(context).size.width*0.2,
               //height: 100,
               padding: EdgeInsets.only(
                 left: 
                 8, 
                 right: 8
                 ),
               child: 
               CachedNetworkImage(
                // imageUrl: categorydataList[index].imagePath + categorydataList[index].image,
                 imageUrl: imagePathFaculties+

                allFacultiesResponse.content[index].profile.image1,
              // imagelisttmp[index],
                
                 //width: ScreenUtil().setWidth(120),
                 //height: ScreenUtil().setHeight(70),
                 fit: BoxFit.fill,
                // color:  Color(AppConstant.pinkcolor),
          placeholder: (context, url) => CircularProgressIndicator(),
                 errorWidget: (context, url, error) => Image.asset("assets/image/splash_logo1.png"),
               ),
             ),
             ),

               
               SingleChildScrollView(
                 child: Container(
                   width: MediaQuery.of(context).size.width*0.7,
                   
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       SizedBox(
                         height:8
                       ),
                       Row(
                         
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                         children: <Widget>[
                           Container(
                             width: MediaQuery.of(context).size.width*0.2,
                             child:
                         
Text(
                               // 'Media & Mass Comm',
                               allFacultiesResponse.content[index].profile.nameEn,
                                style: TextStyle(
                                  fontFamily: 'Tofino',
                                  fontSize: 14,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w500,
                                  height: 2.5,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.left,
                              ),
                           ),
                              SizedBox(
                                width:MediaQuery.of(context).size.width*0.3,
                              ),
                            // SvgPicture.string(
                            //                       _svg_dg9sv4,
                            //                       allowDrawingOutsideViewBox: true,
                            //                       fit: BoxFit.fill,),

                              //                     Text(
                              //   '1.2Km',
                              //   style: TextStyle(
                              //     fontFamily: 'Tofino',
                              //     fontSize: 14,
                              //     color: const Color(0xff000000),
                              //     fontWeight: FontWeight.w500,
                              //     height: 2.5,
                              //   ),
                              //   textHeightBehavior: TextHeightBehavior(
                              //       applyHeightToFirstAscent: false),
                              //   textAlign: TextAlign.left,
                              // ),
                        SizedBox(
                                width:MediaQuery.of(context).size.width*0.02,
                              ),
                           
                       ],),
                      
           
                          // Text(
                          //       // 'The Dean College is Dr. Ibrahim',
                          //       allFacultiesResponse.content[index].profile.descEn,
                          //       style: TextStyle(
                          //         fontFamily: 'Tofino',
                          //         fontSize: 12,
                          //         color: const Color(0xff1f7ddb),
                          //         height: 1.5,
                          //       ),
                          //       textHeightBehavior: TextHeightBehavior(
                          //           applyHeightToFirstAscent: false),
                          //       textAlign: TextAlign.left,
                          //       overflow: TextOverflow.fade
                          //     ),
 SizedBox(
                                height:MediaQuery.of(context).size.height*0.02,
                              ),
Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(width:MediaQuery.of(context).size.width*0.1),
                             SvgPicture.string(
                                              _svg_1ip9pl,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),

                             Text(
                                  allFacultiesResponse.content[index].rating.toStringAsFixed(1),
                                  style: TextStyle(
                                    fontFamily: 'Tofino',
                                    fontSize: 13,
                                    color: const Color(0xff999999),
                                    fontWeight: FontWeight.w500,
                                    height: 3.3846153846153846,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.right,
                                ),
                                 SizedBox(width:MediaQuery.of(context).size.width*0.2),
                          ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                            

                          //   Text(

                          //   Languages.of(context).opentimetest,
                          //   style: TextStyle(
                          //     fontFamily: 'Tofino',
                          //     fontSize: 13,
                          //     color: const Color(0xfffd6c57),
                          //     height: 3.076923076923077,
                          //   ),
                          //   textHeightBehavior: TextHeightBehavior(
                          //       applyHeightToFirstAscent: false),
                          //   textAlign: TextAlign.left,
                          // ),
                           GestureDetector(
  child: Container(    
                                         // width: MediaQuery.of(context).size.width*0.5,
                                               //margin: EdgeInsets.symmetric(vertical: 10),


                                          child:
                                        TextButton(
                                          onPressed: (){
                                            print("sssss22222222222222ssss");
                     Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => new
                    CollagePage(fac_id:allFacultiesResponse.content[index].id.toString())));
                    // SearchCollege()));
fac_id_selected=allFacultiesResponse.content[index].id.toString();
                                            
                                          },
                 style: TextButton.styleFrom(
  //primary: Colors.teal,
 backgroundColor:   const Color(0xfffd6c57),
  // const Color(0xff1f7ddb),


  
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),

),
                   child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,

                   children: <Widget>[
                     //Image.asset(imagePath),
                     //Expanded(child: Container()),

                     
    Text(
                           Languages.of(context).enter,
                            style: TextStyle(
                              fontFamily: 'Tofino',
                              fontSize: 15,
                              color:Colors.white,
                              fontWeight: FontWeight.w800,
                             // height: 2.6666666666666665,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.right,
                          ),
  
  
                                    ],
                 ),
                                        ),
                                        

  ),
  onTap: () {
// Fluttertoast.showToast(
//           msg: "enter correct Password Or email",
//           textColor: Colors.white,
//           toastLength: Toast.LENGTH_SHORT,
//           timeInSecForIos: 1,
//           gravity: ToastGravity.TOP,
//           backgroundColor: Colors.red,
//         );

  },
),
    // SizedBox(
    //                           width:MediaQuery.of(context).size.width*0.1,
    //                         ),
                          ],),                    
                    //  SizedBox(
                    //             height:MediaQuery.of(context).size.height*0.02,
                    //           ),
                     ],),
                 ),
               ),
           
              

         
            

           ],
          )
        ),
    );
}

                      ),
     );
}
Widget getListView1(){
    return   Container(
       height: MediaQuery.of(context).size.height*0.4,
       child: ListView.separated(
        scrollDirection: Axis.vertical,
  //physics:  AlwaysScrollableScrollPhysics(),
         separatorBuilder:(BuildContext context, int index) {
                                      return SizedBox(
                                          height:
                                              MediaQuery.of(context).size.height *
                                                  0.03);},
 
         
          

                        shrinkWrap: true,
                     //   physics: NeverScrollableScrollPhysics(),
                        itemCount: searhfacultyresult.content!=null?searhfacultyresult.content.length:0,//
                        itemBuilder: (BuildContext context, int index) {

 
 
  return  Container(
                                      height: MediaQuery.of(context).size.height*0.2,
                              //        width:  MediaQuery.of(context).size.width,

    padding: EdgeInsets.all(8),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: Colors.grey.shade300,
          //elevation: 5,
          child:
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             InkWell(
             onTap: (){
                                print(index);
        

                   Navigator.of(context).pop();
       Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => new
                      CollagePage(fac_id:searhfacultyresult.content[index].faculties.id.toString())));       
        //  //new SalonEditeScreen( ownerId: salondataList[index].ownerId,salonId: salondataList[index].salonId,salonData: salondataList[index],)));
        //     new FgHomeService(title: salondataList[index].name,salonId:salondataList[index].salonId,ownerId:salondataList[index].ownerId)));
        // //  new ServiceCreateScreen(salon_id:salondataList[index].salonId)));
  

    } ,
         child:
             Container(
               width: MediaQuery.of(context).size.width*0.2,
               //height: 100,
               padding: EdgeInsets.only(
                 left: 
                 8, 
                 right: 8
                 ),
               child: 
               CachedNetworkImage(
                // imageUrl: categorydataList[index].imagePath + categorydataList[index].image,
                 imageUrl: imagePathFaculties+

                searhfacultyresult.content[index].image1,
              // imagelisttmp[index],
                
                 //width: ScreenUtil().setWidth(120),
                 //height: ScreenUtil().setHeight(70),
                 fit: BoxFit.fill,
                // color:  Color(AppConstant.pinkcolor),
          placeholder: (context, url) => CircularProgressIndicator(),
                 errorWidget: (context, url, error) => Image.asset("assets/image/splash_logo1.png"),
               ),
             ),
             ),

               
               SingleChildScrollView(
                 child: Container(
                   width: MediaQuery.of(context).size.width*0.7,
                   
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       SizedBox(
                         height:8
                       ),
                       Row(
                         
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                         children: <Widget>[
                           Container(
                             width: MediaQuery.of(context).size.width*0.5,
                             child:
                             SingleChildScrollView(child:
                         
Text(
                               // 'Media & Mass Comm',
                               searhfacultyresult.content[index].nameEn,
                                style: TextStyle(
                                  fontFamily: 'Tofino',
                                  fontSize: 14,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w500,
                                  height: 2.5,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.left,
                              ),
                           ),
                           ),
                              // SizedBox(
                              //   width:MediaQuery.of(context).size.width*0.3,
                              // ),
                            // SvgPicture.string(
                            //                       _svg_dg9sv4,
                            //                       allowDrawingOutsideViewBox: true,
                            //                       fit: BoxFit.fill,),

                              //                     Text(
                              //   '1.2Km',
                              //   style: TextStyle(
                              //     fontFamily: 'Tofino',
                              //     fontSize: 14,
                              //     color: const Color(0xff000000),
                              //     fontWeight: FontWeight.w500,
                              //     height: 2.5,
                              //   ),
                              //   textHeightBehavior: TextHeightBehavior(
                              //       applyHeightToFirstAscent: false),
                              //   textAlign: TextAlign.left,
                              // ),
                        SizedBox(
                                width:MediaQuery.of(context).size.width*0.02,
                              ),
                           
                       ],),
                      
           
                          // Text(
                          //       // 'The Dean College is Dr. Ibrahim',
                          //       allFacultiesResponse.content[index].profile.descEn,
                          //       style: TextStyle(
                          //         fontFamily: 'Tofino',
                          //         fontSize: 12,
                          //         color: const Color(0xff1f7ddb),
                          //         height: 1.5,
                          //       ),
                          //       textHeightBehavior: TextHeightBehavior(
                          //           applyHeightToFirstAscent: false),
                          //       textAlign: TextAlign.left,
                          //       overflow: TextOverflow.fade
                          //     ),
 SizedBox(
                                height:MediaQuery.of(context).size.height*0.02,
                              ),
Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(width:MediaQuery.of(context).size.width*0.1),
                             SvgPicture.string(
                                              _svg_1ip9pl,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),

                             Text(
                                  searhfacultyresult.content[index].faculties.rating.toStringAsFixed(1),
                                  style: TextStyle(
                                    fontFamily: 'Tofino',
                                    fontSize: 13,
                                    color: const Color(0xff999999),
                                    fontWeight: FontWeight.w500,
                                    height: 3.3846153846153846,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.right,
                                ),
                                 SizedBox(width:MediaQuery.of(context).size.width*0.2),
                          ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                            

                          //   Text(

                          //   Languages.of(context).opentimetest,
                          //   style: TextStyle(
                          //     fontFamily: 'Tofino',
                          //     fontSize: 13,
                          //     color: const Color(0xfffd6c57),
                          //     height: 3.076923076923077,
                          //   ),
                          //   textHeightBehavior: TextHeightBehavior(
                          //       applyHeightToFirstAscent: false),
                          //   textAlign: TextAlign.left,
                          // ),
                           GestureDetector(
  child: Container(    
                                         // width: MediaQuery.of(context).size.width*0.5,
                                               //margin: EdgeInsets.symmetric(vertical: 10),


                                          child:
                                        TextButton(
                                          onPressed: (){
                                            print("sssss22222222222222ssss");
                     Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => new
                    CollagePage(fac_id:searhfacultyresult.content[index].faculties.id.toString())));
                    // SearchCollege()));
fac_id_selected=searhfacultyresult.content[index].faculties.id.toString();
                                            
                                          },
                 style: TextButton.styleFrom(
  //primary: Colors.teal,
 backgroundColor:   const Color(0xfffd6c57),
  // const Color(0xff1f7ddb),


  
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),

),
                   child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,

                   children: <Widget>[
                     //Image.asset(imagePath),
                     //Expanded(child: Container()),

                     
    Text(
                           Languages.of(context).enter,
                            style: TextStyle(
                              fontFamily: 'Tofino',
                              fontSize: 15,
                              color:Colors.white,
                              fontWeight: FontWeight.w800,
                             // height: 2.6666666666666665,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.right,
                          ),
  
  
                                    ],
                 ),
                                        ),
                                        

  ),
  onTap: () {
// Fluttertoast.showToast(
//           msg: "enter correct Password Or email",
//           textColor: Colors.white,
//           toastLength: Toast.LENGTH_SHORT,
//           timeInSecForIos: 1,
//           gravity: ToastGravity.TOP,
//           backgroundColor: Colors.red,
//         );

  },
),
    // SizedBox(
    //                           width:MediaQuery.of(context).size.width*0.1,
    //                         ),
                          ],),                    
                    //  SizedBox(
                    //             height:MediaQuery.of(context).size.height*0.02,
                    //           ),
                     ],),
                 ),
               ),
           
              

         
            

           ],
          )
        ),
    );
}

                      ),
     );
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

const String _svg_br66xs =
    '<svg viewBox="1.5 97.0 404.0 1.0" ><path transform="translate(1.5, 97.0)" d="M 0 0 L 404 0" fill="none" stroke="#af2828" stroke-width="1" stroke-opacity="0.16" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1ip9pl =
    '<svg viewBox="0.0 0.0 12.1 11.6" ><path transform="translate(-3.0, -5.0)" d="M 9.067888259887695 5 C 8.844869613647461 5 8.646877288818359 5.142498016357422 8.576080322265625 5.353976249694824 L 7.355965137481689 8.997208595275879 L 3.513961315155029 9.031698226928711 C 3.291072845458984 9.033773422241211 3.094246387481689 9.178086280822754 3.02539587020874 9.390084266662598 C 2.95654559135437 9.60221004486084 3.030841827392578 9.834564208984375 3.210034370422363 9.967207908630371 L 6.297926425933838 12.25340175628662 L 5.143548488616943 15.91802787780762 C 5.076642990112305 16.13067436218262 5.153143405914307 16.36237907409668 5.333502769470215 16.49346542358398 C 5.424266338348389 16.55946350097656 5.53136682510376 16.592529296875 5.638337135314941 16.592529296875 C 5.743752479553223 16.592529296875 5.849297046661377 16.56037330627441 5.939411640167236 16.49618911743164 L 9.067888259887695 14.26587963104248 L 12.19649505615234 16.49618911743164 C 12.2866096496582 16.56037330627441 12.39202499389648 16.592529296875 12.49756813049316 16.592529296875 C 12.60453796386719 16.592529296875 12.71150970458984 16.55946350097656 12.80240249633789 16.49346542358398 C 12.98276329040527 16.36237907409668 13.05926132202148 16.13067436218262 12.99222755432129 15.91802787780762 L 11.83785057067871 12.25340175628662 L 14.92587280273438 9.967207908630371 C 15.10506439208984 9.834564208984375 15.17935943603516 9.60221004486084 15.11050987243652 9.390084266662598 C 15.04152870178223 9.178086280822754 14.84483337402344 9.033773422241211 14.6218147277832 9.031698226928711 L 10.77981185913086 8.997208595275879 L 9.559694290161133 5.353976249694824 C 9.488899230957031 5.142498016357422 9.290904998779297 5 9.067888259887695 5" fill="#fe9654" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dg9sv4 =
    '<svg viewBox="0.0 0.0 8.6 11.8" ><path  d="M 4.293216228485107 11.82104396820068 C 2.822936296463013 9.9390869140625 0 6.866203784942627 0 4.410837650299072 C 0 2.0142822265625 1.911363363265991 0.05881116539239883 4.293216228485107 0 C 6.689771175384521 0.05881116539239883 8.60113525390625 2.0142822265625 8.60113525390625 4.410837650299072 C 8.60113525390625 6.866203784942627 5.778198719024658 9.9390869140625 4.293216228485107 11.82104396820068 Z M 4.293216228485107 2.205418825149536 C 5.513548374176025 2.205418825149536 6.513339042663574 3.190505743026733 6.513339042663574 4.410837650299072 C 6.513339042663574 5.631169319152832 5.513548374176025 6.616255760192871 4.293216228485107 6.616255760192871 C 3.072884082794189 6.616255760192871 2.087796926498413 5.631169319152832 2.087796926498413 4.410837650299072 C 2.087796926498413 3.190505743026733 3.072884082794189 2.205418825149536 4.293216228485107 2.205418825149536 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tc6ppd =
    '<svg viewBox="1.5 96.5 395.0 1.0" ><path transform="translate(1.5, 96.5)" d="M 0 0 L 395 0" fill="none" stroke="#000000" stroke-width="1" stroke-opacity="0.16" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1aqnps =
    '<svg viewBox="0.0 0.0 14.0 14.0" ><path  d="M 13.17335224151611 13.99917030334473 C 12.94834232330322 13.99915981292725 12.73020267486572 13.90579986572266 12.57488250732422 13.74304008483887 L 8.745382308959961 9.911740303039551 L 8.741782188415527 9.914449691772461 C 7.804052352905273 10.60919952392578 6.69030237197876 10.97644996643066 5.520932674407959 10.97649002075195 L 5.499982357025146 10.97644996643066 C 4.033082485198975 10.96774005889893 2.654342889785767 10.39120960235596 1.617722749710083 9.353070259094238 C 0.5811027884483337 8.314919471740723 0.006612794008105993 6.93533992767334 8.279417670564726e-05 5.468440055847168 C -0.007967205718159676 4.025739669799805 0.5713428258895874 2.613869905471802 1.58948278427124 1.594850063323975 C 2.602132797241211 0.5813000202178955 4.004412651062012 0 5.436752796173096 0 L 5.460382461547852 4.999999873689376e-05 C 6.927362442016602 0.008750000037252903 8.306112289428711 0.5851500034332275 9.342642784118652 1.623070001602173 C 10.37926292419434 2.661089897155762 10.9537525177002 4.040800094604492 10.96028232574463 5.508039951324463 C 10.96572303771973 6.677799701690674 10.60253238677979 7.795380115509033 9.909982681274414 8.739950180053711 L 13.74308300018311 12.57394027709961 C 13.96075248718262 12.7808198928833 14.04904270172119 13.08981990814209 13.97348213195801 13.38033962249756 C 13.89881229400635 13.67004013061523 13.6718921661377 13.89696025848389 13.38128280639648 13.97254943847656 C 13.31333255767822 13.99020957946777 13.24338245391846 13.99917030334473 13.17335224151611 13.99917030334473 Z M 5.44376277923584 1.098000049591064 C 4.298322677612305 1.098039984703064 3.177242755889893 1.563210010528564 2.367982864379883 2.374239921569824 C 1.553542852401733 3.189579963684082 1.090022802352905 4.318679809570313 1.096282839775085 5.472039699554443 C 1.101502776145935 6.645549774169922 1.56112277507782 7.74921989440918 2.390482902526855 8.579739570617676 C 3.219812870025635 9.410249710083008 4.322842597961426 9.871469497680664 5.496382713317871 9.878449440002441 L 5.513262748718262 9.878469467163086 C 6.660182476043701 9.878509521484375 7.782482624053955 9.413020133972168 8.592382431030273 8.601340293884277 C 9.406822204589844 7.786890029907227 9.870342254638672 6.657789707183838 9.864082336425781 5.5035400390625 C 9.85886287689209 4.329999923706055 9.399242401123047 3.226369857788086 8.569882392883301 2.395959854125977 C 7.740492343902588 1.565520048141479 6.637462615966797 1.104580044746399 5.463982582092285 1.098039984703064 L 5.44376277923584 1.098000049591064 Z" fill="#8e8e93" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_1jp57c =
    '<svg viewBox="0.0 0.0 12.4 17.1" ><path  d="M 6.201086044311523 17.07421875 C 4.077425956726074 14.35593509674072 0 9.917488098144531 0 6.370977401733398 C 0 2.909412860870361 2.760757446289063 0.08494636416435242 6.201086044311523 0 C 9.662650108337402 0.08494636416435242 12.42340850830078 2.909412860870361 12.42340850830078 6.370977401733398 C 12.42340850830078 9.917488098144531 8.345982551574707 14.35593509674072 6.201086044311523 17.07421875 Z M 6.201086044311523 3.185488700866699 C 7.963723659515381 3.185488700866699 9.40781307220459 4.608340263366699 9.40781307220459 6.370977401733398 C 9.40781307220459 8.133614540100098 7.963723659515381 9.556465148925781 6.201086044311523 9.556465148925781 C 4.438448429107666 9.556465148925781 3.015596628189087 8.133614540100098 3.015596628189087 6.370977401733398 C 3.015596628189087 4.608340263366699 4.438448429107666 3.185488700866699 6.201086044311523 3.185488700866699 Z" fill="#fd6c57" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5j90le =
    '<svg viewBox="0.0 0.0 14.0 14.0" ><path transform="translate(-5.0, -5.0)" d="M 13.52235794067383 18.99951171875 C 13.51006889343262 18.99951171875 13.49746990203857 18.99920082092285 13.48502540588379 18.99842262268066 C 13.1989631652832 18.98224449157715 12.95645618438721 18.78251457214355 12.88552379608154 18.50485229492188 L 11.38350296020508 12.61607933044434 L 5.494729518890381 11.11421298980713 C 5.217067241668701 11.04343700408936 5.017336845397949 10.80077457427979 5.001159191131592 10.5147123336792 C 4.984826564788818 10.22865009307861 5.155779361724854 9.965143203735352 5.423641204833984 9.863256454467773 L 18.10915184020996 5.042665481567383 C 18.35119247436523 4.950422286987305 18.62434196472168 5.009532928466797 18.80711936950684 5.192307472229004 C 18.99020385742188 5.375238418579102 19.04869079589844 5.648388862609863 18.95676040649414 5.890274047851563 L 14.13617134094238 18.57578468322754 C 14.03910636901855 18.83198165893555 13.79379940032959 18.99951171875 13.52235794067383 18.99951171875 Z M 7.831759452819824 10.3538703918457 L 12.08598041534424 11.43900775909424 C 12.31900024414063 11.49842929840088 12.50099754333496 11.68027114868164 12.56041812896729 11.91344547271729 L 13.64555549621582 16.16782188415527 L 17.20896339416504 6.790615081787109 L 7.831759452819824 10.3538703918457 Z" fill="#fd6c57" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_l43dm8 =
    '<svg viewBox="198.5 427.8 212.0 1.0" ><path transform="translate(198.5, 427.75)" d="M 0 0 L 212 0" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ag2ryy =
    '<svg viewBox="0.0 0.0 24.7 25.9" ><path transform="translate(-9.0, -959.34)" d="M 26.93327522277832 959.33642578125 C 23.48947143554688 959.33642578125 20.63000679016113 961.9227905273438 20.20821571350098 965.2532348632813 L 16.7985954284668 964.1980590820313 C 16.68302345275879 964.16162109375 16.56130599975586 964.1487426757813 16.4406795501709 964.1603393554688 C 16.38308906555176 964.1674194335938 16.32631492614746 964.1800537109375 16.27113914489746 964.1980590820313 L 9.640273094177246 966.251953125 C 9.25920581817627 966.3681640625 8.999098777770996 966.72021484375 8.999791145324707 967.1187744140625 L 8.999790191650391 973.5066528320313 C 8.999700546264648 974.0062255859375 9.404569625854492 974.4111938476563 9.904001235961914 974.4111938476563 C 10.40343189239502 974.4111938476563 10.80829906463623 974.0062255859375 10.80830001831055 973.5066528320313 L 10.80820941925049 967.7781982421875 L 15.63065719604492 966.2896728515625 L 15.63065719604492 981.6375732421875 L 10.80820941925049 983.1356201171875 L 10.80820941925049 976.5216064453125 C 10.80830001831055 976.0220336914063 10.40343189239502 975.6170654296875 9.904001235961914 975.6170654296875 C 9.404569625854492 975.6170654296875 8.999700546264648 976.0220336914063 8.999700546264648 976.5216064453125 L 8.999790191650391 984.3604736328125 C 9.002280235290527 984.6456909179688 9.139130592346191 984.9130249023438 9.369033813476563 985.0818481445313 C 9.598936080932617 985.25048828125 9.894951820373535 985.3009643554688 10.16772937774658 985.2178344726563 L 16.53486633300781 983.2487182617188 L 22.90200805664063 985.2178344726563 C 23.07391929626465 985.2702026367188 23.25754928588867 985.2702026367188 23.42945861816406 985.2178344726563 L 30.06033134460449 983.1638793945313 C 30.43808364868164 983.0487060546875 30.6973876953125 982.7015380859375 30.70081329345703 982.3065185546875 L 30.70081329345703 972.404296875 C 30.94131469726563 972.1139526367188 31.17927932739258 971.8189697265625 31.40722465515137 971.5186767578125 C 32.64099502563477 969.8932495117188 33.68057632446289 968.1019287109375 33.71483993530273 966.1200561523438 C 33.71490478515625 966.1138305664063 33.71490478515625 966.1075439453125 33.71483993530273 966.1011962890625 C 33.71483993530273 962.368408203125 30.66545867919922 959.33642578125 26.93327522277832 959.33642578125 Z M 26.93327522277832 961.1453857421875 C 29.68648338317871 961.1453857421875 31.90124893188477 963.3449096679688 31.90642547607422 966.091796875 C 31.9063720703125 966.0947875976563 31.90648078918457 966.0982055664063 31.90642547607422 966.1011962890625 C 31.87990188598633 967.4408569335938 31.09652709960938 968.9364624023438 29.96614074707031 970.42578125 C 29.04087257385254 971.6447143554688 27.94491958618164 972.8276977539063 26.93327522277832 973.9588623046875 C 25.92144966125488 972.8265380859375 24.81562042236328 971.6463623046875 23.89098739624023 970.42578125 C 22.76292037963867 968.9366455078125 21.98664855957031 967.4415893554688 21.96012306213379 966.1011962890625 C 21.96012306213379 966.0979614257813 21.96011734008789 966.0949096679688 21.96012306213379 966.091796875 C 21.96527671813965 963.3432006835938 24.1800708770752 961.1453247070313 26.93327522277832 961.1453247070313 Z M 26.93327522277832 962.65283203125 C 25.02968788146973 962.65283203125 23.46713829040527 964.2158813476563 23.46713829040527 966.1199951171875 C 23.46713829040527 968.0242309570313 25.02968788146973 969.5872192382813 26.93327522277832 969.5872192382813 C 28.83685493469238 969.5872192382813 30.39940452575684 968.0242309570313 30.39940452575684 966.1199951171875 C 30.39940452575684 964.2158813476563 28.83685493469238 962.65283203125 26.93327522277832 962.65283203125 Z M 26.93327522277832 964.4617919921875 C 27.85951232910156 964.4617919921875 28.59099197387695 965.1935424804688 28.59099197387695 966.1199951171875 C 28.59099197387695 967.046630859375 27.85951232910156 967.7781982421875 26.93327522277832 967.7781982421875 C 26.00702667236328 967.7781982421875 25.27555847167969 967.046630859375 25.27555847167969 966.1199951171875 C 25.27555847167969 965.1935424804688 26.00702667236328 964.4617919921875 26.93327522277832 964.4617919921875 Z M 17.43907737731934 966.2896728515625 L 20.26473045349121 967.1564331054688 C 20.54367828369141 968.6342163085938 21.32889938354492 969.9964599609375 22.26152610778809 971.2642822265625 L 22.26152610778809 983.1260986328125 L 17.43907737731934 981.6375122070313 L 17.43907737731934 966.2896728515625 Z M 24.06994438171387 973.4689331054688 C 24.84352684020996 974.3416748046875 25.61205101013184 975.1596069335938 26.24569702148438 975.8997802734375 C 26.41745567321777 976.09765625 26.66657066345215 976.2113037109375 26.92856407165527 976.2113037109375 C 27.19055366516113 976.2113037109375 27.43967247009277 976.09765625 27.61142921447754 975.8997802734375 C 27.99599266052246 975.4505615234375 28.43802452087402 974.9682006835938 28.89239120483398 974.4676513671875 L 28.89239120483398 981.6375122070313 L 24.06994438171387 983.1260986328125 L 24.06994438171387 973.4689331054688 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
