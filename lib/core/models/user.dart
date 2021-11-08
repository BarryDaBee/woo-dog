class User {
  final String? id;
  final String? firstname;
  final String? lastname;
  final String? email;
  final String? token;

  User({this.id, this.firstname, this.lastname, this.email, this.token});

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['user']['id'],
        email: json["user"]["email"],
        firstname: json["user"]["firstname"],
        lastname: json["user"]["lastname"],
        token: json["token"],
      );
}
