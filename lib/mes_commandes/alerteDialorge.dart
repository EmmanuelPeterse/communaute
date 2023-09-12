import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AlertDialogs extends StatelessWidget {
   AlertDialogs({super.key, required this.contents, required this.buttonText});
   
   final String contents;
   final String buttonText;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
                title: Container(
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  child: Column(
                  children: [
                    Image.asset("assets/icon/ok.png"),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 12.h,horizontal: 1.w),
                      child: Text(contents,
                                style: TextStyle(color: Colors.black, fontSize: 14.sp,fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                                )
                    ),

                      ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF6600),
                  
                  ),
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Text(buttonText,style: TextStyle(color: Color(0xFFFFFFFF) , fontSize: 16.sp,fontWeight: FontWeight.w500),)
                  ))

                  ],
                )
                ),
              );
  }
}