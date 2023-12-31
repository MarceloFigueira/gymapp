class ExerciseModel {
  String id;
  String name;
  String training;
  String howToMake;

  String? urlImage;

  ExerciseModel({
    required this.id,
    required this.name,
    required this.training,
    required this.howToMake,
    this.urlImage,
  });
  ExerciseModel.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        training = map["training"],
        howToMake = map["howToMake"],
        urlImage = map["urlImage"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "training": training,
      "howToMake": howToMake,
      "urlImage": urlImage,
    };
  }
}
