

import 'localization/languge_data.dart';

import 'model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'model/register_response_model.dart';


User currentUserLogged;
    String baseURL="https://zabatny-bea.online/university/api/";
    //String baseURL="http://192.168.137.1:8000/api/";
    //String baseimagePath= "http://192.168.137.1:8000/files/images/";
   String baseimagePath= "https://zabatny-bea.online/university/files/images/";
    //String baseURL="http://10.11.0.182:8000/api/";
    String test="";
    String token="";
    String currentPassword="";
bool complete=false;

    String fac_id_log="";
    String fac_id_selected="";
    String sec_id_selected="";
    LanguageData currentLanguge=LanguageData(
        //"🇺🇸", 
      "English", 'en');
                     //    SharedPreferences prefs;
                     String contactUsURL="https://o6u.edu.eg/dpagesuni.aspx?FactId=0&id=935";
                           String universityURL="https://o6u.edu.eg/dpagesuni.aspx?FactId=0&id=935";
                           String bankO6UURL="https://o6u.edu.eg/Services.aspx?FactId=699&id=706";
