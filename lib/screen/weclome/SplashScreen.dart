import 'dart:async';
// import 'dart:js';

import 'package:asir_mobile/screen/bottomNavigationBar/bottom_nav_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constant.dart';
import '../../screen/weclome/Welcome1.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

import '../../share_prefe_util.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 Future<SharedPreferences> _prefs =    SharedPreferences.getInstance();
    Future<bool> _logged;

  bool delay = false;
  
  
     @override
   void initState()
   {
        super.initState();
         WidgetsFlutterBinding.ensureInitialized();
   setState(() {
        WidgetsBinding.instance.addPostFrameCallback((_){
  _logged=  _prefs.then((SharedPreferences prefs) {
var logge1=    (prefs.getBool('logged') ?? false);
if(logge1==true){
startTime1();
}
else
{
     startTime();

}
return logge1;
     });
          });
   // PreferenceUtils.init();
  
   });
     
   
  }
   
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

       initScreen(context),
    );
  }
  
  startTime() async {
    var duration = new Duration(seconds: 2);
    
      return
       new Timer(duration, route);
     
  }
   startTime1() async {
    var duration = new Duration(seconds: 2);
    
      return
       new Timer(duration, route1);
     
  }
route() {
  
 Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Welcome1()
      )
    ); 
  }
  route1() {
  
  Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) =>      BottomNavBar(idUser:"w")
      )
    );
 
  }
    initScreen(BuildContext context) {
   
 //new Timer(Duration(milliseconds: 4500), NavigatorPage( ));
    return Scaffold(
      backgroundColor: const Color(0xff1f7ddb),
      body: 
       

      Stack(
        children: <Widget>[
          
          Pinned.fromPins(
            Pin(size: 1277.0, middle: 0.4702),
            Pin(size: 539.0, end: -207.8),
            child: Transform.rotate(
              angle: -0.1222,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60.0),
                  color: const Color(0xb22a49b4),
                  border:
                      Border.all(width: 1.0, color: const Color(0xb2707070)),
                ),
              ),
            ),
          ),
           Pinned.fromPins(
            Pin(start: -859.5, end: 0.0),
            Pin(start: 0, end: 0),
            child:
            InkWell(child: 
                // Adobe XD layer: 'images (2)' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/image/splash_image.png'),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.74), BlendMode.dstIn),
                ),
              ),
            ),
            onTap: (){
                Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Welcome1()));
            },
            ),
          ),
          
          Pinned.fromPins(
            Pin(start: 41.0, end: 40.0),
            Pin(size: 298.0, middle: 0.4786),
            child:
                // Adobe XD layer: 'Logo2' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/image/splash_logo1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 6.0, end: 5.0),
            Pin(size: 65.0, end: 84.0),
            child: Text(
              '6OCT University Know Teacher & Student',
              style: TextStyle(
                fontFamily: 'Tofino',
                fontSize: 16,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                height: 1.875,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
 
           
        ],
      ),
    );
  }
  
}
