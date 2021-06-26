import 'package:http/http.dart' as http;
import 'dart:convert';

class MuseumModel {
  int id;
  String name, number, city,location,description,image;

  MuseumModel({this.id, this.name, this.number, this.city,this.location,this.description,this.image});
  MuseumModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    id = int.parse(map['id']);
    name = map['name'];
    number = map['number'];
    city = map['city'];
    location = map['location'];
    description=map['description'];
    image=map['image'];
  }

  toJson() {
    return {
      'id': id,
      'name': name,
      'number': number,
      'city': city,
      'location': location,
      'description':description,
      'image':image
    };
  }
}
