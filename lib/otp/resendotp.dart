// ignore_for_file: no_logic_in_create_state

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ResendOtp extends StatefulWidget {
   ResendOtp( {super.key, required this. phoneNumber});
  final String phoneNumber;

  @override
  State<ResendOtp> createState() => _ResendOtpState(phoneNumber:phoneNumber);
  
}

class _ResendOtpState extends State<ResendOtp> {
  _ResendOtpState({required this. phoneNumber});
  String phoneNumber;


  // RESEND OTP

  Future<void> resendOp(String contact)async{

    // CREER OBJECT TO SEND

    Map<String,dynamic> map ={
      'data':{
        'contact':phoneNumber,
      }
    };

    // CONVERTE SEND OBJECT TO JSON

    final jsonData = json.encode(map);
    
    String url = 'https://mabox.orange.ci/api-V3/api-fibre-orange-v3/client/sendOtp';

    // FECT API TO SEND OTP

 try{
     final response = await http.post(Uri.parse(url),
   headers: <String, String>{
    'content-type': 'application/json',
   },
   body: jsonData
   );

   //   CONDITION TO SEE STATU OF RESPONSE

   if(response.statusCode == 200){

     debugPrint(jsonData);
   }

   else{
      print(response.body);
   }

 }catch(e){
  throw Exception(e);
 }
    
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          GestureDetector(
            onTap: (){
              resendOp(phoneNumber);
            },
            child: const Text("Envoyer à nouveau le code",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400)),
          ),


          SizedBox(width: 10,),
          const Text("20.0",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400))
        ],
      ),
    );
  }
}