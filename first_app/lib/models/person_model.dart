import '../helpers/dummy_data.dart';

class PersonModel {
  final String firstName;
  final String lastName;
  final String? phoneNumber;
  final String email;
  final GenderEnum gender;
  final String? photo;

  final int age;

  PersonModel(
    this.age, {
    required this.firstName,
    required this.lastName,
    this.phoneNumber,
    this.photo,
    required this.email,
    required this.gender,
  });

  PersonModel.male({
    required this.age,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    this.photo,
    this.gender = GenderEnum.male,
  });

  PersonModel.female({
    required this.age,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    this.photo,
    this.gender = GenderEnum.femail,
  });
}
