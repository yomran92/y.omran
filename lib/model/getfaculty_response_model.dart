import 'all_specification_response_model.dart';

class GetfacultyResponseModel {
  String result;
  Content content;
  String message;
  int status;

  GetfacultyResponseModel(
      {this.result, this.content, this.message, this.status});

  GetfacultyResponseModel.fromJson(Map<String, dynamic> json) {
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
  double rating;
  String createdAt;
  String updatedAt;
  int profileId;
  Profile profile;

  Content(
      {this.id,
      this.rating,
      this.createdAt,
      this.updatedAt,
      this.profileId,
      this.profile});

  Content.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    rating = double.parse(json['rating'].toString());
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    profileId = json['profileId'];
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
    if (this.profile != null) {
      data['profile'] = this.profile.toJson();
    }
    return data;
  }
}
 