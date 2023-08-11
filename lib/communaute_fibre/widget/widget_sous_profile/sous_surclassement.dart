import 'package:flutter/material.dart';

class SousSurclassement extends StatefulWidget {
  const SousSurclassement({super.key});

  @override
  State<SousSurclassement> createState() => _SousSurclassementState();
}

class _SousSurclassementState extends State<SousSurclassement> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       

       
     
       const SizedBox(height: 20,),
       Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xFFFBFBFB),
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(4)
        ),
       child: const Text("📅 Client Diamant, nous vous remercions pour votre" 
            "confiance et votre fidélité. 💎💰 Régler vos factures fibre "
            "à temps et bénéficiez d'un avantage exceptionnel :"
           " Passez de votre débit actuel de ... Mb/s à un débit supérieur!🎁 💻 Expérimentez notre connexion "
            " ultra-rapide sous son meilleur jour. Que ce soit pour le "
           " travail, les études ou le divertissement, notre fibre vous "
           " offre une expérience sans pareille. ✨",style: TextStyle(color: Colors.black,fontSize: 12, fontWeight: FontWeight.w400),)
       )
     
      ],
    );
  }
}
