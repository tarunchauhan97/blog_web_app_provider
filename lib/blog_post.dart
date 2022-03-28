import 'package:intl/intl.dart';

class BlogPost {
  const BlogPost({required this.title, required this.publishedDate, required this.body});

  final String title;

  final DateTime publishedDate;

  final String body;

  String get date => DateFormat('d MMM y').format(publishedDate);
}
