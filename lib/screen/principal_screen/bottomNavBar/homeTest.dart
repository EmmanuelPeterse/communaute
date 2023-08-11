import 'package:flutter/material.dart';

class HomeTest extends StatefulWidget {
  const HomeTest({Key? key}) : super(key: key);

  @override
  State<HomeTest> createState() => _HomeTestState();
}

class _HomeTestState extends State<HomeTest> {

  List<Container> container = [
    Container(
      height: 20,
      width: 100,
      color: Colors.grey,
    ),
    Container(
      color: Colors.black12,
    ),
    Container(
      color: Colors.grey,
    ),
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.yellow,
    ),


  ];

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 5,
        child: Scaffold(

          appBar: AppBar(
            backgroundColor: Colors.yellow,
              title: const Text("Etat de mes service",),
              bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(50),
                  child: TabBar(
                      tabs: [
                        Tab(text: 'Mes service',),
                        Tab(text: 'Test debitFacture',),
                        Tab(text: 'Test debit',),
                        Tab(text: 'Réseau local',),
                        Tab(text: 'Mes Mes avantage',)

                       ]                    ,
                    indicatorColor: Colors.orange,
                    indicatorWeight: 6,
                    isScrollable: true,
                    labelColor: Colors.orange,
                    labelStyle: TextStyle(fontFamily: 'Roboto-Black.ttf',
                         fontWeight: FontWeight.w500,fontSize: 12),
                      ))

              ),

              body: const SingleChildScrollView(
                child: Column(
                  children: [

                  ],
                ),
              ),

        ),


    );
  }
}

