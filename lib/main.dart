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
    return Provider<String>(
      create: (context) => 'Tarun Dev',
      builder: (context, child) {
        return MaterialApp(
          title: Provider.of<String>(context, listen: false),
          theme: theme,
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      },
      // child: MaterialApp(
      //   title: Provider.of<String>(context,listen: false),
      //   theme: theme,
      //   debugShowCheckedModeBanner: false,
      //   home: HomePage(),
      // ),
    );
  }
}
