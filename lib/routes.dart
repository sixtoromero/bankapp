import 'package:blankapp/ui/screens/home/home_screen.dart';
import 'package:blankapp/ui/screens/login/login_screen.dart';
import 'package:blankapp/ui/screens/login/presentation_screen.dart';
import 'package:flutter/material.dart';



final Map<String, WidgetBuilder> appRoutes = {
  HomeScreen.routeName: (_) => HomeScreen(),
  PresentationScreen.routeName: (_) => PresentationScreen(),
  LoginScreen.routeName: (_) => LoginScreen(),
};