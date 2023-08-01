import 'package:flutter/material.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:gptone/communaute_fibre/data/status_data.dart';

class SectionStatuts extends StatefulWidget {
  const SectionStatuts({super.key});

  @override
  State<SectionStatuts> createState() => _SectionStatutsState();
}

class _SectionStatutsState extends State<SectionStatuts> {
 
 final profile = StatutsSection.fectStatus();


  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 12),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.abc,
                      color: Colors.white,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              color: Color(0xFFD1AF29), shape: BoxShape.circle),
                          child: Image.asset(
                            "assets/images/or.png",
                            height: 20,
                            width: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          "OR",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Icon(
                        Icons.edit,
                        color: Color(0xFFFF7900),
                      ),
                    )
                  ],
                ),
              ),

              Container(
                height: 1,
                color: const Color(0xFFD9D9D9),
              ),
              ...List.generate(
                  profile.length,
                  (index) => Column(
                        children: [
                          _RowStatut(profile[index].statut, profile[index].statutvalur, profile[index].fulname,
                           profile[index].fulnamevalue,profile[index].ndFibere, profile[index].ndFiberevalue,
                           profile[index].login, profile[index].loginvalue, profile[index].clientNumber, 
                           profile[index].clientNumbervalue,),
                          _DottedLinge(),
                        ],
                      )),

             
            //  _tablestatus()
            //  _tablestatus()
            //  _tablestatus()
            //  _tablestatus()
              


            ],
          ),
        ),
      ],
    );
  }









  // ignore: non_constant_identifier_names
  _RowStatut(text1,text2,text3,text4,text5,text6,text7,text8,text9,text10) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
               text1
                ,style: const TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 17,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                text2,
                style: const TextStyle(
                    color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),
              )
            ],
          ),
          
          _DottedLinge(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text3,
                style: const TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 17,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                text4,
                style: const TextStyle(
                    color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),
              )
            ],
          ),
          _DottedLinge(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text5,
                style: const TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 17,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                text6,
                style: const TextStyle(
                    color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),
              )
            ],
          ),
          _DottedLinge(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text7,
                style: const TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 17,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                text8,
                style: const TextStyle(
                    color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),
              )
            ],
          ),
          _DottedLinge(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text8,
                style: const TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 17,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                text10,
                style: const TextStyle(
                    color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),
              )
            ],
          ),
          
       
        ],
      ),
    );
  }



  // _tablestatus(){
  //   return DataTable(
  //     columns: const [
  //       DataColumn(label: Text("text",style: TextStyle(color: Colors.black12),)),
  //        DataColumn(label: Text("text",style: TextStyle(color: Colors.black12),)),
  //         DataColumn(label: Text("text",style: TextStyle(color: Colors.black12),)),
  //          DataColumn(label: Text("text",style: TextStyle(color: Colors.black12),)),
  //           DataColumn(label: Text("text",style: TextStyle(color: Colors.black12),)),
  //     ],
  //      rows: List<DataRow> .generate(profile.length, (index) {
  //       return DataRow(cells: [
  //         DataCell(Text(profile[index].statut,style: TextStyle(color: Colors.black),)),
  //          DataCell(Text(profile[index].statut,style: TextStyle(color: Colors.black),)),
  //           DataCell(Text(profile[index].statut,style: TextStyle(color: Colors.black),)),
  //            DataCell(Text(profile[index].statut,style: TextStyle(color: Colors.black),)),
  //             DataCell(Text(profile[index].statut,style: TextStyle(color: Colors.black),)),
  //              DataCell(Text(profile[index].statut,style: TextStyle(color: Colors.black),))

  //       ]);
  //      }));
  // }




























  // ignore: non_constant_identifier_names
  _DottedLinge() {
    return DottedDashedLine(
      axis: Axis.horizontal,
      height: 2,
      width: MediaQuery.of(context).size.width,
      dashColor: const Color(0xFFD9D9D9),
    );
  }
}
