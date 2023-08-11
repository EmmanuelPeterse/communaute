import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ignore: depend_on_referenced_packages
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gptone/univers_ma_box/pincipal_section_widegt/mode_of_wifi_statut/model_statut.dart';
class DasboardEquipementConnecte extends StatefulWidget {
  const DasboardEquipementConnecte({super.key});

  @override
  State<DasboardEquipementConnecte> createState() => _DasboardEquipementConnecteState();
}

class _DasboardEquipementConnecteState extends State<DasboardEquipementConnecte> {

  final oldconnectedEquipementDevice = DeviceConnect.getConnectedDevice();

  final newEquipementConnected = NewDeviceConnected.getNewDeviceConnected();



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
        children: [
           
           localConectionCardTitle(),
           
           DottedDashedLine(height: 1.sp,
            width: MediaQuery.sizeOf(context).width.w,
            dashColor: const Color.fromARGB(255, 198, 199, 203),
             axis: Axis.horizontal ),

             ...List.generate(newEquipementConnected.length, (index) => 
                 newConnectDevice(newEquipementConnected[index].connectionStatut, newEquipementConnected[index].network,
                    newEquipementConnected[index].phoneName, newEquipementConnected[index].number,newEquipementConnected[index].timeOfConnection,newEquipementConnected[index].natureOfNetwork)),

             ...List.generate(oldconnectedEquipementDevice.length, (index) => 
                 oldConnectDevice(oldconnectedEquipementDevice[index].connectionStatut, oldconnectedEquipementDevice[index].network,
                    oldconnectedEquipementDevice[index].phoneName, oldconnectedEquipementDevice[index].number,oldconnectedEquipementDevice[index].timeOfConnection,oldconnectedEquipementDevice[index].natureOfNetwork)),
             

             
          
           
           
        ],
      ),
    );
  }

  localConectionCardTitle(){
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Mon réseau local ",style: TextStyle(color: Colors.black,fontSize: 14.sp, fontWeight: FontWeight.w400),),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 20.h,
                  width: 20.w,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: const Text("05",style: TextStyle(color: Colors.orange),),
                ),
                const SizedBox(width: 10),

                Text("Équipements connectés",style: TextStyle(color: const Color(0xFF525151,),fontWeight: FontWeight.w700,fontSize: 10.sp ),)
              ],
            ),
          )
        ],
      ),
    );
  }



  // NEW DEVICE CONNECTED
  newConnectDevice(textOne, textTwo, extThree,textFour, textFive,Textsix){
  return  Container(
      child:  Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 299.w,
                    margin: const EdgeInsets.only(top: 7,left: 5,bottom: 2),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Container(
                          child:  Row(
                            children: [
                               const Icon(Icons.circle,color: Colors.green,size: 10,),
                            const SizedBox(width: 10,),
                            Text(textOne,style: TextStyle(color: Color(0xFFFF7900),fontSize: 10.sp,fontWeight: FontWeight.w500),),],
                          )
                          
                         ),

                         Text(textTwo,style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: 10.sp,fontWeight: FontWeight.w500),),
                      ],
                      
                    ),
                  ),

                   Container(
                     margin: const EdgeInsets.only(left: 10,bottom: 5),
                     child: Row(
                      
                      children: [
                              Row(
                                children: [
                                  const Icon(Icons.phone_android,color: Colors.black,),
                                Container(
                                  width:  170,
                                  child:  ListTile(
                                title: Text(extThree,style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight:FontWeight.w400),),
                                subtitle: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: textFour +('\n'),style: TextStyle(color: const Color(0xFF999999),fontSize: 8.sp,fontWeight:FontWeight.w400)
                                      ),
                                      TextSpan(
                                        text: textFive,style: TextStyle(color: const Color(0xFF999999),fontSize: 8.sp,fontWeight:FontWeight.w400)
                                      )


                                    ]
                                  ),
                                ),
                                )
                                )
                                ],
                              ),


                              Container(
                                width:  170,
                                
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                  Text(Textsix,style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight:FontWeight.w400),),
                                  const SizedBox(width: 10,),
                                   SvgPicture.asset("assets/images/reseau.svg")
                                  ],
                                )
                              )

                            
                                
                               


                               


                       ],
                    ),
                   ),

                   
                 
               
                ],
              ),
              
              
      
          
            ],
           
             
            
          ),
         
          Container(
            height: 3,
            width: MediaQuery.sizeOf(context).width,
            color: Color(0xFFFF7900),
          )
        
        ],
      ),
    );
  }
  

// OLD DEVICE CONNECTED

oldConnectDevice(textOne, textTwo, extThree,textFour, textFive,Textsix){
  return  Container(
      child:  Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 299.w,
                    margin: const EdgeInsets.only(top: 7,left: 5,bottom: 2),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Container(
                          child:  Row(
                            children: [
                               const Icon(Icons.circle,color: Colors.green,size: 10,),
                            const SizedBox(width: 10,),
                            Text(textOne,style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: 10.sp,fontWeight: FontWeight.w500),),],
                          )
                          
                         ),

                         Text(textTwo,style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: 10.sp,fontWeight: FontWeight.w500),),
                      ],
                      
                    ),
                  ),

                   Container(
                     margin: const EdgeInsets.only(left: 10,bottom: 5),
                     child: Row(
                      
                      children: [
                              Row(
                                children: [
                                  const Icon(Icons.phone_android,color: Colors.black,),
                                Container(
                                  width:  170,
                                  child:  ListTile(
                                title: Text(extThree,style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight:FontWeight.w400),),
                                subtitle: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: textFour +('\n'),style: TextStyle(color: const Color(0xFF999999),fontSize: 8.sp,fontWeight:FontWeight.w400)
                                      ),
                                      TextSpan(
                                        text: textFive,style: TextStyle(color: const Color(0xFF999999),fontSize: 8.sp,fontWeight:FontWeight.w400)
                                      )


                                    ]
                                  ),
                                ),
                                )
                                )
                                ],
                              ),


                              Container(
                                width:  170,
                                
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                  Text(Textsix,style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight:FontWeight.w400),),
                                  const SizedBox(width: 10,),
                                   SvgPicture.asset("assets/images/reseau.svg")
                                  ],
                                )
                              )

                            
                                
                               


                               


                       ],
                    ),
                   ),

                   
                 
               
                ],
              ),
              
              
      
          
            ],
           
             
            
          ),
         
          
        
        ],
      ),
    );
  }
  

}