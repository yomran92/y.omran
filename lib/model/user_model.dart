class UserModel {
  String id, username, email, password, type, image, gender, age;

  UserModel(
      {this.id,
      this.email,
      this.password,
      this.username,
      this.age,
      this.gender,
      this.image});
  UserModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    id = map['id'].toString();
    username = map['username'];
    email = map['email'];
    password = map['password'];
    age = map['age'].toString();
    gender = map['gender'];
    image = map['image'];
  }

  toJson() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'password': password,
      'age': age,
      'gender': gender,
      'image': image,
    };
  }
}
