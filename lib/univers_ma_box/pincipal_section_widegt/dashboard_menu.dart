import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardMenu extends StatefulWidget {
  const DashboardMenu({super.key});

  @override
  State<DashboardMenu> createState() => _DashboardMenuState();
}

class _DashboardMenuState extends State<DashboardMenu> {


 Map<String, bool> _allSwitch = {
  'veuille': false,
  'wifiGest': false,
  'wpg': false,
 };


 void _handerSwitch(String switchId, bool newSwitch){
  setState(() {
    _allSwitch[switchId] = newSwitch;
  });
 }



  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: .35.sh,
        child: Row(children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 45.h,
                  padding: const EdgeInsets.all(12).w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xFFDEDEDE),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      Text(
                        "Mise en veuille ",
                        style: TextStyle(
                            color: const Color(0xFF020202),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      Switch(
                          value: _allSwitch['veuille'] ?? false,
                          activeTrackColor: const Color(0xFFFF7900),
                          activeThumbImage:
                              const AssetImage("assets/images/blackmode.png"),
                          activeColor: Colors.white,
                          onChanged: (newSwitch) {
                             _handerSwitch('veuille', newSwitch);
                          }),
                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10).w,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50.h,
                              width: 50.w,
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  color: Color(0xFF1199DA),
                                  shape: BoxShape.circle),
                              child:
                                  SvgPicture.asset('assets/images/oneman.svg'),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: "Contrôle parental\n",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  TextSpan(
                                    text: "Gérer la connexion de vos enfants",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w400),
                                  )
                                ]),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 5.h),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFDEDEDE),
                        borderRadius: BorderRadius.circular(4)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Switch(
                                value: _allSwitch['wifiGest']?? false,
                                activeTrackColor: Color(0xFFFF7900),
                                inactiveThumbColor: Colors.white,
                                activeColor: Colors.white,
                                onChanged: (value) {
                                _handerSwitch('wifiGest', value);
                                })
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50.h,
                              width: 50.w,
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  color: Color(0xFFDEDEDE),
                                  shape: BoxShape.circle),
                              child: SvgPicture.asset('assets/images/qr.svg'),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: "      Orange  Wifi Guest\n",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  TextSpan(
                                    text:
                                        "Scanner le QR code pour vous connecter",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9.sp,
                                        fontWeight: FontWeight.w400),
                                  )
                                ]),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                Container(
                  height: 40.h,
                  padding: const EdgeInsets.all(12).w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xFFDEDEDE),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "WPS",
                        style: TextStyle(
                            color: const Color(0xFF020202),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      Switch(
                          value: _allSwitch['wpg']?? false,
                          activeTrackColor: Colors.blue,
                          inactiveThumbColor: Colors.white,
                          activeColor: Colors.white,
                          onChanged: (value) {
                            _handerSwitch('wpg', value);
                          })
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
