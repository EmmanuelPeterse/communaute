import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ignore: depend_on_referenced_packages
import 'package:gptone/univers_ma_box/pincipal_section_widegt/mode_of_wifi_statut/model_statut.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../turn_widget/CustomerExpansion.dart';

class DashboardPanelConnection extends StatefulWidget {
  const DashboardPanelConnection({super.key});

  @override
  State<DashboardPanelConnection> createState() =>
      _DashboardPanelConnectionState();
}

class _DashboardPanelConnectionState extends State<DashboardPanelConnection> {
  bool showButton = false;

  final getStatut = StatutModel.createStat();
//  late  itemSelecteds = false;

  final getStatus = ['Orange wifi Guest', 'SSID 1 4G', 'SSID 1 4G'];
 
   List<bool> _switch = [false, false, false];
   List<bool> _switchs = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 12.h),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.h),
            child: CustomExpansionTileFAQ(
              buttonOffOn: Container(
                  height: 30.h,
                  width: 30.w,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(31, 150, 125, 125),
                      shape: BoxShape.circle),
                  child: SvgPicture.asset("assets/images/switchoff.svg")),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 2,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.wifi,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          "Famille Vro 5G",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              trailing: GestureDetector(
                  child: Container(
                      height: 30.h,
                      width: 30.w,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(31, 150, 125, 125),
                          shape: BoxShape.circle),
                      child: Icon(
                          showButton
                              ? Icons.arrow_drop_down
                              : Icons.navigate_next,
                          color: showButton ? Colors.black : Colors.black))),
                  
               children: [
                ...List.generate(3,
                    (index) => Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(221, 217, 217, 219),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.wifi,
                                        color: Colors.green,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        getStatus[index],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  ),
                                  Switch(
                                      value: _switch[index],
                                      activeTrackColor: Color(0xFFFF7900),
                                      inactiveThumbColor: Colors.white,
                                      activeColor: Colors.white,
                                      onChanged: (value) {
                                        
                                        setState(() {
                                          _switch[index] = value;
                                        });
                                      })
                                ],
                              ),
                            ),
                          ],
                        ))
              ],
              
                  
                  
                  
            ),
          ),
           
           
           Container(
            margin: EdgeInsets.symmetric(vertical: 10.h),
             child: CustomExpansionTileFAQ(
              buttonOffOn: Container(
                  height: 30.h,
                  width: 30.w,
                  
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(31, 150, 125, 125),
                      shape: BoxShape.circle),
                  child: SvgPicture.asset("assets/images/swithon.svg")),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 2,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.wifi,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          "Famille Vro 5G",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              trailing: GestureDetector(
                  child: Container(
                      height: 30.h,
                      width: 30.w,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(31, 150, 125, 125),
                          shape: BoxShape.circle),
                      child: Icon(
                          showButton
                              ? Icons.arrow_drop_down
                              : Icons.navigate_next,
                          color: showButton ? Colors.black : Colors.black))),
                   
               children: [
                ...List.generate(3,
                    (index) => Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(221, 217, 217, 219),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.wifi,
                                        color: Colors.green,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        getStatus[index],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  ),
                                  Switch(
                                      value: _switchs[index],
                                      activeTrackColor: Color(0xFFFF7900),
                                      inactiveThumbColor: Colors.white,
                                      activeColor: Colors.white,
                                      onChanged: (value) {
                                        setState(() {
                                          _switchs[index] = value;
                                        });
                                      })
                                ],
                              ),
                            ),
                          ],
                        ))
              ],
              
                   
                   
                   
                     ),
           ),

        ],
      ),
    );
  }
}
