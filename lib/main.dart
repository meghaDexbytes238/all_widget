
//import 'package:allwidgetpractise/screens/textfield_screen.dart';
import 'package:allwidgetpractise/screens/drawer_demo.dart';
import 'package:allwidgetpractise/screens/drawer_seconddemo.dart';
import 'package:allwidgetpractise/screens/expansiontile_demo.dart';
import 'package:allwidgetpractise/screens/inputchips_demo.dart';
import 'package:allwidgetpractise/screens/stackdemo3.dart';
import 'package:flutter/material.dart';

import 'TextField/textformfieldasirtask.dart';
import 'api_integration/Employe/employe_screen.dart';
import 'api_integration/HomeForLiveApi.dart';
import 'api_integration/detail_page.dart';
import 'api_integration/getapilive.dart';
import 'api_integration/post_api_page.dart';
import 'gameFolder/firstpage.dart';

void main() {
  runApp(
   const MyApp()
  );
  print('megha');

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: AppStrings.applicationName,
    //   initialRoute: CustomRoutes.splashScreen,
    //   routes: CustomRoutes.routes,
    //   theme: CustomThemes.appTheme,
    // );
     return  const MaterialApp(
         debugShowCheckedModeBanner: false,
  // home: EmployeScreen(),
         home: DrawerSecondDemo(),
    // home:   GetApi(),
     );
  }
}


