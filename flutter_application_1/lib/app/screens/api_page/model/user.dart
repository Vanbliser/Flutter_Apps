class User {
  final String firstName, lastName, email;
  User.fromJson(Map<String, dynamic> json)
      : firstName = json['data']['firstName'],
        lastName = json['data']['lastName'],
        email = json['data']['email'];

}
