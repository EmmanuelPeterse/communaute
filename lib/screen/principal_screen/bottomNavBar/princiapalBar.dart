import 'package:flutter/material.dart';
import 'Navigationtext.dart';


class PrinciaplNavigation extends StatefulWidget {
  const PrinciaplNavigation({Key? key}) : super(key: key);

  @override
  State<PrinciaplNavigation> createState() => _PrinciaplNavigationState();
}

class _PrinciaplNavigationState extends State<PrinciaplNavigation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mon application'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(56.0),
            child: FloatingBottomNavigationBar(),
          ),
        ),
        body: Column(
          children: [

          ],

        ),

        floatingActionButton: FloatingBottomNavigationBar(),

      ),


    );
  }
}
