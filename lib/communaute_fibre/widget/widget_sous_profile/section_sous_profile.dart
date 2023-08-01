import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../level_widget/level_argent.dart';
import '../level_widget/level_bronze.dart';
import '../level_widget/level_diamant.dart';
import '../level_widget/level_or.dart';

class SousProflie extends StatefulWidget {
  const SousProflie({super.key});

  @override
  State<SousProflie> createState() => _SousProflieState();
}

class _SousProflieState extends State<SousProflie> {


  late bool changColor = false;
  late bool changeColorOne = false;
  late bool changColorTwo = false;
  late bool changColortThree = false;
  late bool changColorFour = false;

  late bool  iconcolorsOne = false;
  late bool  iconcolorsTwo = false;
  late bool  iconcolorsThree = false;
  
  final color1 = const Color(0xFF18A8F5);
  final color2 = const Color(0xFFD1AF29);
  final color3 = const Color(0xFF818F9D);
  final color4 = const Color(0xFF99847E);
 
  late Widget changWidget = const LevelDiamant();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
        
            CardButtom()
          ]

        ),

           changWidget

      ],
    );
  
  
  }

  
  // Button to get suprise
  CardButtom(){
    return Column(
      children: [
       
       Row(
        children: [
            Column(
              children: [
          
          Container(
          height: 70,
          width: 70,
          margin: const EdgeInsets.all(10),
          decoration:  BoxDecoration(
            color: color1,      
            shape: BoxShape.circle
          ),
          child: SvgPicture.asset("assets/images/svgdiamant.svg",height: 40,width: 40 )
        ),
          
         GestureDetector(
          onTap: () {
            setState(() {
              changeColorOne =! changeColorOne;
              
              changWidget = const LevelDiamant();

            });
          },
          child: Container(
            height: 40,
            width: 80,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
             color:  changeColorOne? Colors.blue: Colors.white,
             borderRadius: BorderRadius.circular(20),

            ),
            child:  Text("Diamant",style: TextStyle(color: changeColorOne? Colors.white: color1),),
          ) ,
        )  

            ],
            
      ),
            
           Column(children: [
          Container(
          height: 70,
          width: 70,
          margin: const EdgeInsets.all(10),
          decoration:  BoxDecoration(
            color: color2,      
            shape: BoxShape.circle
          ),
          child: SvgPicture.asset("assets/images/svgor.svg",height: 40,width: 40 )
        ),
          
         GestureDetector(
          onTap: () {
            setState(() {
              changColorTwo =! changColorTwo;
                
              changWidget = LevelOr();

            });
          },
          child: Container(
            height: 40,
            width: 80,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
             color:  changColorTwo? color2: Colors.white,
             borderRadius: BorderRadius.circular(20),

            ),
            child:  Text("Or",style: TextStyle(color: changColorTwo? Colors.white: color2),),
          ) ,
        )  

            ],
    
           ),
           
         Column(
          children: [

          Container(
          height: 70,
          width: 70,
          margin: const EdgeInsets.all(10),
          decoration:  BoxDecoration(
            color: color3,      
            shape: BoxShape.circle
          ),
          child: SvgPicture.asset("assets/images/svgargnet.svg",height: 50,width: 50)
        ),
          
         GestureDetector(
          onTap: () {
            setState(() {
              changColortThree =! changColortThree;

               changWidget = const LevelArgent();

            });
          },
          child: Container(
            height: 40,
            width: 80,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
             color:  changColortThree? color3: Colors.white,
             borderRadius: BorderRadius.circular(20),

            ),
            child:  Text("Argent",style: TextStyle(color: changColortThree? Colors.white: color3),),
          ) ,
        )  

            ],
            
      ),
       
        Column(
          children: [
          Container(
          height: 70,
          width: 70,
          margin: const EdgeInsets.all(10),
          decoration:  BoxDecoration(
            color: color4,      
            shape: BoxShape.circle
          ),
          child: SvgPicture.asset("assets/images/svgbronze.svg",height: 50,width: 50)
        ),
          
         GestureDetector(
          onTap: () {
            setState(() {
              changColorFour =! changColorFour;
              
              changWidget = const LevelBronze();

            });
          },
          child: Container(
            height: 40,
            width: 80,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
             color:  changColorFour? color4: Colors.white,
             borderRadius: BorderRadius.circular(20),

            ),
            child:  Text("Bronze",style: TextStyle(color: changColorFour? Colors.white:  color4),),
          ) ,
        )  

            ],
            
      )
       
        ],
       ),

       

      ],
    );
  }








}