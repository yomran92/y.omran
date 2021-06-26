class EditecommentsResponse {
  String result;
  Content content;
  String message;
  int status;

  EditecommentsResponse({this.result, this.content, this.message, this.status});

  EditecommentsResponse.fromJson(Map<String, dynamic> json) {
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
  String status;
  int rating;
  String descEn;
  String descAr;
  String createdAt;
  String updatedAt;
  int facId;
  int userId;

  Content(
      {this.id,
      this.status,
      this.rating,
      this.descEn,
      this.descAr,
      this.createdAt,
      this.updatedAt,
      this.facId,
      this.userId});

  Content.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    rating = json['rating'];
    descEn = json['descEn'];
    descAr = json['descAr'];
    createdAt = json['createdAt']!=null?json['createdAt']:"";
    updatedAt = json['updatedAt']!=null?json['updatedAt']:"";;
    facId = json['facId'];
    userId = json['userId'];
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
    return data;
  }
}
