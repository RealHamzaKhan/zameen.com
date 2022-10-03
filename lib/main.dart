import 'package:flutter/material.dart';
import 'package:zameen_pk/screens/about_us.dart';
import 'package:zameen_pk/screens/add_property.dart';
import 'package:zameen_pk/screens/contact_us.dart';
import 'package:zameen_pk/screens/favourites_screen.dart';
import 'package:zameen_pk/screens/home_screen.dart';
import 'package:zameen_pk/screens/logged_in_screen.dart';
import 'package:zameen_pk/screens/login_page.dart';
import 'package:zameen_pk/screens/my_properties.dart';
import 'package:zameen_pk/screens/new_projects.dart';
import 'package:zameen_pk/screens/plot_finder.dart';
import 'package:zameen_pk/screens/qouta_credits.dart';
import 'package:zameen_pk/screens/search_screen.dart';
import 'package:zameen_pk/screens/settings_screen.dart';
import 'package:zameen_pk/screens/signup_screen.dart';
import 'package:zameen_pk/screens/terms_privacy_policy.dart';
import 'package:zameen_pk/screens/zameen_blog.dart';
import 'package:zameen_pk/screens/zameen_news.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: const LoginPage(),
    );
  }
}
