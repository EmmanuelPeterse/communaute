import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ComAlerteBox extends StatefulWidget {
  const ComAlerteBox({super.key});

  @override
  State<ComAlerteBox> createState() => _ComAlerteBoxState();
}

class _ComAlerteBoxState extends State<ComAlerteBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        width: 100,
        alignment: Alignment.center,
        child: IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                title: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        right: 8,
                        left: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Surclassement",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w800),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.close,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 1,
                      color: Colors.black,
                    )
                  ],
                ),
                actions: <Widget>[
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(10),
                        child: Image.asset("assets/images/server.png"),
                      ),
                      Text(
                        "Whaou!",
                        style: TextStyle(
                            color: Color(
                              0xFFFFB400,
                            ),
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Align(
                          child: Text(
                            "Profitez généreusement et gratuitement du débit supérieur\n à votre formule internet actuelle pendant 30 jours.",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
         
         
          },
          icon: Icon(Icons.close),
        ),
      ),
    );
  }

  showAlerteBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return Container(
            child: AlertDialog(
              title: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Surclassement",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w800),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.close,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 1,
                    color: Colors.black,
                  )
                ],
              ),
              content: Column(
                children: [
                  Image.asset("assets/images/vip.png"),
                  Text(
                    "Whaou!",
                    style: TextStyle(
                        color: Color(
                          0xFFFFB400,
                        ),
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                    child: Align(
                      child: Text(
                        "Profitez généreusement et gratuitement du débit supérieur \n à votre formule internet actuelle pendant 30 jours.",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });

    Future<void> showAlert() async {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Test"),
              content: const Text("This is a test dialog"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("OK"))
              ],
            );
          });
    }
  }
}
