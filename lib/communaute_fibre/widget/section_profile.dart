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
  bool iconcolorsOne = false;
  late bool iconcolorsTwo = false;
  late bool iconcolorsThree = false;

  final color1 = const Color(0xFF18A8F5);
  final color2 = const Color(0xFFD1AF29);
  final color3 = const Color(0xFF818F9D);
  final color4 = const Color(0xFF99847E);

  late Widget changWidget = const LevelDiamant();

  late Widget supriseWidget = const SousProflie();

  List<bool> isSelected = [true, false, false];

  int currentview = 0;
  List showWidget = [
    const SousProflie(),
    const SousParrainage(),
    const SousProflie()
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _toggleButton(
            "assets/images/persone.png",
            "Info Profile",
            "assets/images/surclassement.png",
            "Surclassement",
            "assets/images/parainage.png",
            "Parrainage",
          ),
        ]),
        supriseWidget
      ],
    );
  }

  _toggleButton(
    icons1,
    text1,
    icons2,
    text2,
    icons3,
    text3,
  ) {
    return ToggleButtons(
      isSelected: isSelected,
      fillColor: Colors.transparent,
      splashColor: const Color.fromARGB(255, 222, 222, 222),
      renderBorder: false,
      constraints: const BoxConstraints(
        minHeight: 100,
        minWidth: 120,
      ),
      borderWidth: 100,
      children: [
        Container(
          height: 115,
          width: 115,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: isSelected[0]
                  ? const Color(0xFFFFB400)
                  : const Color.fromARGB(255, 233, 233, 233),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                icons1,
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text1,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Container(
          height: 115,
          width: 115,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: isSelected[1]
                  ? const Color(0xFFFFB400)
                  : const Color.fromARGB(255, 233, 233, 233),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                icons2,
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text2,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Container(
          height: 115,
          width: 115,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: isSelected[2]
                  ? const Color(0xFFFFB400)
                  : const Color.fromARGB(255, 233, 233, 233),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                icons3,
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text3,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ],
      onPressed: (int newindex) {
        setState(() {
          isSelected[newindex] = !isSelected[newindex];
          currentview = newindex;

          for (int index = 0; index < isSelected.length; index++) {
            if (index == newindex) {
              isSelected[index] = true;
              supriseWidget = showWidget[index];
            } else {
              isSelected[index] = false;
            }
          }
        });
      },
    );
  }
}
