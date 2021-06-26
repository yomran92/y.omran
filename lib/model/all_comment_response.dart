   DateTime datatime=DateTime.now();
class AllcommentsResponse {
  String result;
  List<Content> content;
  String message;
  int status;

  AllcommentsResponse({this.result, this.content, this.message, this.status});

  AllcommentsResponse.fromJson(Map<String, dynamic> json) {
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
  String status;
  double rating;
  String descEn;
  String descAr;
  String createdAt;
  String updatedAt;
  int facId;
  int userId;
  User user;
  double duration;

  Content(
      {this.id,
      this.status,
      this.rating,
      this.descEn,
      this.descAr,
      this.createdAt,
      this.updatedAt,
      this.facId,
      this.userId,
      this.user,
      this.duration});

  Content.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    rating = double.parse(json['rating'].toString());
    descEn = json['descEn'];
    descAr = json['descAr'];
    createdAt = json['createdAt']!=null?json['createdAt']:"";
    updatedAt = json['updatedAt']!=null?json['updatedAt']:"";
    facId = json['facId'];
    userId = json['userId'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    duration = json['updatedAt']!=null?double.parse(datatime.difference((DateTime.parse(json['updatedAt'].toString()))).inDays.toString()):0.0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    data['rating'] = this.rating;
    data['descEn'] = this.descEn;
    data['descAr'] = this.descAr;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['facId'] = this.facId;
    data['userId'] = this.userId;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class User {
  int id;
  String name;
  String namear;
  String email;
  String emailVerifiedAt;
  String role;
  int egyptian;
  String gender;
  String addressen;
  String addressar;
  String phone;
  String image;
  String currentTeamId;
  String profilePhotoPath;
  String createdAt;
  String updatedAt;
  String profilePhotoUrl;

  User(
      {this.id,
      this.name,
      this.namear,
      this.email,
      this.emailVerifiedAt,
      this.role,
      this.egyptian,
      this.gender,
      this.addressen,
      this.addressar,
      this.phone,
      this.image,
      this.currentTeamId,
      this.profilePhotoPath,
      this.createdAt,
      this.updatedAt,
      this.profilePhotoUrl});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    namear = json['namear'];
    email = json['email'];
    emailVerifiedAt = json['emailVerifiedAt']!=null?json['emailVerifiedAt']:"";
    role = json['role'];
    egyptian = json['egyptian'];
    gender = json['gender'];
    addressen = json['addressen'];
    addressar = json['addressar'];
    phone = json['phone'];
    image = json['image'];
    currentTeamId = json['currentTeamId'];
    profilePhotoPath = json['profilePhotoPath'];
    createdAt = json['createdAt']!=null?json['createdAt']:"";
    updatedAt = json['updatedAt']!=null?json['updatedAt']:"";
    profilePhotoUrl = json['profilePhotoUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['namear'] = this.namear;
    data['email'] = this.email;
    data['emailVerifiedAt'] = this.emailVerifiedAt;
    data['role'] = this.role;
    data['egyptian'] = this.egyptian;
    data['gender'] = this.gender;
    data['addressen'] = this.addressen;
    data['addressar'] = this.addressar;
    data['phone'] = this.phone;
    data['image'] = this.image;
    data['currentTeamId'] = this.currentTeamId;
    data['profilePhotoPath'] = this.profilePhotoPath;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['profilePhotoUrl'] = this.profilePhotoUrl;
    return data;
  }
}
