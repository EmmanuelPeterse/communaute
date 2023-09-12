

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gptone/mes_commandes/alerteDialorge.dart';
import 'package:gptone/mes_commandes/form_prise_rdv/form_customerPrise_rdv.dart';
import 'package:gptone/mes_commandes/prise_de_rdv_widegt/customer_formTextarea.dart';
class RdvFormView extends StatefulWidget {
  const RdvFormView({super.key});

  @override
  State<RdvFormView> createState() => _RdvFormViewState();
}

class _RdvFormViewState extends State<RdvFormView> {

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
        backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 12.h, horizontal: 5.w),
        child: SingleChildScrollView(
          child: Column(
          children: [

               Row(
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    SizedBox( width: 5.w,),
                    
                    Text(
                      "Prise de rendez vous",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                             fontWeight: FontWeight.w700),
                    ),
                  ],
                ),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 15,horizontal: 10.w),
                    padding: EdgeInsets.symmetric( horizontal: 10.w),
                       decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5).r),
           
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [

                         Container(
                          margin: EdgeInsets.symmetric(vertical: 15.h),
                           child: Text(
                              "Enregistrer votre rendez-vous",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w700),
                              ),
                          ),

                       Container(
                        margin: EdgeInsets.symmetric(vertical: 15.h),
                         child: Form(
                           key: _formKey,
                           child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                             children: [

                              FormCustomerTakeRdv(
                                label: 'Type signalisation',
                                inputTitle: "Technique",
                                validator: (value){
                                 if(value == null ){
                                  return 'Chose type de signalisation ';
                                 }
                                 else{

                                 }
                                 return null;
                            
                                },
                                ),
                            

                              FormCustomerTakeRdv(
                                label: 'Definissez votre problème',
                                inputTitle: "Date de rendez-vous pas respecter",
                                validator: (value){
                                  if(value == null){
                                    return 'require a problème';
                                  }
                                  else{

                                  }
                                  return null;
                                
                                },
                                ),

                        
                              CustomerFormArea(label: '  Definissez votre problème', hintext: 'Message...',
                             validaton: (value){
                              if(value == null || value.isEmpty){
                                 return 'require a message';
                              }
                              else{
                                
                              }
                              return null;
                           

                             },),
                       
                          ElevatedButton(onPressed: (){
                            if(_formKey.currentState!.validate()){
                               
                            showDialog(context: context, builder: (ctx)=> AlertDialogs(contents: 'Signalisation enregistrée avec succès.\n \nveuillez patienter pour le traitement de votre requête', buttonText: 'Voir Liste'));
                            }
                          },

                          style: ElevatedButton.styleFrom(
                           backgroundColor: const Color(0xFFFF6600),
                          ),
                           child: const Text("Valider",style: TextStyle(color: Colors.white),))
                       
                                ],
                              )
                                     
                            ),
                       )
                    ],
                  ),
                )
            ],
                ) ),
        ))
        );
  }

    
  
}