import 'package:flutter/cupertino.dart';

class OnboardingModel {
  bool? isbacked =false;
  final Widget title;
  final Widget description;
  final String image;
  final Widget footer;
  final dynamic background;

  OnboardingModel({
    this.isbacked,
    required this.title,
    required this.background,
    required this.description,
    required this.image,
    required this.footer,
  });
}