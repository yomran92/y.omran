class AllprofessorsResponse {
  String result;
  List<Content> content;
  String message;
  int status;

  AllprofessorsResponse({this.result, this.content, this.message, this.status});

  AllprofessorsResponse.fromJson(Map<String, dynamic> json) {
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
  String subEn;
  String subAr;
  String descEn;
  String descAr;
  String createdAt;
  String updatedAt;
  int userId;
  Profile profile;
  List<Faculties> faculties;
  Pivot pivot;
  Profile user;

  Content(
      {this.id,
      this.subEn,
      this.subAr,
      this.descEn,
      this.descAr,
      this.createdAt,
      this.updatedAt,
      this.userId,
      this.profile,
      this.faculties,
      this.pivot,
      this.user});

  Content.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subEn = json['subEn'];
    subAr = json['subAr'];
    descEn = json['descEn'];
    descAr = json['descAr'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    userId = json['userId'];
    profile =
        json['profile'] != null ? new Profile.fromJson(json['profile']) : null;
    if (json['faculties'] != null) {
      faculties = new List<Faculties>();
      json['faculties'].forEach((v) {
        faculties.add(new Faculties.fromJson(v));
      });
    }
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
    user = json['user'] != null ? new Profile.fromJson(json['user']) : null;
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
    if (this.profile != null) {
      data['profile'] = this.profile.toJson();
    }
    if (this.faculties != null) {
      data['faculties'] = this.faculties.map((v) => v.toJson()).toList();
    }
    if (this.pivot != null) {
      data['pivot'] = this.pivot.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class Profile {
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

  Profile(
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

  Profile.fromJson(Map<String, dynamic> json) {
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
    createdAt = json['createdAt']!=null?json['emailVerifiedAt']:"";
    updatedAt = json['updatedAt']!=null?json['updatedAt']:"";
    profilePhotoUrl = json['profilePhotoUrl']!=null?json['profilePhotoUrl']:"";
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
  double rating;
  String createdAt;
  String updatedAt;
  int profileId;
  Pivot pivot;

  Faculties(
      {this.id,
      this.rating,
      this.createdAt,
      this.updatedAt,
      this.profileId,
      this.pivot});

  Faculties.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    rating = double.parse(json['rating'].toString());
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    profileId = json['profileId'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
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
    return data;
  }
}

class Pivot {
  int professorId;
  int facultyId;
  String createdAt;
  String updatedAt;

  Pivot({this.professorId, this.facultyId, this.createdAt, this.updatedAt});

  Pivot.fromJson(Map<String, dynamic> json) {
    professorId = json['professorId'];
    facultyId = json['facultyId'];
    createdAt = json['createdAt']!=null?json['createdAt']:"";
    updatedAt = json['updatedAt']!=null?json['updatedAt']:"";
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
