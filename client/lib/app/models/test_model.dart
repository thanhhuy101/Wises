// models/course_model.dart

class Test {
  final String image;
  final String logo;
  final String name;
  final String description;

  Test({
    required this.image,
    required this.logo,
    required this.name,
    required this.description,
  });

  static fromJson(Map<String, dynamic> index) {}
}
