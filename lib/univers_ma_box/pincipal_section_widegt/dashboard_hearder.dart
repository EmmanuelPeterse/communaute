import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gptone/univers_ma_box/pincipal_section_widegt/mode_of_wifi_statut/model_statut.dart';

class DashboardHeader extends StatefulWidget {
  const DashboardHeader({super.key});

  @override
  State<DashboardHeader> createState() => _DashboardHeaderState();
}

class _DashboardHeaderState extends State<DashboardHeader> {

  final _equipementPlace = objetConnected.getObjectConnected();



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
       margin: const EdgeInsets.fromLTRB(4, 12, 3, 13).w,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
        Text("Statut Box",style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w700),),

        Container(
          child: ListTile(
            title: Text("Ma box home",style: TextStyle(color: const Color(0xFF858080),fontSize: 12.sp,fontWeight: FontWeight.w400),),
            subtitle:  Text("Flybox 416 Abobo",style: TextStyle(color: const Color(0xFF6D6D6D),fontSize: 10.sp,fontWeight: FontWeight.w300),),
            leading: SvgPicture.asset("assets/images/box.svg"),
            trailing: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFFFFB400),
                borderRadius: BorderRadius.circular(5),
              ) ,
              child: Text("Redémarrer la box",style: TextStyle(color: const Color(0xFFFFFFFF),fontSize: 10.sp,fontWeight: FontWeight.w500)),
            ),
            
            
          ),
        ),
         Container(
            height: 1,
            width: MediaQuery.sizeOf(context).width,
            color: const Color.fromARGB(188, 193, 193, 169),
            margin: const EdgeInsets.only(bottom: 12),
          ),
     
        statutBox()

          
      
        // statutBox(index.deviceName,index.color) 


        ],
      ),
    );
  }

  statutBox(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          ..._equipementPlace.map((index) => Row(
            children: [
              Icon(Icons.circle, color: index.color),
              Text(index.deviceName,style: TextStyle(color: index.textColor,fontSize: 14.sp,fontWeight: FontWeight.w700),),
            ],
          )
          ),
          
        

        ],
       );
  }
}