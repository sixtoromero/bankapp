import 'package:blankapp/models/slider_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dots extends StatelessWidget {
  const Dots({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 20,      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _Dot(0),          
          _Dot(1),
          _Dot(2)
        ],
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  
  final int index;

  _Dot(this.index);  

  @override
  Widget build(BuildContext context) {

    final pageViewIndex = Provider.of<SliderModel>(context).currentPage;

    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      width: 12,
      height: 12,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: (pageViewIndex >= index - 0.5 && pageViewIndex <= index + 0.5)
                  ? Colors.blue : Colors.grey,
        shape: BoxShape.circle
      ),
    );
  }
}