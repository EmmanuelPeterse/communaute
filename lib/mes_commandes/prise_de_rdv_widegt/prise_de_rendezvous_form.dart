
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gptone/mes_commandes/alerteDialorge.dart';
import 'package:gptone/mes_commandes/prise_de_rdv_widegt/customer_form.dart';
import 'package:gptone/mes_commandes/prise_de_rdv_widegt/customer_formTextarea.dart';
import 'package:intl/intl.dart';

import '../form_prise_rdv/rdv_form_view.dart';

class PriseDeRendevousForm extends StatefulWidget {
  const PriseDeRendevousForm({super.key});

  @override
  State<PriseDeRendevousForm> createState() => _PriseDeRendevousState();
}

class _PriseDeRendevousState extends State<PriseDeRendevousForm> {

  final _formKeys = GlobalKey<FormState>();
  final TextEditingController _date = TextEditingController();
  final TextEditingController _dateTime = TextEditingController();
  
  late TimeOfDay timeHoure = TimeOfDay.now();
  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
            margin: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.h),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
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
                    padding:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
                    margin: EdgeInsets.symmetric(vertical: 12.h),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5).r),
                    child: Column(
                      children: [
                        Text(
                          "Enregistrer votre rendez-vous",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        Form(
                          key: _formKeys,
                          child: Column(
                            children: [

                              CustomerFormRDV(
                                 textEditingController: _date,
                                 readOnly: false,
                                  hintext: 'JJ/MM/AA',
                                  textInputType: TextInputType.datetime,
                                  icon: const Icon(
                                    Icons.calendar_month,
                                    color: Colors.black,
                                  ),
                                  validaton: (value){
                                    if(value == null || value.isEmpty ){
                                      return 'require date';
                                    }
                                   else{
                                   };
                                  },

                                  ontap:() async{
                                     DateTime? pickerDate =  await showDatePicker(context: (context), initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime.now().add(Duration(days: 360)));
                                     if(pickerDate != null){
                                      setState(() {
                                         _date.text = DateFormat('yyyy-MM-dd').format(pickerDate);
                                      });
                                     }
                                  },
                                  label: 'Date'),


                              CustomerFormRDV(
                                
                                  textEditingController: _dateTime,
                                  readOnly: false,
                                  hintext: '15.35.45',
                                  textInputType: TextInputType.datetime,
                                  icon:
                                      const Icon(Icons.av_timer, color: Colors.black),
                                  label: 'Heure',
                                  validaton: (value){
                                    if(value == null || value.isEmpty){
                                     return 'require Heure';
                                    }
                                    else{
                                     
                                    }
                                  }, 
                                  ontap: () async{
                                   final pickerTime = await showTimePicker(context: context,
                                    initialTime: timeHoure);

                                    if(pickerTime != null && pickerTime != timeHoure ){
                                      setState(() {
                                        timeHoure = pickerTime;
                                        _dateTime.text = timeHoure.format(context);


                                      });
                                    }
                                  } 
                                  ),

                                  CustomerFormRDV(hintext: 'Message...',
                                  readOnly: false,
                                   label: 'Motif', 
                                   maxLines: 3,
                                   textInputType: TextInputType.multiline,
                                   validaton: (value){
                                    if(value == null || value.isEmpty){
                                      return 'require Message';
                                    }
                                    else{

                                    }
                                   },
                                   ),
                            ],
                          ),
                        ),

                        ElevatedButton(
                            onPressed: () {
                               if(_formKeys.currentState!.validate()){
                                print(_dateTime.text);
                                   showDialog(context: context, builder: (ctx)=> AlertDialogs(contents: 'Rendez-vous  enregistré avec succès.\n \nveuillez patienter pour le traitement de votre requête', buttonText: 'Voir Rendez-vous') );
                               }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFF6600),
                            ),
                            child:   Container(
                              padding: const EdgeInsets.all(8),
                              child: const Text(
                              "Validation",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                            )
                            ))
                      ],
                    )),
              ],
            ),
          )),
        ));
  }

    


  
}
