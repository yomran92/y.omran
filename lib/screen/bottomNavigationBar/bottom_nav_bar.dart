
import '../../screen/collage/SearchCollege.dart';

import 'package:flutter/material.dart';

import '../HomePage.dart';
import '../Profile.dart';
import 'custom_bottom_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  String idUser = '';
  BottomNavBar({this.idUser});
  _BottomNavBarState createState() => _BottomNavBarState(idUser: idUser);
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  String idUser = '';

  bool _color = true;

  _BottomNavBarState({this.idUser});
  @override
  void initState() {
    super.initState();
  }

  Widget callPage(int current) {
    switch (current) {
      case 0:
        return  new HomePage();

      case 1:
        // return new Home4Screen(rating: 4.0,placeName: "ssstgfgd",
        // imgUrl:"assets/image/eventimage1.png",);
 return  
    //  CollagePage(fac_id: fac_id_selected,
      //  );
      SearchCollege();
      //  return DiscountDestScreen(userId: widget.idUser);
        break;
      case 4:
      return Profile();
    //    return new TouristDestScreen(userId: widget.idUser);
        break;
      case 3:

//DiscountsDestScreen(userId: widget.idUser);
   //     return new FavouriteScreen();
        

        break;

      // case 4:
      //   return new ProfilePage();
      //   break;
      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: callPage(currentIndex),
      bottomNavigationBar: CustomBottomNavBar(
        activeColor: Colors.purple,
        // Usar -> "BottomNavigationDotBar"
        color: Colors.black,
        items: <CustomBottomNavBarItem>[
          CustomBottomNavBarItem(
            //title: "Home",
              icon: (const IconData(0xe900, fontFamily: 'home',)),
              
              onTap: () {
                setState(() {
                  currentIndex = 0;
                });
              }),
          CustomBottomNavBarItem(
              icon: const IconData(0xe857, fontFamily: 'MaterialIcons'),
              
              //title: "tourist dest",
              onTap: () {
                setState(() {
                  currentIndex = 1;
                });
              }),
     
          CustomBottomNavBarItem(
              icon: (const IconData(0xe900, fontFamily: 'profile')),
              onTap: () {
                setState(() {
                  currentIndex = 4;
                });
              }),
        ],
        key: null,
      ),
    );
  }
}
