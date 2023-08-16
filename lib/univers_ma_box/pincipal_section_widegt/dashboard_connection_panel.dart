import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

// ignore: depend_on_referenced_packages
import 'package:gptone/univers_ma_box/pincipal_section_widegt/mode_of_wifi_statut/model_statut.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardPanelConnection extends StatefulWidget {
  const DashboardPanelConnection({super.key});

  @override
  State<DashboardPanelConnection> createState() => _DashboardPanelConnectionState();
}

class _DashboardPanelConnectionState extends State<DashboardPanelConnection> {
 
 bool showButton = false;

 final getStatut = StatutModel.createStat();
//  late  itemSelecteds = false;

 final getStatus =  [
  'Orange wifi Guest',
    'SSID 1 4G',
    'SSID 1 4G'
 ];
    

 


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 13, 12, 12),
      child: 
      Column(
        children: [
   

         ExpansionTileCard(
          contentPadding: EdgeInsets.all(10),

            title:   Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Container(
                      width: MediaQuery.sizeOf(context).width /2,
                      child: Row(
                        children: [
                            const Icon(Icons.wifi,color: Colors.black,),
                              const SizedBox(width: 10,), 
                              Text("Famille Vro 5G",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500, fontSize: 14.sp),)
                        ],
                      ),
                     ),
                      Container(
                        height: 30.h,
                        width: 30.w,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(31, 150, 125, 125),
                          shape: BoxShape.circle
                        ),
                        child: SvgPicture.asset("assets/images/switchoff.svg")
                      ),
                    ],
                  ),
                ),
           trailing: GestureDetector(
            child: Container(
               height: 30.h,
                width: 30.w,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(31, 150, 125, 125),
                  shape: BoxShape.circle
                ),
                child: Icon(showButton? Icons.place_rounded  : Icons.navigate_next  )
      
            )

          ),

          children: [
                  ... List.generate(3, (index) => Column(

              
             
              children: [
                
                Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(221, 217, 217, 219),
                     
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.wifi, color: Colors.green,),
                            const SizedBox(width: 10,),
                            Text(getStatus[index],style: TextStyle(color: Colors.black,fontSize: 12.sp, fontWeight: FontWeight.w300),)
                          ],
                        ),
       
             Switch(value: true,
                    activeTrackColor: Colors.grey,
                    inactiveThumbColor: Colors.grey.withOpacity(0.3),
                    activeColor: const Color.fromARGB(255, 241, 241, 241),
                    
                     onChanged: (value){})
       
                     ],
                  ),
               ),
              ],
            ))
          ],

          onExpansionChanged: (value) {
            setState(() {
              showButton = ! showButton;
            });
          },   

          ),


         
        ],
      ),
    );
  }

  wifiManager(){
    return Container(
      
      padding: EdgeInsets.all(5.r).w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5)
      ),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
           padding: const EdgeInsets.only(left: 12),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      const Icon(Icons.wifi,color: Colors.black,),
                       const SizedBox(width: 10,), 
                      Text("Famille Vro 5G",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500, fontSize: 14.sp),)
                    ],
                  ),
                ),
   
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 45.h,
                        width: 45.w,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(31, 150, 125, 125),
                          shape: BoxShape.circle
                        ),
                        child: SvgPicture.asset("assets/images/switchoff.svg")
                      ),
                       const SizedBox(width: 10,), 
                        Container(
                        height: 45.h,
                        width: 45.w,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(31, 150, 125, 125),
                          shape: BoxShape.circle
                        ),
                        child: IconButton(
                          splashColor: Colors.transparent,
                        onPressed: (){
                          setState(() {
                            showButton = !showButton;
                          });
                        },
                         icon: showButton?  const Icon(Icons.navigate_next,color: Colors.black,) :  const Icon(Icons.navigate_before_rounded  ,color: Colors.black,))
                      ),
                         
                    ],
                  ),
                ),
              
              
              ],
            ),
          ),
        ],
       ),
    );
  }


  subConnectionStauts(text){
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Color.fromARGB(221, 217, 217, 219),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Icons.wifi, color: Colors.green,),
              const SizedBox(width: 10,),
              Text(text,style: TextStyle(color: Colors.black,fontSize: 12.sp, fontWeight: FontWeight.w300),)
            ],
          ),
       
           Switch(value: true,
                    activeTrackColor: Colors.grey,
                    inactiveThumbColor: Colors.grey.withOpacity(0.3),
                    activeColor: const Color.fromARGB(255, 241, 241, 241),
                    
                     onChanged: (value){})
       
        ],
      ),
    );
  }
 

}