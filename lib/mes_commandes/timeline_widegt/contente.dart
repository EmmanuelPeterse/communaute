import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ContentCard extends StatelessWidget {
  const ContentCard({super.key, required this.decoration, this.child});

  final BoxDecoration decoration;
  final child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7.h,horizontal: 3.h),
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      decoration: decoration,
      child: child,
    );
  }
}