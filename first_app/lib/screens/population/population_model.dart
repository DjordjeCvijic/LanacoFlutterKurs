class PopulationModel {
  final String yearOfData;
  final int populationNumber;

  PopulationModel({
    required this.yearOfData,
    required this.populationNumber,
  });

  static PopulationModel fromJson(jsonModel) {
    return PopulationModel(
      yearOfData: jsonModel["Year"],
      populationNumber: jsonModel["Population"],
    );
  }
}
