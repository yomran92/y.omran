import 'dart:convert';
import 'dart:io';

import '../../constant.dart';
import '../../localization/language/languages.dart';
import '../../model/edit_student_profile_model.dart';
import '../../model/student_profile_response_model.dart';
import '../../screen/auth/LoginApp.dart';
import '../../services/services.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'dart:ui' as ui;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import '../../model/professour_profile_response.dart';

class EditProfile1 extends StatefulWidget {
 

   
  @override
  _EditProfile1State createState() => _EditProfile1State();
}

class _EditProfile1State extends State<EditProfile1> {
  
    TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
    TextEditingController emailController = new TextEditingController();
      TextEditingController phoneController = new TextEditingController();
        TextEditingController dateOfBirthController = new TextEditingController();
          
          TextEditingController addressenController = new TextEditingController();

                      List<String> _gender1 = ['Male', 'Female']; 
 String _selectedGender1;
 File _image;
  final picker = ImagePicker();

StudentProfileResponseModel studentProfileResponseModel = new  StudentProfileResponseModel();
ProfessourProfileResponseModel professourProfileResponseModel =new ProfessourProfileResponseModel();
String imagePathFaculties="";   
 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
                    

    imagePathFaculties=baseimagePath+"student/";   
    currentUserLogged.role!="stu"?getProfessorprofileApiResponse() 
    :getstudentprofileApiResponse();

      
passwordController.text=currentPassword;

  }
  @override
  Widget build(BuildContext context) {
    if(currentUserLogged.role!="stu"){
return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffffffff),
      body: 
                    professourProfileResponseModel.content!=null?

      Container(
        child:
      Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 254.0, start: 0.0),
            child: ClipRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff1f7ddb),
                  ),
                ),
              ),
            ),
          ),

          Pinned.fromPins(
            Pin(size: 150.0, middle: 0.50),
            Pin(size: 150.0, start: 90.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                  //getimage(),
                  GestureDetector(
      onTap:(){
//  Fluttertoast.showToast(
//           msg: "enter correct Password Or email",
//           textColor: Colors.white,
//           toastLength: Toast.LENGTH_SHORT,
//           timeInSecForIos: 1,
//           gravity: ToastGravity.TOP,
//           backgroundColor: Colors.red,
//         );

      
      
        selectimage(context);

      },
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.transparent,
              child: Container(
                height: 120,
                width: 120,
                child: GestureDetector(
                  onTap: () async {

                    selectimage(context);
              
                  },
                  child: _image == null
                      ? CachedNetworkImage(
                    imageUrl:
                    //showProfile1.imagePath + 
                    //showProfile1.image,
                  //  currentUserLogged.profilePhotoUrl,
                  
   imagePathFaculties+
                    studentProfileResponseModel.content.user.image,
                    // imageUrl:_image,
                    imageBuilder: (context,
                        imageProvider) =>
                        ClipOval(
                          child: Image(
                            image: imageProvider,
                            fit: BoxFit.fill,
                          ),
                        ),
                    // placeholder: (context, url) =>
                    //     SpinKitFadingCircle(
                    //         color: Color(
                    //             AppConstant.pinkcolor)),
                    errorWidget: (context, url, error) => Image.asset("assets/image/splash_logo.png"),
                  )
                      : CachedNetworkImage(
                    imageUrl
                    :
                  imagePathFaculties+
                    studentProfileResponseModel.content.user.image,

                    //currentUserLogged.profilePhotoUrl,
                    //"https://saasmonks.in/App-Demo/thebarber-54521/public/storage/images/users/noimage.jpg",
                    // imageUrl:_image,
                    imageBuilder: (context,
                        imageProvider) =>
                        ClipOval(
                          child: Image.file(
                            _image,
                            fit: BoxFit.fill,
                          ),
                        ),
                    // placeholder: (context, url) =>
                    //     SpinKitFadingCircle(
                    //         color: Color(
                    //             AppConstant.pinkcolor)),
                    errorWidget: (context, url, error) => Image.asset("assets/image/splash_logo.png"),
                  ),
                ))))]))
                      // Adobe XD layer: '20200319_173058' (shape)
                  //     Container(
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(50.0),
                  //     image: DecorationImage(
                  //       image: const AssetImage(''),
                  //       fit: BoxFit.fill,
                  //     ),
                  //   ),
                  // ),
                ),
               
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 150.0, end: 200.0),
            Pin(size: 20.0, start: 70.0),
            child:
                // Adobe XD layer: 'Title' (text)
                Text(
              Languages.of(context).edite,
              style: TextStyle(
                fontFamily: 'Tofino',
                fontSize: 17,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
                height: 1.2941176470588236,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
        
        Pinned.fromPins(
                 Pin(size: MediaQuery.of(context).size.width*0.8, middle: 0.5),
                  Pin(size: MediaQuery.of(context).size.height*0.8, middle: 1.5 ),
                   child:

                   SingleChildScrollView(
                     
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       height: MediaQuery.of(context).size.height,
                       child: Column(children:<Widget> [
                         Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child:
      
       Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
           
         
          
          SizedBox(
            height: 10,
          ),
          TextField(
              //obscureText: isPassword,
              controller:usernameController,
                 style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.shade100,
      hintText:"user name",
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
    ),

    Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           
          SizedBox(
            height: 10,
          ),
          TextField(
              
              controller:emailController,
                 style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.shade100,
      hintText: "email",
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
    ),
   
    // Container(
    //   margin: EdgeInsets.symmetric(vertical: 10),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[
           
    //       SizedBox(
    //         height: 10,
    //       ),
    //       TextField(
    //       //    obscureText: isPassword,
    //           controller: confirmController,
    //              style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
    // decoration: InputDecoration(
    //   filled: true,
    //   fillColor: Colors.grey.shade100,
    //   hintText: "confirm password",
    //   contentPadding:
    //       const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
    //   focusedBorder: OutlineInputBorder(
    //     borderSide: BorderSide(color: Colors.white),
    //     borderRadius: BorderRadius.circular(25.7),
    //   ),
    //   enabledBorder: UnderlineInputBorder(
    //     borderSide: BorderSide(color: Colors.white),
    //     borderRadius: BorderRadius.circular(25.7),
    //   ),
    // ),
    //               )
                       
    //     ],
    //   ),
    // ),
     Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           
          SizedBox(
            height: 10,
          ),
          TextField(
              //obscureText: isPassword,
              controller: phoneController,
                 style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.shade100,
      hintText:"phone number",
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
    ),
    Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: true,
              readOnly: true,
              controller: passwordController ,
                 style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.shade100,
      hintText: "password",
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
    ),
   
    Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           
          SizedBox(
            height: 10,
          ),
          TextField(
              //obscureText: isPassword,
              controller:dateOfBirthController,
                 style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.shade100,
      hintText:"Date of birth ",
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
    ),
      SizedBox(
            height: 10,
          ),
     _creategenderDropDown(),
      SizedBox(
            height: 10,
          ),
     
                //     _emailPasswordWidget(),
                        _submitButton(),

                       ],),
                     ),
                   )
                  // GridView.count(
                  //   mainAxisSpacing: 20,
                  //   crossAxisSpacing: 20,
                  //   crossAxisCount: 1,
                  //   childAspectRatio: 7.43,
                  //   children: [
                  //     {
                  //       'text': 'Email or Mobile',
                  //     },
                  //     {
                  //       'text': 'Password',
                  //     }
                  //   ].map((itemData) {
                  //     final text = itemData['text'];
                  //     return
                  //         // Adobe XD layer: 'txt_field' (component)
                  //         Stack(
                  //       children: <Widget>[
                  //         Pinned.fromPins(
                  //           Pin(start: 0.0, end: 0.0),
                  //           Pin(start: 0.0, end: 0.0),
                  //           child: Container(
                  //             decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(22.0),
                  //               color: const Color(0xfff0f0f0),
                  //             ),
                  //           ),
                  //         ),
                  //         Pinned.fromPins(
                  //           Pin(size: 104.0, start: 24.0),
                  //           Pin(size: 20.0, middle: 0.4583),
                  //           child: Text(
                  //             text,
                  //             style: TextStyle(
                  //               fontFamily: 'Tofino',
                  //               fontSize: 15,
                  //               color: const Color(0xff9b9b9b),
                  //               height: 1.4666666666666666,
                  //             ),
                  //             textHeightBehavior: TextHeightBehavior(
                  //                 applyHeightToFirstAscent: false),
                  //             textAlign: TextAlign.left,
                  //           ),
                  //         ),
                  //       ],
                  //     );
                  //   }).toList(),
                  // ),
                  
                 ),
              ],
            ),
             
  
      )
    :Container(),
    );
    }else{

    }
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffffffff),
      body: 
                    studentProfileResponseModel.content!=null?

      Container(
        child:
      Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 254.0, start: 0.0),
            child: ClipRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff1f7ddb),
                  ),
                ),
              ),
            ),
          ),

          Pinned.fromPins(
            Pin(size: 150.0, middle: 0.50),
            Pin(size: 150.0, start: 90.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                  //getimage(),
                  GestureDetector(
      onTap:(){
//  Fluttertoast.showToast(
//           msg: "enter correct Password Or email",
//           textColor: Colors.white,
//           toastLength: Toast.LENGTH_SHORT,
//           timeInSecForIos: 1,
//           gravity: ToastGravity.TOP,
//           backgroundColor: Colors.red,
//         );

      
      
        selectimage(context);

      },
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.transparent,
              child: Container(
                height: 120,
                width: 120,
                child: GestureDetector(
                  onTap: () async {

                    selectimage(context);
              
                  },
                  child: _image == null
                      ? CachedNetworkImage(
                    imageUrl:
                    //showProfile1.imagePath + 
                    //showProfile1.image,
                  //  currentUserLogged.profilePhotoUrl,
                  
   imagePathFaculties+
                    studentProfileResponseModel.content.user.image,
                    // imageUrl:_image,
                    imageBuilder: (context,
                        imageProvider) =>
                        ClipOval(
                          child: Image(
                            image: imageProvider,
                            fit: BoxFit.fill,
                          ),
                        ),
                    // placeholder: (context, url) =>
                    //     SpinKitFadingCircle(
                    //         color: Color(
                    //             AppConstant.pinkcolor)),
                    errorWidget: (context, url, error) => Image.asset("assets/image/splash_logo.png"),
                  )
                      : CachedNetworkImage(
                    imageUrl
                    :
                  imagePathFaculties+
                    studentProfileResponseModel.content.user.image,

                    //currentUserLogged.profilePhotoUrl,
                    //"https://saasmonks.in/App-Demo/thebarber-54521/public/storage/images/users/noimage.jpg",
                    // imageUrl:_image,
                    imageBuilder: (context,
                        imageProvider) =>
                        ClipOval(
                          child: Image.file(
                            _image,
                            fit: BoxFit.fill,
                          ),
                        ),
                    // placeholder: (context, url) =>
                    //     SpinKitFadingCircle(
                    //         color: Color(
                    //             AppConstant.pinkcolor)),
                    errorWidget: (context, url, error) => Image.asset("assets/image/splash_logo.png"),
                  ),
                ))))]))
                      // Adobe XD layer: '20200319_173058' (shape)
                  //     Container(
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(50.0),
                  //     image: DecorationImage(
                  //       image: const AssetImage(''),
                  //       fit: BoxFit.fill,
                  //     ),
                  //   ),
                  // ),
                ),
               
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 150.0, end: 200.0),
            Pin(size: 20.0, start: 70.0),
            child:
                // Adobe XD layer: 'Title' (text)
                Text(
              Languages.of(context).edite,
              style: TextStyle(
                fontFamily: 'Tofino',
                fontSize: 17,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
                height: 1.2941176470588236,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
        
        Pinned.fromPins(
                 Pin(size: MediaQuery.of(context).size.width*0.8, middle: 0.5),
                  Pin(size: MediaQuery.of(context).size.height*0.8, middle: 1.5 ),
                   child:

                   SingleChildScrollView(
                     
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       height: MediaQuery.of(context).size.height,
                       child: Column(children:<Widget> [
                         Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child:
      
       Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
           
         
          
          SizedBox(
            height: 10,
          ),
          TextField(
              //obscureText: isPassword,
              controller:usernameController,
                 style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.shade100,
      hintText:"user name",
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
    ),

    Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           
          SizedBox(
            height: 10,
          ),
          TextField(
              
              controller:emailController,
                 style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.shade100,
      hintText: "email",
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
    ),
   
    // Container(
    //   margin: EdgeInsets.symmetric(vertical: 10),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[
           
    //       SizedBox(
    //         height: 10,
    //       ),
    //       TextField(
    //       //    obscureText: isPassword,
    //           controller: confirmController,
    //              style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
    // decoration: InputDecoration(
    //   filled: true,
    //   fillColor: Colors.grey.shade100,
    //   hintText: "confirm password",
    //   contentPadding:
    //       const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
    //   focusedBorder: OutlineInputBorder(
    //     borderSide: BorderSide(color: Colors.white),
    //     borderRadius: BorderRadius.circular(25.7),
    //   ),
    //   enabledBorder: UnderlineInputBorder(
    //     borderSide: BorderSide(color: Colors.white),
    //     borderRadius: BorderRadius.circular(25.7),
    //   ),
    // ),
    //               )
                       
    //     ],
    //   ),
    // ),
     Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           
          SizedBox(
            height: 10,
          ),
          TextField(
              //obscureText: isPassword,
              controller: phoneController,
                 style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.shade100,
      hintText:"phone number",
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
    ),
    Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: true,
              readOnly: true,
              controller: passwordController ,
                 style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.shade100,
      hintText: "password",
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
    ),
   
    Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           
          SizedBox(
            height: 10,
          ),
          TextField(
              //obscureText: isPassword,
              controller:dateOfBirthController,
                 style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.shade100,
      hintText:"Date of birth ",
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
    ),
      SizedBox(
            height: 10,
          ),
     _creategenderDropDown(),
      SizedBox(
            height: 10,
          ),
     
                //     _emailPasswordWidget(),
                        _submitButton(),

                       ],),
                     ),
                   )
                  
                  
                 ),
              ],
            ),
             
  
      )
    :Container(),
    );
  }
  Widget _submitButton() {
    return 
    GestureDetector(
      
      child: Container(    
                                        width: MediaQuery.of(context).size.width*0.5,
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
                   
         Text(Languages.of(context).save,style: TextStyle(fontSize: 20, color: Colors.white),),
      
      
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
      editStudentProfileApiResponse();
      },
    );
  }

   
//   Future<StudentProfileResponseModel> loginAccount() async{

// Services.showfacultyApiResponse(

//    ).then((value) {
//      setState(() {
       
//         if(value.result.trim()=="success")
//         {
// //getfacultyResponseModel=value;
// //imagePath=getfacultyResponseModel.content.profile.image;
//            Fluttertoast.showToast(
//               msg: "success",
//               textColor: Colors.white,
//               toastLength: Toast.LENGTH_SHORT,
//               timeInSecForIos: 1,
//               gravity: ToastGravity.TOP,
//               backgroundColor: Colors.red,
              
//             );
//          //currentUserLogged=value.content.user;
         
//            Navigator.push(
//             context,
//            //MaterialPageRoute(builder: (context) => OtpScreen()),
//            MaterialPageRoute(builder: (context) => BottomNavBar(idUser:"w")),
//           );
           


//         }
//         else {
//            Fluttertoast.showToast(
//               msg: value.message,
//               textColor: Colors.white,
//               toastLength: Toast.LENGTH_SHORT,
//               timeInSecForIos: 1,
//               gravity: ToastGravity.TOP,
//               backgroundColor: Colors.red,
//             );

//         }
        
//       });
     

//    }
//    );
//   }
 
Widget _creategenderDropDown() {
     _gender1 = [
      "Male", "Female"];
    //_selectedGender=_gender[0];
    return new DropdownButton<String>(
            hint: Text("choose Gender",),
             value:_selectedGender1 ,

  items: _gender1.map((String value) {
    return new DropdownMenuItem<String>(
      value: value,
      child: new Text(value),
    );
  }).toList(),
  onChanged: (value) {
      
        setState(() {
      _selectedGender1=value;
   
        });
  });
     
 
}
void selectimage(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          child: Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(Icons.photo_library),
                    title: new Text(
                      'Photo Library',
                      style: TextStyle(fontFamily: 'Montserrat'),
                    ),
                    onTap: () {
                      _imgFromGallery();
                      Navigator.of(context).pop();
                    }),
                new ListTile(
                  leading: new Icon(Icons.photo_camera),
                  title: new Text(
                    'Camera',
                    style: TextStyle(fontFamily: 'Montserrat'),
                  ),
                  onTap: () {
                    
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  _imgFromGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
    Future <StudentProfileResponseModel>
    getstudentprofileApiResponse(){
     Services.getstudentprofileApiResponse(currentUserLogged.id.toString()

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
            studentProfileResponseModel=value;
            if(currentUserLogged.role=="stu"){
imagePathFaculties=baseimagePath +"student/" ;
            }
            else
            {
              imagePathFaculties=baseimagePath +"professor/";
            }
            
            print("hhhhhhhhhhhhhhhhhhhh");
            print(currentUserLogged.role);
               usernameController.text=value.content.user.name;
    
    emailController.text=value.content.user.email;
    phoneController.text= value.content.user.phone;
    dateOfBirthController.text=  value.content.user.updatedAt.toString().substring(0,3);
    addressenController.text=value.content.user.addressen.toString();
    _selectedGender1= value.content.user.gender.trim()=="Male"?_gender1[0]:_gender1[1];
         // currentUserLogged=value.content.user;
          //  Navigator.push(
          //   context,
          //  //MaterialPageRoute(builder: (context) => OtpScreen()),
          //  MaterialPageRoute(builder: (context) => LoginApp()),
          //);


        }
        else {
          //  Fluttertoast.showToast(
          //     msg: value.message,
          //     textColor: Colors.white,
          //     toastLength: Toast.LENGTH_SHORT,
          //     timeInSecForIos: 1,
          //     gravity: ToastGravity.TOP,
          //     backgroundColor: Colors.red,
          //   );

        }
        
      });
     

   }
   );
 
}
Future <ProfessourProfileResponseModel>getProfessorprofileApiResponse(){
     Services.getprofesoutprofileApiResponse(currentUserLogged.id.toString()

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
            professourProfileResponseModel=value;
            if(currentUserLogged.role=="stu")
            {
imagePathFaculties=baseimagePath+ "student/";
            }
            
            else
            {
imagePathFaculties=baseimagePath+ "professor/";
            }
            print("hhhhhhhhhhhhhhhhhhhh");
            print(currentUserLogged.role);
                usernameController.text=value.content.profile.user.name;
    
    emailController.text=value.content.profile.user.email;
    phoneController.text=value.content.profile.user.phone;
    dateOfBirthController.text=value.content.profile.user.addressen.toString();
    _selectedGender1= value.content.profile.user.gender.trim()=="Male"?_gender1[0]:_gender1[1];
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

Future <EditStudentProfile>editStudentProfileApiResponse(){
  String imageB64;
  if(_image!=null){
     List<int> imageBytes = _image.readAsBytesSync();
                         imageB64 = base64Encode(imageBytes);
  }
  else{
   imageB64= studentProfileResponseModel.content.user.image;
  }
  
     Services.editStudentProfileApiResponse(
   studentProfileResponseModel.content.id.toString() ,studentProfileResponseModel.content.facId.toString(),
 usernameController.text,usernameController.text,emailController.text,
 passwordController.text,studentProfileResponseModel.content.user.egyptian.toString(),
 _selectedGender1,addressenController.text,addressenController.text,phoneController.text,
   imageB64
      

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
           // professourProfileResponseModel=value;
            ///imagePathFaculties=baseimagePath+currentUserLogged.role=="stu"?"student/":"professor/";
            print("hhhhhhhhhhhhhhhhhhhh");
            print(currentUserLogged.role);
              //  usernameController.text=value.content.profile.user.name;
    currentUserLogged.name=usernameController.text;
    currentUserLogged.namear=usernameController.text;
    currentUserLogged.email=emailController.text;

    currentUserLogged.phone=phoneController.text;
    
currentUserLogged.gender=_selectedGender1;
    //phoneController.text=value.content.profile.user.phone;
    //dateOfBirthController.text=value.content.profile.user.addressen.toString();
    //_selectedGender1= value.content.profile.user.gender.trim()=="Male"?_gender1[0]:_gender1[1];
         // currentUserLogged=value.content.user;
           Navigator.push(
            context,
           //MaterialPageRoute(builder: (context) => OtpScreen()),
           MaterialPageRoute(builder: (context) => LoginApp()),
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

        }
        
      });
     

   }
   );
 
}
}

const String _svg_lrabbp =
    '<svg viewBox="41.4 53.3 132.0 114.0" ><path transform="translate(41.37, 53.3)" d="M 86.31584167480469 0 C 94.16628265380859 0 101.4218673706055 4.183229446411133 105.355224609375 10.97720241546631 L 125.6183776855469 45.97719573974609 C 129.5658721923828 52.79560089111328 129.5658721923828 61.20439147949219 125.6183776855469 68.02279663085938 L 105.355224609375 103.0227966308594 C 101.4218673706055 109.8167572021484 94.16628265380859 113.9999923706055 86.31584167480469 113.9999923706055 L 45.68415832519531 113.9999923706055 C 37.83371734619141 113.9999923706055 30.57812690734863 109.8167572021484 26.644775390625 103.0227966308594 L 6.38162088394165 68.02279663085938 C 2.434123992919922 61.20439147949219 2.434124946594238 52.79559707641602 6.381623268127441 45.97719192504883 L 26.64478492736816 10.97719860076904 C 30.57813835144043 4.183226585388184 37.8337287902832 0 45.68415832519531 0 Z" fill="none" stroke="#fd6c57" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pbt55o =
    '<svg viewBox="87.9 59.3 3.5 1.0" ><path transform="translate(49.37, 59.3)" d="M 41.99384307861328 0 C 41.99384307861328 0 34.11143493652344 0 41.99384307861328 0 Z" fill="#fd6c57" fill-opacity="0.58" stroke="none" stroke-width="1" stroke-opacity="0.58" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rj87jd =
    '<svg viewBox="47.4 55.0 120.6 109.2" ><path  d="M 168.002685546875 110.296875 L 165.5126953125 99.136962890625 L 143.103759765625 61.077392578125 L 133.144287109375 55.030517578125 L 82.63525390625 55.030517578125 L 71.2529296875 61.077392578125 L 47.42138671875 103.4052734375 L 47.42138671875 112.297607421875 L 50.266845703125 120.83447265625 L 71.2529296875 157.826904296875 L 77.2998046875 162.450927734375 L 82.63525390625 164.2294921875 L 85.836669921875 164.2294921875 L 129.58740234375 164.2294921875 C 129.58740234375 164.2294921875 139.546875 157.470947265625 139.191162109375 160.316650390625 C 138.83544921875 163.162353515625 149.150634765625 149.645751953125 149.150634765625 149.645751953125 L 168.002685546875 110.296875 Z" fill="#f9a7a7" fill-opacity="0.56" stroke="#707070" stroke-width="1" stroke-opacity="0.56" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4v141r =
    '<svg viewBox="23.0 4.0 1.3 4.0" ><path transform="translate(23.0, 4.0)" d="M 0 0 L 0 4 C 0.8047311305999756 3.661223411560059 1.328037977218628 2.873133182525635 1.328037977218628 2 C 1.328037977218628 1.126866698265076 0.8047311305999756 0.3387765288352966 0 0" fill="#000000" fill-opacity="0.4" stroke="none" stroke-width="1" stroke-opacity="0.4" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_7ushs4 =
    '<svg viewBox="294.7 3.0 15.3 11.0" ><path transform="translate(294.69, 3.0)" d="M 7.636500358581543 10.96560001373291 C 7.553820133209229 10.96560001373291 7.473130226135254 10.93181037902832 7.41510009765625 10.87290000915527 L 5.417100429534912 8.856900215148926 C 5.355820178985596 8.796520233154297 5.321700096130371 8.712539672851563 5.323500156402588 8.626500129699707 C 5.325290203094482 8.540619850158691 5.363010406494141 8.458290100097656 5.427000045776367 8.400600433349609 C 6.043790340423584 7.878690242767334 6.828470230102539 7.591279983520508 7.636500358581543 7.591279983520508 C 8.444530487060547 7.591279983520508 9.229209899902344 7.878699779510498 9.846000671386719 8.400600433349609 C 9.909970283508301 8.457460403442383 9.947690010070801 8.539790153503418 9.94950008392334 8.626500129699707 C 9.951300621032715 8.712539672851563 9.917180061340332 8.796520233154297 9.855899810791016 8.856900215148926 L 7.857900142669678 10.87290000915527 C 7.799020290374756 10.93268013000488 7.720390319824219 10.96560001373291 7.636500358581543 10.96560001373291 Z M 11.144700050354 7.427700042724609 C 11.06471061706543 7.427700042724609 10.9886302947998 7.397650241851807 10.93050003051758 7.343100070953369 C 10.02611064910889 6.524199962615967 8.856280326843262 6.073200225830078 7.636500358581543 6.073200225830078 C 6.41756010055542 6.073200225830078 5.248690128326416 6.524189949035645 4.345200061798096 7.343100070953369 C 4.287070274353027 7.397650241851807 4.210990428924561 7.427700042724609 4.13100004196167 7.427700042724609 C 4.048010349273682 7.427700042724609 3.970020294189453 7.395420074462891 3.911400318145752 7.336800098419189 L 2.7576003074646 6.170400142669678 C 2.695760250091553 6.108550071716309 2.662200212478638 6.026730060577393 2.663100242614746 5.940000057220459 C 2.663990259170532 5.853139877319336 2.698830127716064 5.771959781646729 2.761200189590454 5.711400032043457 C 4.090700149536133 4.47461986541748 5.82243013381958 3.793499946594238 7.637400150299072 3.793499946594238 C 9.452370643615723 3.793499946594238 11.18410015106201 4.47461986541748 12.51360034942627 5.711400032043457 C 12.57653999328613 5.772540092468262 12.6117000579834 5.853720188140869 12.61260032653809 5.940000057220459 C 12.61349010467529 6.025139808654785 12.57938003540039 6.109109878540039 12.51900005340576 6.170400142669678 L 11.36429977416992 7.336800098419189 C 11.3056697845459 7.395420074462891 11.22769069671631 7.427700042724609 11.144700050354 7.427700042724609 Z M 13.80420017242432 4.743000030517578 C 13.72325992584229 4.743000030517578 13.64719009399414 4.711999893188477 13.59000015258789 4.655700206756592 C 11.97506046295166 3.121779918670654 9.860730171203613 2.276999950408936 7.636500358581543 2.276999950408936 C 5.411370277404785 2.276999950408936 3.297040224075317 3.121769905090332 1.683000206947327 4.655700206756592 C 1.625820279121399 4.711989879608154 1.549740195274353 4.743000030517578 1.468800187110901 4.743000030517578 C 1.385810256004333 4.743000030517578 1.307820200920105 4.710720062255859 1.249200224876404 4.652100086212158 L 0.09360022097826004 3.485699892044067 C 0.03235022351145744 3.423549890518188 -0.0008897756924852729 3.342360019683838 2.24304201879022e-07 3.257100105285645 C 0.0009002243168652058 3.170560121536255 0.03510022535920143 3.089689970016479 0.09630022197961807 3.029400110244751 C 2.134430170059204 1.075860023498535 4.812250137329102 6.866454960174906e-09 7.636500358581543 6.866454960174906e-09 C 10.46075057983398 6.866454960174906e-09 13.13858032226563 1.075860023498535 15.17670059204102 3.029400110244751 C 15.23733043670654 3.090039968490601 15.2721004486084 3.173029899597168 15.2721004486084 3.257100105285645 C 15.27299022674561 3.342360019683838 15.23974990844727 3.423549890518188 15.17850017547607 3.485699892044067 L 14.02290058135986 4.652100086212158 C 13.96427059173584 4.710720062255859 13.88661003112793 4.743000030517578 13.80420017242432 4.743000030517578 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_96m52j =
    '<svg viewBox="272.7 3.3 17.0 10.7" ><path transform="translate(272.67, 3.34)" d="M 16.00020027160645 10.6668004989624 L 15.00030040740967 10.6668004989624 C 14.44895076751709 10.6668004989624 14.00040054321289 10.2182502746582 14.00040054321289 9.666900634765625 L 14.00040054321289 0.999900221824646 C 14.00040054321289 0.4485502541065216 14.44895076751709 2.494811894848681e-07 15.00030040740967 2.494811894848681e-07 L 16.00020027160645 2.494811894848681e-07 C 16.55154991149902 2.494811894848681e-07 17.00010108947754 0.4485502541065216 17.00010108947754 0.999900221824646 L 17.00010108947754 9.666900634765625 C 17.00010108947754 10.2182502746582 16.55154991149902 10.6668004989624 16.00020027160645 10.6668004989624 Z M 11.33370018005371 10.6668004989624 L 10.33290100097656 10.6668004989624 C 9.781550407409668 10.6668004989624 9.333000183105469 10.2182502746582 9.333000183105469 9.666900634765625 L 9.333000183105469 3.333600282669067 C 9.333000183105469 2.782250165939331 9.781550407409668 2.333700180053711 10.33290100097656 2.333700180053711 L 11.33370018005371 2.333700180053711 C 11.88505077362061 2.333700180053711 12.3336009979248 2.782250165939331 12.3336009979248 3.333600282669067 L 12.3336009979248 9.666900634765625 C 12.3336009979248 10.2182502746582 11.88505077362061 10.6668004989624 11.33370018005371 10.6668004989624 Z M 6.666300773620605 10.6668004989624 L 5.66640043258667 10.6668004989624 C 5.115050315856934 10.6668004989624 4.666500568389893 10.2182502746582 4.666500568389893 9.666900634765625 L 4.666500568389893 5.66640043258667 C 4.666500568389893 5.115050315856934 5.115050315856934 4.666500091552734 5.66640043258667 4.666500091552734 L 6.666300773620605 4.666500091552734 C 7.218140602111816 4.666500091552734 7.667100429534912 5.115050315856934 7.667100429534912 5.66640043258667 L 7.667100429534912 9.666900634765625 C 7.667100429534912 10.2182502746582 7.218140602111816 10.6668004989624 6.666300773620605 10.6668004989624 Z M 1.999800562858582 10.6668004989624 L 0.9999005198478699 10.6668004989624 C 0.4485505521297455 10.6668004989624 5.447387820822769e-07 10.2182502746582 5.447387820822769e-07 9.666900634765625 L 5.447387820822769e-07 7.667100429534912 C 5.447387820822769e-07 7.115260124206543 0.4485505521297455 6.666300296783447 0.9999005198478699 6.666300296783447 L 1.999800562858582 6.666300296783447 C 2.551150560379028 6.666300296783447 2.999700546264648 7.115260124206543 2.999700546264648 7.667100429534912 L 2.999700546264648 9.666900634765625 C 2.999700546264648 10.2182502746582 2.551150560379028 10.6668004989624 1.999800562858582 10.6668004989624 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_35r35u =
    '<svg viewBox="0.5 263.5 375.0 1.0" ><path transform="translate(0.5, 263.5)" d="M 0 0 L 375 0" fill="none" fill-opacity="0.7" stroke="#000000" stroke-width="0.5" stroke-opacity="0.21" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x1e80g =
    '<svg viewBox="0.0 0.0 33.1 26.5" ><path transform="translate(-5.0, -966.36)" d="M 15.93090534210205 966.364013671875 C 15.57851409912109 966.402587890625 15.26609230041504 966.6080932617188 15.09094715118408 966.9163208007813 L 12.83573341369629 970.7820434570313 L 8.313789367675781 970.7820434570313 C 6.497057437896729 970.7820434570313 5.000000476837158 972.2791137695313 5.000000476837158 974.0957641601563 L 5.000000476837158 989.5591430664063 C 5.000000476837158 991.3757934570313 6.497057437896729 992.8727416992188 8.313789367675781 992.8727416992188 L 19.72795867919922 992.8727416992188 C 20.33807182312012 992.8728637695313 20.83266830444336 992.3783569335938 20.83266830444336 991.7682495117188 C 20.83266830444336 991.1582641601563 20.33807182312012 990.6635131835938 19.72795867919922 990.6635131835938 L 8.313789367675781 990.6636352539063 C 7.682738780975342 990.6636352539063 7.209194660186768 990.1901245117188 7.209194660186768 989.5591430664063 L 7.209194660186768 974.0957641601563 C 7.209194660186768 973.4647827148438 7.682738780975342 972.9912719726563 8.313789367675781 972.9912719726563 L 13.46857643127441 972.9912719726563 C 13.86263942718506 972.9905395507813 14.22654819488525 972.7802124023438 14.42359161376953 972.4389038085938 L 16.67881202697754 968.5730590820313 L 26.4590950012207 968.5730590820313 L 28.71431350708008 972.4390258789063 C 28.91136932373047 972.7802124023438 29.27527809143066 972.9905395507813 29.66933441162109 972.9912719726563 L 34.82411956787109 972.9912719726563 C 35.45517349243164 972.9912719726563 35.92871856689453 973.4647827148438 35.92871856689453 974.0957641601563 L 35.92871856689453 989.5590209960938 C 35.92871856689453 990.1901245117188 35.45517349243164 990.6635131835938 34.82411956787109 990.6635131835938 L 23.40994834899902 990.6635131835938 C 22.79983711242676 990.6635131835938 22.30524253845215 991.1581420898438 22.30524253845215 991.7682495117188 C 22.30524253845215 992.3782348632813 22.79983711242676 992.8728637695313 23.40994834899902 992.8728637695313 L 34.82411956787109 992.8727416992188 C 36.64085006713867 992.8727416992188 38.13790893554688 991.3757934570313 38.13790893554688 989.5590209960938 L 38.13790893554688 974.0957641601563 C 38.13790893554688 972.2791137695313 36.64085006713867 970.7820434570313 34.82411956787109 970.7820434570313 L 30.30217170715332 970.7820434570313 L 28.04695320129395 966.9161987304688 C 27.84989356994629 966.5748901367188 27.48598670959473 966.3646240234375 27.09193801879883 966.364013671875 L 16.04597091674805 966.364013671875 C 16.00764274597168 966.362060546875 15.96923351287842 966.362060546875 15.93090724945068 966.364013671875 Z M 21.56895446777344 973.3593139648438 C 17.31167411804199 973.3593139648438 13.8367748260498 976.8340454101563 13.8367748260498 981.0910034179688 C 13.8367748260498 985.3480834960938 17.31167411804199 988.8228149414063 21.56895446777344 988.8228149414063 C 25.82623481750488 988.8228149414063 29.30113410949707 985.3480834960938 29.30113410949707 981.0910034179688 C 29.30113410949707 976.8340454101563 25.82623481750488 973.3593139648438 21.56895446777344 973.3593139648438 Z M 21.56895446777344 975.5684204101563 C 24.63229942321777 975.5684204101563 27.09193801879883 978.0278930664063 27.09193801879883 981.0910034179688 C 27.09193801879883 984.1542358398438 24.63229942321777 986.6138305664063 21.56895446777344 986.6138305664063 C 18.50561141967773 986.6138305664063 16.04597091674805 984.1542358398438 16.04597091674805 981.0910034179688 C 16.04597091674805 978.0278930664063 18.50561141967773 975.5684204101563 21.56895446777344 975.5684204101563 Z" fill="#752525" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
