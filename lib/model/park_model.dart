import 'package:http/http.dart' as http;
import 'dart:convert';

class ParkModel {
  int id;
  String name, image, city,location,description;

  ParkModel({this.id, this.name, this.image, this.city,this.location,this.description});
  ParkModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    id = int.parse(map['id']);
    name = map['name'];
    image = map['image'];
    city = map['city'];
    location = map['location'];
    description=map['description'];
  }

  toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'city': city,
      'location': location,
      'description':description
    };
  }
}
