import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gptone/screen/home_screen.dart';
import 'package:pinput/pinput.dart';
import 'package:passwordfield/passwordfield.dart';
class HomeInputCode extends StatefulWidget {
  const HomeInputCode({Key? key}) : super(key: key);

  @override
  State<HomeInputCode> createState() => _HomeInputCodeState();
}

class _HomeInputCodeState extends State<HomeInputCode> {

  var OtpController = List.generate(4, (index) => PageController());
  var isOtpSend = false;



  final focusedPinTheme = const PinTheme(
    height: 64,
    width: 72,
    decoration: BoxDecoration(
      color: Colors.white,
    )
  ).copyDecorationWith(
    border: Border.all(color: Colors.black),

    borderRadius: BorderRadius.circular(8),

  );

  @override
  Widget build(BuildContext context) {
    var _defaultPinThen = const Color(0xFFFFFFFF);
    return  Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const HomeScreen();
                        }));
                      },
                      child: Container(
                        height: 39,
                        width: 39,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 20,top: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black12),
                        ),
                        child: const Icon(CupertinoIcons.back,color: Colors.black,),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 27,top: 50,),
                      child: Image.asset("assets/images/image 4.png"),
                    )
                  ],
                ),

                Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20,top: 65,right: 34),
                    child: const Text("Veuillez entrer le code",style: TextStyle(color: Colors.black,
                             fontSize: 30,fontWeight: FontWeight.w700,fontFamily: "Roboto.ttf",letterSpacing: -1),),
                  ),

                ],),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      margin: const EdgeInsets.only(left: 24,top: 15,right: 2,),
                      child: RichText(
                        text: const TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Nous avons envoyé un SMS avec un code\nd\'activation sur votre téléphone ',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400,fontSize: 16,fontFamily: 'Roboto'),
                            ),
                            TextSpan(
                              text: '+225 07 07 21\n08',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600,fontSize: 16,fontFamily: 'Roboto'),
                            ),
                           

                          ]
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 15),
                        child: Form(
                          child: Pinput(
                            defaultPinTheme: PinTheme(
                                width: 64,
                                height: 72,
                                margin: const EdgeInsets.all(9),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20)
                            ),
                            keyboardType: TextInputType.phone,
                            closeKeyboardWhenCompleted: true,
                            focusedPinTheme: focusedPinTheme,

                          ),

                          
                        )
                        
                    ),

                  ],
                ),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 149),
                        child:const Row(
                          children: [


                            Text("Envoyer à nouveau le code",
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,
                                  fontSize: 16,fontFamily: 'Roboto.ttf'),),
                            SizedBox(width: 10,),
                            Text("00:20",style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.w400,fontSize: 16,fontFamily: 'Roboto'),),

                          ],

                        )
                    ),



                  ],
                ),


                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [




                  ],
                )






                
              ],

            ),
          )),
    );
  }
}
