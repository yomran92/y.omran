 
import 'all_specification_response_model.dart';

class AllFacultiesResponseModel {
  String result;
  List<Content> content;
  String message;
  int status;

  AllFacultiesResponseModel(
      {this.result, this.content, this.message, this.status});

  AllFacultiesResponseModel.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    if (json['content'] != null) {
      content = new List<Content>();
      json['content'].forEach((v) {
        content.add(new Content.fromJson(v));
      });
    }
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    if (this.content != null) {
      data['content'] = this.content.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    data['status'] = this.status;
    return data;
  }
}

class Content {
  int id;
  double rating;
  String createdAt;
  String updatedAt;
  int profileId;
  Profile1 profile;

  Content(
      {this.id,
      this.rating,
      this.createdAt,
      this.updatedAt,
      this.profileId,
      this.profile});

  Content.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    rating =double.parse(json['rating'].toString());
    createdAt = json['createdAt']!=null?json['createdAt']:"";
    updatedAt = json['updatedAt']!=null?json['updatedAt']:"";
    profileId = json['profileId'];
    profile =
        json['profile'] != null ? new Profile1.fromJson(json['profile']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['rating'] = this.rating;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['profileId'] = this.profileId;
    if (this.profile != null) {
      data['profile'] = this.profile.toJson();
    }
    return data;
  }
}
class Profile1 {
  int id;
  String type;
  String nameEn;
  String nameAr;
  String addressEn;
  String addressAr;
  String shortcut;
  String email;
  String image;
  String location;
  String descEn;
  String descAr;
  String videoLink;
  String createdAt;
  String updatedAt;
  String web_link;
  String image1;
  String image2;
  String image3;
  String image4;

  
String getimage1(String image){
  String s1=image.substring(1,image.length-1);
  var imagelist =s1.split(',');
String s=imagelist[0].substring(1,imagelist[0].length-1);
return s;

}
String getimage2(String image){
   String s1=image.substring(1,image.length-1);
  var imagelist =s1.split(',');
String s=imagelist[1].substring(1,imagelist[1].length-1);
return s;

}
String getimage3(String image){
String s1=image.substring(1,image.length-1);
  var imagelist =s1.split(',');
String s=imagelist[2].substring(1,imagelist[2].length-1);
return s;

}
String getimage4(String image){
String s1=image.substring(1,image.length-1);
  var imagelist =s1.split(',');
String s=imagelist[3].substring(1,imagelist[3].length-1);
return s;
}
  Profile1(
      {this.id,
      this.type,
      this.nameEn,
      this.nameAr,
      this.addressEn,
      this.addressAr,
      this.shortcut,
      this.email,
      this.image,
      this.location,
      this.descEn,
      this.descAr,
      this.videoLink,
      this.createdAt,
      this.updatedAt,this.web_link,this.image1,this.image2,this.image3,this.image4
      });

  Profile1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    nameEn = json['nameEn'];
    nameAr = json['nameAr'];
    addressEn = json['addressEn'];
    addressAr = json['addressAr'];
    shortcut = json['shortcut'];
    email = json['email'];
    image = json['image'];
    
    image1=getimage1( json['image']);
    image2=getimage2( json['image']);
    image3=getimage3( json['image']);
    image4=getimage4( json['image']);
    location = json['location'];
    descEn = json['descEn'];
    descAr = json['descAr'];
    videoLink = json['videoLink'];
    createdAt = json['createdAt']!=null?json['createdAt']:"";
    updatedAt = json['updatedAt']!=null?json['updatedAt']:"";
    web_link= json['web_link']!=null?json['web_link']:"";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['nameEn'] = this.nameEn;
    data['nameAr'] = this.nameAr;
    data['addressEn'] = this.addressEn;
    data['addressAr'] = this.addressAr;
    data['shortcut'] = this.shortcut;
    data['email'] = this.email;
    data['image'] = this.image;
    data['location'] = this.location;
    data['descEn'] = this.descEn;
    data['descAr'] = this.descAr;
    data['videoLink'] = this.videoLink;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['web_link']=this.web_link;
    return data;
  }
}

 