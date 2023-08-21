import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ignore: depend_on_referenced_packages
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gptone/univers_ma_box/pincipal_section_widegt/mode_of_wifi_statut/model_statut.dart';

class DasboardEquipementConnecte extends StatefulWidget {
  const DasboardEquipementConnecte({super.key});

  @override
  State<DasboardEquipementConnecte> createState() =>
      _DasboardEquipementConnecteState();
}

class _DasboardEquipementConnecteState
    extends State<DasboardEquipementConnecte> {
  final oldConnection = DeviceConnect.getConnectedDevice();

  final newConnection = NewDeviceConnected.getNewDeviceConnected();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Mon réseau local ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 20.h,
                      width: 20.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                      child: const Text(
                        "05",
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Équipements connectés",
                      style: TextStyle(
                          color: const Color(0xFF525151),
                          fontWeight: FontWeight.w700,
                          fontSize: 10.sp),
                    )
                  ],
                )
              ],
            ),
          ),

          DottedDashedLine(
              height: 1.sp,
              width: MediaQuery.sizeOf(context).width.w,
              dashColor: const Color.fromARGB(255, 198, 199, 203),
              axis: Axis.horizontal),

          // NEW EQUIPEMENT CONNECTED

          Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                         width: .9.sw,
                         margin:  EdgeInsets.symmetric(vertical: 3.h,horizontal: 2.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                            const Icon(
                              Icons.circle,
                              color: Colors.green,
                              size: 10,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Nouvelle Connection',
                              style: TextStyle(
                                  color: const Color(0xFFFF7900),
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                              ],
                            ),
                            Text(
                              'Wifi 5G',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, bottom: 5).w,
                        child: Row(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.phone_android,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                    width: 170,
                                    child: ListTile(
                                      title: Text(
                                        'Mobile phone 234',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      subtitle: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: '1.172.456.321\n',
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xFF999999),
                                                  fontSize: 8.sp,
                                                  fontWeight:
                                                      FontWeight.w400)),
                                          TextSpan(
                                              text: 'Connecté depuis 03 min',
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xFF999999),
                                                  fontSize: 8.sp,
                                                  fontWeight:
                                                      FontWeight.w400))
                                        ]),
                                      ),
                                    ))
                              ],
                            ),
                            SizedBox(
                                width: 170,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Excellent',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w300),
                                    ),
                                     SizedBox(
                                      width: 10.w,
                                    ),
                                    SvgPicture.asset(
                                        "assets/images/reseau.svg")
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                height: 3.h,
                color: const Color(0xFFFF7900),
              )
            ],
          ),

          // OLD EQUIPEMENT CONNECTED

          ...List.generate(oldConnection.length, (index) {
            return Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: .9.sw,
                            margin:  EdgeInsets.symmetric(vertical: 3.h,horizontal: 2.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                const Icon(
                                  Icons.circle,
                                  color: Colors.green,
                                  size: 10,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  oldConnection[index].connectionStatut,
                                  style: TextStyle(
                                      color:  Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                  ],
                                ),
                                Text(
                                  oldConnection[index].network,
                                  style: TextStyle(
                                      color:  Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10, bottom: 5),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.phone_android,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                        width: 170,
                                        child: ListTile(
                                          title: Text(
                                            oldConnection[index].phoneName,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          subtitle: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: oldConnection[index]
                                                          .number +
                                                      ('\n'),
                                                  style: TextStyle(
                                                      color: const Color(
                                                          0xFF999999),
                                                      fontSize: 8.sp,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              TextSpan(
                                                  text: oldConnection[index]
                                                      .timeOfConnection,
                                                  style: TextStyle(
                                                      color: const Color(
                                                          0xFF999999),
                                                      fontSize: 8.sp,
                                                      fontWeight:
                                                          FontWeight.w400))
                                            ]),
                                          ),
                                        ))
                                  ],
                                ),
                                SizedBox(
                                    width: 170,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          oldConnection[index].natureOfNetwork,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        SvgPicture.asset(
                                            "assets/images/reseau.svg")
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  (index == oldConnection.length - 1)
                      ? Container()
                      : Divider(
                          height: 10.h,
                          color: const Color.fromARGB(217, 177, 177, 175))
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
