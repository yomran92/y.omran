

import '../../localization/language/languages.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constant.dart';



class AboutPage1 extends StatefulWidget {
   String fac_id;
   String image_path;
   String name;
   String desc;
    AboutPage1({
    Key key ,this.fac_id,this.name,this.image_path,this.desc
  }) : super(key: key);
  @override
  _AboutPage1State createState() => _AboutPage1State();
}

class _AboutPage1State extends State<AboutPage1> {
 
     
     String imagePathBlogs=baseimagePath+"blog/";
     
     String imagePath="";
     String videoPath="";
  TextEditingController commentController = new TextEditingController();

     DateTime datatime=DateTime.now();
     var rating;

  int fac_id=1;
  double underline;
  String websiteURL;
Widget tmp;
 void initState() {
        super.initState();
     

   }
  @override
  Widget build(BuildContext context) { 
        return Scaffold(
      backgroundColor: const Color(0xff1f7ddb),
      body:
      
       SingleChildScrollView(
         child: Container(
           height: MediaQuery.of(context).size.height*1,
           child: Stack(
                         fit: StackFit.loose,

            children: <Widget>[
              Pinned.fromPins(
                Pin(start: 0.0, end: 0.0),
                Pin(start: 0.0, end: 0.0),
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(start: 1.0, end: 0.0),
                      Pin(size: 291.2, start: 0.0),
                      child:
                          // Adobe XD layer: 'images (6)' (shape)
                           Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage("assets/image/splash_logo1.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      
                  
                        
                      
                      
                    ),
                    // Pinned.fromPins(
                    //   Pin(start: 0.0, end: 0.0),
                    //   Pin(start: 228.0, end: 390.0),
                    //   child:
                    //       // Adobe XD layer: 'Background' (shape)
                    //       Container(
                    //     decoration: BoxDecoration(
                    //       color: const Color(0xfffffbf6),
                    //     ),
                    //   ),
                    // ),

                    Pinned.fromPins(
                      Pin(start: 10.0,end:10),
                      Pin(start: MediaQuery.of(context).size.height*0.3, end: 0),
                      child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[

                      

                      
                       Text(
                       Languages.of(context).october6University,
                        style: TextStyle(
                          fontFamily: 'Tofino',
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          height: 2.5,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      ),
                        
                                        
                     
                      SizedBox(height: 20,),
                   
                       Text(
                        Languages.of(context).o6uknow,
                        style: TextStyle(
                          fontFamily: 'Tofino',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          height: 2.5,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      ),
                    
                        
   SizedBox(height: 40,),
                    // Pinned.fromPins(
                    //   Pin(size: 60.0, middle: 0.5319),
                    //   Pin(size: 20.0, middle: 0.4907),
                    //   child: 
                    
                   InkWell(child:
                       Text(
                         Languages.of(context).contactUs,
                        style: TextStyle(
                          fontFamily: 'Tofino',
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          height: 2.5,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      ),
                      onTap: (){

_launchInBrowser(contactUsURL);
                      },
                      ),
                    
                        
   SizedBox(height: 20,)
                   
                    //   /////
                    // ),
                    // Pinned.fromPins(
                    //   Pin(size: 56.0, middle: 0.2953),
                    //   Pin(size: 21.0, middle: 0.4907),
                    //   child:
                     
                    // ),
                  
                     
                         
                  ],
                ),
              ),
            ],
      )
      )
      ]
      )
      ))
      );
     
       
  
  }
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }
 
}

const String _svg_ndxgy9 =
    '<svg viewBox="4.4 201.0 1.3 1.0" ><path transform="translate(1.0, 193.0)" d="M 4 8 C 1.790861129760742 8 6.209138870239258 8 4 8 Z" fill="#36bd66" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5j90le =
    '<svg viewBox="0.0 0.0 14.0 14.0" ><path transform="translate(-5.0, -5.0)" d="M 13.52235794067383 18.99951171875 C 13.51006889343262 18.99951171875 13.49746990203857 18.99920082092285 13.48502540588379 18.99842262268066 C 13.1989631652832 18.98224449157715 12.95645618438721 18.78251457214355 12.88552379608154 18.50485229492188 L 11.38350296020508 12.61607933044434 L 5.494729518890381 11.11421298980713 C 5.217067241668701 11.04343700408936 5.017336845397949 10.80077457427979 5.001159191131592 10.5147123336792 C 4.984826564788818 10.22865009307861 5.155779361724854 9.965143203735352 5.423641204833984 9.863256454467773 L 18.10915184020996 5.042665481567383 C 18.35119247436523 4.950422286987305 18.62434196472168 5.009532928466797 18.80711936950684 5.192307472229004 C 18.99020385742188 5.375238418579102 19.04869079589844 5.648388862609863 18.95676040649414 5.890274047851563 L 14.13617134094238 18.57578468322754 C 14.03910636901855 18.83198165893555 13.79379940032959 18.99951171875 13.52235794067383 18.99951171875 Z M 7.831759452819824 10.3538703918457 L 12.08598041534424 11.43900775909424 C 12.31900024414063 11.49842929840088 12.50099754333496 11.68027114868164 12.56041812896729 11.91344547271729 L 13.64555549621582 16.16782188415527 L 17.20896339416504 6.790615081787109 L 7.831759452819824 10.3538703918457 Z" fill="#fd6c57" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xouqe8 =
    '<svg viewBox="0.0 0.0 17.0 16.0" ><path  d="M 12.87626075744629 15.84508514404297 L 8.886227607727051 12.97790145874023 C 8.76497745513916 12.89048767089844 8.621729850769043 12.8470630645752 8.478483200073242 12.8470630645752 C 8.335237503051758 12.8470630645752 8.191989898681641 12.89048767089844 8.070738792419434 12.97790145874023 L 4.080704689025879 15.84508514404297 C 3.951557159423828 15.93813991546631 3.81113076210022 15.97874546051025 3.675215482711792 15.97874546051025 C 3.246040344238281 15.97874546051025 2.861982583999634 15.56874370574951 3.017071962356567 15.09614181518555 L 4.549357414245605 10.4321756362915 C 4.639591217041016 10.15639877319336 4.540334224700928 9.854679107666016 4.301214218139648 9.683233261108398 L 0.2824186086654663 6.795182228088379 C -0.253909558057785 6.409996032714844 0.02468782477080822 5.578151226043701 0.6895993947982788 5.578151226043701 L 5.641752243041992 5.578151226043701 C 5.941216468811035 5.578151226043701 6.206278324127197 5.389224052429199 6.297640800476074 5.110626697540283 L 7.82259464263916 0.4675247669219971 C 7.925236225128174 0.156217560172081 8.201578140258789 0 8.478483200073242 0 C 8.755390167236328 0 9.031731605529785 0.156217560172081 9.134371757507324 0.4675247669219971 L 10.65932559967041 5.110626697540283 C 10.75068855285645 5.389224052429199 11.01575088500977 5.578151226043701 11.31521415710449 5.578151226043701 L 16.26736640930176 5.578151226043701 C 16.93227767944336 5.578151226043701 17.21087455749512 6.409996032714844 16.67454719543457 6.795182228088379 L 12.65575313568115 9.683233261108398 C 12.41663265228271 9.854679107666016 12.31737518310547 10.15639877319336 12.4076099395752 10.4321756362915 L 13.93989372253418 15.09614181518555 C 14.0949821472168 15.56874370574951 13.71092414855957 15.97874546051025 13.2817497253418 15.97874546051025 C 13.14583587646484 15.97874546051025 13.00540733337402 15.93813991546631 12.87626075744629 15.84508514404297 Z" fill="#fe9654" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_j5g34c =
    '<svg viewBox="22.0 0.0 17.0 16.0" ><path transform="translate(22.0, 0.0)" d="M 12.87626075744629 15.84508514404297 L 8.886227607727051 12.97790145874023 C 8.76497745513916 12.89048767089844 8.621729850769043 12.8470630645752 8.478483200073242 12.8470630645752 C 8.335237503051758 12.8470630645752 8.191989898681641 12.89048767089844 8.070738792419434 12.97790145874023 L 4.080704689025879 15.84508514404297 C 3.951557159423828 15.93813991546631 3.81113076210022 15.97874546051025 3.675215482711792 15.97874546051025 C 3.246040344238281 15.97874546051025 2.861982583999634 15.56874370574951 3.017071962356567 15.09614181518555 L 4.549357414245605 10.4321756362915 C 4.639591217041016 10.15639877319336 4.540334224700928 9.854679107666016 4.301214218139648 9.683233261108398 L 0.2824186086654663 6.795182228088379 C -0.253909558057785 6.409996032714844 0.02468782477080822 5.578151226043701 0.6895993947982788 5.578151226043701 L 5.641752243041992 5.578151226043701 C 5.941216468811035 5.578151226043701 6.206278324127197 5.389224052429199 6.297640800476074 5.110626697540283 L 7.82259464263916 0.4675247669219971 C 7.925236225128174 0.156217560172081 8.201578140258789 0 8.478483200073242 0 C 8.755390167236328 0 9.031731605529785 0.156217560172081 9.134371757507324 0.4675247669219971 L 10.65932559967041 5.110626697540283 C 10.75068855285645 5.389224052429199 11.01575088500977 5.578151226043701 11.31521415710449 5.578151226043701 L 16.26736640930176 5.578151226043701 C 16.93227767944336 5.578151226043701 17.21087455749512 6.409996032714844 16.67454719543457 6.795182228088379 L 12.65575313568115 9.683233261108398 C 12.41663265228271 9.854679107666016 12.31737518310547 10.15639877319336 12.4076099395752 10.4321756362915 L 13.93989372253418 15.09614181518555 C 14.0949821472168 15.56874370574951 13.71092414855957 15.97874546051025 13.2817497253418 15.97874546051025 C 13.14583587646484 15.97874546051025 13.00540733337402 15.93813991546631 12.87626075744629 15.84508514404297 Z" fill="#fe9654" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_fgkom =
    '<svg viewBox="43.0 0.0 17.0 16.0" ><path transform="translate(43.0, 0.0)" d="M 12.87626075744629 15.84508514404297 L 8.886227607727051 12.97790145874023 C 8.76497745513916 12.89048767089844 8.621729850769043 12.8470630645752 8.478483200073242 12.8470630645752 C 8.335237503051758 12.8470630645752 8.191989898681641 12.89048767089844 8.070738792419434 12.97790145874023 L 4.080704689025879 15.84508514404297 C 3.951557159423828 15.93813991546631 3.81113076210022 15.97874546051025 3.675215482711792 15.97874546051025 C 3.246040344238281 15.97874546051025 2.861982583999634 15.56874370574951 3.017071962356567 15.09614181518555 L 4.549357414245605 10.4321756362915 C 4.639591217041016 10.15639877319336 4.540334224700928 9.854679107666016 4.301214218139648 9.683233261108398 L 0.2824186086654663 6.795182228088379 C -0.253909558057785 6.409996032714844 0.02468782477080822 5.578151226043701 0.6895993947982788 5.578151226043701 L 5.641752243041992 5.578151226043701 C 5.941216468811035 5.578151226043701 6.206278324127197 5.389224052429199 6.297640800476074 5.110626697540283 L 7.82259464263916 0.4675247669219971 C 7.925236225128174 0.156217560172081 8.201578140258789 0 8.478483200073242 0 C 8.755390167236328 0 9.031731605529785 0.156217560172081 9.134371757507324 0.4675247669219971 L 10.65932559967041 5.110626697540283 C 10.75068855285645 5.389224052429199 11.01575088500977 5.578151226043701 11.31521415710449 5.578151226043701 L 16.26736640930176 5.578151226043701 C 16.93227767944336 5.578151226043701 17.21087455749512 6.409996032714844 16.67454719543457 6.795182228088379 L 12.65575313568115 9.683233261108398 C 12.41663265228271 9.854679107666016 12.31737518310547 10.15639877319336 12.4076099395752 10.4321756362915 L 13.93989372253418 15.09614181518555 C 14.0949821472168 15.56874370574951 13.71092414855957 15.97874546051025 13.2817497253418 15.97874546051025 C 13.14583587646484 15.97874546051025 13.00540733337402 15.93813991546631 12.87626075744629 15.84508514404297 Z" fill="#fe9654" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_u0nsh3 =
    '<svg viewBox="65.0 0.0 17.0 16.0" ><path transform="translate(65.0, 0.0)" d="M 12.87631225585938 15.8454008102417 L 8.886612892150879 12.97800064086914 C 8.76511287689209 12.890700340271 8.622012138366699 12.84749984741211 8.478912353515625 12.84749984741211 C 8.334912300109863 12.84749984741211 8.191812515258789 12.890700340271 8.0703125 12.97800064086914 L 4.080612659454346 15.8454008102417 C 3.951912403106689 15.93810081481934 3.811512470245361 15.97860050201416 3.675612449645996 15.97860050201416 C 3.246312618255615 15.97860050201416 2.862012386322021 15.56910037994385 3.016812801361084 15.09570026397705 L 4.549512386322021 10.43190002441406 C 4.639512538909912 10.1564998626709 4.540512561798096 9.855000495910645 4.301112651824951 9.683100700378418 L 0.282612532377243 6.795000076293945 C -0.253787487745285 6.409800052642822 0.02431251667439938 5.578200340270996 0.689412534236908 5.578200340270996 L 5.642112731933594 5.578200340270996 C 5.94091272354126 5.578200340270996 6.206412315368652 5.389200210571289 6.29731273651123 5.110199928283691 L 7.822812557220459 0.4671000242233276 C 7.925412654876709 0.1565999984741211 8.201712608337402 0 8.478912353515625 0 C 8.755212783813477 0 9.031512260437012 0.1565999984741211 9.134112358093262 0.4671000242233276 L 10.65961265563965 5.110199928283691 C 10.75051307678223 5.389200210571289 11.01601219177246 5.578200340270996 11.31481266021729 5.578200340270996 L 16.26751327514648 5.578200340270996 C 16.93261337280273 5.578200340270996 17.21071434020996 6.409800052642822 16.67431449890137 6.795000076293945 L 12.65581226348877 9.683100700378418 C 12.41641235351563 9.855000495910645 12.31741237640381 10.1564998626709 12.4074125289917 10.43190002441406 L 13.94011306762695 15.09570026397705 C 14.0949125289917 15.56910037994385 13.71061229705811 15.97860050201416 13.28131294250488 15.97860050201416 C 13.14541244506836 15.97860050201416 13.00501251220703 15.93810081481934 12.87631225585938 15.8454008102417 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_afhemb =
    '<svg viewBox="86.0 0.0 17.0 16.0" ><path transform="translate(86.0, 0.0)" d="M 12.87626075744629 15.84508514404297 L 8.886227607727051 12.97790145874023 C 8.76497745513916 12.89048767089844 8.621729850769043 12.8470630645752 8.478483200073242 12.8470630645752 C 8.335237503051758 12.8470630645752 8.191989898681641 12.89048767089844 8.070738792419434 12.97790145874023 L 4.080704689025879 15.84508514404297 C 3.951557159423828 15.93813991546631 3.81113076210022 15.97874546051025 3.675215482711792 15.97874546051025 C 3.246040344238281 15.97874546051025 2.861982583999634 15.56874370574951 3.017071962356567 15.09614181518555 L 4.549357414245605 10.4321756362915 C 4.639591217041016 10.15639877319336 4.540334224700928 9.854679107666016 4.301214218139648 9.683233261108398 L 0.2824186086654663 6.795182228088379 C -0.253909558057785 6.409996032714844 0.02468782477080822 5.578151226043701 0.6895993947982788 5.578151226043701 L 5.641752243041992 5.578151226043701 C 5.941216468811035 5.578151226043701 6.206278324127197 5.389224052429199 6.297640800476074 5.110626697540283 L 7.82259464263916 0.4675247669219971 C 7.925236225128174 0.156217560172081 8.201578140258789 0 8.478483200073242 0 C 8.755390167236328 0 9.031731605529785 0.156217560172081 9.134371757507324 0.4675247669219971 L 10.65932559967041 5.110626697540283 C 10.75068855285645 5.389224052429199 11.01575088500977 5.578151226043701 11.31521415710449 5.578151226043701 L 16.26736640930176 5.578151226043701 C 16.93227767944336 5.578151226043701 17.21087455749512 6.409996032714844 16.67454719543457 6.795182228088379 L 12.65575313568115 9.683233261108398 C 12.41663265228271 9.854679107666016 12.31737518310547 10.15639877319336 12.4076099395752 10.4321756362915 L 13.93989372253418 15.09614181518555 C 14.0949821472168 15.56874370574951 13.71092414855957 15.97874546051025 13.2817497253418 15.97874546051025 C 13.14583587646484 15.97874546051025 13.00540733337402 15.93813991546631 12.87626075744629 15.84508514404297 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_1qty0z =
    '<svg viewBox="0.0 0.5 23.9 21.8" ><path transform="translate(-7.0, -17.71)" d="M 29.87363815307617 31.51727676391602 C 29.29426956176758 31.51727676391602 28.8245964050293 31.9869499206543 28.8245964050293 32.56632232666016 L 28.8245964050293 37.57314300537109 C 28.8245964050293 37.73049926757813 28.69631195068359 37.85878372192383 28.53895568847656 37.85878372192383 L 9.384025573730469 37.85878372192383 C 9.226369857788086 37.85878372192383 9.098086357116699 37.73049926757813 9.098086357116699 37.57314300537109 L 9.098086357116699 20.55702590942383 C 9.098086357116699 20.39937019348145 9.226369857788086 20.27108764648438 9.384025573730469 20.27108764648438 L 19.66581344604492 20.27108764648438 C 20.24518203735352 20.27108764648438 20.7148551940918 19.80141448974609 20.7148551940918 19.22204399108887 C 20.7148551940918 18.64267158508301 20.24518203735352 18.17300033569336 19.66581344604492 18.17300033569336 L 9.384025573730469 18.17300033569336 C 8.069424629211426 18.17300033569336 7 19.24242401123047 7 20.55702590942383 L 7 37.57314300537109 C 7 38.88774490356445 8.069424629211426 39.95686721801758 9.384025573730469 39.95686721801758 L 28.53925323486328 39.95686721801758 C 29.85385513305664 39.95686721801758 30.92298126220703 38.88774490356445 30.92298126220703 37.57314300537109 L 30.92298126220703 32.56632232666016 C 30.92268371582031 31.9869499206543 30.45301055908203 31.51727676391602 29.87363815307617 31.51727676391602 Z" fill="#fd6c57" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_caginu =
    '<svg viewBox="7.4 0.0 18.2 14.4" ><path transform="translate(-24.37, -16.29)" d="M 49.86103057861328 22.20029449462891 L 43.74421310424805 16.41407012939453 C 43.61383056640625 16.29088401794434 43.42230987548828 16.25701522827148 43.25745391845703 16.32774925231934 C 43.09230804443359 16.39878463745117 42.98560333251953 16.56123733520508 42.98560333251953 16.74077224731445 L 42.98560333251953 20.15525817871094 C 33.08653259277344 20.44029998779297 31.8267822265625 30.1253662109375 31.81479263305664 30.22457504272461 C 31.7899169921875 30.43678092956543 31.91759872436523 30.63759803771973 32.12081527709961 30.70443725585938 C 32.16697311401367 30.71972465515137 32.21463012695313 30.72691535949707 32.26108551025391 30.72691535949707 C 32.41904067993164 30.72691535949707 32.57010269165039 30.64329147338867 32.65193176269531 30.49972343444824 C 35.47026062011719 25.54883766174316 40.34561157226563 25.01442718505859 42.31121826171875 25.01442718505859 C 42.55819702148438 25.01442718505859 42.76740264892578 25.02251815795898 42.93015670776367 25.03240966796875 L 42.93015670776367 28.47896766662598 C 42.93015670776367 28.65940284729004 43.03775787353516 28.82245445251465 43.20380783081055 28.89288902282715 C 43.36985778808594 28.96302604675293 43.56198120117188 28.92795753479004 43.69176483154297 28.80267143249512 L 49.86373138427734 22.85070037841797 C 49.95215225219727 22.76557922363281 50.00190734863281 22.64778709411621 50.00130844116211 22.52489852905273 C 50.00070953369141 22.40200805664063 49.95005416870117 22.28481674194336 49.86103057861328 22.20029449462891 Z" fill="#fd6c57" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mtzoap =
    '<svg viewBox="0.0 0.0 28.8 30.2" ><path transform="translate(-9.0, -959.34)" d="M 29.873779296875 959.3363037109375 C 25.86530876159668 959.3363037109375 22.53698921203613 962.3468017578125 22.04603958129883 966.223388671875 L 18.07735252380371 964.9951171875 C 17.94282913208008 964.9527587890625 17.80115509033203 964.937744140625 17.66075134277344 964.951171875 C 17.59371757507324 964.95947265625 17.52763366699219 964.97412109375 17.46341323852539 964.9951171875 L 9.745304107666016 967.3857421875 C 9.301756858825684 967.52099609375 8.998998641967773 967.9307861328125 8.99980640411377 968.3946533203125 L 8.999805450439453 975.8299560546875 C 8.999700546264648 976.4114990234375 9.470953941345215 976.8829345703125 10.05227470397949 976.8829345703125 C 10.63359451293945 976.8829345703125 11.10484886169434 976.4114990234375 11.10484981536865 975.8299560546875 L 11.10474491119385 969.162353515625 L 16.7179126739502 967.4296875 L 16.7179126739502 985.294189453125 L 11.10474491119385 987.037841796875 L 11.10474491119385 979.3392333984375 C 11.10484981536865 978.7578125 10.63359451293945 978.286376953125 10.05227470397949 978.286376953125 C 9.470953941345215 978.286376953125 8.999700546264648 978.7578125 8.999700546264648 979.3392333984375 L 8.999805450439453 988.4635009765625 C 9.002701759338379 988.79541015625 9.161992073059082 989.106689453125 9.429591178894043 989.3031005859375 C 9.697190284729004 989.49951171875 10.04174327850342 989.5582275390625 10.35924625396729 989.46142578125 L 17.77038192749023 987.16943359375 L 25.18152046203613 989.46142578125 C 25.38162231445313 989.5223388671875 25.59535789489746 989.5223388671875 25.79545783996582 989.4613037109375 L 33.51356887817383 987.0706787109375 C 33.95326232910156 986.9366455078125 34.25508499145508 986.5325927734375 34.25906753540039 986.0726318359375 L 34.25906753540039 974.546875 C 34.53900909423828 974.208984375 34.81598663330078 973.8656005859375 35.08131408691406 973.5159912109375 C 36.51737976074219 971.6240234375 37.72741317749023 969.5390625 37.76729965209961 967.2322998046875 C 37.76737213134766 967.2249755859375 37.76737213134766 967.2176513671875 37.76729965209961 967.2103271484375 C 37.76729965209961 962.865478515625 34.21791839599609 959.3363037109375 29.873779296875 959.3363037109375 Z M 29.873779296875 961.44189453125 C 33.07842636108398 961.44189453125 35.65634155273438 964.0020751953125 35.66236114501953 967.1993408203125 C 35.66230392456055 967.202880859375 35.66242980957031 967.206787109375 35.66236114501953 967.2103271484375 C 35.63149261474609 968.76953125 34.71966552734375 970.510498046875 33.40393829345703 972.243896484375 C 32.32695770263672 973.662841796875 31.05130195617676 975.0396728515625 29.873779296875 976.3563232421875 C 28.69605255126953 975.038330078125 27.40890312194824 973.6646728515625 26.3326587677002 972.243896484375 C 25.01962661743164 970.5106201171875 24.11607360839844 968.7705078125 24.08520126342773 967.2103271484375 C 24.08520126342773 967.20654296875 24.08519172668457 967.203125 24.08520126342773 967.1993408203125 C 24.09119987487793 964.0001220703125 26.66914558410645 961.44189453125 29.873779296875 961.44189453125 Z M 29.873779296875 963.196533203125 C 27.6580696105957 963.196533203125 25.83931350708008 965.015869140625 25.83931350708008 967.232177734375 C 25.83931350708008 969.4486083984375 27.6580696105957 971.2679443359375 29.873779296875 971.2679443359375 C 32.08948516845703 971.2679443359375 33.90824508666992 969.4486083984375 33.90824508666992 967.232177734375 C 33.90824508666992 965.015869140625 32.08948516845703 963.196533203125 29.873779296875 963.196533203125 Z M 29.873779296875 965.3021240234375 C 30.95189094543457 965.3021240234375 31.80330848693848 966.15380859375 31.80330848693848 967.232177734375 C 31.80330848693848 968.3106689453125 30.95189094543457 969.162353515625 29.873779296875 969.162353515625 C 28.7956600189209 969.162353515625 27.94425201416016 968.3106689453125 27.94425201416016 967.232177734375 C 27.94425201416016 966.15380859375 28.7956600189209 965.3021240234375 29.873779296875 965.3021240234375 Z M 18.82285308837891 967.4296875 L 22.11182022094727 968.4385986328125 C 22.43650436401367 970.1585693359375 23.3504753112793 971.7442626953125 24.43602180480957 973.2198486328125 L 24.43602180480957 987.0267333984375 L 18.82285308837891 985.294189453125 L 18.82285308837891 967.4296875 Z M 26.54096031188965 975.7861328125 C 27.44138336181641 976.802001953125 28.3359203338623 977.7540283203125 29.07346343994141 978.615478515625 C 29.27338600158691 978.8458251953125 29.56335067749023 978.9781494140625 29.86829948425293 978.9781494140625 C 30.17324829101563 978.9781494140625 30.46320915222168 978.8458251953125 30.66312980651855 978.615478515625 C 31.11074638366699 978.0926513671875 31.62525749206543 977.5311279296875 32.15413284301758 976.9486083984375 L 32.15413284301758 985.294189453125 L 26.54096031188965 987.0267333984375 L 26.54096031188965 975.7861328125 Z" fill="#fd6c57" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_puis5h =
    '<svg viewBox="0.0 0.0 25.3 26.2" ><path transform="translate(-2.8, -2.0)" d="M 15.42863845825195 1.99999988079071 C 9.394993782043457 1.99999988079071 4.303619861602783 6.106879234313965 2.796874761581421 11.67161083221436 L 3.983603000640869 11.67161083221436 C 4.41029167175293 10.24709129333496 5.101438045501709 8.94035816192627 5.988150596618652 7.793632984161377 C 6.959311962127686 8.340327262878418 8.08381462097168 8.798128128051758 9.328323364257813 9.149257659912109 C 9.119423866271973 9.947075843811035 8.948304176330566 10.78711986541748 8.828298568725586 11.67161083221436 L 9.988357543945313 11.67161083221436 C 10.10391902923584 10.88934803009033 10.26170539855957 10.14264297485352 10.4483814239502 9.431493759155273 C 11.8195629119873 9.733733177185059 13.30186176300049 9.913742065429688 14.85972023010254 9.947075843811035 L 14.85972023010254 11.67161083221436 L 15.99755668640137 11.67161083221436 L 15.99755668640137 9.947075843811035 C 17.5554141998291 9.913742065429688 19.03771591186523 9.735954284667969 20.40889739990234 9.431493759155273 C 20.59557342529297 10.14264297485352 20.75335884094238 10.88934803009033 20.86892127990723 11.67161083221436 L 22.02898025512695 11.67161083221436 C 21.90897560119629 10.78711986541748 21.73785591125488 9.947075843811035 21.52895545959473 9.149257659912109 C 22.77346420288086 8.798128128051758 23.8979663848877 8.340327262878418 24.8691291809082 7.793632984161377 C 25.75583839416504 8.94035816192627 26.44698715209961 10.24709129333496 26.8714542388916 11.67161083221436 L 28.06040191650391 11.67161083221436 C 26.55365943908691 6.106879234313965 21.46228408813477 1.99999988079071 15.42863845825195 1.99999988079071 Z M 14.85972023010254 3.206729412078857 L 14.85972023010254 8.809240341186523 C 13.41297817230225 8.775904655456543 12.03735160827637 8.609230041503906 10.77062034606934 8.333661079406738 C 11.70622444152832 5.535738468170166 13.1885232925415 3.575636863708496 14.85972023010254 3.206729412078857 Z M 15.99755668640137 3.206729412078857 C 17.66875457763672 3.575636863708496 19.15105438232422 5.535738468170166 20.08665657043457 8.333661079406738 C 18.81992721557617 8.609230041503906 17.44429779052734 8.775904655456543 15.99755668640137 8.809240341186523 L 15.99755668640137 3.206729412078857 Z M 12.09068775177002 3.622306346893311 C 11.08841419219971 4.680139064788818 10.25059413909912 6.204661846160889 9.6461181640625 8.053646087646484 C 8.559394836425781 7.746963977813721 7.577121734619141 7.358054637908936 6.737078666687012 6.906920433044434 C 8.177152633666992 5.375730037689209 10.01947021484375 4.229004859924316 12.09068775177002 3.622306346893311 Z M 18.7665901184082 3.622306346893311 C 20.83780860900879 4.229004859924316 22.68012619018555 5.375730037689209 24.12019920349121 6.906920433044434 C 23.2801570892334 7.358054637908936 22.29788208007813 7.746963977813721 21.21116065979004 8.053646087646484 C 20.6066837310791 6.204661846160889 19.76886367797852 4.680139064788818 18.7665901184082 3.622306346893311 Z M 2.912436246871948 12.80944633483887 L 4.356956005096436 17.36079406738281 L 5.68146800994873 17.36079406738281 L 6.885974884033203 13.95839500427246 L 8.090482711791992 17.36079406738281 L 9.386103630065918 17.36079406738281 L 10.85729122161865 12.80944633483887 L 9.626116752624512 12.80944633483887 L 8.697179794311523 15.98961162567139 L 7.634902954101563 12.80944633483887 L 6.183716297149658 12.80944633483887 L 5.076992511749268 15.93627452850342 L 4.163612365722656 12.80944633483887 L 2.912436246871948 12.80944633483887 Z M 11.45510005950928 12.80944633483887 L 12.90184116363525 17.36079406738281 L 14.22857666015625 17.36079406738281 L 15.42863845825195 13.95839500427246 L 16.63536643981934 17.36079406738281 L 17.93099021911621 17.36079406738281 L 19.40217781066895 12.80944633483887 L 18.16878128051758 12.80944633483887 L 17.2420654296875 15.98961162567139 L 16.17978858947754 12.80944633483887 L 14.72638034820557 12.80944633483887 L 13.61965560913086 15.93627452850342 L 12.70849800109863 12.80944633483887 L 11.45510005950928 12.80944633483887 Z M 19.97109794616699 12.80944633483887 L 21.42005920410156 17.36079406738281 L 22.75123977661133 17.36079406738281 L 23.95796966552734 13.95839500427246 L 25.16914176940918 17.36079406738281 L 26.46920967102051 17.36079406738281 L 27.94484329223633 12.80944633483887 L 26.7092227935791 12.80944633483887 L 25.77584075927734 15.98961162567139 L 24.71134185791016 12.80944633483887 L 23.25348854064941 12.80944633483887 L 22.14232063293457 15.93627452850342 L 21.22449493408203 12.80944633483887 L 19.97109794616699 12.80944633483887 Z M 2.796874761581421 18.49863243103027 C 4.303619861602783 24.06336212158203 9.394993782043457 28.17024230957031 15.42863845825195 28.17024230957031 C 21.46228408813477 28.17024230957031 26.55365943908691 24.06336212158203 28.06040191650391 18.49863243103027 L 26.8714542388916 18.49863243103027 C 26.44698715209961 19.92314910888672 25.75583839416504 21.22988128662109 24.8691291809082 22.37660789489746 C 23.8979663848877 21.82991218566895 22.77346420288086 21.37211227416992 21.52895545959473 21.02098274230957 C 21.73785591125488 20.22316551208496 21.90897560119629 19.38312149047852 22.02898025512695 18.49863243103027 L 20.86892127990723 18.49863243103027 C 20.75335884094238 19.28089332580566 20.59557342529297 20.0275993347168 20.40889739990234 20.73874664306641 C 19.03771591186523 20.43651008605957 17.5554141998291 20.25650024414063 15.99755668640137 20.22316551208496 L 15.99755668640137 18.49863243103027 L 14.85972023010254 18.49863243103027 L 14.85972023010254 20.22316551208496 C 13.30186176300049 20.25650024414063 11.8195629119873 20.43428611755371 10.4483814239502 20.73874664306641 C 10.26170539855957 20.0275993347168 10.10391902923584 19.28089332580566 9.988357543945313 18.49863243103027 L 8.828298568725586 18.49863243103027 C 8.948304176330566 19.38312149047852 9.119423866271973 20.22316551208496 9.328323364257813 21.02098274230957 C 8.08381462097168 21.37211227416992 6.959311962127686 21.82991218566895 5.988150596618652 22.37660789489746 C 5.101438045501709 21.22988128662109 4.41029167175293 19.92314910888672 3.983603000640869 18.49863243103027 L 2.796874761581421 18.49863243103027 Z M 14.85972023010254 21.36100196838379 L 14.85972023010254 26.9635124206543 C 13.1885232925415 26.5946044921875 11.70622444152832 24.63450241088867 10.77062034606934 21.83658027648926 C 12.03735160827637 21.56101226806641 13.41297817230225 21.39433670043945 14.85972023010254 21.36100196838379 Z M 15.99755668640137 21.36100196838379 C 17.44429779052734 21.39433670043945 18.81992721557617 21.56101226806641 20.08665657043457 21.83658027648926 C 19.15105438232422 24.63450241088867 17.66875457763672 26.5946044921875 15.99755668640137 26.9635124206543 L 15.99755668640137 21.36100196838379 Z M 9.648340225219727 22.1165943145752 C 10.25281524658203 23.96557998657227 11.08841419219971 25.49010276794434 12.09068775177002 26.54571342468262 C 10.01947021484375 25.94123649597168 8.177152633666992 24.79451179504395 6.737078666687012 23.26332092285156 C 7.577121734619141 22.80996322631836 8.559394836425781 22.42327690124512 9.648340225219727 22.1165943145752 Z M 21.21116065979004 22.1165943145752 C 22.29788208007813 22.42327690124512 23.2801570892334 22.81218719482422 24.12019920349121 23.26332092285156 C 22.68012619018555 24.79451179504395 20.83780860900879 25.94123649597168 18.7665901184082 26.54571342468262 C 19.76886367797852 25.49010276794434 20.6066837310791 23.96557998657227 21.21116065979004 22.1165943145752 Z" fill="#fd6c57" stroke="#fd6c57" stroke-width="0.30000001192092896" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lxjixp =
    '<svg viewBox="19.0 23.8 23.7 20.0" ><path  d="M 42.71057891845703 33.84122085571289 C 42.71057891845703 32.99568557739258 42.02513885498047 32.31024551391602 41.17961120605469 32.31024551391602 L 24.38867568969727 32.31024551391602 L 30.61207580566406 26.50786399841309 C 31.03471183776855 26.14031028747559 31.22289657592773 25.5713005065918 31.10274887084961 25.02423477172852 C 30.98259925842285 24.47716903686523 30.57329940795898 24.03938293457031 30.03554153442383 23.88275146484375 C 29.49778366088867 23.72612380981445 28.91741752624512 23.87565612792969 28.52230072021484 24.27264595031738 L 19.45512008666992 32.71978378295898 C 19.14469909667969 33.00934219360352 18.96843910217285 33.414794921875 18.96843910217285 33.83930587768555 C 18.96843910217285 34.26381301879883 19.14469909667969 34.66926574707031 19.45512008666992 34.95882797241211 L 28.52230072021484 43.40979385375977 C 29.14059638977051 43.98686981201172 30.1096363067627 43.95344924926758 30.68671035766602 43.33515548706055 C 31.26378631591797 42.71686172485352 31.23037147521973 41.74782180786133 30.61207580566406 41.17074584960938 L 24.38867568969727 35.3721923828125 L 41.17961120605469 35.3721923828125 C 42.02513885498047 35.3721923828125 42.71057891845703 34.68675231933594 42.71057891845703 33.84122085571289 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
