import 'package:flutter/material.dart';
import 'package:gptone/communaute_fibre/widget/level_widget/level_diamant.dart';
// ignore: depend_on_referenced_packages
import 'package:gptone/communaute_fibre/widget/widget_sous_profile/sous_parrainage.dart';
import 'package:gptone/communaute_fibre/widget/widget_sous_profile/section_sous_profile.dart';

class SectionProfile extends StatefulWidget {
  const SectionProfile({super.key});

  @override
  State<SectionProfile> createState() => _SectionProfileState();
}

class _SectionProfileState extends State<SectionProfile> {
  late bool changColor = false;
  late bool changeColorOne = false;
  late bool changColorTwo = false;
  late bool changColortThree = false;
  late bool changColorFour = false;

  bool iconcolorsOne = false;
  late bool iconcolorsTwo = false;
  late bool iconcolorsThree = false;

  final color1 = const Color(0xFF18A8F5);
  final color2 = const Color(0xFFD1AF29);
  final color3 = const Color(0xFF818F9D);
  final color4 = const Color(0xFF99847E);

  late Widget changWidget = const LevelDiamant();

  late Widget supriseWidget = const SousProflie();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            cardreProfile(),
          ]),
          supriseWidget
        ],
      ),
    );
  }

  // profile place

  cardreProfile() {
    return Row(
      children: [
        GestureDetector(
            onTap: () {
              setState(() {
                iconcolorsOne = !iconcolorsOne;
                supriseWidget = const SousProflie();
              });
            },
            child: Container(
              height: 100,
              width: 120,
              margin: const EdgeInsets.all(2),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: iconcolorsOne
                      ? const Color.fromARGB(255, 235, 134, 40)
                      : const Color.fromARGB(255, 213, 213, 213),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/persone.png",
                    height: 30,
                    width: 30,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Info Profile",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )),
        GestureDetector(
          onTap: () {
            setState(() {
              iconcolorsTwo = !iconcolorsTwo;

              supriseWidget = Container(
                child: const Text("data"),
              );
            });
          },
          child: Container(
            height: 100,
            width: 120,
            margin: const EdgeInsets.all(2),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: iconcolorsTwo
                    ? const Color.fromARGB(255, 235, 134, 40)
                    : const Color.fromARGB(255, 213, 213, 213),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/surclassement.png",
                  height: 30,
                  width: 30,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Surclassement ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
            onTap: () {
              setState(() {
                iconcolorsThree = !iconcolorsThree;

                supriseWidget = const SousParrainage();
              });
            },
            child: Container(
              height: 100,
              width: 120,
              margin: const EdgeInsets.all(2),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: iconcolorsThree
                      ? const Color.fromARGB(255, 235, 134, 40)
                      : const Color.fromARGB(255, 213, 213, 213),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/parainage.png",
                    height: 30,
                    width: 30,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Parrainage",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
