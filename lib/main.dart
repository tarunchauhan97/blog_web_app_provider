import 'package:blog_web_app/blog_post.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

final theme = ThemeData(
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.grey.shade600,
  textTheme: TextTheme(
    bodyText2: TextStyle(fontSize: 22, height: 1.4),
    caption: TextStyle(fontSize: 18, height: 1.4),
    headline1: TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.w800,
      color: Colors.black,
    ),
    headline2: TextStyle(
      fontSize: 27,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
  ),
  appBarTheme: AppBarTheme(
    color: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
  ),
);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<List<BlogPost>>(create: (context) => _blogPosts),
        //Provider<List<BlogPost>>(create: (context) => DateTime.now()),
        //Provider<String>(create: (context) => 'What is Provider?'),
      ],
      child: MaterialApp(
        title: 'Flutter Dev',
        theme: theme,
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        //just start
      ),
    );
  }
}

final _blogPosts = [
  BlogPost(title: 'What is Provider?', publishedDate: DateTime.now(), body: 'This is Body'),
  BlogPost(
      title: 'What is multi-Provider?',
      publishedDate: DateTime(2021, 03, 24),
      body: 'This is Body'),
];
