import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LevelDiamant extends StatelessWidget {
  const LevelDiamant({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left:1,right: 1),
       decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF10A0E5)),
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(image: AssetImage('assets/images/Background.png',),fit: BoxFit.cover)

       ),
      margin: const EdgeInsets.only(top: 12),
      child: Column(
        children: [
       
         Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             Container(
             height: 25,
             width: 178,
             
            margin: EdgeInsets.all(10),
             alignment: Alignment.centerLeft,
             decoration: BoxDecoration(
              color: const Color(0xFF10A0E5).withOpacity(0.3),
              borderRadius: BorderRadius.circular(5)
            ),
            
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               SvgPicture.asset("assets/images/svglock.svg",color: Color(0xFF066795),),
                SizedBox(width: 2,),
                Text("Niveau supérieur à atteindre",style: TextStyle(color: Color(0xFF006FA4),fontWeight: FontWeight.w700,fontSize: 11),)
              ],
            ),
          ),
          ],
         ),
          
         Row(
            children: [
              _cardre_Suprise("assets/images/svgserver.svg","Surclassement"),
              _cardre_Suprise("assets/images/svgcadeaux.svg","Cadeaux\nsuprise"),
              _cardre_SupriseSvg("assets/images/transfer.png"," Transfert\nligne offert "),
              _cardre_Suprise("assets/images/svgvip.svg","Evènement\n       VIP"),
              _cardre_Suprise("assets/images/svginterne.svg","Backup\nInternet" ),
              


            ],
          ),
          
          Row(
            children: [

              // _cardre_Suprise("assets/images/svgserver.svg","Surclassement"),
              // _cardre_Suprise("assets/images/svgcadeaux.svg","Cadeaux\nsuprise"),
              // _cardre_SupriseSvg("assets/images/transfer.png"," Transfert\nligne offert "),
              // _cardre_Suprise("assets/images/svgvip.svg","Evènement\n       VIP"),

              _cardre_Suprise("assets/images/svghand.svg"," Prise en charge\n  prioritaire call\n        center"),
              _cardre_Suprise("assets/images/svgplan.svg","Bon plan"),
              _cardre_Suprise("assets/images/svgorange.svg","Ma box\nOrange"),
               _cardre_SupriseSvg("assets/images/depanage.png","Dépannage\n    offert"),

            ],
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.all(12),
              child: Text("*Payez régulièrement vos factures pour déverrouiller ce niveau!",
            style: TextStyle(color: Color(0xFF006FA4),fontSize: 8.sp,fontWeight: FontWeight.w500),)
            )
          )
   

          

        ],
      ),
    );
  }
  
    //  without svg
  
   _cardre_SupriseSvg(supriceIcons,text){
    return Container(
      height: 79,
      width: 78,
      margin:  EdgeInsets.only(top: 5,bottom: 3,left: 1, right: 2),
      decoration: const BoxDecoration(
        color: Color(0xFFFBFBFB),
        shape: BoxShape.circle
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(supriceIcons,),
          const SizedBox(height: 3,),
                Text(text,style: TextStyle(color: Colors.black,fontSize: 9.sp,fontWeight: FontWeight.w400),)
        ],
      ),
    );
  }

      // with svg icone
   // ignore: non_constant_identifier_names
   _cardre_Suprise(supriceIcone,text){
    return Container(
      height: 79,
      width: 78,
      margin: const EdgeInsets.only(top: 5,bottom: 3,left: 1, right: 2),
      
      decoration: const BoxDecoration(
        color: Color(0xFFFBFBFB),
        shape: BoxShape.circle
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(supriceIcone),
          const SizedBox(height: 2),
                Text(text,style: TextStyle(color: Colors.black,fontSize: 9.sp,fontWeight: FontWeight.w400),)
        ],
      ),
    );
  }





 
  }