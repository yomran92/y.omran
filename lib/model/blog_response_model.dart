class BlogResponseModel {
  String result;
  Content content;
  String message;
  int status;

  BlogResponseModel({this.result, this.content, this.message, this.status});

  BlogResponseModel.fromJson(Map<String, dynamic> json) {
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
  String titleEn;
  String titleAr;
  String descEn;
  String descAr;
  String image;
  Null createdAt;
  Null updatedAt;

  Content(
      {this.id,
      this.titleEn,
      this.titleAr,
      this.descEn,
      this.descAr,
      this.image,
      this.createdAt,
      this.updatedAt});

  Content.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    titleEn = json['titleEn'];
    titleAr = json['titleAr'];
    descEn = json['descEn'];
    descAr = json['descAr'];
    image = json['image'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['titleEn'] = this.titleEn;
    data['titleAr'] = this.titleAr;
    data['descEn'] = this.descEn;
    data['descAr'] = this.descAr;
    data['image'] = this.image;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
