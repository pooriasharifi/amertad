import 'package:amertad/data/module/constans.dart';
import 'package:amertad/data/router/app_pages.dart';
import 'package:amertad/data/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApplication());
}

class MainApplication extends GetView {
  const MainApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: ColorSelecet.bg,
          textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 26,
                color: ColorSelecet.text,
                fontWeight: FontWeight.w700),
            subtitle2: TextStyle(
                fontSize: 16,
                color: ColorSelecet.text,
                fontWeight: FontWeight.w200),
            caption: TextStyle(
                fontSize: 16,
                color: ColorSelecet.black,
                fontWeight: FontWeight.w900),
            headline2: TextStyle(
                fontSize: 16,
                color: ColorSelecet.primery,
                fontWeight: FontWeight.w900),
            button: TextStyle(
                fontSize: 16,
                color: ColorSelecet.white,
                fontWeight: FontWeight.w900),
          )),
      getPages: AppPages.pages,
      initialRoute: Routes.INITIAL,
      builder: (context, child) {
        return Directionality(
            textDirection: TextDirection.ltr,
            child: GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: child!,
            ));
      },
    );
  }
}
