import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gptone/communaute_fibre/data/faq_data.dart';
import 'package:gptone/communaute_fibre/widget/custom.dart';

class SectionFaq extends StatefulWidget {
  const SectionFaq({super.key});

  @override
  State<SectionFaq> createState() => _SectionFaqState();
}

class _SectionFaqState extends State<SectionFaq> {
  final items = [
    FAQModel(
        title: 'Assistance',
        subTitle: 'Assistance',
        desc: 'Recevoir une assistance en ligne',
        trailing: ''),
    FAQModel(
        title: 'Comment bénéficiez des avantages ?',
        subTitle: 'Comment bénéficiez des avantages ?',
        desc: 'Une fois que vous avez rejoint notre programme de fidélité, ',
        trailing: ''),
    FAQModel(
        title: 'Où puis je consulter mon niveau',
        subTitle: 'Où puis je consulter mon niveau',
        desc: 'Vous passerez au niveau supérieur si vous réglez ',
        trailing: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7.sp),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'FAQ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
            ),
            ...items.map((item) => CustomExpansionTileFAQ(
                      trailing: const Icon(Icons.navigate_next_outlined),
                      subtitle: SizedBox(
                        width: 250.w,
                        child: Text(
                          item.desc,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 9.sp, color: Colors.black),
                        ),
                      ),
                      title: Text(
                        item.title,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      childrenPadding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 5,
                      ),
                      children: [
                        Row(
                          children: [
                            Text(
                              ' e.itemsDt.first.contenu.trim()',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 10.sp, color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    )

                //  ExpansionTileItem(
                //   border: Border.all(color: Colors.transparent),
                //   title: Text(
                //     item.title,
                //     style: const TextStyle(
                //         color: Colors.black,
                //         fontSize: 12,
                //         fontWeight: FontWeight.w700),
                //   ),
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     border: Border(
                //       bottom: BorderSide(
                //           color: items.last == item
                //               ? Colors.transparent
                //               : Colors.grey.withOpacity(0.3)),
                //     ),
                //   ),
                //   subtitle: Text(
                //     item.desc,
                //     style: const TextStyle(
                //         color: Colors.black,
                //         fontSize: 10,
                //         fontWeight: FontWeight.w400),
                //   ),
                //   children: [
                //     Text(
                //       item.desc,
                //       style: const TextStyle(
                //           color: Color(
                //             0xFF757575,
                //           ),
                //           fontSize: 14,
                //           fontWeight: FontWeight.w400),
                //     ),
                //   ],
                // ),

                )
          ],
        ));
  }
}
