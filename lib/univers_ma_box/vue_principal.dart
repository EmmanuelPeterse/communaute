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

class _PrinciaplScreenOfUniversState extends State<PrinciaplScreenOfUnivers>
    with TickerProviderStateMixin {
 

  @override
  Widget build(BuildContext context) {
    TabController controller = TabController(vsync: this, length: 2);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 238, 238),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 3),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DashboardHeader(),
              Column(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: TabBar(
                        controller: controller,
                        isScrollable: true,
                        indicatorWeight: 2,
                        indicatorPadding:
                            const EdgeInsets.symmetric(horizontal: 10),
                        indicatorColor: const Color(0xFFFF7900),
                        labelColor: const Color(0xff0ffff7900),
                        labelStyle: TextStyle(
                            color: const Color(0xff0ffff7900),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                        unselectedLabelColor: const Color(0xFF000000),
                        unselectedLabelStyle: TextStyle(
                            color: const Color(0xFF000000),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                        tabs: const [
                           Tab(child: Text("Ma Box")),
                           Tab(child: Text("Mes Services")),
                        ]),
                  ),
                ],
              ),

              const SizedBox(height: 20,),

              Container(
                height: .35.sh,
                width: MediaQuery.sizeOf(context).height,
                padding: const EdgeInsets.all(10),
                child: TabBarView(
                  controller: controller,
                  children: const [
                    DashboardMenu(),
                    DashboardPanelConnection(),
                  ],
                ),
              ),
              const DashboardPanelConnection(),
              const DasboardEquipementConnecte()
            ],
          ),
        ),
      ),
    );
  }

}
