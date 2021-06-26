import '../localization/language/languages.dart';
import '../model/all_blogs_response_model.dart';
import '../model/allfaculties_response_model.dart';
import '../services/services.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../model/all_comment_response.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constant.dart';
import 'collage/CollegePage.dart';
import 'collage/CollegePage2.dart';

class HomePage extends StatefulWidget {
   HomePage({
    Key key,
  }) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AllFacultiesResponseModel  allFacultiesResponse=new AllFacultiesResponseModel();
  AllBlogsResponseModel allBlogsResponseModel=new  AllBlogsResponseModel();
  AllcommentsResponse allcommentsResponse=new AllcommentsResponse();
  String imagePathFaculties=baseimagePath+"faculty/";
  String imagePathBlogs=baseimagePath+"blog/";
  List<Profile1> facultyData=new List<Profile1>();
  List <String> imagelisttmp=new List<String>();
  var imagelist;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      // allfacultyData();
  setState(() {
            //allfacultyData();

      WidgetsBinding.instance.addPostFrameCallback((_){
           allfacultyData();
          });

           WidgetsBinding.instance.addPostFrameCallback((_){
    getallBlogs();
          });
   });
      
    
  }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f7ddb),
      body: SingleChildScrollView(
        
        child: Container(
          height: MediaQuery.of(context).size.height*1.2,
         // padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: <Widget>[
              Pinned.fromPins(
                Pin(start: 0.0, end: 0.0),
                Pin(size: 260.0, start: 0.0),
                child:
                    // Adobe XD layer: 'images (5)' (shape)
                    Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: const AssetImage('assets/image/home_page.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
 
              Pinned.fromPins(
                Pin(start: 10.0, end: 10),
                Pin(size: 30.0, middle: 0.3793),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: <Widget>[
                  Text(
                  Languages.of(context).faculties,
                  style: TextStyle(
                    fontFamily: 'Tofino',
                    fontSize: 20,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700,
                    
                    height: 2,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
                // Text(
                //   Languages.of(context).viewall,
                //   style: TextStyle(
                //     fontFamily: 'Tofino',
                //     fontSize: 14,
                //     color: const Color(0xffffffff),
                //     fontWeight: FontWeight.w500,
                //     height: 2.857142857142857,
                //   ),
                //   textHeightBehavior:
                //       TextHeightBehavior(applyHeightToFirstAscent: false),
                //   textAlign: TextAlign.right,
                // ),
                
                ],
                ) 
              ),
               
                Pinned.fromPins(
                      Pin(start:  0.0, end: 0.0),
                      Pin(start: MediaQuery.of(context).size.height*0.48,
                       end: MediaQuery.of(context).size.height*0.58),
                      child:
                      
                        //facultyData!=null?
                      getListView()
                
                      
                    ),
              //card view of news 
              Pinned.fromPins(
                Pin(start:0.0,end:0.0),
                Pin(size: 200.0, middle: 0.7544),
                child:
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(20),
                  child:
               getblogsView(),
            
                ),

                //  Stack(
                //   children: <Widget>[
                    // Pinned.fromPins(
                    //   Pin(start: 0.0, end: 0.0),
                    //   Pin(start: 0.0, end: 0.0),
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(8.0),
                    //       color: const Color(0xffffffff),
                    //       border: Border.all(
                    //           width: 1.0, color: const Color(0xffcccccc)),
                    //     ),
                    //   ),
                    // ),
                    // Pinned.fromPins(
                    //   Pin(start: 8.0, end: 23.0),
                    //   Pin(size: 20.0, middle: 0.6908),
                    //   child: Text(
                    //     'College admission formats 2021',
                    //     style: TextStyle(
                    //       fontFamily: 'Tofino',
                    //       fontSize: 15,
                    //       color: const Color(0xff000000),
                    //       fontWeight: FontWeight.w500,
                    //       height: 2.6666666666666665,
                    //     ),
                    //     textHeightBehavior:
                    //         TextHeightBehavior(applyHeightToFirstAscent: false),
                    //     textAlign: TextAlign.left,
                    //   ),
                    // ),
                    // Pinned.fromPins(
                    //   Pin(size: 183.0, start: 8.0),
                    //   Pin(size: 31.0, end: 16.0),
                    //   child: Text(
                    //     'The university president approved \nthe admission totals...',
                    //     style: TextStyle(
                    //       fontFamily: 'Tofino',
                    //       fontSize: 12,
                    //       color: const Color(0xff999999),
                    //       height: 1.25,
                    //     ),
                    //     textHeightBehavior:
                    //         TextHeightBehavior(applyHeightToFirstAscent: false),
                    //     textAlign: TextAlign.left,
                    //   ),
                    // ),
                    // Pinned.fromPins(
                    //   Pin(start: 0.0, end: 0.0),
                    //   Pin(start: 0.0, end: 0.0),
                    //   child: Stack(
                    //     children: <Widget>[
                    //       Pinned.fromPins(
                    //         Pin(size: 65.3, end: 0.0),
                    //         Pin(size: 30.0, end: 0.0),
                    //         child: Container(
                    //           decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.only(
                    //               topLeft: Radius.circular(8.0),
                    //               bottomRight: Radius.circular(8.0),
                    //             ),
                    //             color: const Color(0xfffd6c57),
                    //           ),
                    //         ),
                    //       ),
                    //       Pinned.fromPins(
                    //         Pin(size: 30.0, end: 16.9),
                    //         Pin(size: 17.0, end: 7.0),
                    //         child: Text(
                    //           'Read',
                    //           style: TextStyle(
                    //             fontFamily: 'Tofino',
                    //             fontSize: 13,
                    //             color: const Color(0xffffffff),
                    //             fontWeight: FontWeight.w700,
                    //             height: 3.076923076923077,
                    //           ),
                    //           textHeightBehavior: TextHeightBehavior(
                    //               applyHeightToFirstAscent: false),
                    //           textAlign: TextAlign.center,
                    //         ),
                    //       ),
                    //       Pinned.fromPins(
                    //         Pin(start: 0.0, end: 0.0),
                    //         Pin(size: 104.0, start: 0.0),
                    //         child:
                    //             // Adobe XD layer: 'images (9)' (shape)
                    //             Container(
                    //           decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(6.0),
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
                //   ],
                // ),
              ),
             //end card view of news 
              // Pinned.fromPins(
              //   Pin(size: 227.4, end: -99.4),
              //   Pin(size: 172.0, middle: 0.7544),
              //   child: Stack(
              //     children: <Widget>[
              //       Pinned.fromPins(
              //         Pin(start: 0.0, end: 8.4),
              //         Pin(start: 0.0, end: 0.0),
              //         child: Container(
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(8.0),
              //             color: const Color(0xffffffff),
              //             border: Border.all(
              //                 width: 1.0, color: const Color(0xffcccccc)),
              //           ),
              //         ),
              //       ),
              //       Pinned.fromPins(
              //         Pin(start: 8.4, end: 25.0),
              //         Pin(size: 20.0, middle: 0.6711),
              //         child: Text(
              //           'Conditions for College Media',
              //           style: TextStyle(
              //             fontFamily: 'Tofino',
              //             fontSize: 15,
              //             color: const Color(0xff000000),
              //             fontWeight: FontWeight.w500,
              //             height: 2.6666666666666665,
              //           ),
              //           textHeightBehavior:
              //               TextHeightBehavior(applyHeightToFirstAscent: false),
              //           textAlign: TextAlign.left,
              //         ),
              //       ),
              //       Pinned.fromPins(
              //         Pin(start: 8.4, end: 0.0),
              //         Pin(size: 31.0, end: 19.0),
              //         child: Text(
              //           'You can view the admission requirements\nfor College of Media',
              //           style: TextStyle(
              //             fontFamily: 'Tofino',
              //             fontSize: 12,
              //             color: const Color(0xff999999),
              //             height: 1.25,
              //           ),
              //           textHeightBehavior:
              //               TextHeightBehavior(applyHeightToFirstAscent: false),
              //           textAlign: TextAlign.left,
              //         ),
              //       ),
              //       Pinned.fromPins(
              //         Pin(start: 1.0, end: 8.4),
              //         Pin(size: 102.0, start: 0.0),
              //         child:
              //             // Adobe XD layer: 'images (10)' (shape)
              //             Container(
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(8.0),
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
             
              Pinned.fromPins(
                Pin(start: 10, end:10),
                Pin(size: 30.0, middle: 0.5579),
                child:

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                   Text(
                  Languages.of(context).news,
                  textDirection:TextDirection.ltr,
                  style: TextStyle(
                    fontFamily: 'Tofino',
                    fontSize: 20,
                    
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700,
                    height: 2,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),

                //   Text(
                //   Languages.of(context).viewall,
                //   style: TextStyle(
                //     fontFamily: 'Tofino',
                //     fontSize: 14,
                //     color: const Color(0xffffffff),
                //     fontWeight: FontWeight.w500,
                //     height: 2.857142857142857,
                //   ),
                //   textHeightBehavior:
                //       TextHeightBehavior(applyHeightToFirstAscent: false),
                //   textAlign: TextAlign.right,
                // ),
                

                ],)
                 
              ),
 
              Pinned.fromPins(
                Pin(start: 10, end: 10),
                Pin(size: 30.0, end: 111.0),
                child: 
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(child:
Text(
                  Languages.of(context).universitywebsiteenternow,
                  style: TextStyle(
                    fontFamily: 'Tofino',
                    fontSize: 20,
                    color: const Color(0xfff9fcff),
                    fontWeight: FontWeight.w700,
                    height: 2,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
                onTap: (){
                  _launchInBrowser( universityURL);

                },
                    )
                ],)
                
              ),
              // Positioned(
                
              //   bottom: 30,
              //   left: 30,
              //   child: InkWell(child: Text("nxt Page"),
              //   onTap: (){
              //       Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => new CollagePage()));
              //           //SearchCollege()));

              //   },),

              // )
            ],
          ),
        ),
      ),
    );
  }

Future<AllBlogsResponseModel> getallBlogs(){

   Services.getallblogs(

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
            allBlogsResponseModel=value;
            print("print");
print( imagePathBlogs+allBlogsResponseModel.content[1].image);
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
 void allfacultyData()  {

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
            fac_id_selected=allFacultiesResponse.content[0].id.toString();
            facultyData!=null?facultyData.clear():facultyData;
            for(int i=0;i<value.content.length;i++){
              facultyData.add(value.content[i].profile);
//                 String imagePath=
// value.content[i].profile.image.substring(1,value.content[i].profile.image.length-1);

//             imagelist=value.content[i].profile.image.split(",");
            
// facultyData[i].image1=imagelist[0].substring(1);
// facultyData[i].image2=imagelist[1];
// facultyData[i].image3=imagelist[2];
// facultyData[i].image4=imagelist[3].substring(imagelist[3].length-1);
// imagelist[i]=imagelist[i].substring(1,imagelist[i].length-1);
  //print(imagelist[i]);
    //print("${imagelist.length}");

//imagelisttmp.add(imagelist[0]);


          }
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
Widget getListView(){
  
    return
     ListView.separated(
      scrollDirection: Axis.horizontal,
      
       separatorBuilder:(BuildContext context, int index) {
                                    return SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.01);},
 
       
                          
  //physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),

                    //  shrinkWrap: true,
                   //   physics: NeverScrollableScrollPhysics(),
                      itemCount: allFacultiesResponse.content  !=null?allFacultiesResponse.content.length:0,//
                      itemBuilder: (BuildContext context, int index) {

 
 
  return
InkWell(
  onTap: (){
          Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => new
                      CollagePage(fac_id:allFacultiesResponse.content[index].id.toString())));
                      // SearchCollege()));
fac_id_selected=allFacultiesResponse.content[index].id.toString();
        
  },
  child:   Container(
   width: MediaQuery.of(context).size.width*0.32,
  // height: MediaQuery.of(context).size.height*0.3,
    decoration: BoxDecoration(
               //  color: Colors.grey,
                                            // color: Colors.grey.shade200,
                                             borderRadius: BorderRadius.all(
                                               Radius.circular(20),
                                               )
                                             ),
  // padding: const EdgeInsets.all(8.0),
   child: 
   Column(
     mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.center,
     children: <Widget>[
       
       
  Expanded(child: 
  
  
             
       Container(
      //   height: MediaQuery.of(context).size.height * 0.10,
                 width:  MediaQuery.of(context).size.width*0.3,
                
           //  padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                             //           color: Colors.grey.shade200,
                     borderRadius: BorderRadius.circular(20.0),
                    
  
                 //padding: EdgeInsets.symmetric(horizontal: 150),
               
                  //
                     
                      image: DecorationImage(
                         fit: BoxFit.fill,
  
                        image:
                     
                   NetworkImage(
             // imageUrl: categorydataList[index].imagePath + categorydataList[index].image,
           imagePathFaculties+
                          //  facultyData[index].image1,
                          //facultyData[index].image.split(",").first.substring(1),
                          facultyData[index].image1,
                        // imagelisttmp[index],
             
              //width: ScreenUtil().setWidth(120),
              //height: ScreenUtil().setHeight(70),
             // color:  Color(AppConstant.pinkcolor),
     //  placeholder: (context, url) => CircularProgressIndicator(),
       //       errorWidget: (context, url, error) => Image.asset("assets/image/splash_logo1.png"),
            ),
                 ))
            )
                 
                 
                    
   ),
                             SizedBox(height: 5 ,),
  
      Text(
           currentLanguge.languageCode!="ar"?
                                 allFacultiesResponse.content[index].profile.nameEn:allFacultiesResponse.content[index].profile.nameAr,
                                  style: TextStyle(
                                   fontFamily: 'Tofino',
                                   fontSize: 13,
                                   color: const Color(0xff000000),
                                  // height: 2.6666666666666665,
                                 ),
                                 textHeightBehavior: TextHeightBehavior(
                                     applyHeightToFirstAscent: false),
                                 textAlign: TextAlign.center,
                               ),
      
                             SizedBox(height: 10 ,),
                             
       
   ],)
  ),
);

}

                    );
}
Widget getblogsView(){

    return 
    ListView.separated(
      scrollDirection: Axis.horizontal,
      
       separatorBuilder:(BuildContext context, int index) {
                                    return SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.08);},
 
       
        

                      shrinkWrap: true,
                   //   physics: NeverScrollableScrollPhysics(),
                      itemCount: allBlogsResponseModel.content!=null?allBlogsResponseModel.content.length:0,//
                      itemBuilder: (BuildContext context, int index) {

 
 
  return Container(
    //padding: EdgeInsets.all(12),
             decoration: BoxDecoration(
                                           color: Colors.grey.shade200,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(8),
                                              )
                                            ),

    //height:80,
  //  width: 80,
    child:Stack(

      children: <Widget>[
        
        Column(children: <Widget>[

        
        Expanded(child: 

        Container(
                  //padding: EdgeInsets.symmetric(horizontal: 150),
                  height: MediaQuery.of(context).size.height * 0.14,
                  width:  MediaQuery.of(context).size.width*0.7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      image: 
                      DecorationImage(
                          image:
                          
                           NetworkImage(
                            imagePathBlogs+
                            allBlogsResponseModel.content[index].image
                            ),
                          fit: BoxFit.fill),
                          
                      boxShadow: [
                        BoxShadow(
                          color: Colors.purple.withOpacity(0.1),
                          //spreadRadius: 0.2,
                          //blurRadius: 0.5
                        )
                      ]),
                ),
        ),
  SizedBox(height: 8 ,),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
          currentLanguge.languageCode!="ar"?
                                allBlogsResponseModel.content[index].titleEn:allBlogsResponseModel.content[index].titleAr,
                                 style: TextStyle(
                                  fontFamily: 'Tofino',
                                  fontSize: 15,
                                  color: const Color(0xff000000),
                                  height: 2.6666666666666665,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.center,
                              ),
                              
                        //          Text(
                        //  currentLanguge.languageCode!="ar"?          
                        //         allBlogsResponseModel.content[index].descEn:allBlogsResponseModel.content[index].descAr,
                        //          style: TextStyle(
                        //           fontFamily: 'Tofino',
                        //           fontSize: 12,
                        //           color: const Color(0xff000000),
                        //           height: 2.6666666666666665,
                        //         ),
                        //         textHeightBehavior: TextHeightBehavior(
                        //             applyHeightToFirstAscent: false),
                        //         textAlign: TextAlign.center,
                        //       ),
                            //  SizedBox(height: 10 ,),
                            SizedBox(width: 8 ,),
    Container(
     width: MediaQuery.of(context).size.width*0.2,

          child:
          InkWell(
            onTap: (){
            //   Fluttertoast.showToast(
            //   msg: "success",
            //   textColor: Colors.white,
            //   toastLength: Toast.LENGTH_SHORT,
            //   timeInSecForIos: 1,
            //   gravity: ToastGravity.TOP,
            //   backgroundColor: Colors.red,
            // );
            String tite=
   currentLanguge.languageCode!="ar"?
                                allBlogsResponseModel.content[index].titleEn:allBlogsResponseModel.content[index].titleAr;
                                  String desc=
   currentLanguge.languageCode!="ar"?
                                allBlogsResponseModel.content[index].descEn:allBlogsResponseModel.content[index].descAr;
                                
           Navigator.push(
            context,
           //MaterialPageRoute(builder: (context) => OtpScreen()),
           MaterialPageRoute(builder: (context) => CollagePage2(fac_id:fac_id_selected ,
           name:  tite,
           image_path:   imagePathBlogs+allBlogsResponseModel.content[index].image,
           desc: desc,
           )),
          );
            },
            child:
          Container(
            padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                            ),
                            color: const Color(0xfffd6c57),
                          ),
            width: MediaQuery.of(context).size.width*0.20,
            height: MediaQuery.of(context).size.height*0.040,
            child:Text(Languages.of(context).read,
             style: TextStyle(
                            fontFamily: 'Tofino',
                            fontSize: 13,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                            height: 3.076923076923077,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),)),
    ),
  ],)
      
                              
        
    ],),
    
],),
//

//

  );
  
}

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

const String _svg_ewvrb3 =
    '<svg viewBox="0.0 0.0 24.0 24.0" ><path transform="translate(-12.0, -12.0)" d="M 35.75052642822266 14.17766666412354 C 35.94317626953125 13.93948650360107 36.04812622070313 13.64233207702637 36.04778671264648 13.33599185943604 C 36.04778671264648 12.59814357757568 35.44964218139648 12 34.7117919921875 12 L 13.33592224121094 12 C 12.79251098632813 12.00110054016113 12.30390930175781 12.33123683929443 12.10013008117676 12.83499526977539 C 12.03275299072266 12.99336338043213 11.99864864349365 13.16389083862305 11.9999303817749 13.33599185943604 C 11.9999303817749 13.64542293548584 12.10735321044922 13.94527816772461 12.30385684967041 14.1843318939209 L 13.14888286590576 15.21640110015869 L 17.91503524780273 21.03464317321777 L 17.91503524780273 21.03464317321777 L 20.93771553039551 24.7086238861084 C 21.20685005187988 24.96512031555176 21.35692977905273 25.32216644287109 21.35187339782715 25.69391632080078 L 21.35187339782715 34.71186065673828 C 21.35187339782715 35.44971084594727 21.95001792907715 36.04785537719727 22.6878662109375 36.04785537719727 C 22.96442604064941 36.04731369018555 23.23400497436523 35.96095657348633 23.45940208435059 35.80070114135742 L 23.53956031799316 35.74057388305664 L 23.53956031799316 35.74057388305664 L 26.1013240814209 33.81674575805664 L 26.17480659484863 33.7633056640625 C 26.5024528503418 33.51108169555664 26.69484710693359 33.12135696411133 26.69584274291992 32.7078742980957 L 26.69584274291992 25.69391632080078 C 26.6954460144043 25.32960891723633 26.84384155273438 24.9809455871582 27.10665893554688 24.72866249084473 L 30.1326789855957 21.03464317321777 L 35.74384689331055 14.18434619903564 Z" fill="#fe9654" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_aisytm =
    '<svg viewBox="0.0 0.0 24.0 2.0" ><path transform="translate(-29.0, -48.0)" d="M 53 49.33333587646484 C 53 49.70000457763672 52.48571014404297 50.00000381469727 51.85714340209961 50.00000381469727 L 30.14285469055176 50.00000381469727 C 29.51428413391113 50.00000381469727 29 49.70000457763672 29 49.33333587646484 L 29 48.66667175292969 C 29 48.30000305175781 29.51428413391113 48.00000381469727 30.14285469055176 48.00000381469727 L 51.85714340209961 48.00000381469727 C 52.48571014404297 48.00000381469727 53 48.30000305175781 53 48.66667175292969 L 53 49.33333587646484 Z" fill="#fe9654" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lval5i =
    '<svg viewBox="0.0 7.4 24.0 2.0" ><path transform="translate(-29.0, -40.56)" d="M 53 49.33333587646484 C 53 49.70000457763672 52.48571014404297 50.00000381469727 51.85714340209961 50.00000381469727 L 30.14285469055176 50.00000381469727 C 29.51428413391113 50.00000381469727 29 49.70000457763672 29 49.33333587646484 L 29 48.66667175292969 C 29 48.30000305175781 29.51428413391113 48.00000381469727 30.14285469055176 48.00000381469727 L 51.85714340209961 48.00000381469727 C 52.48571014404297 48.00000381469727 53 48.30000305175781 53 48.66667175292969 L 53 49.33333587646484 Z" fill="#fe9654" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tyxtno =
    '<svg viewBox="0.0 14.9 24.0 2.0" ><path transform="translate(-29.0, -33.11)" d="M 53 49.33333587646484 C 53 49.70000457763672 52.48571014404297 50.00000381469727 51.85714340209961 50.00000381469727 L 30.14285469055176 50.00000381469727 C 29.51428413391113 50.00000381469727 29 49.70000457763672 29 49.33333587646484 L 29 48.66667175292969 C 29 48.30000305175781 29.51428413391113 48.00000381469727 30.14285469055176 48.00000381469727 L 51.85714340209961 48.00000381469727 C 52.48571014404297 48.00000381469727 53 48.30000305175781 53 48.66667175292969 L 53 49.33333587646484 Z" fill="#fe9654" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_v04d39 =
    '<svg viewBox="6.0 2.0 20.0 22.0" ><path transform="translate(6.0, 2.0)" d="M 18.81900215148926 22 C 18.49756050109863 21.9999828338623 18.18593406677246 21.8532657623291 17.96404838562012 21.59748458862305 L 12.4933557510376 15.57651519775391 L 12.48821258544922 15.58077239990234 C 11.14860248565674 16.67258644104004 9.557538032531738 17.24972915649414 7.887016296386719 17.24979209899902 L 7.857087135314941 17.24972915649414 C 5.761524200439453 17.23604011535645 3.791903734207153 16.33001136779785 2.311023473739624 14.69855213165283 C 0.8301436901092529 13.06707668304443 0.009446811862289906 10.89903736114502 0.0001182769410661422 8.593771934509277 C -0.01138167828321457 6.326536655426025 0.816200852394104 4.107753276824951 2.270680904388428 2.506341457366943 C 3.717318296432495 0.9135255813598633 5.720567226409912 0 7.766759395599365 0 L 7.800516605377197 7.857607852201909e-05 C 9.896194458007813 0.01375081483274698 11.86582946777344 0.9195759296417236 13.34658050537109 2.550689697265625 C 14.82746124267578 4.181960105895996 15.64815711975098 6.350204944610596 15.65748596191406 8.656003952026367 C 15.66525840759277 10.49430656433105 15.14641666412354 12.25060844421387 14.15706348419189 13.73502063751221 L 19.63290023803711 19.76021957397461 C 19.94385528564453 20.08533477783203 20.06998443603516 20.5709342956543 19.96203994750977 21.02749252319336 C 19.85536956787109 21.48276329040527 19.53120040893555 21.8393726348877 19.11604499816895 21.95816421508789 C 19.01897239685059 21.98591613769531 18.91904449462891 22 18.81900215148926 22 Z M 7.776773929595947 1.725530862808228 C 6.140437602996826 1.725593686103821 4.538900852203369 2.456618309020996 3.382819652557373 3.731169462203979 C 2.219338417053223 5.012494087219238 1.557169437408447 6.786899089813232 1.566112279891968 8.599429130554199 C 1.573569297790527 10.44362545013428 2.230166673660278 12.17806720733643 3.414962530136108 13.48324680328369 C 4.599715232849121 14.78841209411621 6.17546558380127 15.51322746276855 7.851944923400879 15.52419757843018 L 7.876059055328369 15.52422904968262 C 9.514509201049805 15.5242919921875 11.11778926849365 14.79276561737061 12.27478504180908 13.51719188690186 C 13.43826580047607 12.23726654052734 14.10043430328369 10.46286010742188 14.09149169921875 8.648932456970215 C 14.08403587341309 6.804688453674316 13.42743682861328 5.070310115814209 12.24264240264893 3.765302658081055 C 11.0578031539917 2.460248708724976 9.482052803039551 1.735871434211731 7.805659294128418 1.725593686103821 L 7.776773929595947 1.725530862808228 Z" fill="#8e8e93" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_iifp2n =
    '<svg viewBox="0.0 17.0 1.0 59.6" ><path transform="translate(0.0, 0.03)" d="M 0 73.88704681396484 L 0 16.99999809265137 C 0 16.99999809265137 0 91.69051361083984 0 73.88704681396484 Z" fill="#fd6c57" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
