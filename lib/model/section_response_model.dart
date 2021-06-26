class SectionResponseModel {
  String result;
  Content content;
  String message;
  int status;

  SectionResponseModel({this.result, this.content, this.message, this.status});

  SectionResponseModel.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    content =
        json['content'] != null ? new Content.fromJson(json['content']) : null;
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    if (this.content != null) {
      data['content'] = this.content.toJson();
    }
    data['message'] = this.message;
    data['status'] = this.status;
    return data;
  }
}

class Content {
  int id;
  String createdAt;
  String updatedAt;
  int facId;
  int profileId;
  Profile profile;

  Content(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.facId,
      this.profileId,
      this.profile});

  Content.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt']!=null?json['createdAt']:"";
    updatedAt = json['updatedAt']!=null?json['updatedAt']:"";
    facId = json['facId'];
    profileId = json['profileId'];
    profile =
        json['profile'] != null ? new Profile.fromJson(json['profile']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['facId'] = this.facId;
    data['profileId'] = this.profileId;
    if (this.profile != null) {
      data['profile'] = this.profile.toJson();
    }
    return data;
  }
}

class Profile {
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

  Profile(
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
      this.updatedAt});

  Profile.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    nameEn = json['nameEn'];
    nameAr = json['nameAr'];
    addressEn = json['addressEn'];
    addressAr = json['addressAr'];
    shortcut = json['shortcut'];
    email = json['email'];
    image = json['image'];
    location = json['location'];
    descEn = json['descEn'];
    descAr = json['descAr'];
    videoLink = json['videoLink'];
    createdAt = json['createdAt']!=null?json['createdAt']:"";
    updatedAt = json['updatedAt']=!null?json['updatedAt']:"";
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
    return data;
  }
}
