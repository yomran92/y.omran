
import '../../localization/language/languages.dart';
import '../../model/allfaculties_response_model.dart';
import '../../model/register_response_model.dart';
import '../../screen/auth/LoginApp.dart';
import '../../services/services.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';


import '../../constant.dart';
//import '../Profile.dart';
class CreateAcc extends StatefulWidget {
  AllFacultiesResponseModel allFacultiesResponseModel;
  CreateAcc({this.allFacultiesResponseModel});
     
  @override
  _CreateAccState createState() => _CreateAccState();
}

class _CreateAccState extends State<CreateAcc> {
  
  
  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
    TextEditingController emailController = new TextEditingController();
      TextEditingController phoneController = new TextEditingController();
      TextEditingController addressController = new TextEditingController();
        TextEditingController dateOfBirthController = new TextEditingController();
          TextEditingController confirmController = new TextEditingController();
            List<String> _gender= new List<String>(); //= ['Egypt', 'Other']; 
            List<String> _gender1 = ['Male', 'Female']; 
              List<Profile1> facutlie =new List<Profile1>();
              List<int> fac_id_list=new List<int>();
              int fac_select_value;
String _selectedGender;
String _selectedGender1;
Profile1 _selectedProfile;
@override
  void initState() {

       // _selectedGender=_gender[0];

    // TODO: implement initState
    super.initState();
    //_selectedGender1=_gender1[0];
    if(widget.allFacultiesResponseModel.content!=null){
    for(int i=0;i<widget.allFacultiesResponseModel.content.length;i++){
    facutlie.add(widget.allFacultiesResponseModel.content[i].profile);
    fac_id_list.add(widget.allFacultiesResponseModel.content[i].id);
    }
    _selectedProfile=facutlie[0];
fac_select_value=fac_id_list[0];
    }else {

    }
      //    WidgetsBinding.instance.addPostFrameCallback((_) => _createNationDropDown());
         

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff1f7ddb),
      body: Stack(
        children: <Widget>[
          
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(start: 0, end: 0.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.0),
      color: const Color(0xff1f7ddb),
                    ),
                  ),
                ),
                
             
                 Pinned.fromPins(
                 Pin(start: 0, end: 0),
                  Pin(start: 0, end:  0 ),
                   child:
                   
                   Container(height: MediaQuery.of(context).size.height*0.9,
                   padding: EdgeInsets.only(top:40),
                     child: SingleChildScrollView(
                       
                       padding: const EdgeInsets.all(8.0),
                       child: Column(children:<Widget> [
                         Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
           
         
           Text(
                        Languages.of(context).createAccount,
                        style: TextStyle(
                          fontFamily: 'Tofino',
                          fontSize: 22,
                          color: Colors.black,
                          height:10,
                          
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                  ),
                  
          SizedBox(
            height: 10,
          ),
          TextField(
              textInputAction: TextInputAction.next,
                              autofocus: true,

              //obscureText: isPassword,
              controller:usernameController                ,
                 style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.shade100,
      hintText:Languages.of(context).username,
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
                                                  textInputAction: TextInputAction.next,
              controller:emailController,
                 style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.shade100,
      hintText: Languages.of(context).email,
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
                                                  textInputAction: TextInputAction.next,
              controller: passwordController ,
                 style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.shade100,
      hintText: Languages.of(context).password,
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
    //                                               textInputAction: TextInputAction.next,
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
                                                  textInputAction: TextInputAction.next,
                 style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.shade100,
      hintText:Languages.of(context).phone,
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
              controller: addressController,
                                                  textInputAction: TextInputAction.next,
                 style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.shade100,
      hintText:Languages.of(context).address,
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
                                                  textInputAction: TextInputAction.next,
                 style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.shade100,
      hintText:Languages.of(context).dateofbirth,
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
     _createNationDropDown(),
      SizedBox(
            height: 10,
          ),
     _creategenderDropDown(),
     SizedBox(
            height: 10,
          ),
               
                
                _createfacultyDropDown(),
                SizedBox(
            height: 10,
          ),
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
         "email",
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
      hintText:isPassword!=true? "email":"password",
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
                   
         Text(Languages.of(context).create,style: TextStyle(fontSize: 20, color: Colors.white),),
      
      
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

            currentUserLogged=new User(
              name:usernameController.text,
              namear:usernameController.text,
              email:emailController.text,
              egyptian: 1,
              gender:"Male",
              addressar: "tt",
              addressen: "tt",
              phone: phoneController.text,
              role: "1",
              updatedAt: "",
              createdAt: "",
              id:0,
              profilePhotoUrl: "");
              creatAccount();

      },
    );
  }

  Widget _createNationDropDown() {
    // _gender.clear();
     _gender =   [
      Languages.of(context).egypt, Languages.of(context).other];
    // _selectedGender=_gender[0];
    return new DropdownButton<String>(
            hint: Text(Languages.of(context).choose,),
             value:_selectedGender ,

  items: _gender.map((String value) {
    return new DropdownMenuItem<String>(
      value: value,
      child: new Text(value),
    );
  }).toList(),
  onChanged: (value) {
      
        setState(() {
      _selectedGender=value;
   
        });
  });
     
 
}

Widget _creategenderDropDown() {
     _gender1 = [
      Languages.of(context).male, Languages.of(context).female];
    //_selectedGender=_gender[0];
    return new DropdownButton<String>(
            hint: Text(Languages.of(context).chooseGender,),
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
Widget _createfacultyDropDown() {
     
    return new DropdownButton<Profile1>(
            hint: Text(Languages.of(context).choose,),
             value:_selectedProfile ,

  items: facutlie.map((Profile1 value) {
    return new DropdownMenuItem<Profile1>(
      value: value,
      child: new Text(value.nameEn),
    );
  }).toList(),
  onChanged: (value ) {
      
        setState(() {
      _selectedProfile=value;
      int index=facutlie.indexOf(value);
      fac_select_value= fac_id_list[index];
   
        });
  });
     
 
}
Future<RegisterResponseModel> creatAccount() async{
  int nation=_selectedGender.trim()=="Egypt"?1:2;
  print("aaaaaaaaaaaaaaaaaaaaa");
  print(fac_select_value.toString());
fac_id_log=fac_select_value.toString();
     Services.signUpApiResponse(
       usernameController.text,usernameController.text,emailController.text,
   passwordController.text,nation,_selectedGender1,addressController.text,addressController.text,phoneController.text,
   fac_select_value

   ).then((value) {
     setState(() {
       
        if(value.result.trim()=="success")
        {
          
     //     currentUserLogged=User.fromJson(jsonDecode(value.message));
           Navigator.push(
            context,
           //MaterialPageRoute(builder: (context) => OtpScreen()),
           MaterialPageRoute(builder: (context) => LoginApp()),
          );

        }
        
     });
     

   }
   );
    
}
}

