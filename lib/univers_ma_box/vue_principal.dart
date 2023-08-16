import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gptone/univers_ma_box/pincipal_section_widegt/dashboard_connection_panel.dart';
import 'package:gptone/univers_ma_box/pincipal_section_widegt/dashboard_equipement_connecte.dart';
import 'package:gptone/univers_ma_box/pincipal_section_widegt/dashboard_hearder.dart';
import 'package:gptone/univers_ma_box/pincipal_section_widegt/dashboard_menu.dart';

class PrinciaplScreenOfUnivers extends StatefulWidget {
  const PrinciaplScreenOfUnivers({super.key});

  @override
  State<PrinciaplScreenOfUnivers> createState() =>
      _PrinciaplScreenOfUniversState();
}

class _PrinciaplScreenOfUniversState extends State<PrinciaplScreenOfUnivers> {
  List<bool> _isSelect = [true, false];
  late Widget changeContenu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 238, 238),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 2),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DashboardHeader(),
              toggleButtons(),
              DashboardMenu(),
              DashboardPanelConnection(),
              DasboardEquipementConnecte()
            ],
          ),
        ),
      ),
    );
  }

  toggleButtons() {
    return Container(
      margin: EdgeInsets.only(left: 12),
      child: ToggleButtons(
        isSelected: _isSelect,
        fillColor: Color.fromARGB(255, 239, 238, 238),
        splashColor: Color.fromARGB(255, 239, 238, 238),
        renderBorder: false,
        children: [
          Container(
            height: 30,
            width: 68,
            margin: EdgeInsets.only(top: 12),
            decoration: BoxDecoration(
                border: _isSelect[0]
                    ? const Border(bottom: BorderSide(color: Color(0xFFFF7900)))
                    : const Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 239, 238, 238)))),
            child: Text("Ma box",
                style: TextStyle(
                    color: _isSelect[0]
                        ? Color(0xFFFF7900)
                        : Color.fromARGB(255, 0, 0, 0),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500)),
          ),
          Container(
            height: 30,
            width: 100,
            margin: EdgeInsets.only(top: 12, left: 5),
            decoration: BoxDecoration(
                border: _isSelect[1]
                    ? const Border(bottom: BorderSide(color: Color(0xFFFF7900)))
                    : const Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 239, 238, 238)))),
            child: Text("Mes services",
                style: TextStyle(
                    color: _isSelect[1]
                        ? Color(0xFFFF7900)
                        : Color.fromARGB(255, 0, 0, 0),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500)),
          ),
        ],
        onPressed: (index) {
          setState(() {
            _isSelect[index] = !_isSelect[index];

            for (int counter = 0; counter < _isSelect.length; counter++) {
              if (counter == index) {
                _isSelect[counter] = true;
              } else {
                _isSelect[counter] = false;
              }
            }
          });
        },
      ),
    );
  }
}
