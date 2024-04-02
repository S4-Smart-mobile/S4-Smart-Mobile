import "package:flutter/material.dart";

class User {
  final String id = new UniqueKey().toString();
  final String fullName;
  final String email;
  final String profilePictureUrl;

  User({
    required this.fullName,
    required this.email,
    required this.profilePictureUrl,
  });
}
