import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionStatuts extends StatefulWidget {
  const SectionStatuts({super.key});

  @override
  State<SectionStatuts> createState() => _SectionStatutsState();
}

class _SectionStatutsState extends State<SectionStatuts> {
  final titleCard = [
    'Status',
    'Nom et prenom',
    'ND Fibre',
    'Login',
    'N°Client',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.sp),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFFD1AF29),
                                shape: BoxShape.circle),
                            child: Image.asset(
                              "assets/images/or.png",
                              height: 20,
                              width: 20,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Text(
                            "OR",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: const Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Icon(
                          Icons.edit,
                          size: 14,
                          color: Color(0xFFFF7900),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 1,
            color: Color(0xFFD9D9D9),
          ),
          ...List.generate(
              titleCard.length,
              (index) => Column(
                    children: [
                      ListTileCardStatus(
                        title: titleCard[index],
                        value: 'Peters',
                      ),
                      (titleCard.last == titleCard[index])
                          ? const SizedBox()
                          : _dottedLinge()
                    ],
                  )),
        ],
      ),
    );
  }

  Widget _dottedLinge() {
    return DottedDashedLine(
      axis: Axis.horizontal,
      height: 2,
      width: 1.sw, //Mediaquery
      dashColor: const Color(0xFFD9D9D9).withOpacity(.5),
    );
  }
}

class ListTileCardStatus extends StatelessWidget {
  const ListTileCardStatus({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      margin: EdgeInsets.only(bottom: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Color(0xFF999999),
                fontSize: 17,
                fontWeight: FontWeight.w300),
          ),
          Text(
            value,
            style: const TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
