import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final uuid = const Uuid().v4();

final formateDate = DateFormat.yMd();

enum Category { food, travel, work, lessure }

final categoryIcons = {
  Category.food: Icons.lunch_dining_rounded,
  Category.travel: Icons.travel_explore_rounded,
  Category.work: Icons.work_history_rounded,
  Category.lessure: Icons.leak_add_rounded
};

class ExpenceModel {
  ExpenceModel(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid;

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get getformatedDate {
    return formateDate.format(date);
  }
}
