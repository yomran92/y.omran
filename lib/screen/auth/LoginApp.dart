import 'package:shared_preferences/shared_preferences.dart';

import '../../localization/language/languages.dart';
import '../../localization/languge_data.dart';
import '../../localization/locale_constant.dart';

import '../../model/section_response_model.dart';

import '../../screen/bottomNavigationBar/bottom_nav_bar.dart';


import '../../services/services.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import '../../screen/auth/ForgetPass.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../constant.dart';
import '../../share_prefe_util.dart';
import 'CreateAcc.dart';
import '../../model/login_reponse_model.dart';

import '../../model/allfaculties_response_model.dart';


import '../../model/specification_response_model.dart';

import '../../model/blog_response_model.dart';

class LoginApp extends StatefulWidget {
  
  LoginApp({
    Key key,
  }) : super(key: key);
  @override
  _LoginAppState createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  

  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  AllFacultiesResponseModel allFacultiesResponseModel= new AllFacultiesResponseModel();
     Future<SharedPreferences> prefs =   SharedPreferences.getInstance();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
getfacultyResponseApi();
   }
   Future<void> _onIntroEnd(context,String name,String namear,int egyptian,String  email,
String gender,int id,String phone,String profilePhotoUrl,
String role,String token) async {
  //bool complete = prefs.getBool('complete') ? false:true;
  //print('Pressed $counter times.');
  //await prefs.setBool('complete', true);
  setState(() {
    
    complete=true;
   
     prefs.then((SharedPreferences prefs) => prefs.setBool("logged", complete));
   
   

     // print(prefs.getBool("logged").toString());
  });
    
//  await prefs.setString("name",name);   
  // await prefs.setString("namear",namear);
  //     await prefs.setInt("egyptian",egyptian);
  //     await prefs.setString("email",email);
  //     await prefs.setString("gender",gender);
  //     await prefs.setInt("id",id);
  //     await prefs.setString("phone",phone);
  //     await prefs.setString("profilePhotoUrl",profilePhotoUrl);
  //     await prefs.setString("role",role);
  //     await  prefs.setString("token",token);
          
          

     
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true, 

      backgroundColor: const Color(0xff1f7ddb),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: MediaQuery.of(context).size.width*0.2, end: MediaQuery.of(context).size.width*0.2),
            Pin(start: MediaQuery.of(context).size.height*0.08, size:MediaQuery.of(context).size.height*0.3),
            child:
                // Adobe XD layer: 'Logo2' (shape)
                Container(
                  //padding: EdgeInsets.only(top:50),

              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/splash_logo1.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(start:MediaQuery.of(context).size.height*0.38, end: 0.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.0),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
               
              
                Container(),
                Pinned.fromPins(
                  Pin(start: 50.0, end: 50.0),
                  Pin(start: 0.0, end: 0),
                   child:

                   SingleChildScrollView(
                     child: Column(children:<Widget> [
                       SizedBox(height:20),
                       Text(
                         Languages.of(context).welcome,
                      
                      style: TextStyle(
                        fontFamily: 'Tofino',
                        fontSize: 30,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        height: 1.3333333333333333,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                  ),

                       _emailPasswordWidget(),
                         DropdownButton<LanguageData>(
                  dropdownColor: Colors.grey.shade100,

      iconSize: 30,
      hint: Text(Languages
          .of(context)
          .labelSelectLanguage),
      onChanged: (LanguageData language) {
        changeLanguage(context, language.languageCode);
        currentLanguge=language;
      },
      items: LanguageData.languageList()
          .map<DropdownMenuItem<LanguageData>>(
            (e) =>
            DropdownMenuItem<LanguageData>(
              value: e,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                //  Text(
                     // e.flag,
                  //  style: TextStyle(fontSize: 30),
                  //),
                  Text(e.name)
                ],
              ),
            ),
      )
          .toList(),),

                      _submitButton(),
                    SizedBox(height:20),  
                  Container(
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => ForgetPass(),
                      ),
                    ],
                    child: 

                  
                    Text(
                     Languages.of(context).forgotpassword,
                      style: TextStyle(
                        fontFamily: 'Tofino',
                        fontSize: 14,
                        color: const Color(0xff333333),
                        height: 1.5714285714285714,
                      ),
              
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height:20),
              Container(
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => CreateAcc(allFacultiesResponseModel: allFacultiesResponseModel),
                      ),
                    ],
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Tofino',
                          fontSize: 14,
                          color: const Color(0xff858585),
                          height: 1.5714285714285714,
                        ),
                        children: [
                          TextSpan(
                            text: Languages.of(context).donthaveaccount,
                          ),
                          TextSpan(
                            text: Languages.of(context).signup,
                            style: TextStyle(
                              color: const Color(0xff1f7ddb),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
             
                     ],),
                   )
                 
                 ),
              ],
            ),
          ),
        
          Container(),
        ],
      ),
    );
  }
   Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField(
         Languages.of(context).email,
        ),
        //SizedBox(height:20),
        _entryField("password",isPassword: true),
      ],
    );
  }
  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              controller:
                  isPassword == true ? passwordController : usernameController,
                 style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.shade100,
      hintText:isPassword!=true? Languages.of(context).email:Languages.of(context).password,
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
                  )
                   
        ],
      ),
    );
  }
  Widget _submitButton() {
    return GestureDetector(
      child: Container(    
                                       // width: MediaQuery.of(context).size.width*0.5,
                                             //margin: EdgeInsets.symmetric(vertical: 10),


                                        child:
                                      TextButton(
               style: TextButton.styleFrom(
      //primary: Colors.teal,
     backgroundColor:      const Color(0xff1f7ddb),

     // shadowColor: Colors.red,
      elevation: 5,
      
      //shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),

    ),
                 child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                   //Image.asset(imagePath),
         Text(Languages.of(context).login,style: TextStyle(fontSize: 20, color: Colors.white),),
                                  ],
               ),
                                      ),
                                      

      ),
      onTap: () {
       loginAccount();
     // getfacultyData();
   //  allfacultyData();
  // allsectionApiResponse();
   //getsectionApiResponse();
   //getBlog();
   //getallBlogs();
    // Navigator.push(
    //         context,
    //        //MaterialPageRoute(builder: (context) => OtpScreen()),
    //        MaterialPageRoute(builder: (context) => HomePage()),
    //       );

   
      
      },
    );
  }
  
  
Future<SectionResponseModel> getsectionApiResponse() async{
  
     Services.getsectionApiResponse().then((value) {
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
          // currentUserLogged=value.content.user;
          //  Navigator.push(
          //   context,
          //  //MaterialPageRoute(builder: (context) => OtpScreen()),
          //  MaterialPageRoute(builder: (context) => LoginApp()),
          // );


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


Future<SpecificationResponseModel> getspecificationsResponseApi() async{
  
     Services.getspecificationsResponseApi().then((value) {
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
          // currentUserLogged=value.content.user;
          //  Navigator.push(
          //   context,
          //  //MaterialPageRoute(builder: (context) => OtpScreen()),
          //  MaterialPageRoute(builder: (context) => LoginApp()),
          // );


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
Future<AllFacultiesResponseModel> getfacultyResponseApi() async{
  
     Services.allfacultyApiResponse().then((value) {
     setState(() {
       
        if(value.result.trim()=="success")
        {
           Fluttertoast.showToast(
              msg: "success",
              textColor: Colors.white,
              toastLength: Toast.LENGTH_SHORT,
              timeInSecForIos: 1,
              gravity: ToastGravity.TOP,
              backgroundColor: Colors.red,
            );
           
            allFacultiesResponseModel=value;
          // currentUserLogged=value.content.user;
          //  Navigator.push(
          //   context,
          //  //MaterialPageRoute(builder: (context) => OtpScreen()),
          //  MaterialPageRoute(builder: (context) => LoginApp()),
          // );


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
Future<LoginModelResponse> loginAccount() async{
currentPassword= passwordController.text;  
     Services.loginApiResponse(usernameController.text,
   passwordController.text,

   ).then((value) {
      //  SharedPreferences prefs;
//    prefs = await SharedPreferences.getInstance();
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
          currentUserLogged=value.content.user;
          token=value.content.token.token;
_onIntroEnd(context,
currentUserLogged.name,currentUserLogged.namear,currentUserLogged.egyptian,currentUserLogged.email,
currentUserLogged.gender,currentUserLogged.id,currentUserLogged.phone,currentUserLogged.profilePhotoUrl,
currentUserLogged.role,token
);

  
      
    
 
     //PreferenceUtils.setString("name",currentUserLogged.name);
     
  // prefs.setString("namear",currentUserLogged.namear);
  //     prefs.setInt("egyptian",currentUserLogged.egyptian);
  //     prefs.setString("email",currentUserLogged.email);
  //     prefs.setString("gender",currentUserLogged.gender);
  //     prefs.setInt("id",currentUserLogged.id);
  //     prefs.setString("phone",currentUserLogged.phone);
  //     prefs.setString("profilePhotoUrl",currentUserLogged.profilePhotoUrl);
  //           prefs.setString("role",currentUserLogged.role);
  //           prefs.setString("token",token);
        //    PreferenceUtils.setString("logged","true");
         //   String test=PreferenceUtils.getString("logged" );

print("ttttttttttttttt");
print(test);

      

    

    
  
           Navigator.push(
            context,
           //MaterialPageRoute(builder: (context) => OtpScreen()),

          MaterialPageRoute(builder: (context) => BottomNavBar(idUser:"w")),
         //  MaterialPageRoute(builder: (context) => HomePage()),
           
          );


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
//prefs.setBool("logged",false);
        }
        
 
     

   }
   );
 
}



Future<BlogResponseModel> getBlog(){

   Services.getblog(

   ).then((value) {
     setState(() {
       
        if(value.result.trim()=="success")
        {
          //  Fluttertoast.showToast(
          //     msg: value.content.titleEn,
          //     textColor: Colors.white,
          //     toastLength: Toast.LENGTH_SHORT,
          //     timeInSecForIos: 1,
          //     gravity: ToastGravity.TOP,
          //     backgroundColor: Colors.red,
          //   );
            
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

}
