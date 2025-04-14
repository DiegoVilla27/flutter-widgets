/// A class representing a user with a name, age, and email.
/// 
/// The [User] class requires all fields to be provided during
/// instantiation, ensuring that each user has a name, age, and email.
class User {
  final String name;
  final int age;
  final String email;

  User({required this.name, required this.age, required this.email});
}
