class StudentProfileResponseModel {
  String result;
  Content content;
  String message;
  int status;

  StudentProfileResponseModel(
      {this.result, this.content, this.message, this.status});

  StudentProfileResponseModel.fromJson(Map<String, dynamic> json) {
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
  int userId;
  User user;
  Faculty faculty;

  Content(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.facId,
      this.userId,
      this.user,
      this.faculty});

  Content.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt']!=null?json['createdAt']:"";
    updatedAt = json['updatedAt']!=null?json['updatedAt']:"";
    facId = json['facId'];
    userId = json['userId'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    faculty =
        json['faculty'] != null ? new Faculty.fromJson(json['faculty']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['facId'] = this.facId;
    data['userId'] = this.userId;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    if (this.faculty != null) {
      data['faculty'] = this.faculty.toJson();
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

class Faculty {
  int id;
  int rating;
  String createdAt;
  String updatedAt;
  int profileId;

  Faculty(
      {this.id, this.rating, this.createdAt, this.updatedAt, this.profileId});

  Faculty.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    rating = json['rating'];
    createdAt = json['createdAt']!=null?json['createdAt']:"";
    updatedAt = json['updatedAt']!=null?json['updatedAt']:"";
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
