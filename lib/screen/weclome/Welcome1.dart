import '../../screen/weclome/Welcome2.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class Welcome1 extends StatelessWidget {
  Welcome1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f7ddb),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 68.2, middle: 0.5),
            Pin(size: 12.0, middle: 0.5467),
            child: Transform.rotate(
              angle: -0.0175,
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(size: 32.0, start: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.0),
                        color: const Color(0xfffe9654),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 8.0, middle: 0.7188),
                    Pin(start: 0.0, end: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color(0xff999999),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 8.0, end: 0.0),
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
          ),
          Pinned.fromPins(
            Pin(start: 69.0, end: 68.0),
            Pin(size: 95.0, middle: 0.7176),
            child: Text(
              'Learn more about the colleges and their majors and departments, and ask you and your group.',
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
            Pin(size: 250.0, middle: 0.5051),
            Pin(size: 30.0, middle: 0.608),
            child: Text(
              'Find you and your peers',
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
          Container(),
          Pinned.fromPins(
            Pin(start: 69.0, end: 68.0),
            Pin(start: 670.0, end: 166.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                color: const Color(0xffdb6c1f),
              ),
            ),
          ),
          InkWell(
            onTap: (){
                 Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Welcome2()));
            },
            child:
          Pinned.fromPins(
            Pin(size: 60.0, start: 194.0),
            Pin(size: 38.0, middle: 0.8151),
            child: Text(
              'Next',
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
          Pinned.fromPins(
            Pin(start: 0, end: 0),
            Pin(size: MediaQuery.of(context).size.height*0.4,start: 0.0),
            child:
                // Adobe XD layer: 'images (1)' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                image: DecorationImage(
                  image: const AssetImage('assets/image/welcom1_background.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
