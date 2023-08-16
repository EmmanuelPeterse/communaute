import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gptone/communaute_fibre/data/faq_data.dart';

class SectionFaq extends StatefulWidget {
  const SectionFaq({super.key});

  @override
  State<SectionFaq> createState() => _SectionFaqState();
}

class _SectionFaqState extends State<SectionFaq> {

  final items = [
    FAQModel(
        title: 'FAQ',
        subTitle: 'Assistance',
        desc: 'Recevoir une assistance en ligne',
        trailing: ''
        ),

    FAQModel(
        title: '',
        subTitle: 'Comment bénéficiez des avantages ?',
        desc: 'Une fois que vous avez rejoint notre programme de fidélité, ',
        trailing:'' ),
    FAQModel(
        title: '',
        subTitle: 'Où puis je consulter mon niveau',
        desc: 'Vous passerez au niveau supérieur si vous réglez ',
        trailing: ''
        ),
  ];

  
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 9),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(9)),
        child: Column(
          children: [
            ExpansionTileGroup(
              toggleType: ToggleType.expandOnlyCurrent,
              children: [
                ...items.map(
                  (item) => ExpansionTileItem(
                    title: Text(
                      item.title,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.w700),
                    ),
                    subtitle: RichText(
                      text:  TextSpan(
                        children: [
                          TextSpan(
                            text: item.subTitle +('\n'), style:  TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w700),
                             ),
                             TextSpan(
                            text: item.desc, style:  TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400),
                             )
                    
                          
                        ]
                      ),
                    ),

                    
                    


                    iconColor: Colors.orange,
              
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                          color:
                              Colors.black.withOpacity(0.3).withOpacity(0.3)),
                    )),
                    children: [
                      Text(
                        item.desc,
                        style: const TextStyle(
                            color: Color(
                              0xFF757575,
                            ),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                )
              ],
              
            ),
          
          
          ],
        ));
  }
}
