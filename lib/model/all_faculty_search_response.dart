class searchfacultyModel {
  String result;
  List<Content> content;
  String message;
  int status;

  searchfacultyModel({this.result, this.content, this.message, this.status});

  searchfacultyModel.fromJson(Map<String, dynamic> json) {
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
  String webLink;
  String createdAt;
  String updatedAt;
  Faculties faculties;
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

  Content(
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
      this.webLink,
      this.createdAt,
      this.updatedAt,
      this.faculties});

  Content.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type']!=null?json['type']:"";
    nameEn = json['nameEn']!=null?json['nameEn']:"";
    nameAr = json['nameAr']!=null?json['nameAr']:"";
    addressEn = json['addressEn']!=null?json['addressEn']:"";
    addressAr = json['addressAr']!=null?json['addressAr']:"";
    shortcut = json['shortcut']!=null?json['shortcut']:"";
    email = json['email']!=null?json['email']:"";
    image = json['image']!=null?json['image']:"";
      image1=getimage1( json['image']);
    image2=getimage2( json['image']);
    image3=getimage3( json['image']);
    image4=getimage4( json['image']);
    location = json['location']!=null?json['location']:"";
    descEn = json['descEn']!=null?json['descEn']:"";
    descAr = json['descAr']!=null?json['descAr']:"";
    videoLink = json['videoLink']!=null?json['videoLink']:"";
    webLink = json['webLink']!=null?json['webLink']:"";
    createdAt = json['createdAt']!=null?json['createdAt']:"";
    updatedAt = json['updatedAt']!=null?json['updatedAt']:"";
    faculties = json['faculties'] != null
        ? new Faculties.fromJson(json['faculties'])
        : null;
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
    data['webLink'] = this.webLink;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    if (this.faculties != null) {
      data['faculties'] = this.faculties.toJson();
    }
    return data;
  }
}

class Faculties {
  int id;
  int rating;
  String createdAt;
  String updatedAt;
  int profileId;

  Faculties(
      {this.id, this.rating, this.createdAt, this.updatedAt, this.profileId});

  Faculties.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    rating = json['rating'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    profileId = json['profileId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['rating'] = this.rating;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['profileId'] = this.profileId;
    return data;
  }
}
