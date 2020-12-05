import 'package:blankapp/models/slider_model.dart';
import 'package:blankapp/ui/widgets/dots_widgets.dart';
import 'package:blankapp/ui/widgets/slides_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class LoginScreen extends StatelessWidget {
  static String routeName = 'loginScreen';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new SliderModel(),
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Slides()
              ),              
              Dots(),
              Center(
                child: Row(
                  children: [
                    RaisedButton(
                      onPressed: () => {},
                      child: Text('Button Clicks'),
                    ),
                  ],
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}