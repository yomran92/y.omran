
import 'screen/bottomNavigationBar/bottom_nav_bar.dart';
import 'screen/weclome/SplashScreen.dart';
import 'share_prefe_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'localization/locale_constant.dart';
import 'localization/localizations_delegate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'constant.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 
  runApp(MyApp());
   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(MyApp()));
}

class MyApp extends StatefulWidget {

   static void setLocale(BuildContext context, Locale newLocale) {
    var state = context.findAncestorStateOfType<_MyAppState>();
    state.setLocale(newLocale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    Locale _locale;
    bool _checkUser=false;
     bool passed=false;
  _getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool id = prefs.containsKey('complete');
    return id;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }
 
  

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }
  
 @override
  void didChangeDependencies() async {
    getLocale().then((locale) {
      setState(() {
        _locale = locale;
      });
    });
    super.didChangeDependencies();
  }


  @override
  
  Widget build(BuildContext context) {
    //if(passed==false)
  //  {
//_function();

    // }
    
     SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    ///Set color status bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent, //or set color with: Color(0xFF0000FF)
    ));
   
    return MaterialApp(
      locale: _locale,
      title: 'O6u',
      theme: ThemeData(
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          primaryColorLight: Colors.white,
          primaryColorBrightness: Brightness.light,
          primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home:

      //Welcome1(),
  SplashScreen(),
      
            supportedLocales: [
        Locale('ar', ''),
        Locale('en', '')
        
       ],
      localizationsDelegates: [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale?.languageCode == locale?.languageCode &&
              supportedLocale?.countryCode == locale?.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales?.first;
      },
    );
  }
}
  

