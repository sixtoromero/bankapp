import 'package:blankapp/models/slider_model.dart';
import 'package:blankapp/ui/screens/login/login_screen.dart';
import 'package:blankapp/ui/widgets/dots_widgets.dart';
import 'package:blankapp/ui/widgets/slides_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class PresentationScreen extends StatelessWidget {
  static String routeName = 'presentationScreen';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new SliderModel(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: Slides()
                ),
                Dots(),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [                    
                        _buttonLogin(context),
                        SizedBox(width: 10,),
                        _buttonSignUp(context),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }

  Widget _buttonLogin(BuildContext context) {
    return RaisedButton (
      child: Container(        
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
        child: Text('Login'),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0)
      ),
          elevation: 0.0,
          color: Color(0XFF064FC8),
          textColor: Colors.white,
          onPressed: (){
            //Navigator.pushReplacementNamed(context, LoginScreen.routeName);
            Navigator.pushNamed(context, LoginScreen.routeName);
          },          
    );
  }

  Widget _buttonSignUp(BuildContext context) {
    return OutlineButton (
      child: Container(        
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
        child: Text('Sign Up'),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0)
      ),          
      color: Colors.white,
      textColor: Color(0XFF77869E),
      onPressed: (){},          
    );
  }
}