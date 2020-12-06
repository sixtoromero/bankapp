import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = 'loginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [            
            SingleChildScrollView(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome Login',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 60,),
                      Row(
                        children: [
                          _loginFacebook(context),
                          _loginGoogle(context),
                        ],
                      ),
                    ],
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _loginFacebook(BuildContext context) {
    return OutlineButton (
      child: Container(        
        width: 120,
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
        child: Image.asset(
          'assets/images/f.png',
          height: 20,
          width: 10,
        )
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0)
      ),          
      color: Colors.white,
      textColor: Color(0XFF77869E),
      onPressed: (){},          
    );
  }

  Widget _loginGoogle(BuildContext context) {
    return OutlineButton (
      child: Container(        
        width: 120,
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
        child: Image.asset(
          'assets/images/g.png',
          height: 20,
          width: 20,
        )
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