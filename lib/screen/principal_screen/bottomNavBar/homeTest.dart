import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeTest extends StatefulWidget {
  const HomeTest({Key? key}) : super(key: key);

  @override
  State<HomeTest> createState() => _HomeTestState();
}

class _HomeTestState extends State<HomeTest> {

 /* List<Tab> tab =[
       Tab(child: Text("Mes service",style:TextStyle(color: Colors.orange),),
      Tab(child: Text("Facture",style:TextStyle(color: Colors.orange),),
      Tab(child: Text("Test debit"),),
      Tab(child: Text("Réseau local"),),
      Tab(child: Text("Mes Mes avantage"),),

  ];*/

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
              title: Text("Etat de mes service",),
              bottom: PreferredSize(
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
                      ),
              preferredSize: Size.fromHeight(50))

              ),

              body: SingleChildScrollView(
                child: Column(
                  children: [

                  ],
                ),
              ),

        ),


    );
  }
}

