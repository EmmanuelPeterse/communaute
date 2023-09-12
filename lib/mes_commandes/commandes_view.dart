import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gptone/mes_commandes/form_prise_rdv/rdv_form_view.dart';
import 'package:gptone/mes_commandes/mes_signalisation.dart';
import 'package:gptone/mes_commandes/timeline_widegt/time_line_view.dart';
import 'package:gptone/mes_commandes/prise_de_rdv_widegt/prise_de_rendezvous_form.dart';


class CommandeView extends StatefulWidget {
  const CommandeView({super.key});

  @override
  State<CommandeView> createState() => _CommandeViewState();
}

class _CommandeViewState extends State<CommandeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 243, 243),
        body: SafeArea(
            child: Container(
          margin: EdgeInsets.symmetric(vertical: 13.h, horizontal: 12.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.arrow_back, color: Colors.black),
                  const SizedBox(width: 12,),
                  Text(
                    "Mes commandes",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Rechercher',
                  suffixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 3),
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                  title: Text(
                                    "Id commande",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  subtitle: Text(
                                    "04/08/2023 08:10:22",
                                    style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  trailing: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Colors.blue.shade100
                                      ),
                                      child: Text(
                                        "En cours",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500),
                                      )),
                                      leading: Image.asset("assets/icon/Group.png")),
                                      

                              Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 12),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color(0xFFFFFFFF),
                                            side: const BorderSide(
                                                color: Colors.black)),
                                        child: Text(
                                          "Detail",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500),
                                        )),
                                    SizedBox(width: 10.h),
                                    ElevatedButton(
                                        onPressed: () {
                                              // Navigator.push(context, MaterialPageRoute(builder: (context)=> const MesSignalisation()));
                                            //  Navigator.push(context, MaterialPageRoute(builder: (context)=> const SuiveMesCommandes()));
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const RdvFormView()));
                                            //  Navigator.push(context, MaterialPageRoute(builder: (context)=> const PriseDeRendevousForm()));

                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color(0xFFFF6600)),
                                        child: Text(
                                          "Suivre",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500),
                                        )),
                                  ],
                                ),
                              )

                            ],
                          )),


                      Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 3),
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                  title: Text(
                                    "Id commande",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  subtitle: Text(
                                    "04/08/2023 08:10:22",
                                    style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  trailing: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color(0xFFCCF3B9)),
                                      child: Text(
                                        "Terminer",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500),
                                      )),
                              
                                       leading: Image.asset("assets/icon/Group.png")),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 12),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color(0xFFFFFFFF),
                                            side: const BorderSide(
                                                color: Color(0xFF000000))),
                                        child: Text(
                                          "Detail",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500),
                                        )),
                                    SizedBox(width: 10.h),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ],
                  );
                }),
              )
            ],
          ),


        )),

     
        
        );
  }
}
