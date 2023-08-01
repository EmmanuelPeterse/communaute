import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gptone/otp/sms_number.dart';
import 'package:http/http.dart' as http;



class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

 TextEditingController controller = TextEditingController();
// GLOBALE KEY PLACE
final  _key = GlobalKey<FormState>();

// FOCTION TO SEND MESSAGE


Future<void> _futurData(String numero)async{

  String url = 'https://mabox.orange.ci/api-V3/api-fibre-orange-v3/client/sendOtp';

  
 // Les données à envoyer à l'API, ici, nous les définissons sous forme de Map
  Map<String,dynamic> map = {

    'data':{
      'contact':controller.text,
    }

  };

   // COnvertir des donnees en json
    String   jsondata = json.encode(map);

  try{

    final response = await http.post(Uri.parse(url),headers: {
      'content-type': 'application/json',
    },
    // le corps de la requeste 
    body: jsondata );

    if(response.statusCode == 200){

      // see le response int terminal   
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // headerPage('assets/images/pictureOne.png'),

              const Text("Comment rattacher un contrat ?",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w700),),

              const SizedBox(height: 20,),

              const Text("Je vous montre ici, c\'est simple",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w300),),

              const SizedBox(height: 20,),

              // Image.asset('assets/images/download.png'),

              Container(
                margin: const EdgeInsets.only(top: 30),
              
                child: const Text("Veuillez renseigner votre identifiant fibre",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 18),),
              ),


             

            ],
          ),
        )
        
     ,)
    );
  }





_passeData(BuildContext context){
   _futurData(controller.text);
  debugPrint("====================login");
  String getContact = controller.text;
  Navigator.push(context, MaterialPageRoute(builder: (context)=> SendOtpSms(phoneNumber: getContact)));
}



    _showAlertDialog1(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 100,
          width: 200,
          child: AlertDialog(
            title:  Column(
              children: [
                Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
        
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
   IconButton(onPressed: (){},
                              icon: const Icon(Icons.notifications,color: Colors.orange,),
                              ),                           
                              Text("Message de validité",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 14.sp),)
                            ],
                          ),
                          
                          // IconButton(onPressed: ()=>  Navigator.of(context).pop(context), icon: const Icon(Icons.close)),
                           IconButton(onPressed: ()=>  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            SendOtpSms(phoneNumber: controller.text))), icon: Icon(Icons.check_box,color: Colors.green,) ,),
        
        
                      
                        ],
                      ),
               Container(
                        height: 0.5.h,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey,
                      )
              ],
            ),
        
                  content: Column(
                    children: [
        
                        Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Mon Wifi",style: TextStyle(color: Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w700),),
        
                    ],
                   ),
                 
                   Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: RichText(text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Operation effectuee avec succes',
                          style: TextStyle(color: const Color(0xFF000000),fontSize: 12.sp,fontWeight: FontWeight.w400),
                        )
                      ]
                    )),
                   ),
                    ],
                  ),  
          ),
        );
      },
    );
  }


   _showAlertDialog2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title:  Column(
            children: [
              Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(onPressed: (){},
                            icon: const Icon(Icons.notifications,color: Colors.orange,),
                            ),
                            Text("Message de validité",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 14.sp),)
                          ],
                        ),
                        
                         IconButton(onPressed: ()=>  Navigator.of(context).pop(context), icon: const Icon(Icons.close, color: Colors.green,)),



                    
                      ],
                    ),
             Container(
                      height: 0.5.h,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey,
                    )
            ],
          ),

                content: Column(
                  children: [

                      Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Statut",style: TextStyle(color: Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w700),),

                  ],
                 ),
               
                 Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Eche d\operation',
                        style: TextStyle(color: const Color(0xFF000000),fontSize: 12.sp,fontWeight: FontWeight.w400),
                      )
                    ]
                  )),
                 ),
                  ],
                ),  
        );
      },
    );
  }



  


}