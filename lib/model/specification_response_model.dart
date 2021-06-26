class SpecificationResponseModel {
  String result;
  Content content;
  String message;
  int status;

  SpecificationResponseModel(
      {this.result, this.content, this.message, this.status});

  SpecificationResponseModel.fromJson(Map<String, dynamic> json) {
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
  String egyDocType;
  String foreignDocType;
  double egyStuRate;
  double foreignStuRate;
  String egyFees;
  String foreignFees;
  String egyPaymentType;
  String foreignPaymentType;
  String createdAt;
  String updatedAt;
  int secId;
  int profileId;
  Profile profile;

  Content(
      {this.id,
      this.egyDocType,
      this.foreignDocType,
      this.egyStuRate,
      this.foreignStuRate,
      this.egyFees,
      this.foreignFees,
      this.egyPaymentType,
      this.foreignPaymentType,
      this.createdAt,
      this.updatedAt,
      this.secId,
      this.profileId,
      this.profile});

  Content.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    egyDocType = json['egyDocType'];
    foreignDocType = json['foreignDocType'];
    egyStuRate = double.parse(json['egyStuRate'].toString());
    foreignStuRate =double.parse( json['foreignStuRate'].toString());
    egyFees = json['egyFees'];
    foreignFees = json['foreignFees'];
    egyPaymentType = json['egyPaymentType'];
    foreignPaymentType = json['foreignPaymentType'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    secId = json['secId'];
    profileId = json['profileId'];
    profile =
        json['profile'] != null ? new Profile.fromJson(json['profile']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['egyDocType'] = this.egyDocType;
    data['foreignDocType'] = this.foreignDocType;
    data['egyStuRate'] = this.egyStuRate;
    data['foreignStuRate'] = this.foreignStuRate;
    data['egyFees'] = this.egyFees;
    data['foreignFees'] = this.foreignFees;
    data['egyPaymentType'] = this.egyPaymentType;
    data['foreignPaymentType'] = this.foreignPaymentType;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['secId'] = this.secId;
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
  Null createdAt;
  Null updatedAt;

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
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
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
