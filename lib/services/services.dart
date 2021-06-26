import '../model/all_professor_response.dart';
import '../model/allfaculties_response_model.dart';
import '../model/edite_comment_respone.dart';
import '../model/login_reponse_model.dart';
import '../model/register_response_model.dart';
import 'package:http/http.dart' as http;
import '../model/getfaculty_response_model.dart';
import '../model/all_section_response_model.dart';
import '../model/section_response_model.dart';
import '../model/all_specification_response_model.dart';
import '../model/specification_response_model.dart';
import '../model/all_blogs_response_model.dart';
import '../model/blog_response_model.dart';
import '../model/all_comment_response.dart';
import '../model/student_profile_response_model.dart';
import '../model/edit_student_profile_model.dart';
import '../model/add_comment_response.dart';
import '../model/professour_profile_response.dart';
import 'dart:convert';
import '../model/all_faculty_search_response.dart';

import '../constant.dart';

    
 
class Services {

  
 
  static Future<RegisterResponseModel> signUpApiResponse(
    String name, String namear,String email,
    String passowrd,int egyptian,String gender,String addressen,String addressar,String phone,int fac_id ) async {
  
      
     var _data = {
     "name" :name,
    "namear" :namear,
    "email" :email,
    "fac_id":fac_id.toString(),
     "password" : passowrd,
     "egyptian":egyptian.toString(),
     "gender":gender,
     "addressen":addressen,
     "addressar":addressar,
     "phone":phone,
     "image":"Rose.jpg"
    };
     //print(_data);
    try{
      Map<String,String> headers = {'Content-Type':'application/x-www-form-urlencoded' ,
      'Accept':   "application/json"  };

    final response = await http.post(
    
      baseURL+'register',
        headers:headers,
        body:_data);
      


   var um = RegisterResponseModel.fromJson(jsonDecode(response.body));
   return um;
    }
    catch(e)
    {
      print(e);
    }

  }

    static Future<LoginModelResponse> loginApiResponse(
    String email,
    String passowrd ) async {
  
       var _data = {

      "email" :email,
     "password" : passowrd
    };
     try{
      Map<String,String> headers = {'Content-Type':'application/x-www-form-urlencoded' ,
      'Accept':   "application/json"  ,
   //   'Authorization': 'Bearer '+token,
      };

    final response = await http.post(
    
      baseURL+'login',
        headers:headers,
 
        body:_data);
      

  
   var um = LoginModelResponse.fromJson(jsonDecode(response.body));
   return um;

    }
    catch(e)
    {
      print(e);
    }

  }

static Future<GetfacultyResponseModel> showfacultyApiResponse( String fac_id
     ) async {
  
       var _data = {
    "fac_id": fac_id
};
            
    
    try{
      Map<String,String> headers = {'Content-Type':'application/x-www-form-urlencoded' ,
      'Accept':   "application/json"  ,
      'Authorization': 'Bearer '+token,
      };

    final response = await http.post(
    
      baseURL+'get-faculty',
        headers:headers,
 
        body:_data);
      


   var um = GetfacultyResponseModel.fromJson(jsonDecode(response.body));
   print(um.message);
   return um;

    }
    catch(e)
    {
      print(e);
    }

  }

  static Future<AllFacultiesResponseModel> allfacultyApiResponse(
     ) async {
  
       var _data = {
//    "fac_id": "1"
};
     try{
      Map<String,String> headers = {'Content-Type':'application/x-www-form-urlencoded' ,
      'Accept':   "application/json"  ,
   //   'Authorization': 'Bearer '+token,
      };

    final response = await http.post(
    
      baseURL+'all-faculties',
        headers:headers,
 
        body:_data);
      

  
   var um = AllFacultiesResponseModel.fromJson(jsonDecode(response.body));
  
   return um;

    }
    catch(e)
    {
      print(e);
    }

  }
   static Future<AllcommentsResponse> allcommentApiResponse( String fac_id ,String user_id
     ) async {
  
       var _data = {
   "user_id":user_id,
   "fac_id": fac_id
};
     try{
      Map<String,String> headers = {'Content-Type':'application/x-www-form-urlencoded' ,
      'Accept':   "application/json"  ,
      'Authorization': 'Bearer '+token,
      };

    final response = await http.post(
    
      baseURL+'all-comments',
        headers:headers,
 
        body:_data);
      

  
   var um = AllcommentsResponse.fromJson(jsonDecode(response.body));
   print(um.message);
   return um;

    }
    catch(e)
    {
      print(e);
    }

  }
    static Future<AddcommentsResponse> addcommentApiResponse( 
      String fac_id ,String user_id,String desc_en,String desc_ar,double rating 
     ) async {
  
   

       var _data = {
         
   "fac_id": fac_id,
    "user_id": user_id,
    "rating": rating.toString(),
    "desc_En": desc_en,
    "desc_Ar":  desc_ar

};
     try{
      Map<String,String> headers = {'Content-Type':'application/x-www-form-urlencoded' ,
      'Accept':   "application/json"  ,
      'Authorization': 'Bearer '+token,
      };

    final response = await http.post(
    
      baseURL+'add-comment',
        headers:headers,
 
        body:_data);
      


   var um = AddcommentsResponse.fromJson(jsonDecode(response.body));
   print(um.message);
   return um;

    }
    catch(e)
    {
      print(e);
    }

  }
      static Future<EditecommentsResponse> editecommentApiResponse( int comment_id,
      String fac_id ,String user_id,String desc_en,String desc_ar,double rating 
     ) async {
  
    

       var _data = {
    "comment_id":comment_id,     
   "fac_id": fac_id,
    "user_id": user_id,
    "rating": rating,
    "desc_En": desc_en,
    "desc_Ar":  desc_ar

};
     try{
      Map<String,String> headers = {'Content-Type':'application/x-www-form-urlencoded' ,
      'Accept':   "application/json"  ,
      'Authorization': 'Bearer '+token,
      };

    final response = await http.post(
    
      baseURL+'edit-comment',
        headers:headers,
 
        body:_data);
      


   var um = EditecommentsResponse.fromJson(jsonDecode(response.body));
   print(um.message);
   return um;

    }
    catch(e)
    {
      print(e);
    }

  }
    static Future<AllprofessorsResponse> allprofessourApiResponse( String fac_id
     ) async {
  
       var _data = {
   "fac_id": fac_id
};
     try{
      Map<String,String> headers = {'Content-Type':'application/x-www-form-urlencoded' ,
      'Accept':   "application/json"  ,
      'Authorization': 'Bearer '+token,
      };

    final response = await http.post(
    
      baseURL+'all-professors',
        headers:headers,
 
        body:_data);
      


   var um = AllprofessorsResponse.fromJson(jsonDecode(response.body));
   print(um.message);
   return um;

    }
    catch(e)
    {
      print(e);
    }

  }
static Future<StudentProfileResponseModel> getstudentprofileApiResponse(String profile_id
     ) async {
  
       var _data = {
    "user_id":profile_id
};
print(profile_id);
     try{
      Map<String,String> headers = {'Content-Type':'application/x-www-form-urlencoded' ,
      'Accept':   "application/json"  ,
      'Authorization': 'Bearer '+token,
      };

    final response = await http.post(
    
      baseURL+'get-student-profile',
        headers:headers,
 
        body:_data);
      


   var um = StudentProfileResponseModel.fromJson(jsonDecode(response.body));
   print(um.message);
   return um;

    }
    catch(e)
    {
      print(e);
    }

  }
  static Future<ProfessourProfileResponseModel> getprofesoutprofileApiResponse(String profile_id
       ) async {
    
         var _data = {
      "user_id":profile_id
  };
       try{
        Map<String,String> headers = {'Content-Type':'application/x-www-form-urlencoded' ,
        'Accept':   "application/json"  ,
        'Authorization': 'Bearer '+token,
        };
  
      final response = await http.post(
      
        baseURL+'get-prof-profile',
          headers:headers,
   
          body:_data);
        
  
  
     var um = ProfessourProfileResponseModel.fromJson(jsonDecode(response.body));
     print(um.message);
     return um;
  
      }
      catch(e)
      {
        print(e);
      }
  
    }
  
    static Future<AllSectionResponseModel> allsectionApiResponse(
  
      String fac_id
       ) async {
    
         var _data = {
       "fac_id": fac_id
  };
      
      try{
        Map<String,String> headers = {'Content-Type':'application/x-www-form-urlencoded' ,
        'Accept':   "application/json"  ,
        'Authorization': 'Bearer '+token,
        };
  
      final response = await http.post(
      
        baseURL+'all-sections',
          headers:headers,
   
          body:_data);
        
  
  
     var um = AllSectionResponseModel.fromJson(jsonDecode(response.body));
     print(um.message);
  
        print(um.content[0].profile.nameAr);
  
     return um;
  
      }
      catch(e)
      {
        print(e);
      }
  
    }
  
  static Future<EditStudentProfile> editStudentProfileApiResponse( String stud_id,String fac_id,
  String name,String namear,String email,String password,String egypt,String gender,
  String addressar,String addressen,String phone,String image64
       ) async {
    
         var _data = {
      
      "stud_id":stud_id,
      "fac_id":fac_id,
      "name": name,
      "namear": namear,
      "email": email,
      "password": password,
      "egyptian":egypt,
      "gender": gender,
      "addressen": addressen,
      "addressar": addressar,
      "phone": phone,
      "image": image64
      
   };
//   //     {
//     "stud_id":10,
//     "fac_id":2,
//     "name": "mhd",
//     "namear": "محمد",
//     "email": "y@gmail.com",
//     "password": "123",
//     "egyptian": 1,
//     "gender": "M",
//     "addressen": "loremxcvbnm",
//     "addressar": "loremxcvbnm",
//     "phone": "123",
//     "image": "student_1622255314.png"
    
//};
      try{
        Map<String,String> headers = {'Content-Type':'application/x-www-form-urlencoded' ,
        'Accept':   "application/json"  ,
        'Authorization': 'Bearer '+token,
        };
  
      final response = await http.post(
      
        baseURL+'edit-student-profile',
          headers:headers,
   
          body:_data);
        
  
  
     var um = EditStudentProfile.fromJson(jsonDecode(response.body));
     print(um.message);
  
        //print(um.content[0].profile.nameAr);
  
     return um;
  
      }
      catch(e)
      {
        print(e);
      }
  
    }
     static Future<searchfacultyModel>searchfacultyApiResponse( String type,String key
       ) async {
    
         var _data = { 
    "type":type,
    "key":key
    
};
      
      try{
        Map<String,String> headers = {'Content-Type':'application/x-www-form-urlencoded' ,
        'Accept':   "application/json"  ,
        'Authorization': 'Bearer '+token,
        };
  
      final response = await http.post(
      
        baseURL+'search',
          headers:headers,
   
          body:_data);
        
  
  
     var um = searchfacultyModel.fromJson(jsonDecode(response.body));
     print(um.message);
  
        //print(um.content[0].profile.nameAr);
  
     return um;
  
      }
      catch(e)
      {
        print(e);
      }
  
    }

       static Future<AllSectionResponseModel>searchsectionApiResponse( String type,String key
       ) async {
    
         var _data = { 
    "type":type,
    "key":key
    
};
      
      try{
        Map<String,String> headers = {'Content-Type':'application/x-www-form-urlencoded' ,
        'Accept':   "application/json"  ,
        'Authorization': 'Bearer '+token,
        };
  
      final response = await http.post(
      
        baseURL+'search',
          headers:headers,
   
          body:_data);
        
  
  
     var um = AllSectionResponseModel.fromJson(jsonDecode(response.body));
     print(um.message);
  
        //print(um.content[0].profile.nameAr);
  
     return um;
  
      }
      catch(e)
      {
        print(e);
      }
  
    }
         static Future<AllSpecificationsResponseModel>searchspecApiResponse( String type,String key
       ) async {
    
         var _data = { 
    "type":type,
    "key":key
    
};
      
      try{
        Map<String,String> headers = {'Content-Type':'application/x-www-form-urlencoded' ,
        'Accept':   "application/json"  ,
        'Authorization': 'Bearer '+token,
        };
  
      final response = await http.post(
      
        baseURL+'search',
          headers:headers,
   
          body:_data);
        
  
  
     var um = AllSpecificationsResponseModel.fromJson(jsonDecode(response.body));
     print(um.message);
  
        //print(um.content[0].profile.nameAr);
  
     return um;
  
      }
      catch(e)
      {
        print(e);
      }
  
    }
   static Future<SectionResponseModel> getsectionApiResponse(
       ) async {
    
         var _data = {
       "fac_id": "1"
  };
      
      try{
        Map<String,String> headers = {'Content-Type':'application/x-www-form-urlencoded' ,
        'Accept':   "application/json"  ,
        'Authorization': 'Bearer '+token,
        };
  
      final response = await http.post(
      
        baseURL+'get-section',
          headers:headers,
   
          body:_data);
        
  
  
     var um = SectionResponseModel.fromJson(jsonDecode(response.body));
     print(um.message);
  
        print(um.content.profile.nameAr);
  
     return um;
  
      }
      catch(e)
      {
        print(e);
      }
  
    }
    static Future<AllSpecificationsResponseModel> allspecificationsResponseApi(String sec_id
       ) async {
    
         var _data = {
       "sec_id": sec_id
  };
      
      try{
        Map<String,String> headers = {'Content-Type':'application/x-www-form-urlencoded' ,
        'Accept':   "application/json"  ,
        'Authorization': 'Bearer '+token,
        };
  
      final response = await http.post(
      
        baseURL+'all-specifications',
          headers:headers,
   
          body:_data);
        
  
  
     var um = AllSpecificationsResponseModel.fromJson(jsonDecode(response.body));
     print(um.message);
  
        print(um.content[0].profile.email);
  
     return um;
  
      }
      catch(e)
      {
        print(e);
      }
  
    }
     static Future<SpecificationResponseModel> getspecificationsResponseApi(
       ) async {
    
         var _data = {
        "spec_id": "2"
  };
      
      try{
        Map<String,String> headers = {'Content-Type':'application/x-www-form-urlencoded' ,
        'Accept':   "application/json"  ,
        'Authorization': 'Bearer '+token,
        };
  
      final response = await http.post(
      
        baseURL+'get-specification',
          headers:headers,
   
          body:_data);
        
  
  
     var um = SpecificationResponseModel.fromJson(jsonDecode(response.body));
     print(um.message);
  
        print(um.content.profile.email);
  
     return um;
  
      }
      catch(e)
      {
        print(e);
      }
  
    }
    static Future<AllBlogsResponseModel> getallblogs(
       ) async {
    
         var _data = {
      // "sec_id": "1"
  };
      
      try{
        Map<String,String> headers = {'Content-Type':'application/x-www-form-urlencoded' ,
        'Accept':   "application/json"  ,
        'Authorization': 'Bearer '+token,
        };
  
      final response = await http.post(
      
        baseURL+'all-blogs',
          headers:headers,
   
          body:_data);
        
  
  
     var um = AllBlogsResponseModel.fromJson(jsonDecode(response.body));
     print(um.message);
  
        print(um.content[0].titleAr);
  
     return um;
  
      }
      catch(e)
      {
        print(e);
      }
  
    }
    static Future<BlogResponseModel> getblog(
       ) async {
    
         var _data = {
      // "sec_id": "1"
          "blog_id": "1"
  
  };
      
      try{
        Map<String,String> headers = {'Content-Type':'application/x-www-form-urlencoded' ,
        'Accept':   "application/json"  ,
        'Authorization': 'Bearer '+token,
        };
  
      final response = await http.post(
      
        baseURL+'get-blog',
          headers:headers,
   
          body:_data);
        
  
  
     var um =BlogResponseModel.fromJson(jsonDecode(response.body));
     print(um.message);
  
        print(um.content.titleAr);
  
     return um;
  
      }
      catch(e)
      {
        print(e);
      }
  
    }
        
    
  }
  
  