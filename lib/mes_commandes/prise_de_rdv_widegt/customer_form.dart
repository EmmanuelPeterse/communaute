import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerFormRDV extends StatelessWidget {
   CustomerFormRDV({super.key, required this.hintext,  this.validaton, required this.label,  this.icon, this.textInputType, this.maxLines, this.ontap, this.textEditingController,y, required this.readOnly});

  final String label;
  final String hintext;
  final Widget? icon;
  final TextInputType? textInputType;
  final  int? maxLines;
  final  void Function()? ontap;
  final TextEditingController? textEditingController;
  final bool readOnly;
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
          
          SizedBox(height: 3,),

          TextFormField(
            controller: textEditingController ,
            keyboardType: textInputType,
            maxLines: maxLines,
            readOnly:readOnly,
            style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: hintext,
          hintStyle: TextStyle(color: Colors.black12,fontSize: 16.sp,fontWeight: FontWeight.w400),
          suffixIcon: icon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          fillColor: Colors.grey[200],
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: Colors.grey)
          ),

        ),
        validator: validaton,
        onTap: ontap,
      ),
        ],
      )
    );
  }
}