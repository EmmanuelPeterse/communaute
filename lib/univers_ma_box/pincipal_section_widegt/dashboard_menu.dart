import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class DashboardMenu extends StatefulWidget {
  const DashboardMenu({super.key});


  @override
  State<DashboardMenu> createState() => _DashboardMenuState();
}

class _DashboardMenuState extends State<DashboardMenu> {
 
final  orang =  const Color(0xFFFF7900);
final  blue =  const Color.fromARGB(234, 97, 173, 214);
final  inativeColor =  const Color.fromARGB(233, 185, 182, 182);



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 40.h,
                width: 170.w,
                
                margin: const EdgeInsets.fromLTRB(4, 12, 3, 13).w,
                padding: const EdgeInsets.all(12).w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                 color: const Color(0xFFDEDEDE),
                 borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  children: [
                    Text("Mise en veuille ",style: TextStyle(color: const Color(0xFF020202),fontSize: 12.sp, fontWeight: FontWeight.w500),),
                    Switch(value: true,
                    activeTrackColor: const Color(0xFFFF7900),
                    inactiveThumbColor: Colors.black12,
                    activeColor: const Color.fromARGB(255, 241, 241, 241),
                    activeThumbImage: const AssetImage("assets/images/blackmode.png"),
                     onChanged: (value){})
                  ],
                ),
              ),


              Container(
                height: 150.h,
                width: 170.w,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
              
                  children: [
                    Row(
                      children: [

                        Container(
                        height: 50.h,
                        width: 50.w,
                        margin: const EdgeInsets.fromLTRB(7, 10, 2, 10).w,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Color(0xFF1199DA),
                          shape: BoxShape.circle
                        ),
                        child: SvgPicture.asset('assets/images/oneman.svg'),
                      )
                      ],
                    ),
                  
                    
                    
                       Row(
                         children: [
                           Container(
                            margin: const EdgeInsets.all(8).w,
                             child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Contrôle parental\n",style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w500),
                                  ),
                                  TextSpan(
                                    text: "Gérer la connexion de vos enfants",style: TextStyle(color: Colors.black,fontSize: 10.sp,fontWeight: FontWeight.w400),
                                  )
                                ]
                              ),
                                                 ),
                           ),
                         ],
                       ),
                  
                  ],
                ),
              )


            ],
          ),
       
         Column(
          children: [
              Column(
            children: [

              containerPlace(),

              Container(
                height: 40.h,
                width: 170.w,
                margin: const EdgeInsets.fromLTRB(4, 12, 3, 13).w,
                padding: const EdgeInsets.all(12).w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                 color: const Color(0xFFDEDEDE),
                 borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("WPS ",style: TextStyle(color: const Color(0xFF020202),fontSize: 12.sp, fontWeight: FontWeight.w500),),
                     switchButton(blue)
                  ],
                ),
              ),
          ],
         )
       
       
        ],
      ),
        ]
    )
    
    );
  }




  switchButton(color){
  return   Switch(value: true,
                    activeTrackColor: color,
                    inactiveThumbColor: color,
                    activeColor: const Color.fromARGB(255, 241, 241, 241),
                    
                     onChanged: (value){});
  }


  containerPlace(){
    return Container(
         height: 150.h,
          width: 170.w,
          margin: const EdgeInsets.only(top: 25 ).w,
          decoration: BoxDecoration(
            color: Color(0xFFDEDEDE),
            borderRadius: BorderRadius.circular(4)
          ),
      child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      switchButton(orang)
                    ],
                  ),
 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Container(
                      height: 50.h,
                      width: 50.w,
                      margin: const EdgeInsets.fromLTRB(7, 10, 2, 10).w,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Color(0xFFDEDEDE),
                        shape: BoxShape.circle
                      ),
                      child: SvgPicture.asset('assets/images/qr.svg'),
                    )
                    ],
                  ),
      
            
            
                Row(
                  children: [
                    Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(2).w,
                      child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "      Orange  Wifi Guest\n",style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: "Scanner le QR code pour vous connecter",style: TextStyle(color: Colors.black,fontSize: 9.sp,fontWeight: FontWeight.w400),
                          )
                        ]
                      ),
                                          ),
                    ),
                  ],
                ),
          
          ],
        ),
    );
  }
}