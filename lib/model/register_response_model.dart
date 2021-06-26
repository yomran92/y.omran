class RegisterResponseModel {
  String result;
  Content content;
  String message;
  int status;

  RegisterResponseModel({this.result, this.content, this.message, this.status});

  RegisterResponseModel.fromJson(Map<String, dynamic> json) {
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
  String token;
  User user;

  Content({this.token, this.user});

  Content.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class User {
  String name;
  String namear;
  String email;
  int egyptian;
  String gender;
  String addressen;
  String addressar;
  String phone;
  String role;
  String updatedAt;
  String createdAt;
  int id;
  String image;
  
  String profilePhotoUrl;

  User(
      {this.name,
      this.namear,
      this.email,
      this.egyptian,
      this.gender,
      this.addressen,
      this.addressar,
      this.phone,
      this.role,
      this.updatedAt,
      this.createdAt,
      this.id,
      this.profilePhotoUrl,
      this.image});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name']!=null?json['name']:"";
    namear = json['namear']!=null?json['namear']:"";
    email = json['email']!=null?json['email']:"";
    json['egyptian']=json['egyptian'].toString();
    egyptian = int.parse(json['egyptian']);
    gender = json['gender'];
    addressen = json['addressen']!=null?json['addressen']:"";
    addressar = json['addressar']!=null?json['addressar']:"";
    phone = json['phone']!=null?json['phone']:"";
    role = json['role']!=null?json['role']:"";
    updatedAt = json['updatedAt']!=null?json['updatedAt']:"";
    createdAt = json['createdAt']!=null?json['createdAt']:"";
    id = json['id']!=null?json['id']:"";
    profilePhotoUrl = json['profilePhotoUrl']!=null?json['profilePhotoUrl']:"";
    image = json['image']!=null?json['image']:"";
    
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['namear'] = this.namear;
    data['email'] = this.email;
    data['egyptian'] = this.egyptian;
    data['gender'] = this.gender;
    data['addressen'] = this.addressen;
    data['addressar'] = this.addressar;
    data['phone'] = this.phone;
    data['role'] = this.role;
    data['updatedAt'] = this.updatedAt;
    data['createdAt'] = this.createdAt;
    data['id'] = this.id;
    data['profilePhotoUrl'] = this.profilePhotoUrl;
    return data;
  }
}
