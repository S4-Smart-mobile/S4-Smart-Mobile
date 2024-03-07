import "dart:convert";

class Courses {
  final String id;
  final String name;
  final String description;
  final Category category;
  final double progress;

  Courses({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.progress,
  });

  factory Courses.fromJson(Map<String, dynamic> json) {
    return Courses(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      category: Category.fromJson(json['category']),
      progress: json['progress'],
    );
  }
}

class Category {
  final String id;
  final String name;

  Category({
    required this.id,
    required this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
    );
  }
}
