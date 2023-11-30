import '../helpers/dummy_data.dart';

class PersonModel {
  final String firstName;
  final String lastName;
  final String? phoneNumber;
  final String email;
  final GenderEnum gender;
  
  final int age;

  PersonModel(
    this.age, {
    required this.firstName,
    required this.lastName,
    this.phoneNumber,
    required this.email,
    required this.gender,
  });
}
