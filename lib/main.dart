// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_idara_assignment_01/src/job_listing/job_listing.dart';
import 'package:tech_idara_assignment_01/src/login/login_screen.dart';
import 'package:tech_idara_assignment_01/src/register/register.dart';
import 'package:tech_idara_assignment_01/utils/app_theme.dart';
import 'package:tech_idara_assignment_01/utils/routers.dart';
import 'package:device_preview/device_preview.dart';

//-------------- Set Orienttion to portrait Only--------------//
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then(
    (_) {
      runApp(
        // DevicePreview(
        //   enabled: true,
        //   tools: [
        //     ...DevicePreview.defaultTools,
        //   ],
        //   builder: (context) =>
        MyApp(),
        // ),
      );
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(414, 996),
        builder: (context, child) {
          return MaterialApp(
            onGenerateRoute: AppRouter.generateRoute,
            theme: AppTheme.dark(),
            title: 'Tech Idara Assignment No # 01',
            debugShowCheckedModeBanner: false,
            home: LoginScreen(),
          );
        });
  }
}
