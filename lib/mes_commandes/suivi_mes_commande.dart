import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timelines/timelines.dart';
class SuivMesCommande extends StatefulWidget {
  const SuivMesCommande({super.key});

  @override
  State<SuivMesCommande> createState() => _SuivMesCommandeState();
}

class _SuivMesCommandeState extends State<SuivMesCommande> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
      child:  Container(
        margin: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12),
        child: Column(
          children: [
               Row(
                children: [
                  const Icon(Icons.arrow_back,color: Colors.black),
                  SizedBox(width: 20.w,),
                  Text("Suivre Mes commandes", style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w700),)
                ],
               ),

               Expanded(
                child: Timeline.builder(
                  reverse: true,
                  itemBuilder: ((context, index) {
                    return Container();
                  }), itemCount: 4 )
                  
                ),


              
          ],
        )
      ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      backgroundColor: Color(0xFFFF6600),
      child:Image.asset("assets/icon/tackenote.png")),
    );
  }



}