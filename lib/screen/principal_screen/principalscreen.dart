import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gptone/screen/principal_screen/child_principalscreen.dart';



class HomePrincipal extends StatefulWidget {
  const HomePrincipal({Key? key}) : super(key: key);

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
 int index = 0;
 final page = [
   const ChildPrincipalSceen(),
   const ChildPrincipalSceen(),
   const ChildPrincipalSceen(),
   const ChildPrincipalSceen(),
   const ChildPrincipalSceen()
 ];

  @override
  Widget build(BuildContext context) {

  return Scaffold(
      backgroundColor: Colors.grey[100],

      body: page[index],


      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.orange,
          backgroundColor: Colors.white,
          indicatorShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          
          labelTextStyle: const MaterialStatePropertyAll(TextStyle(fontSize: 10))
        ),
        child: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() {
            this.index = index;
          }),
          indicatorShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          destinations: [
            NavigationDestination(icon: Icon(Icons.home,color: Colors.black.withOpacity(0.2),), label: 'home'),
            const NavigationDestination(icon: Icon(CupertinoIcons.pencil_ellipsis_rectangle,color: Colors.black,), label: 'Ma box'),
            const NavigationDestination(icon: Icon(Icons.home,color: Colors.black,), label: 'Accueille'),
            const NavigationDestination(icon: Icon(Icons.phone_android,color: Colors.black,), label: 'Mes demandes'),
            const NavigationDestination(icon: Icon(CupertinoIcons.person_3_fill,color: Colors.black,), label: 'Ma Communauté'),

          ],

        ),
      ),


      

    );
  }
}
