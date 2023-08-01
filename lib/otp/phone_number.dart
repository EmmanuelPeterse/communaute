import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gptone/otp/page1.dart';
import 'package:gptone/otp/resendotp.dart';
import 'package:gptone/otp/sms_number.dart';
import '../screen/inputcode.dart';
import '../screen/principal_screen/principalscreen.dart';
import 'package:validation_textformfield/validation_textformfield.dart';


import 'package:http/http.dart' as http;


class SendOtp extends StatefulWidget {
  const SendOtp({super.key});

  @override
  State<SendOtp> createState() => _SendOtpState();
}

class _SendOtpState extends State<SendOtp> {





  final _key = GlobalKey<FormState>();
  
  late String valeurText;
   final bool _griseButton = false;
  late bool _errorControler= false;
  TextEditingController _control = TextEditingController();


  @override
  void dispose() {
    // _control;
   _errorControler;
    super.dispose();
  }


  // API FECTH

  Future<void> sendSms(String contact) async{

    // lien to send request

    String url ='https://mabox.orange.ci/api-V3/api-fibre-orange-v3/client/sendOtp';

    // object to send

    Map<String, dynamic> map = {
      'data':{
        'contact':_control.text,
      }
    };

    // conver send object to json
    String jsonData = json.encode(map);

    // fect to send resques
    try{

      final response = await http.post(Uri.parse(url),
       headers: <String, String>{
        'content-type': 'application/json',
       },
       body: jsonData,
       );

       // check status of resquest

       if(response.statusCode == 200){

        debugPrint(response.body);
       }
       else{
         print(response.statusCode);
       }

    }catch(e){
      throw Exception(e);

    }




  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 24,top: 54),
                    child: Image.asset("assets/images/image 4.png"),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 22,top: 52,right: 62),
                    child: const Text("Connection par OTP",
                      style: TextStyle(color: Colors.black,
                          fontSize: 30,fontWeight: FontWeight.w700,fontFamily: 'Roboto-Black.ttf'),),
                  ),

                ]
                ,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 26, top: 7, ),
                    child: RichText(
                      text: const TextSpan(

                        children: <TextSpan>[
                          TextSpan(
                            text: 'Vous allez recevoir un code OTP de 6 chiffres\n par SMS sur le numéro' ,
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400,fontSize: 16,fontFamily: 'Roboto'),
                          ),
                          TextSpan(
                            text: ' +225: 07 07 21 08.',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600,fontSize: 16,fontFamily: 'Roboto'),
                          ),
                          TextSpan(
                            text: '\n Veuillez saisir ce code dans la case ci-dessous\n pour vous connecter.',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400,fontSize: 16,fontFamily: 'Roboto'),
                          )
                        ]
                      )
                    )
                  ),


                ],

              ),



              Container(
                 margin: const EdgeInsets.all(20),
              
                child: Form(
                  key: _key,
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: 361,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: TextFormField(
                          controller: _control,
                          focusNode: primaryFocus,
                          keyboardType:TextInputType.number,
                          maxLength: 10,
                            decoration: InputDecoration(
                              hintText: 'Ex : xxxx@ofibre.ci ou 2722222222',
                              fillColor: const Color.fromARGB(255, 6, 5, 5).withOpacity(0.3),
                              filled: true,
                              border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(5),   
                              ),
                              focusedBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(5),
                                 borderSide: BorderSide(color: const Color.fromARGB(255, 149, 149, 149).withOpacity(0.3))
                              )
                            ),

                            validator: (value) {
                                
                               if(value != null && value.trim().isEmpty){
                                
                               return  'number is empty';
                              }

                              else if(!value!.startsWith( RegExp(r'^07[0-9]{8}$'))){
                                return 'use orange number';
                              }

                              //   else if(value!.startsWith('0') || value.length != 10){

                              // return  'use oange number';
                              // }

                              else{
                                // _passeData(context);
                              } 
                          

                            },
                        ),
                        
                      ),
                    ]
                ),
                 
                )
              ),  


           
                
                
            











              GestureDetector(
                onTap: ()async{
                        if(_key.currentState!.validate()){

                           final singnature = await 

                        // sendSms(_control.text);
                        _passeData(context);
                        debugPrint(_control.text);               
                     }


                },

                child: Container(
                height: 50,
                width: 350,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10) ,
                  color: const Color(0xFFFF7900)),
                  child: const Text("Rechercher",style: TextStyle(color: Colors.black, fontSize: 22,fontWeight: FontWeight.w700),),
              )
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 22,bottom: 11),
                    child: const Text("Connexion Par :",
                      style: TextStyle(color: Colors.black,
                          fontSize: 30,fontWeight: FontWeight.w700 ),),
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 54,
                    width: 353,
                    margin: const EdgeInsets.only(left: 22,bottom: 7,right: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black12)
                    ),

                    child: GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Container(
                            height: 20,
                            width: 20,
                            margin: const EdgeInsets.only(left: 18,right: 20),
                            child:Image.asset("assets/images/google.png"),
                          ),

                          const Text("Continuer avec Google",
                            style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.w700,fontFamily: 'Helvetica.ttf'),

                          ),
                        ],
                    ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 1,
                    width: 156,
                    color: Colors.black12,
                    margin: const EdgeInsets.only(left: 22, top: 16,bottom: 16),
                  ),

                  Container(
                    margin: const EdgeInsets.all(9),
                    child: const Text("ou",style: TextStyle(color: Colors.black12,fontSize: 14,
                           fontFamily: 'Helvetica.ttf'),),
                  ),

                  Container(
                    height: 1,
                    width: 156,
                    color: Colors.black12,
                    margin: const EdgeInsets.only(top: 22,bottom: 16),
                  ),
                ],
              ),

              Container(
                height: 54,
                width: 353,
                margin: const EdgeInsets.only(left: 2,bottom: 7,right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black12)
                ),

                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Container(
                        height: 20,
                        width: 20,
                        margin: const EdgeInsets.only(left: 18,right: 20),
                        child:Image.asset("assets/images/facebook.png"),
                      ),

                      const Text("Continuer avec Facebook",
                        style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.w700,fontFamily: 'Helvetica.ttf'),

                      ),
                    ],
                  ),
                ),
              ),




            ]),
        ) ,)),
    );
  }

  _passeData(BuildContext context){
  sendSms(_control.text);
   String phoneNumber = _control.text;
   debugPrint("==============login");
   // GET CONTROLLER AND SEND IND ATHER PAGE
   

   return showDialog(
    context: context,
     builder: ( (context) {
      return AlertDialog(
            // title: Text("Status de la reponse",style: TextStyle(color: Colors.black),),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Status de la reponse",style: TextStyle(color: Colors.black),),

                   IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SendOtpSms(phoneNumber: phoneNumber)));
                   },
                              icon: const Icon(Icons.check_circle,color: Colors.orange,),
                              ),
               ],
               ),
             content: const Text("Operation effectuee avec succes",
                          style: TextStyle(color: Color(0xFF000000),fontSize: 12,fontWeight: FontWeight.w400),)


      );
    }));
   
 }

}