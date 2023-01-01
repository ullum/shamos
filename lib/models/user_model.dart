class UserModel {
  int id;
  String name;
  String email;
  String username;
  String profilePhotoUrl;
  String token;

  // membuat constructor
  // nameClass({this.variable, ...});
  UserModel({
    this.id,
    this.name,
    this.email,
    this.username,
    this.profilePhotoUrl,
    this.token,
  });

  // membuat constructor apabila dari Json
  // parameter Json -> Map
  // nameClass.fromJson(Map<String, dynamic> json){variable = json['atribute dari json'];}
  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
    profilePhotoUrl = json['profile_photo_url'];
    token = json['access_token']; // antar token / access_token
  }

  // membuat function untuk merubah model ke dalam bentuk json
  // Map<String, dynamic> toJson(){
  // return { -> mereturn sebuah objec atau Map
  //  'atribute json': variable,
  // };
  // }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'profile_photo_url': profilePhotoUrl,
      'access_token': token, // antar token / access_token
    };
  }
}
