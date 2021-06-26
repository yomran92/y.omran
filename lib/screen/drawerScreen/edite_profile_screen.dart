import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditeProfile extends StatefulWidget {
  @override
  _EditeProfileState createState() => _EditeProfileState();
}

class _EditeProfileState extends State<EditeProfile> {
      TextEditingController nameController = new TextEditingController();
    TextEditingController ageController = new TextEditingController();
    TextEditingController passwordController = new TextEditingController();
    TextEditingController emailController = new TextEditingController();
        TextEditingController phoneNumberController = new TextEditingController();
    


  @override
  Widget build(BuildContext context) {
    return Scaffold(


 body: SafeArea(
         child: SingleChildScrollView(
            child:
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      height:MediaQuery.of(context).size.height-480,
                      width: MediaQuery.of(context).size.width,
                      child:
                      Stack(
    
                          children: [
    
                            Positioned(
    
                              child:
                              Container(
                                height: MediaQuery.of(context).size.height-550,
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
                                height: 300,
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
                              top:MediaQuery.of(context).size.height*0.15,
                              left:MediaQuery.of(context).size.width*0.095,
                              
    
                                child:Container(
                                 
                                     
                                       
                                        
               // padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Color(0xffD5E6F2),
                    borderRadius: BorderRadius.circular(40)),
                           child:ClipRRect(
    borderRadius: BorderRadius.circular(40.0),
                child: Image.asset(
                  "assets/image/eventimage1.png",
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
              
                           
                          ]
                      )

                  ),
               SingleChildScrollView(child:
                                
                                Container(
                                  width: MediaQuery.of(context).size.width*0.9,
                                  height: MediaQuery.of(context).size.height*0.3,

                                  child: Column(
                                    children:<Widget>[
                                      Container(
                                        padding: EdgeInsets.all(16),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Text(
            "name",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            
              
              controller:  nameController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  //fillColor: Color(0xfff3f3f4),
                  filled: true)),
                  Text(
            "email ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            
              
              controller:  emailController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  //fillColor: Color(0xfff3f3f4),
                  filled: true)),
                  SizedBox(
            height: 10,
          ),
           
          //         Text(
          //   "phone number ",
          //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // TextField(
            
              
          //     controller:  phoneNumberController,
          //     decoration: InputDecoration(
          //         border: InputBorder.none,
          //         //fillColor: Color(0xfff3f3f4),
          //         filled: true)),

       
          //         SizedBox(
          //   height: 10,
          // ),
         
          //         Text(
          //   "password ",
          //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          // ),
          
//           TextField(
            
              
//               controller:  passwordController,
//               decoration: InputDecoration(
//                   border: InputBorder.none,
//                   //fillColor: Color(0xfff3f3f4),
//                   filled: true)),
//                   SizedBox(
//             height: 10,
//           ),
        
//         ],
//       ),
//                                                                                             ),
                           
                                
                                 

//                 ],
//               ),
//          ),
//           ),

  
 ]
 )
)
                                    ]
                                  )
))]
              ))))
         
    );
  }
  }