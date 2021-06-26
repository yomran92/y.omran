import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './LoginApp.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class YOURDATA extends StatelessWidget {
  YOURDATA({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f7ddb),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 284.0, middle: 0.5),
            Pin(size: 40.0, middle: 0.2939),
            child: Text(
              'Information College',
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
          ),
          Container(),
          Container(),
          Pinned.fromPins(
            Pin(size: 208.0, middle: 0.5),
            Pin(size: 19.0, middle: 0.698),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Tofino',
                  fontSize: 14,
                  color: const Color(0xfff0f0f0),
                  height: 1.5714285714285714,
                ),
                children: [
                  TextSpan(
                    text: 'Already have an account?',
                  ),
                  TextSpan(
                    text: '  ',
                    style: TextStyle(
                      color: const Color(0xff858585),
                    ),
                  ),
                  TextSpan(
                    text: 'Sign in',
                    style: TextStyle(
                      color: const Color(0xff2a49b4),
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
          Pinned.fromPins(
            Pin(start: 46.0, end: 45.0),
            Pin(start: 336.0, end: 480.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                color: const Color(0xfff0f0f0),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 56.0, start: 76.0),
            Pin(size: 20.0, middle: 0.4143),
            child: Text(
              'Gender: ',
              style: TextStyle(
                fontFamily: 'Tofino',
                fontSize: 15,
                color: const Color(0xff333333),
                height: 1.4666666666666666,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 21.0, middle: 0.3419),
            Pin(size: 20.0, middle: 0.4143),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 21.0, middle: 0.5878),
            Pin(size: 20.0, middle: 0.4143),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 60.0, middle: 0.451),
            Pin(size: 24.0, middle: 0.4127),
            child: Text(
              'Teacher',
              style: TextStyle(
                fontFamily: 'Tofino',
                fontSize: 18,
                color: const Color(0xff333333),
                height: 1.2222222222222223,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 62.0, middle: 0.7254),
            Pin(size: 24.0, middle: 0.4127),
            child: Text(
              'Student',
              style: TextStyle(
                fontFamily: 'Tofino',
                fontSize: 18,
                color: const Color(0xff333333),
                height: 1.2222222222222223,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 46.0, end: 45.0),
            Pin(start: 401.0, end: 415.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                color: const Color(0xfff0f0f0),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 26.0, start: 357.0),
            Pin(size: 20.0, end: 427.0),
            child: SvgPicture.string(
              _svg_i2qnei,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 260.0, start: 65.0),
            Pin(size: 19.0, middle: 0.4923),
            child: Text(
              'If you studies in University choose College',
              style: TextStyle(
                fontFamily: 'Tofino',
                fontSize: 14,
                color: const Color(0xff9b9b9b),
                height: 1.5714285714285714,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Container(),
          Pinned.fromPins(
            Pin(start: 27.0, end: 121.0),
            Pin(size: 300.0, start: -254.0),
            child: Text(
              'twilio_acc_id',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_i2qnei =
    '<svg viewBox="357.0 413.0 26.0 20.0" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 383.0, 433.0)" d="M 12.58077716827393 0.6449564695358276 C 12.77794933319092 0.3416154384613037 13.22204971313477 0.3416154384613037 13.41922092437744 0.6449564695358276 L 25.49787902832031 19.22750282287598 C 25.71408462524414 19.56012916564941 25.47537612915039 19.99999618530273 25.07865715026855 19.99999618530273 L 0.9213429689407349 19.99999618530273 C 0.5246239900588989 19.99999618530273 0.2859139740467072 19.56012916564941 0.5021212697029114 19.22750282287598 Z" fill="#333333" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
