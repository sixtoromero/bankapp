import 'package:blankapp/ui/screens/home/home_screen.dart';
import 'package:blankapp/ui/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

import 'routes.dart';

import 'ui/shared/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BankApp',
      theme: lightTheme(),
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: appRoutes,
    );
  }
}
