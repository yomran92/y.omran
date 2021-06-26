import 'package:http/http.dart' as http;
import 'dart:convert';

class NEWSModel {
  int id;
  String titel, content, image1,image2,category,cityid;

  NEWSModel({this.id, this.titel,this.content, this.image1, this.image2,this.category,this.cityid});
  NEWSModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    id = int.parse(map['id']);
    titel = map['titel'];
    content = map['content'];
    image1 = map['image1'];
    image2 = map['image2'];
    category=map['category'];
    cityid=map['cityid'];
  }

  toJson() {
    return {
      'id': id,
      'titel': titel,
      'content': content,
      'image1': image1,
      'image2': image2,
      'category':category,
      'cityid':cityid,
    };
  }
}
