import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gptone/communaute_fibre/data/faq_data.dart';
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
  // var for change widget
  late Widget changWidget = const LevelDiamant();

  // var for buid icon
  final image = [
    WidgetManager(
        image: 'assets/images/svgdiamant.svg', color: const Color(0xFF18A8F5)),
    WidgetManager(
        image: 'assets/images/svgor.svg', color: const Color(0xFFD1AF29)),
    WidgetManager(
        image: 'assets/images/svgargnet.svg', color: const Color(0xFF818F9D)),
    WidgetManager(
        image: 'assets/images/svgbronze.svg', color: const Color(0xFF99847E)),
  ];

  // var to build icons button

  List<bool> isSelect = [true, false, false, false];

  int currentWidegt = 0;

  // widegt for button icons button build

  List sousProfileWidegt = [
    const LevelDiamant(),
    LevelOr(),
    const LevelArgent(),
    const LevelBronze()
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        carIcons(),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [CardButtom()]),
        changWidget
      ],
    );
  }

  // card icone
  carIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            image.length,
            (index) => Container(
                height: 70,
                width: 70,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: image[index].color, shape: BoxShape.circle),
                child: SvgPicture.asset(image[index].image,
                    height: 40, width: 40))),
      ],
    );
  }

  // Button to get suprise
  // ignore: non_constant_identifier_names
  CardButtom() {
    return ToggleButtons(
        isSelected: isSelect,
        fillColor:  Color.fromARGB(0, 205, 22, 22),
        selectedColor: Color.fromARGB(255, 238, 238, 238),
        renderBorder: false,
        splashColor: const Color.fromARGB(255, 222, 222, 222),
        children: [
          Container(
            height: 40,
            width: 80,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 10, right: 10),
            decoration: BoxDecoration(
              color: isSelect[0] ? Colors.blue : Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "Diamant",
              style: TextStyle(
                  color: isSelect[0] ? Colors.white : const Color(0xFF18A8F5)),
            ),
          ),
          Container(
            height: 40,
            width: 80,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 10, right: 10),
            decoration: BoxDecoration(
              color: isSelect[1] ? const Color(0xFFD1AF29) : Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "Or",
              style: TextStyle(
                  color: isSelect[1] ? Colors.white : const Color(0xFFD1AF29)),
            ),
          ),
          Container(
            height: 40,
            width: 80,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 10, right: 10),
            decoration: BoxDecoration(
              color: isSelect[2] ? const Color(0xFF818F9D) : Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "Argent",
              style: TextStyle(
                  color: isSelect[2] ? Colors.white : const Color(0xFF818F9D)),
            ),
          ),
          Container(
            height: 40,
            width: 80,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 10, right: 10),
            decoration: BoxDecoration(
              color: isSelect[3] ? const Color(0xFF99847E) : Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "Bronze",
              style: TextStyle(
                  color: isSelect[3] ? Colors.white : const Color(0xFF99847E)),
            ),
          ),
        ],
        onPressed: (int newindex) {
          setState(() {
            isSelect[newindex] = !isSelect[newindex];
            currentWidegt = newindex;

            for (int index = 0; index < isSelect.length; index++) {
              if (index == newindex) {
                isSelect[index] = true;
                changWidget = sousProfileWidegt[index];
              } else {
                isSelect[index] = false;
              }
            }
          });
        });
  }
}
