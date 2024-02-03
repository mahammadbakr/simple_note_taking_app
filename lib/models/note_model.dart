import 'package:intl/intl.dart';

class NoteModel {
  final int id;
  final String title;
  final String description;
  final String createdAt;
  final String updatedAt;
  NoteModel({
    required this.id,
    required this.title,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<dynamic, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory NoteModel.fromJson(Map<dynamic, dynamic> json) {
    return NoteModel(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      description: json['description'].toString(),
      createdAt: DateFormat.yMd().format(DateTime.parse(json['created_at'])),
      updatedAt: DateFormat.yMd().format(DateTime.parse(json['updated_at'])),
    );
  }
}
