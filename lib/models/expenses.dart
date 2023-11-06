import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

var formatter = DateFormat.yMd();

enum Category { food, travel, leisure, work }

final categoryIcons = {
  Category.food: Icons.dining_rounded,
  Category.travel: Icons.card_travel_rounded,
  Category.leisure: Icons.movie_filter_rounded,
  Category.work: Icons.work_history_rounded,
};

class Expenses {
  Expenses(
      {required this.title,
      required this.category,
      required this.date,
      required this.amount})
      : id = uuid.v4();

  final String title;
  final String id;
  final DateTime date;
  final Category category;
  final double amount;

  String get formattedDate {
    return formatter.format(date);
  }
}
