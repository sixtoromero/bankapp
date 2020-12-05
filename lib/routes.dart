import 'package:blankapp/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import 'ui/screens/login/login_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  HomeScreen.routeName: (_) => HomeScreen(),
  LoginScreen.routeName: (_) => LoginScreen()  
};