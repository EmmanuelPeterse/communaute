import 'package:flutter/material.dart';


class SousParrainage extends StatelessWidget {
  const SousParrainage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       

        Container(
          margin: const EdgeInsets.only(top: 12),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(5)
          ),
          child: Column(
            children: [
              const Align(
                heightFactor: 2,
                alignment: Alignment.center,
                child: Text("Comment devenir parrain fibre d'orange?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 14),),),
              RichText(
                text: const TextSpan(
                  children: [
                    
                    TextSpan(
                      text: 'C\'est facile! Etre client fibre avec une ancienneté de '
                                '06 mois minimum, être à jour de ses factures et actif '
                               ' au moment du parrainage, à jour dans le payement'
                               ' de ses factures.',
                               style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 12),

                    )
                  ]
                ),
              ),
            ],
          ),
        ),
     
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