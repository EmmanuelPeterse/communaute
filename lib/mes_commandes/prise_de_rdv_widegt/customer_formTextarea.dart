import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomerFormArea extends StatelessWidget {
 const CustomerFormArea({super.key, required this.label, required this.hintext,  this.validaton});
 
  final String label;
  final String hintext;
  final String? Function(String?)? validaton;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 5),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(label,style: TextStyle(color: Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w400),),
          ),
          const SizedBox(height: 3,),
          TextFormField(
            minLines: 3,
            maxLines: 5,
            style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: hintext,
          hintStyle: TextStyle(color: Colors.black12,fontSize: 16.sp,fontWeight: FontWeight.w400),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          fillColor: Colors.grey[200],
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Colors.grey)
          ),

        ),
        validator: validaton,
      ),
        ],
      )
    );
  }
}