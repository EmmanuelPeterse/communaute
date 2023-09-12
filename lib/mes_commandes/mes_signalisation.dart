import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MesSignalisation extends StatefulWidget {
  const MesSignalisation({super.key});

  @override
  State<MesSignalisation> createState() => _MesSignalisationState();
}

class _MesSignalisationState extends State<MesSignalisation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 243, 243),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 12.sp, horizontal: 12.sp),
          child: Column(
            children: [
             Row(
              children: [
                 const Icon(Icons.arrow_back, color: Colors.black,),
              SizedBox(width: 10.h),
              Text("Mes Signalisations",style:TextStyle(color: Colors.black, fontSize: 18.sp,fontWeight: FontWeight.w700),),
              ]
             ),
             SizedBox(
              height: 10.h,
             ),


              TextFormField(
                style: const TextStyle(color: Colors.black),
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
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide.none),
                ),
              ),

              const SizedBox(height: 10),

              Expanded(
                child: 
              ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index){
                return Column(
                  children: [

                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 12),
                     padding: const EdgeInsets.all(5),
                     decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                     ),
                    
                      child: Column(
                        children: [
                         Container(
                         padding: const EdgeInsets.all(12),
                          child:  ListTile(

                            title: Row(
                              children: [
                                Image.asset("assets/icon/attention.png"),
                               SizedBox(width: 5.h,),
                                 Text("data",style: TextStyle(color: const Color(0xFF1D2424,),fontSize: 12.sp, fontWeight: FontWeight.w500),)
                              ],
                            ),
                            
                            subtitle: Text("04/08/2023 08:10:22", style: TextStyle(color: Colors.black, fontSize: 12.sp,fontWeight: FontWeight.w500),),

                            trailing: ElevatedButton(onPressed: (){},
                             style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusDirectional.circular(9)
                              ),
                              elevation: 0
                              
                             ),
                             child: Text("En cours",style: TextStyle(color: Colors.black,fontSize: 18.sp, fontWeight: FontWeight.w500 ),)),
                          ),
                         ),

                          Container(
                           padding: const EdgeInsets.all(5),
                            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua epreh.",
                             style: TextStyle(color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.w500),
                             textAlign: TextAlign.justify,
                             ),
                          ),

                       Container(
                        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child:  Align(
                        alignment: Alignment.centerRight,
                        child:     ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                           side:  const BorderSide(
                            color: Color(0xFFFF6600))
                          ),
                           child: Text("Suivre",style: TextStyle(color: const Color(0xFFFF6600) , fontSize: 16.sp,fontWeight: FontWeight.w500),))
                       )
                       )
                      
                        ],
                      ),
                    ),
                    
                     Container(
                      margin: const EdgeInsets.symmetric(vertical: 12),
                     padding: const EdgeInsets.all(5),
                     decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                     ),
                    
                      child: Column(
                        children: [
                         Container(
                         padding: const EdgeInsets.all(12),
                          child:  ListTile(

                            title: Row(
                              children: [
                               Image.asset("assets/icon/attention.png"),
                               SizedBox(width: 5.h,),
                                 Text("data",style: TextStyle(color: const Color(0xFF1D2424,),fontSize: 12.sp, fontWeight: FontWeight.w500),)
                              ],
                            ),
                            
                            subtitle: Text("04/08/2023 08:10:22", style: TextStyle(color: Colors.black, fontSize: 12.sp,fontWeight: FontWeight.w500),),

                            trailing: ElevatedButton(onPressed: (){},
                             style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusDirectional.circular(9)
                              ),
                              elevation: 0
                             ),
                             child: Text("En cours",style: TextStyle(color: Colors.black,fontSize: 18.sp, fontWeight: FontWeight.w500 ),)),
                          ),
                         ),

                          Container(
                           padding: const EdgeInsets.all(5),
                            child: RichText(
                              text: TextSpan(
                                children: [

                                    TextSpan(
                                    text: "Description\n",
                                    style: TextStyle(color: const Color(0xFF1D2424), fontSize: 16.sp, fontWeight: FontWeight.w700),
                            
                                  ),

                                  TextSpan(
                                    text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua epreh.",
                                    style: TextStyle(color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.w500),
                            
                                  )
                                ]
                              )
                            )
                          ),

                       Container(
                        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child:  Align(
                        alignment: Alignment.centerRight,
                        child:     ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                           
                           side:  const BorderSide(
                            color: Color(0xFF1D2424))
                          ),
                           child: Text("Suivre",style: TextStyle(color: const Color(0xFF1D2424) , fontSize: 16.sp,fontWeight: FontWeight.w500),))
                       )
                       )
                      
                        ],
                      ),
                    )

                  ],
                );
              })
           
              )


           ],
          ),
        ),
      ),
         floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: const Color(0xFFFF6600),
        child: const Icon(Icons.add,color: Colors.white,size: 40,),
        ),
    );
  }
}