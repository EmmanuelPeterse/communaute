
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timeline_tile/timeline_tile.dart';

class SuiveMesCommandes extends StatefulWidget {
  const SuiveMesCommandes({super.key});

  @override
  State<SuiveMesCommandes> createState() => _SuiveMesCommandesState();
}

class _SuiveMesCommandesState extends State<SuiveMesCommandes> {

  // final bool isSelect = false;

  late List<bool>  boolList = [false, false, false, false, false];

  late int containerPlace = -1;
  




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
        margin: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
          children: [
               Row(
                children: [
                  const Icon(Icons.arrow_back,color: Colors.black),
                  SizedBox(width: 20.w,),
                  Text("Suivre Mes commandes", style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w700),)
                ],
               ),

                Column(
                children: [
                  ...List.generate(boolList.length, (index) { 
                    bool isSelect =  containerPlace == index;
                  return   GestureDetector(
                        onTap: (){
                          setState(() {
                             for(int ind = 0; ind < boolList.length; ind ++){
                               containerPlace = index; 
                             }
                        
                  });
                },
                child:   TimelineTile(
                    isFirst: boolList[index],
                    isLast:  boolList[index],
                      // afterLineStyle: isSelect?  LineStyle(color:  Color(0xFFFF6600)): LineStyle(color:  Colors.black12),
                    afterLineStyle:  const LineStyle(color:  Color(0xFFFF6600)),

                      alignment: TimelineAlign.end,
                      // beforeLineStyle:  LineStyle(color: isSelect?   Color(0xFFFF6600):  Colors.black12,),
                     beforeLineStyle:  const LineStyle(color:    Color(0xFFFF6600),),
                      indicatorStyle: IndicatorStyle(
                          color:  isSelect?  const Color(0xFFFF6600):  Colors.black12,
                          indicator: Container(
                            alignment: Alignment.center,
                            decoration:  BoxDecoration(
                              color:  isSelect? const Color(0xFFFF6600):  Colors.black12,
                              shape: BoxShape.circle
                            ),
                            // child: Text("1",style: TextStyle(color:  Colors.white: Colors.white12),),
                               child:  Text(index.toString(),style: TextStyle(color:  isSelect?  Colors.white:  Colors.white,),)

                          ),
                          ),
                          startChild: Container(
                          //  height: MediaQuery.sizeOf(context).height/5,
                              margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 5.w),
                          
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.white,
                              border: Border.all(color: isSelect? const Color(0xFFFF6600).withOpacity(0.3): Colors.white),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset: const Offset(0, 2),
                                  blurRadius: 12
                                ),
                              ]
                            ),
                            child: Column(
                              children: [
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Enregistrement de votre commande fibre",style: TextStyle(color: Colors.black, fontSize: 12.sp,fontWeight: FontWeight.w700),),
                                    Text("Data",style: TextStyle(color: Colors.black, fontSize: 9.sp,fontWeight: FontWeight.w500))
                                  ],
                                ),

                                SizedBox(height: 10.h),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("assets/icon/Checks.png"),
                                        SizedBox(
                                          width: MediaQuery.sizeOf(context).width/2,
                                          child: Text("Merci d\'avoir fait confiance à Orange CI." 
                                          "Votre commande (Id W4) à l\'offre (offre du client) été enregistrée."
                                          "Elle sera traitée dans un délai de (précisez le délai selon le LA de l\'offre).",
                                          style: TextStyle(color: Colors.black,fontSize: 8.sp,fontWeight: FontWeight.w500),
                                          ),
                                        ),

                                        Text("18/05/2022 13:04:36",style: TextStyle(color: Colors.black,fontSize: 8.sp,fontWeight: FontWeight.w400),),  
                    
                                ],),

                                 Align(
                                alignment: Alignment.centerRight,
                                child:  ElevatedButton(onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green.shade100,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22)
                                  ),
                                  elevation: 0
                                ),
                                child: Text("Terminer",style: TextStyle(color: Colors.black, fontSize: 10.sp,fontWeight: FontWeight.w500 ,)),
                                )
                              )
                              ],
                            )
                            ),
                          ),
              
                     );
                  }
              ),




                // TimelineTile(
                //     isFirst: true,
                //     isLast: false,
                //       afterLineStyle: boolList [0]? LineStyle(color:  Color(0xFFFF6600)):LineStyle(color:  Color.fromARGB(255, 175, 173, 172)),
                //       alignment: TimelineAlign.end,
                //       beforeLineStyle: const LineStyle(color:  Color(0xFFFF6600)),
                //       indicatorStyle: IndicatorStyle(
                //           color:  boolList[0]? Color(0xFFFF6600): const Color.fromARGB(255, 52, 47, 47),
                //           indicator: Container(
                //             alignment: Alignment.center,
                //             decoration: const BoxDecoration(
                //               color: Color(0xFFFF6600),
                //               shape: BoxShape.circle
                //             ),
                //             // child: Text("1",style: TextStyle(color:  Colors.white: Colors.white12),),
                //                child: const Text("1",style: TextStyle(color:  Colors.white),),

                //           ),
                //           ),
                //           startChild: Container(
                //           //  height: MediaQuery.sizeOf(context).height/5,
                //               margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                //             padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 5.w),
                          
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(7),
                //               color: Colors.white,
                //               // border: Border.all(color: const Color(0xFFFF6600)),
                //               boxShadow: [
                //                 BoxShadow(
                //                   color: Colors.black.withOpacity(0.3),
                //                   offset: const Offset(0, 2),
                //                   blurRadius: 12
                //                 ),
                //               ]
                //             ),
                //             child: Column(
                //               children: [
                //                  Row(
                //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //                   children: [
                //                     Text("Enregistrement de votre commande fibre",style: TextStyle(color: Colors.black, fontSize: 12.sp,fontWeight: FontWeight.w700),),
                //                     Text("Data",style: TextStyle(color: Colors.black, fontSize: 9.sp,fontWeight: FontWeight.w500))
                //                   ],
                //                 ),

                //                 SizedBox(height: 10.h,),

                //                 Row(
                //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //                   children: [
                //                     Image.asset("assets/icon/Checks.png"),
                //                         Container(
                //                           width: MediaQuery.sizeOf(context).width/2,
                //                           child: Text("Merci d\'avoir fait confiance à Orange CI." 
                //                           "Votre commande (Id W4) à l\'offre (offre du client) été enregistrée."
                //                           "Elle sera traitée dans un délai de (précisez le délai selon le LA de l\'offre).",
                //                           style: TextStyle(color: Colors.black,fontSize: 8.sp,fontWeight: FontWeight.w500),
                //                           ),
                //                         ),

                //                         Text("18/05/2022 13:04:36",style: TextStyle(color: Colors.black,fontSize: 8.sp,fontWeight: FontWeight.w400),),  
                    
                //                 ],),

                //                  Align(
                //                 alignment: Alignment.centerRight,
                //                 child:  ElevatedButton(onPressed: (){},
                //                 style: ElevatedButton.styleFrom(
                //                   backgroundColor: Colors.green.shade100,
                //                   elevation: 0
                //                 ),
                //                 child: Text("Terminer",style: TextStyle(color: Colors.black, fontSize: 10.sp,fontWeight: FontWeight.w500 ,)),
                //                 )
                //               )

                        
                //               ],
                //             )
                //             ),
                //           ),
              

                   
                //     TimelineTile(
                //     isFirst: false,
                //     isLast: false,
                //       afterLineStyle: boolList [2]? LineStyle(color:  Color(0xFFFF6600)):LineStyle(color:  Color.fromARGB(255, 175, 173, 172)),
                //       alignment: TimelineAlign.end,
                //       beforeLineStyle: const LineStyle(color:  Color(0xFFFF6600)),
                //          indicatorStyle: IndicatorStyle(
                //           color: const Color(0xFFFF6600),
                //           indicator: Container(
                //             alignment: Alignment.center,
                //             decoration: const BoxDecoration(
                //               color: Color(0xFFFF6600),
                //               shape: BoxShape.circle
                //             ),
                //             child: const Text("2",style: TextStyle(color: Colors.white),),
                //           ),
                //           ),
                //           startChild: Container(
                //             height: MediaQuery.sizeOf(context).height/4,
                //               margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                //             padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 5.w),
                          
                //                decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(7),
                //               color: Colors.white,
                //               // border: Border.all(color: const Color(0xFFFF6600)),
                //               boxShadow: [
                //                 BoxShadow(
                //                   color: Colors.black.withOpacity(0.3),
                //                   offset: const Offset(0, 2),
                //                   blurRadius: 12
                //                 ),
                //               ]
                //             ),
                //             child: Column(
                //               children: [
                //                  Row(
                //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //                 children: [
                //                   Text("Rendez-vous",style: TextStyle(color: const Color(0xFF000000),fontSize: 12.sp, fontWeight: FontWeight.w500),),
                //                   Text("Data",style: TextStyle(color: Colors.black, fontSize: 9.sp, fontWeight: FontWeight.w500),)
                //                 ],
                //               ),
                //                 ...List.generate(3, (index) =>  Row(
                //                     children: [
                //                       Image.asset("assets/icon/Checks.png",height: 20.h,width: 20.w,),
                //                       SizedBox(width: 5.w,),
                //                       Text("Vous serez contacté(e) par un agent sous 24h ouvr.",style: TextStyle(color: Colors.black, fontSize: 9.sp,fontWeight: FontWeight.w400),)
                //                     ],
                //                   ),).toList(),

                //               ...List.generate(1, (index) =>  Row(
                //               children: [
                //                 Image.asset("assets/icon/okblue.png",height: 20.h,width: 20.w,),
                //                   SizedBox(width: 5.w,),
                //                 Text("Nous vous rappelons que votre rendez-vous d\'installation\n est prévu pour cette matinée / cet après-midi.\n Vous recevrez une notification au départ du technicien.",style: TextStyle(color: Colors.black, fontSize: 9.sp,fontWeight: FontWeight.w400),)
                //               ],
                //                 ),).toList(),

                //                 Align(
                //                   alignment: Alignment.centerRight,
                //                   child:   ElevatedButton(onPressed: (){},
                //                     style: ElevatedButton.styleFrom(
                //                       backgroundColor: Colors.blue.shade100,
                //                       elevation: 0
                //                     ),
                //                     child: Text("Suivre",style: TextStyle(color: Colors.black, fontSize: 10.sp,fontWeight: FontWeight.w500 ,)),
                            
                //                   ),
                //                 ),
                //                  Container(
                //                         margin: EdgeInsets.symmetric(horizontal: 20.h),
                //                          alignment: Alignment.centerLeft,
                //                          child: Text("NB : Pour modifier votre rendez-vous,\n veuillez contacter votre service client au 0909 ou au 2720300909.",
                //                          style: TextStyle(color: Colors.black, fontSize: 6.sp,fontWeight: FontWeight.w700),) 
                //                       )
                //               ]

                //             ),
                //           ),
                //   ),

                //     TimelineTile(
                //     isFirst: false,
                //     isLast: false,
                //       afterLineStyle: const LineStyle(color:  Color(0xFFFF6600),),
                //       alignment: TimelineAlign.end,
                //       beforeLineStyle: const LineStyle(color:  Color(0xFFFF6600)),
                //        indicatorStyle: IndicatorStyle(
                //           color: const Color(0xFFFF6600),
                //           indicator: Container(
                //             alignment: Alignment.center,
                //             decoration: const BoxDecoration(
                //               color: Color(0xFFFF6600),
                //               shape: BoxShape.circle
                //             ),
                //             child: const Text("3",style: TextStyle(color: Colors.white),),
                //           ),
                //           ),

                //           startChild: Container(
                //               margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                //             padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 5.w),
                //             // margin: EdgeInsets.symmetric(vertical: 12.h,),
                //             // padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10.w),
                //                decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(7),
                //               color: Colors.white,
                //               // border: Border.all(color: const Color(0xFFFF6600)),
                //               boxShadow: [
                //                 BoxShadow(
                //                   color: Colors.black.withOpacity(0.3),
                //                   offset: const Offset(0, 2),
                //                   blurRadius: 12
                //                 ),
                //               ],),
                //             child: Column(
                //               children: [
                //                       Row(
                //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //                 children: [
                //                   Text("Rendez-vous",style: TextStyle(color: const Color(0xFF000000),fontSize: 12.sp, fontWeight: FontWeight.w500),),
                //                   Text("Data",style: TextStyle(color: Colors.black, fontSize: 9.sp, fontWeight: FontWeight.w500),)
                //                 ],
                //               ),
                //                 ...List.generate(3, (index) =>  Row(
                //                     children: [
                //                       Image.asset("assets/icon/Check.png",height: 20.h,width: 20.w,),
                //                       SizedBox(width: 5.w,),
                //                       Text("Vous serez contacté(e) par un agent sous 24h ouvr.",style: TextStyle(color: Colors.black, fontSize: 9.sp,fontWeight: FontWeight.w400),)
                //                     ],
                //                   ),).toList(),

                //                  Align(
                //                   alignment: Alignment.centerRight,
                //                   child:  ElevatedButton(onPressed: (){},
                //                     style: ElevatedButton.styleFrom(
                //                       backgroundColor: const Color(0xFFDCDCDC),
                //                       elevation: 0
                //                     ),
                //                     child: Text("A venir",style: TextStyle(color: Colors.black12, fontSize: 10.sp,fontWeight: FontWeight.w500 ,)),
                            
                //                   )
                //                  )
                //               ],
                //             ),
                //           ),

                //   ),

                //     TimelineTile(
                //     isFirst: false,
                //     isLast: true,
                //       afterLineStyle: const LineStyle(color:  Color(0xFFFF6600),),
                //       alignment: TimelineAlign.end,
                //       beforeLineStyle: const LineStyle(color:  Color(0xFFFF6600)),
                //        indicatorStyle: IndicatorStyle(
                //           color: const Color(0xFFFF6600),
                //           indicator: Container(
                //             alignment: Alignment.center,
                //             decoration: const BoxDecoration(
                //               color: Color(0xFFFF6600),
                //               shape: BoxShape.circle
                //             ),
                //             child: const Text("4",style: TextStyle(color: Colors.white),),
                //           ),
                //           ),
                //           startChild: Container(
                //             margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                //             padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 5.w),
                //                decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(7),
                //               color: Colors.white,
                //               // border: Border.all(color: const Color(0xFFFF6600)),
                //               boxShadow: [
                //                 BoxShadow(
                //                   color: Colors.black.withOpacity(0.3),
                //                   offset: const Offset(0, 2),
                //                   blurRadius: 12
                //                 ),
                //               ],),
                //             child: Column(
                //               children: [
                //                     Row(
                //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //                 children: [
                //                   Text("Rendez-vous",style: TextStyle(color: const Color(0xFF000000),fontSize: 12.sp, fontWeight: FontWeight.w500),),
                //                   Text("Data",style: TextStyle(color: Colors.black, fontSize: 9.sp, fontWeight: FontWeight.w500),)
                //                 ],
                //               ),
                //                 ...List.generate(1, (index) =>  Row(
                //                     children: [
                                
                                     
                //                     //  padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 12),

                //                        Row(
                //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //                         children: [
                //                           Image.asset("assets/icon/Check.png",),
                                          
                //                             SizedBox(width: 10.w,),
                //                               RichText(
                //                             text: TextSpan(
                //                               children: [
                //                                 TextSpan(
                //                                   text: "Bienvenue sur la fibre d\'Orange CI.Vos\n services Internet et téléphone ont été activés.\nPartagez nous votre expérience\nsur le parcours d\'installation via ce \nlien"
                //                                   ,style: TextStyle(color: Colors.black, fontSize: 9.sp,fontWeight: FontWeight.w400),
                //                                 ),
                //                                 TextSpan(
                //                                   text: " oran.ge/3FrXT00."
                //                                   ,style: TextStyle(color: const Color(0xFFFF6600), fontSize: 9.sp,fontWeight: FontWeight.w400),
                //                                 ),
                //                               ]
                //                             ),
                //                           ),
                //                            SizedBox(width: 10.w,),
                //                           Text("18/05/2022 13:04:36",style: TextStyle(color: Colors.black,fontSize:8.sp,fontWeight: FontWeight.w400),),
                //                       ]),
                //                     ],
                //                   ),).toList(),

                //                  Align(
                //                   alignment: Alignment.centerRight,
                //                   child:  ElevatedButton(onPressed: (){},
                //                     style: ElevatedButton.styleFrom(
                //                       backgroundColor: const Color(0xFFDCDCDC),
                //                       elevation: 0,
                //                     ),
                //                     child: Text("A venir",style: TextStyle(color: Colors.black12, fontSize: 10.sp,fontWeight: FontWeight.w500)),
                //                   )
                //                  )
                //               ],
                //             ),
                //           ),
                //        )
              
                ],
               )
               
              
              


              
          ]
        
        )
     
        ) ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFFF6600),
        onPressed: (){},
        child: Image.asset("assets/icon/tackenote.png"),
      ),
    );
  }
}