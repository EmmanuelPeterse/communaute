
import 'package:flutter/material.dart';

class  FAQModel{

  late String title;
  late String subTitle;
  late String desc;
  late String trailing;


  FAQModel({required this.title, 
  required this.subTitle, 
  required this.trailing,
  required this.desc});
}


class WidgetManager{

  late String image; 
 late dynamic color;


  WidgetManager({
    required this.image,
    required this.color,
  });
}




