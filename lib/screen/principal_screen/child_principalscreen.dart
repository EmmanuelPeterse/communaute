import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:badges/badges.dart' as badges;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';

class ChildPrincipalSceen extends StatefulWidget {
  const ChildPrincipalSceen({Key? key}) : super(key: key);

  @override
  State<ChildPrincipalSceen> createState() => _ChildPrincipalSceenState();
}

class _ChildPrincipalSceenState extends State<ChildPrincipalSceen> {
  /*   DEFINI LE COMPORTEMENT DES OBJECT   */

  /*   BOXCHADOW  FOR ALL CONTAINER     */

  final boxShadow = BoxShadow(
    color: Colors.grey.withOpacity(0.1),
    offset: const Offset(0, 1),
    spreadRadius: 7,
    blurRadius: 3,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /*   HEADER  BIG CONTAINER 1       */

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: 375,
                    margin: const EdgeInsets.only(left: 16, top: 20, right: 16),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(0, 1),
                            spreadRadius: 7,
                            blurRadius: 3,
                          ),
                        ]),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 12,
                              width: 12,
                              alignment: Alignment.topCenter,
                              margin:
                                  const EdgeInsets.only(left: 4.98, top: 12),
                              child: Image.asset('assets/images/image 4.png'),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 4.98, top: 4),
                              child: RichText(
                                text: const TextSpan(children: [
                                  TextSpan(
                                    text: 'Bonjour',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  TextSpan(
                                    text: '  Richmond Amany',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  )
                                ]),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.only(
                                        right: 12, top: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2)),
                                    child: Image.asset(
                                        'assets/images/Rectangle.png'),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 12),
                                    child: const Text(
                                      'Home',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 4.98),
                              child: const Text(
                                'Ligne fibre',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 120,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(16),
                                            topLeft: Radius.circular(16))),
                                    child: MultiSelectDropDown(
                                      onOptionSelected:
                                          (List<ValueItem> SelectOPtion) {},
                                      options: <ValueItem>[
                                        const ValueItem(
                                            label: 'option 1', value: '1'),
                                        const ValueItem(
                                            label: 'option 2', value: '2'),
                                      ],
                                      selectionType: SelectionType.single,
                                      chipConfig: const ChipConfig(
                                          wrapType: WrapType.wrap),
                                      selectedOptionIcon:
                                          const Icon(CupertinoIcons.down_arrow),
                                      hint: '2722234567',
                                      hintStyle: const TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Helvatica.ttf',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10),
                                      borderRadius: 5,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                        height: 30,
                                        width: 50,
                                        alignment: Alignment.center,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20))),
                                        child: Icon(
                                          CupertinoIcons.plus,
                                          color: Colors.orange[700],
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 20,
                                child: Image.asset(
                                  'assets/images/image 15.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const Text(
                              "Actif",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              /*   LIGNE  BIG CONTAINER 2       */

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 3,
                    width: 165,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(0, 1),
                            spreadRadius: 7,
                            blurRadius: 3,
                          ),
                        ]),
                  )
                ],
              ),

              /* MESSAGE ALERTE BIG CONTAINER 3          */

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 375,
                    margin: const EdgeInsets.only(left: 16, top: 5),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        offset: const Offset(0, 1),
                        spreadRadius: 7,
                        blurRadius: 3,
                      ),
                    ]),
                    child: ExpansionTileGroup(
                      children: [
                        ExpansionTileItem(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.red),
                                borderRadius: BorderRadius.circular(10)),
                            title: ListTile(
                              title: const Text(
                                "Message de service",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                    fontFamily: 'Helvetica.ttf'),
                              ),
                              subtitle: const Text(
                                "Nous sommes ravis de vous informer que notre réseau Wifi a été mis...",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    fontFamily: 'Helvetica.ttf',
                                    letterSpacing: 0.1),
                              ),
                              leading: Icon(
                                Icons.notifications,
                                color: Colors.orange[700],
                              ),
                            ),
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 55),
                                child: const Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                                    "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "),
                              )
                            ])
                      ],
                    ),
                  )
                ],
              ),

              /* TEXT FOR FIBRE BIG CONTAINER 4          */

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        offset: const Offset(0, 1),
                        spreadRadius: 7,
                        blurRadius: 3,
                      ),
                    ]),
                    child: const Text(
                      "Dianostique de mon accès fibre",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),

              /* EQUIPEMENT BIG CONTAINER 5          */

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 375,
                    margin: const EdgeInsets.only(left: 16, top: 5, bottom: 7),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(0, 1),
                            spreadRadius: 7,
                            blurRadius: 3,
                          ),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 13, top: 25),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Icon(
                                Icons.phone_android,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 16, top: 2),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Equipement",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "connectés",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 10),
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              color: Colors.orange[700],
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: const Text(
                                            "05",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 13, top: 25),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Icon(
                                Icons.phone_android,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 16, top: 2),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Equipement",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "connectés",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 10),
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              color: Colors.orange[700],
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: const Text(
                                            "05",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 13, top: 25),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Icon(
                                Icons.phone_android,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 16, top: 2),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Equipement",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "connectés",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 10),
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              color: Colors.orange[700],
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: const Text(
                                            "05",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),

              /* INFORMATION BIG CONTAINER 6         */

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 380,
                    margin: const EdgeInsets.only(left: 15, right: 2),
                    decoration: BoxDecoration(boxShadow: [boxShadow]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        containerCard('assets/images/Vector (2).png',
                            'Changer mot\nde pass wifi'),
                        containerCard('assets/images/wifi.png',
                            'Changer mot\nde pass wifi'),
                        containerCard2(
                            'Cange worlde', 'assets/images/paper.png', '5'),
                        containerCard2(
                            'Cange worlde', 'assets/images/searchs.png', '1'),
                        containerCard('assets/images/phone.png',
                            'Changer mot\nde pass wifi'),
                      ],
                    ),
                  ),
                ],
              ),

              /* ETAT OF SERVICE BIG CONTAINER 7         */

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 16, top: 4, bottom: 3),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        offset: const Offset(0, 1),
                        spreadRadius: 7,
                        blurRadius: 3,
                      ),
                    ]),
                    child: const Text(
                      "Etat de mes services",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          fontFamily: 'Helvetica.ttf'),
                    ),
                  )
                ],
              ),

              /* FACTURE PLAQCE BIG CONTAINER 8        */

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 380,
                    height: 174,
                    margin: const EdgeInsets.only(left: 16),
                    padding: const EdgeInsets.only(
                      top: 7,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.2),
                            offset: const Offset(0, 2),
                            spreadRadius: 1,
                            blurRadius: 7,
                          ),
                        ]),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Text(
                                "Mes Facture",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    fontFamily: 'Roboto-Black.ttf'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              width: 330,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 330,
                                    child: ListTile(
                                      title: const Text(
                                        "Date de suspoension",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12,
                                            fontFamily: 'Helvetica.ttf'),
                                      ),
                                      subtitle: RichText(
                                        text:
                                            const TextSpan(children: <TextSpan>[
                                          TextSpan(
                                            text: "Vendredi 10 mais 2023",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 12,
                                                fontFamily: 'Helvetica.ttf'),
                                          ),
                                          TextSpan(
                                            text: " ( 10 jours restant )",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                fontFamily: 'Helvetica.ttf'),
                                          ),
                                        ]),
                                      ),
                                      leading: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFFFF5E5),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.calendar_month_rounded,
                                          color: Color(0xFFFFDC8F),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 20),
                                    child: const DottedDashedLine(
                                      height: 2,
                                      width: 330,
                                      axis: Axis.horizontal,
                                      dashColor: Colors.grey,
                                    ),
                                  ),
                                  Container(
                                    height: 70,
                                    width: 330,
                                    child: ListTile(
                                      title: const Text(
                                        "Facture impayé (05)",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12,
                                            fontFamily: 'Helvetica.ttf'),
                                      ),
                                      subtitle: const Text(
                                        "80 300 fcfa",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            fontFamily: 'Helvetica.ttf'),
                                      ),
                                      leading: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFD2D2D2),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          "assets/images/image 10.png",
                                          scale: 0.7,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 1,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    height: 150,
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          alignment: Alignment.topCenter,
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.navigate_next,
                                                color: Colors.black,
                                              )),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          alignment: Alignment.topCenter,
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.navigate_next,
                                                color: Colors.black,
                                              )),
                                        ),
                                      ],
                                    )),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              /* NETWORK PERFORMANCE BIG CONTAINER 9        */

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 380,
                    margin: const EdgeInsets.only(left: 16, top: 9),
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.2),
                            offset: const Offset(0, 2),
                            blurRadius: 7,
                            spreadRadius: 1,
                          )
                        ]),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Performance de mon accès internet",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto-Black.ttf',
                                  fontSize: 12),
                            ),
                            Text(
                              " Date : 30 Avril 2023",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 8,
                                  fontFamily: 'Roboto-black.ttf',
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFEBEBEC),
                                    borderRadius: BorderRadius.circular(4)),
                                child: const FaIcon(
                                  CupertinoIcons.up_arrow,
                                  color: Color(0xFF53BE89),
                                )),
                            Container(
                                child: RichText(
                                    text: const TextSpan(children: [
                              TextSpan(
                                  text: "Upload\n",
                                  style: TextStyle(
                                      fontFamily: 'Roboto-black.ttf',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 8,
                                      color: Colors.black)),
                              TextSpan(
                                  text: "198.6 Mb/ps\n",
                                  style: TextStyle(
                                      fontFamily: 'Roboto-black.ttf',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                      color: Colors.black)),
                              TextSpan(
                                  text: "Moyenne 189.2 MB/S",
                                  style: TextStyle(
                                      fontFamily: 'Roboto-black.ttf',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 8,
                                      color: Colors.black)),
                            ]))),
                            const SizedBox(
                              width: 17,
                            ),
                            Container(
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFEBEBEC),
                                    borderRadius: BorderRadius.circular(4)),
                                child: const FaIcon(
                                  CupertinoIcons.down_arrow,
                                  color: Color(0xFFFFB401),
                                )),
                            Container(
                                child: RichText(
                                    text: const TextSpan(children: [
                              TextSpan(
                                  text: "Download\n",
                                  style: TextStyle(
                                      fontFamily: 'Roboto-black.ttf',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 8,
                                      color: Colors.black)),
                              TextSpan(
                                  text: "198.6 Mb/ps\n",
                                  style: TextStyle(
                                      fontFamily: 'Roboto-black.ttf',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                      color: Colors.black)),
                              TextSpan(
                                  text: "Moyenne 189.2 MB/S",
                                  style: TextStyle(
                                      fontFamily: 'Roboto-black.ttf',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 8,
                                      color: Colors.black)),
                            ]))),
                            const SizedBox(
                              width: 20,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.navigate_next_rounded)),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),

              /* MY AVANTAGE BIG CONTAINER 10         */

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: 380,
                    margin: const EdgeInsets.only(left: 16, top: 12),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(0, 1),
                            spreadRadius: 7,
                            blurRadius: 3,
                          ),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Mes avantages",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: 30,
                                        width: 30,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          shape: BoxShape.circle,
                                        ),
                                        child: const FaIcon(
                                          Icons.phone,
                                          color: Colors.black,
                                        )),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    RichText(
                                        text: const TextSpan(children: [
                                      TextSpan(
                                        text: "Téléphonie fixe\n",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12),
                                      ),
                                      TextSpan(
                                        text: "Intra orange",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 8,
                                            fontFamily: 'Roboto-black.ttf'),
                                      ),
                                    ])),
                                  ],
                                )),
                            const Text(
                              "2 h 40 mn",
                              style: TextStyle(
                                  color: Color(0xFF081735),
                                  fontFamily: 'Roboto.ttf',
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const DottedDashedLine(
                          height: 2,
                          width: 350,
                          axis: Axis.horizontal,
                          dashColor: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: 30,
                                        width: 30,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          shape: BoxShape.circle,
                                        ),
                                        child: const FaIcon(
                                          Icons.phone_android_sharp,
                                          color: Colors.black,
                                        )),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    RichText(
                                        text: const TextSpan(children: [
                                      TextSpan(
                                        text: "Forfait data mobile\n",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12),
                                      ),
                                      TextSpan(
                                        text: "Cel 07 07 07 07 07",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 8,
                                            fontFamily: 'Roboto-black.ttf'),
                                      ),
                                    ])),
                                  ],
                                )),
                            const Text(
                              "14 Go/25 Go",
                              style: TextStyle(
                                  color: Color(0xFF081735),
                                  fontFamily: 'Roboto.ttf',
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const DottedDashedLine(
                          height: 2,
                          width: 350,
                          axis: Axis.horizontal,
                          dashColor: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: 30,
                                        width: 30,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          shape: BoxShape.circle,
                                        ),
                                        child: const FaIcon(
                                          Icons.tv,
                                          color: Colors.black,
                                        )),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    RichText(
                                        text: const TextSpan(children: [
                                      TextSpan(
                                        text: "Solde VOD",
                                        style: TextStyle(
                                            color: Color(0xFFC4C4C4),
                                            fontFamily: 'Roboto.ttf',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ])),
                                  ],
                                )),
                            const Text(
                              "10 000 fcfa",
                              style: TextStyle(
                                  color: Color(0xFFC4C4C4),
                                  fontFamily: 'Roboto.ttf',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container containerCard2(String text2, icons, bagtext) {
    return Container(
      height: 70,
      width: 72,
      margin: const EdgeInsets.all(2),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 1),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [boxShadow]),
      child: Column(children: [
        badges.Badge(
            position: badges.BadgePosition.topEnd(top: -10, end: -17),
            showBadge: true,
            badgeStyle: const badges.BadgeStyle(badgeColor: Colors.orange),
            badgeContent: Text(
              bagtext,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            child: Image.asset(
              icons,
              width: 30,
            )),
        Text(
          text2,
          style: const TextStyle(
              fontSize: 9,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto-Black.ttf'),
          textAlign: TextAlign.center,
        ),
      ]),
    );
  }

  Container containerCard(String images, String text) {
    return Container(
      height: 70,
      width: 65,
      margin: const EdgeInsets.only(left: 3),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 1),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [boxShadow]),
      child: Column(children: [
        Image.asset(
          images,
          width: 20,
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 9,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto-Black.ttf'),
          textAlign: TextAlign.center,
        ),
      ]),
    );
  }
}
