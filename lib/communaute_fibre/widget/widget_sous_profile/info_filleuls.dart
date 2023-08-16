import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'domaine/map_data.dart';

class InfoFilleuls extends StatefulWidget {
  const InfoFilleuls({super.key});

  @override
  State<InfoFilleuls> createState() => _InfoFilleulsState();
}

class _InfoFilleulsState extends State<InfoFilleuls> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      actions: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Sylvie N\'DOUA',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    const Icon(
                                      Icons.close,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: 'Statut :',
                                          style: TextStyle(
                                              color: const Color(0xFF999999),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12.sp)),
                                      TextSpan(
                                          text: 'user.nam' + ('\n'),
                                          style: TextStyle(
                                              color: const Color.fromARGB(
                                                  255, 0, 0, 0),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12.sp)),
                                      TextSpan(
                                          text: 'ND Fibre : ',
                                          style: TextStyle(
                                              color: const Color(0xFF999999),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12.sp)),
                                      TextSpan(
                                          text: 'user.ndfibre' + ('\n'),
                                          style: TextStyle(
                                              color: const Color.fromARGB(
                                                  255, 0, 0, 0),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12.sp)),
                                      TextSpan(
                                          text: 'Etat de l\'installation:  ',
                                          style: TextStyle(
                                              color: const Color(0xFF999999),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12.sp)),
                                      TextSpan(
                                          text:
                                              'user.installationEtat' + ('\n'),
                                          style: TextStyle(
                                              color: const Color.fromARGB(
                                                  255, 0, 0, 0),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12.sp))
                                    ]),
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFFF7900),
                                  ),
                                  onPressed: () {},
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                              "assets/images/whatsapp.png"),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text("Signaler un problème ",
                                              style: TextStyle(
                                                  color: const Color.fromARGB(
                                                      255, 0, 0, 0),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12.sp))
                                        ],
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  );
               
                },
                icon: const Icon(
                  Icons.place,
                ))));
  }
}
