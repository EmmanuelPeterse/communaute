import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormCustomerTakeRdv extends StatelessWidget {
   FormCustomerTakeRdv({super.key, required this.inputTitle,  required this.label, this.validator, });

  

  final String inputTitle;
  final String label;
  final dropValues = ValueNotifier('_value');
  final  String? Function(Object?)? validator;
  final List itemList = [
  'name', 'lastname', 'first name'
   ];

 

  @override
  Widget build(BuildContext context) {
    return  ValueListenableBuilder(
      valueListenable: dropValues,
       builder: ((context, value, child) {
      return  Padding(
              padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 3.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                    
                  SizedBox(height: 10.h,),
                  
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text(label,style: TextStyle(color: Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w400),),
                  ),
                  
                  SizedBox(height: 4.h,),
                  DropdownButtonFormField(
                   style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 16.sp,),
                          hint: Text(inputTitle,style: TextStyle(color: Colors.black, fontSize: 16.sp,fontWeight: FontWeight.w400),),
                           iconDisabledColor: Colors.black,
                           iconEnabledColor: Colors.black,
                          focusColor: Colors.black,
                          dropdownColor: Colors.grey[200],
                          borderRadius: BorderRadius.circular(5),
                          decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            )
                          ),
                          elevation: 2,
                          selectedItemBuilder: (context) {
                            return List.generate(itemList.length, (index) {
                              return DropdownMenuItem(child: Text(itemList[index]));
                            });
                          
                          },
                          items: List.generate(itemList.length, (index) => DropdownMenuItem(
                            value: itemList[index],
                            enabled: true,
                            child: Text(itemList[index]))), 
                            onChanged: (Object? value) {  },
          
              )
        
                ],
              )
        );
    }));
      
  }

} 


            