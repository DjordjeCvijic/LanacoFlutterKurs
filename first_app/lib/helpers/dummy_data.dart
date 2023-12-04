import 'package:first_app/models/person_model.dart';

enum GenderEnum { male, femail }

class DummyData {
  static List<PersonModel> listOfPersons = [
    PersonModel(
      25,
      email: "emiil@gmail.com",
      firstName: "Djordje",
      gender: GenderEnum.male,
      lastName: "Cvijc",
      photo: 'https://picsum.photos/250?image=9',
    ),
    PersonModel(
      25,
      email: "emiil@gmail.com",
      firstName: "Osoba 1",
      gender: GenderEnum.femail,
      lastName: "Cvijc",
      phoneNumber: "0650065045",
    ),
    PersonModel(
      25,
      email: "emiil@gmail.com",
      firstName: "Osoba 2",
      gender: GenderEnum.male,
      lastName: "Cvijc",
      photo: 'https://picsum.photos/250?image=15',
    ),
    PersonModel(
      27,
      email: "emiil@gmail.com",
      firstName: "Nikola",
      gender: GenderEnum.male,
      lastName: "Bjekovic",
    ),
    PersonModel(
      22,
      email: "emiil@gmail.com",
      firstName: "Marko",
      gender: GenderEnum.femail,
      lastName: "Markovic",
      phoneNumber: "0650065045",
    ),
    PersonModel(
      18,
      email: "emiil@gmail.com",
      firstName: "Janko",
      gender: GenderEnum.male,
      lastName: "Jankovic",
    ),
    PersonModel(
      22,
      email: "emiil@gmail.com",
      firstName: "Marko",
      gender: GenderEnum.femail,
      lastName: "Markovic",
      phoneNumber: "0650065045",
    ),
    PersonModel(
      18,
      email: "emiil@gmail.com",
      firstName: "Janko",
      gender: GenderEnum.male,
      lastName: "Jankovic",
    ),
    PersonModel(
      18,
      email: "emiil@gmail.com",
      firstName: "Janko",
      gender: GenderEnum.male,
      lastName: "Jankovic",
    ),
    PersonModel(
      18,
      email: "emiil@gmail.com",
      firstName: "Janko",
      gender: GenderEnum.male,
      lastName: "Jankovic",
    ),
    PersonModel(
      18,
      email: "emiil@gmail.com",
      firstName: "Janko",
      gender: GenderEnum.male,
      lastName: "Jankovic",
    ),
  ];
}
