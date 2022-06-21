List<CitacitaModel> citacitaModelFromRawJson(List<Map<String, dynamic>> json) {
  return json.map((e) => CitacitaModel.fromJson(e)).toList();
}

class CitacitaModel {
  String id;
  String title;
  String imageURL;
  String description;
  CitacitaModel({
    required this.id,
    required this.title,
    required this.imageURL,
    required this.description,
  });
  factory CitacitaModel.fromJson(Map<String, dynamic> json) {
    return CitacitaModel(
      id: json['id'],
      title: json['title'],
      imageURL: json['imageURL'],
      description: json['description'],
    );
  }
}
