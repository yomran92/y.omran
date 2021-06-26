import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
//import './LoginApp.dart';
import 'package:adobe_xd/page_link.dart';

class Login_Social extends StatelessWidget {
  Login_Social({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f7ddb),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: -21.0),
            Pin(start: 213.0, end: 0.0),
            child:
                // Adobe XD layer: 'student_PNG135' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 69.0, end: 68.0),
            Pin(size: 65.0, middle: 0.1748),
            child: Text(
              '6OCT University Know\nTeacher & Student',
              style: TextStyle(
                fontFamily: 'Tofino',
                fontSize: 24,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                height: 1.25,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Container(),
          Container(),
          Pinned.fromPins(
            Pin(size: 208.0, middle: 0.5),
            Pin(size: 19.0, middle: 0.7527),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                 // pageBuilder: () => LoginApp(),
                ),
              ],
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Tofino',
                    fontSize: 14,
                    color: const Color(0xff000000),
                    height: 1.5714285714285714,
                  ),
                  children: [
                    TextSpan(
                      text: 'Already have an account?',
                    ),
                    TextSpan(
                      text: '  ',
                      style: TextStyle(
                        color: const Color(0xffffffff),
                      ),
                    ),
                    TextSpan(
                      text: 'Sign in',
                      style: TextStyle(
                        color: const Color(0xffffffff),
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
          Container(),
        ],
      ),
    );
  }
}
