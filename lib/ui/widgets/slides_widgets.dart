import 'package:blankapp/models/slider_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class Slides extends StatefulWidget {
  Slides({Key key}) : super(key: key);

  @override
  _SlidesState createState() => _SlidesState();
}

class _SlidesState extends State<Slides> {

  final pageViewController = new PageController();

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  void initState() {    
    super.initState();
    pageViewController.addListener(() {
      //Actualizar el provider, sliderModel
      Provider.of<SliderModel>(context, listen: false).currentPage = pageViewController.page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
       child: PageView(
         controller: pageViewController,
         children: [
           _MySlide('assets/images/loginslides1.png', false),
           _MySlide('assets/svgs/slide-2.svg', true),
           _MySlide('assets/svgs/slide-3.svg', true),
         ],
       ),
    );
  }
}

class _MySlide extends StatelessWidget {
  
  final String svg;
  final bool isSVG;

  _MySlide(this.svg, this.isSVG);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(30),
      child: isSVG == true ? SvgPicture.asset(svg) : Image.asset(svg),
    );
  }
}