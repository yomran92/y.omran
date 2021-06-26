import '../../screen/auth/LoginApp.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import '../Login_Social.dart';
import 'package:adobe_xd/page_link.dart';

class Welcome2 extends StatelessWidget {
  Welcome2({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f7ddb),
      body: Stack(
        children: <Widget>[
          Container(),
          Pinned.fromPins(
            Pin(start: 69.0, end: 68.0),
            Pin(size: 109.0, middle: 0.7217),
            child: Text(
              'You can choose your favorite book and search for details on Article Doctor.',
              style: TextStyle(
                fontFamily: 'Tofino',
                fontSize: 18,
                color: const Color(0xff000000),
                height: 1.2222222222222223,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 45.0, end: 43.0),
            Pin(size: 30.0, middle: 0.5964),
            child: Text(
              'Search for books and browse more',
              style: TextStyle(
                fontFamily: 'Tofino',
                fontSize: 22,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
                height: 1.8181818181818181,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 68.2, middle: 0.5081),
            Pin(size: 12.0, middle: 0.5342),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 32.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.0),
                      color: const Color(0xfffe9654),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 8.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: const Color(0xff999999),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 8.0, middle: 0.2857),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: const Color(0xff999999),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(),
          Pinned.fromPins(
            Pin(start: 0, end: 0),
            Pin(size: MediaQuery.of(context).size.height*0.4, start: 0),
            child:
                // Adobe XD layer: 'images' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                image: DecorationImage(
                  image: const AssetImage('assets/image/welcom2_background.jpeg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
             InkWell(
            onTap: (){
                 Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LoginApp()));
            },
            child:
          Pinned.fromPins(
            Pin(size: 60.0, start: 194.0),
            Pin(size: 38.0, middle: 0.8151),
            child: Text(
              'Login',
              style: TextStyle(
                fontFamily: 'Tofino',
                fontSize: 20,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
                height: 1,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          ),
        ],
      ),
    );
  }
}
