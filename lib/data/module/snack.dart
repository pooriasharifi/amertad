import 'package:flutter/material.dart';
import 'package:get/get.dart';

errorSnackBar({title, msg}) {
  Get.snackbar(
    '$title',
    '$msg',
    overlayBlur: 4,
    backgroundColor: Colors.red,
    dismissDirection: DismissDirection.startToEnd,
    titleText: Text(
      '$title',
      textDirection: TextDirection.rtl,
      style: Get.textTheme.headline1,
    ),
    messageText: Text('$msg',
        textDirection: TextDirection.rtl, style: Get.textTheme.headline1),
    animationDuration: Duration(milliseconds: 550),
    snackPosition: SnackPosition.BOTTOM,
    margin: const EdgeInsets.all(90),
    duration: const Duration(seconds: 3),
  );
}

okSnackBar({title, msg}) {
  Get.snackbar(
    '$title',
    '$msg',
    overlayBlur: 4,
    backgroundColor: Colors.green,
    dismissDirection: DismissDirection.startToEnd,
    // titleText: Text('$title',textDirection: TextDirection.rtl,style:Get.textTheme.headline1,),
    messageText: Text('$msg',
        textDirection: TextDirection.rtl, style: Get.textTheme.headline3),

    animationDuration: Duration(milliseconds: 550),
    duration: const Duration(seconds: 3),
    snackPosition: SnackPosition.BOTTOM,
    margin: const EdgeInsets.all(90),
  );
}
