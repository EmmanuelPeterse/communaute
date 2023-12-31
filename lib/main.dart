import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gptone/mes_commandes/commandes_view.dart';
import 'package:gptone/univers_ma_box/vue_principal.dart';
import 'communaute_fibre/widget/show_alert_box.dart';
import 'communaute_fibre/widget/widget_sous_profile/info_filleuls.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'First Method',

              // You can use the library anywhere in the app even in theme
              theme: ThemeData(
                primarySwatch: Colors.blue,
                textTheme:
                    Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
              ),
              home: CommandeView()
              // 
              //PrinciaplScreenOfUnivers()
              //  PageCommunauteFibre()
              );
        });
  }
}
