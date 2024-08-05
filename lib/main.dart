import 'package:flutter/material.dart';
import 'package:mejakita_project/pages/home.dart';
import 'package:mejakita_project/pages/landing.dart';
import 'package:mejakita_project/pages/login.dart';
import 'package:mejakita_project/pages/notification.dart';
import 'package:mejakita_project/pages/register.dart';
import 'package:mejakita_project/pages/search.dart';
import 'package:mejakita_project/pages/signup.dart';
import 'package:mejakita_project/widget/navbar.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/landing',
    routes: {
      '/landing': (context) => LandingPage(),
      '/signup': (context) => SignUp(),
      '/splash': (context) => RegisterSplash(),
      '/login': (context) => LogIn(),
      '/Home': (context) => HomePage(),
      '/Search' :(context) => SearchPage(),
      '/Notification' :(context) => NotifPage(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
