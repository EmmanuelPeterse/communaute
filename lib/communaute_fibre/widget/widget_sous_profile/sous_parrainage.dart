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
              borderRadius: BorderRadius.circular(5)),
          child: Column(
            children: [
              const Align(
                heightFactor: 2,
                alignment: Alignment.center,
                child: Text(
                  "Comment devenir parrain fibre d'orange?",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
              ),
              RichText(
                text: const TextSpan(children: [
                  TextSpan(
                    text:
                        'C\'est facile! Etre client fibre avec une ancienneté de '
                        '06 mois minimum, être à jour de ses factures et actif '
                        ' au moment du parrainage, à jour dans le payement'
                        ' de ses factures.',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  )
                ]),
              ),
            ],
          ),
        )
      ],
    );
  }
}
