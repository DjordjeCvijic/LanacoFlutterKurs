class StudentModel {
  final int id;
  final String name;
  final String username;
  final String email;
  final AddressModel address;
  final String website;

  StudentModel({
    required this.id,
    required this.email,
    required this.name,
    required this.address,
    required this.username,
    required this.website,
  });

  static StudentModel fromJson(Map<String, dynamic> json) {
    return StudentModel(
      id: json['id'],
      email: json['email'],
      name: json['name'],
      address: AddressModel.fromJson(json['address']),
      username: json['username'],
      website: json['website'],
    );
  }
}

class AddressModel {
  final String street;
  final String city;
  final String? zipCode;

  AddressModel({
    required this.street,
    required this.city,
    required this.zipCode,
  });

  static AddressModel fromJson(var json) {
    return AddressModel(
      street: json['street'],
      city: json['city'],
      zipCode: json['zipcode'],
    );
  }
}
