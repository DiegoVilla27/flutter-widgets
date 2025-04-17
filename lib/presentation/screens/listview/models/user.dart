/// A class representing a User with personal details.
///
/// The User class contains fields for storing a user's name, lastname, age,
/// email, phone number, and country. It provides a constructor for initializing
/// these fields and a factory method `fromJson` for creating a User instance
/// from a JSON object.
class User {
  final String name;
  final String lastname;
  final int age;
  final String email;
  final String phone;
  final String country;

  User({
    required this.name,
    required this.lastname,
    required this.age,
    required this.email,
    required this.phone,
    required this.country,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json["firstName"],
      lastname: json["lastName"],
      age: json["age"],
      email: json["email"],
      phone: json["phone"],
      country: json["address"]["country"],
    );
  }
}
