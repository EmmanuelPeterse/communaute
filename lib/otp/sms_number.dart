
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:gptone/controller_place/homeController.dart';
import 'package:gptone/otp/resendotp.dart';
import 'package:gptone/screen/principal_screen/child_principalscreen.dart';
import 'package:pinput/pinput.dart';
import 'package:http/http.dart' as http;
import 'package:sms_autofill/sms_autofill.dart';
import 'package:get/get.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';




class SendOtpSms extends StatefulWidget {
 SendOtpSms({super.key, required this.phoneNumber});

final String phoneNumber;


  @override
  State<SendOtpSms> createState() => _SendOtpSmsState(phoneNumber: phoneNumber);
}



class _SendOtpSmsState extends State<SendOtpSms> {
  
  _SendOtpSmsState({required this.phoneNumber});

 // GET ALL CONTROLLER 

 final formController = Get.put(HomeController());

  
  final String phoneNumber;

  final bool errotheme = false;

  

  final  key = GlobalKey <FormState>();


  final TextEditingController _controller = TextEditingController();
  

// API TO SEND
Future <void> sendOtp(String sms)async{

  // object to send
  Map<String, dynamic> map = {
    "data":{
      "contact":phoneNumber,
      "codeOtp":_controller.text
    }
  };

  // Converte send object to json

  String jsonData = json.encode(map);

  // API LIEN

  final url ='https://mabox.orange.ci/api-V3/api-fibre-orange-v3/client/checkClient';
  
  // Fect TO SEND OPT
  try{


    final response = await http.post(Uri.parse(url),
    headers: <String,String>{
      'content-type': 'application/json',
    },
    body: jsonData
    );


    // SHOW STATUS CODE IN CONSOLE
    if(response.statusCode == 200){

      debugPrint(response.body);
    
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChildPrincipalSceen())); 


    }

    else{
        // Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChildPrincipalSceen())); 
       print(response.statusCode);   
      return  alertMessage("","Operation effectuee avec succes") ;  
    }
    
  }catch(e){
    throw Exception(e);
  }

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin:  EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
            child: Column(
              children: [
                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      GestureDetector(
                        onTap: ()=> Navigator.of(context).pop(context),
                        child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Icon(Icons.navigate_before),

                      ),
                      ),

                       Image.asset('assets/images/image 4.png'),
                    ],
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 12,),
                    child: const Text("Veuillez entrer le code",
                    style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.w700),)),

                  const SizedBox(height: 20,),

                  Container(
                    margin: const EdgeInsets.only(left: 15,right: 15,top: 12),
                    child:     RichText(text:  TextSpan(
                    children: [
                      const TextSpan(
                        text: '    Nous avons envoyé un SMS avec un code\n    d\'activation sur votre téléphone ',
                        style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400)
                      ),

                        TextSpan(
                        text: phoneNumber,
                        style: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700)
                      ),

                       const TextSpan(
                        text: '    08 ',
                        style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700)
                      ),
                    ]
                  )),

                  ),

                  Countdown(seconds: 20,
                  interval: Duration(milliseconds: 1000),
                   build: (BuildContext , mytime) {
                     if(mytime == 0.0){
                      return GestureDetector(
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text("send OTp",style: TextStyle(color: Colors.black),),
                        )
                      );

                     }
                     else {
                      return  Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 53, 152, 244),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text("ok"),
                         
                          // child: Text("Wait |${mytime.toString().length == 4? " ${mytime.toString().su}
                        );
                     }

                     },
                   ),

             



                  


                  // Text(phoneNumber),
                    Container(
                      margin: const EdgeInsets.only(top: 15,bottom: 30),
                      child: Form(
                        key: key,
                        child: Pinput(
                         controller: _controller,
                         length: 4,
                         errorText: 'require OTP',
                         errorTextStyle: TextStyle(color: Colors.red),
                          defaultPinTheme: PinTheme(
                          height: 55,
                          width: 55,
                          textStyle: const TextStyle(color: Colors.black),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color.fromARGB(255, 175, 175, 175)),
                            borderRadius: BorderRadius.circular(10),
                            )),
                         focusedPinTheme: PinTheme(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                            )),
                          errorPinTheme: errotheme? null: PinTheme(
                              height: 55,
                          width: 55,
                          textStyle: const TextStyle(color: Colors.black),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Color.fromARGB(255, 255, 63, 63)),
                            borderRadius: BorderRadius.circular(10),
                            )),
                           

                            onChanged: (value) {
                              // ignore: unnecessary_null_comparison
                              if(value != null || value.isEmpty){
                                 
                              }
                              else{
                                // buttonValidate(context);
                              }


                            },
                         
                      )
                    
                      )
                    ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         Container(
                          margin: const EdgeInsets.only(top: 50),
                        
                             child: ResendOtp(phoneNumber: phoneNumber,),
                         )
                      
                        ],
                      ),



               Obx(() =>   PinFieldAutoFill(
                textInputAction: TextInputAction.done,
                decoration: UnderlineDecoration(
                  textStyle: TextStyle(color: Colors.black, ),
                  colorBuilder: FixedColorBuilder(Colors.orange)
                  ),
                  codeLength: 4,
                  onCodeSubmitted: (code) {
                  },
                  controller: formController.textEditingController,
                  currentCode: formController.messageOtp.value,

                  onCodeChanged: (code){
                    formController.messageOtp.value = code!;
                     formController.countdownController.pause();
                  },
                ),
                ),


              


                

                  GestureDetector(
                  onTap: ()async{
                      

                  if(key.currentState!.validate()){
                        await sendOtp(_controller.text);
                        // alertMessage();
                  }


                    
                  },
                  child: Container(
                  height: 50,
                  width: 350,
                  margin: const EdgeInsets.only(top: 12),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10) ,
                    color: const Color(0xFFFF7900)),
                    child: const Text("Rechercher",style: TextStyle(color: Colors.black, fontSize: 22,fontWeight: FontWeight.w700),),
                )
                ),




              ],
            ),
          ),
        )
      ),
    );
  }

 // BUTTON TO SEND VERIFIEZ OTP

  valideSendOtp(BuildContext context){
    sendOtp(_controller.text);
    debugPrint("===================login");
    debugPrint(_controller.text);
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChildPrincipalSceen()));

  }

 // ALERTE ME
  alertMessage(message1, message2){
    return AlertDialog(
            // title: Text("Status de la reponse",style: TextStyle(color: Colors.black),),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(message1,style: TextStyle(color: Colors.black),),

                   IconButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChildPrincipalSceen())); 
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> SendOtpSms(phoneNumber: phoneNumber)));
                   },
                              icon: const Icon(Icons.check_circle,color: Colors.orange,),
                              ),
               ],
               ),
          
             content:  Text(message2,
                          style: TextStyle(color: Color(0xFF000000),fontSize: 12,fontWeight: FontWeight.w400),)


      );
  }  





}

