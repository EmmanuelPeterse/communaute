import 'package:flutter/material.dart';
import 'package:gptone/mes_commandes/timeline_widegt/contente.dart';
import 'package:timeline_tile/timeline_tile.dart';
class CustomerTimeLine extends StatelessWidget {
  const CustomerTimeLine({super.key, required this.isFirst, required this.isLast, required this.isPast, required this.number, this.child, required this.decoration, this.secondeChild});

  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final String number;
  final child;
  final BoxDecoration decoration;
  final secondeChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height/5,
      child: TimelineTile(
      isFirst: isFirst,
      isLast: isLast,
      afterLineStyle: LineStyle(color: isPast? const Color(0xFFFF6600): Colors.orange.shade600),
      alignment: TimelineAlign.end,
      beforeLineStyle: LineStyle(color: isPast? const Color(0xFFFF6600): Colors.orange.shade600),
      indicatorStyle: IndicatorStyle(
       color: const Color(0xFFFF6600),
       indicator: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
           color: Color(0xFFFF6600),
          shape: BoxShape.circle
        ),
        child: Text(number,style: TextStyle(color: isPast? Colors.white: Colors.white12),),
       ),
      ),
      startChild: ContentCard(
        decoration: decoration,
        child: child,) ,
 
    )
  
    );
    }
}