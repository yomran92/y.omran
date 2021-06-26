class ProfessourProfileResponseModel {
  String result;
  Content content;
  String message;
  int status;

  ProfessourProfileResponseModel(
      {this.result, this.content, this.message, this.status});

  ProfessourProfileResponseModel.fromJson(Map<String, dynamic> json) {
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
  Profile profile;
  List<Facs> facs;

  Content({this.profile, this.facs});

  Content.fromJson(Map<String, dynamic> json) {
    profile =
        json['profile'] != null ? new Profile.fromJson(json['profile']) : null;
    if (json['facs'] != null) {
      facs = new List<Facs>();
      json['facs'].forEach((v) {
        facs.add(new Facs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.profile != null) {
      data['profile'] = this.profile.toJson();
    }
    if (this.facs != null) {
      data['facs'] = this.facs.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Profile {
  int id;
  String subEn;
  String subAr;
  String descEn;
  String descAr;
  String createdAt;
  String updatedAt;
  int userId;
  User user;
  List<Faculties> faculties;

  Profile(
      {this.id,
      this.subEn,
      this.subAr,
      this.descEn,
      this.descAr,
      this.createdAt,
      this.updatedAt,
      this.userId,
      this.user,
      this.faculties});

  Profile.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subEn = json['subEn'];
    subAr = json['subAr'];
    descEn = json['descEn'];
    descAr = json['descAr'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    userId = json['userId'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    if (json['faculties'] != null) {
      faculties = new List<Faculties>();
      json['faculties'].forEach((v) {
        faculties.add(new Faculties.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['subEn'] = this.subEn;
    data['subAr'] = this.subAr;
    data['descEn'] = this.descEn;
    data['descAr'] = this.descAr;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['userId'] = this.userId;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    if (this.faculties != null) {
      data['faculties'] = this.faculties.map((v) => v.toJson()).toList();
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
    emailVerifiedAt = json['emailVerifiedAt'];
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

class Faculties {
  int id;
  int rating;
  String createdAt;
  String updatedAt;
  int profileId;
  Pivot pivot;
  Profile profile;

  Faculties(
      {this.id,
      this.rating,
      this.createdAt,
      this.updatedAt,
      this.profileId,
      this.pivot,
      this.profile});

  Faculties.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    rating = json['rating'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    profileId = json['profileId'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
    profile =
        json['profile'] != null ? new Profile.fromJson(json['profile']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['rating'] = this.rating;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['profileId'] = this.profileId;
    if (this.pivot != null) {
      data['pivot'] = this.pivot.toJson();
    }
    if (this.profile != null) {
      data['profile'] = this.profile.toJson();
    }
    return data;
  }
}

class Pivot {
  int professorId;
  int facultyId;
  Null createdAt;
  Null updatedAt;

  Pivot({this.professorId, this.facultyId, this.createdAt, this.updatedAt});

  Pivot.fromJson(Map<String, dynamic> json) {
    professorId = json['professorId'];
    facultyId = json['facultyId'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['professorId'] = this.professorId;
    data['facultyId'] = this.facultyId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

class Facs {
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

  Facs(
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
      this.updatedAt});

  Facs.fromJson(Map<String, dynamic> json) {
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
    webLink = json['webLink'];
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
    data['webLink'] = this.webLink;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
