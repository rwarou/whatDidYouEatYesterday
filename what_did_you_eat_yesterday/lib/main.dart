import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:what_did_you_eat_yesterday/routes/app_pages.dart';
import 'package:what_did_you_eat_yesterday/routes/app_routes.dart';
import 'package:what_did_you_eat_yesterday/utils/utils.dart';

void main() async {
  Injector.inject().then((v) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaleFactor: 1,
        ),
        child: child!,
      ),
      defaultTransition: Transition.fade,
      smartManagement: SmartManagement.keepFactory,
      initialRoute: AppRoutes.splash,
      getPages: AppPages.appPages,
      theme: ThemeData(
        fontFamily: ConstString.fontFamily,
        primaryColor: Colors.white,
        brightness: Brightness.light,
        primaryColorDark: Colors.black,
        canvasColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: ConstColors.white,
        ),
        // textSelectionTheme: const TextSelectionThemeData(
        //   cursorColor: ConstColors.defaultColor,
        //   selectionHandleColor: ConstColors.defaultColor,
        // ),
      ),
    );
  }
}
