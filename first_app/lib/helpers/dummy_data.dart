import 'package:first_app/models/person_model.dart';


enum GenderEnum{male,femail}
class DummyData {
  
  static List<PersonModel> listOfPersons = [
    PersonModel(
      25,
      email: "emiil@gmail.com",
      firstName: "Djordje",
      gender: GenderEnum.male,
      lastName: "Cvijc",
    ),
    PersonModel(
      25,
      email: "emiil@gmail.com",
      firstName: "Osoba 1",
      gender: GenderEnum.femail,
      lastName: "Cvijc",phoneNumber: "0650065045"
    ),
    PersonModel(
      25,
      email: "emiil@gmail.com",
      firstName: "Osoba 2",
      gender: GenderEnum.male,
      lastName: "Cvijc",

    ),
  ];
}
