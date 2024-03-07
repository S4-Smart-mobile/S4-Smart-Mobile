import 'dart:convert';

class User {
  final String id;
  final ContactDetails contactDetails;
  final Preferences preferences;
  final BasicStatistics basicStatistics;

  User({
    required this.id,
    required this.contactDetails,
    required this.preferences,
    required this.basicStatistics,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      contactDetails: ContactDetails.fromJson(json['contactDetails']),
      preferences: Preferences.fromJson(json['preferences']),
      basicStatistics: BasicStatistics.fromJson(json['basicStatistics']),
    );
  }
}

class ContactDetails {
  final String name;
  final String phone;
  final String email;

  ContactDetails({
    required this.name,
    required this.phone,
    required this.email,
  });

  factory ContactDetails.fromJson(Map<String, dynamic> json) {
    return ContactDetails(
      name: json['name'],
      phone: json['phone'],
      email: json['email'],
    );
  }
}

class Preferences {
  final List<String> languages;

  Preferences({required this.languages});

  factory Preferences.fromJson(Map<String, dynamic> json) {
    return Preferences(
      languages: List<String>.from(json['languages']),
    );
  }
}

class BasicStatistics {
  final int streak;
  final int totalNewSigns;
  final List<LearningUsage> learningUsage;

  BasicStatistics({
    required this.streak,
    required this.totalNewSigns,
    required this.learningUsage,
  });

  factory BasicStatistics.fromJson(Map<String, dynamic> json) {
    return BasicStatistics(
      streak: json['streak'],
      totalNewSigns: json['totalNewSigns'],
      learningUsage: List<LearningUsage>.from(json['learningUsage'].map(
          (learningUsageJson) => LearningUsage.fromJson(learningUsageJson))),
    );
  }
}

class LearningUsage {
  final int year;
  final int week;
  final int signsLearned;

  LearningUsage({
    required this.year,
    required this.week,
    required this.signsLearned,
  });

  factory LearningUsage.fromJson(Map<String, dynamic> json) {
    return LearningUsage(
      year: json['year'],
      week: json['week'],
      signsLearned: json['signsLearned'],
    );
  }
}
