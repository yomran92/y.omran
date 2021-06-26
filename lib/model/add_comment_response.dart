class AddcommentsResponse {
  String result;
  Content content;
  String message;
  int status;

  AddcommentsResponse({this.result, this.content, this.message, this.status});

  AddcommentsResponse.fromJson(Map<String, dynamic> json) {
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
  String facId;
  String userId;
  double rating;
  String status;
  String descEn;
  String descAr;
  String updatedAt;
  String createdAt;
  int id;
  String userImage;

  Content(
      {this.facId,
      this.userId,
      this.rating,
      this.status,
      this.descEn,
      this.descAr,
      this.updatedAt,
      this.createdAt,
      this.id,
      this.userImage});

  Content.fromJson(Map<String, dynamic> json) {
    facId = json['facId'];
    userId = json['userId'];
    rating = double.parse(json['rating']);
    status = json['status'];
    descEn = json['descEn'];
    descAr = json['descAr'];
    updatedAt = json['updatedAt']!=null?json['updatedAt']:"";
    createdAt = json['createdAt']!=null?json['createdAt']:"";
    id = json['id'];
    userImage = json['userImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['facId'] = this.facId;
    data['userId'] = this.userId;
    data['rating'] = this.rating;
    data['status'] = this.status;
    data['descEn'] = this.descEn;
    data['descAr'] = this.descAr;
    data['updatedAt'] = this.updatedAt;
    data['createdAt'] = this.createdAt;
    data['id'] = this.id;
    data['userImage'] = this.userImage;
    return data;
  }
}
