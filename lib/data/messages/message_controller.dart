import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageController extends GetxController
    with GetSingleTickerProviderStateMixin {
  int currentIndex = 0;

  final List<Tab> myTabs = const <Tab>[
    Tab(
      icon: Icon(
        CupertinoIcons.chat_bubble_fill,
      ),
    ),
    Tab(
      icon: Icon(
        CupertinoIcons.bag_fill,
      ),
    ),
    Tab(
      icon: Icon(
        CupertinoIcons.car_detailed,
      ),
    ),
  ];

  late TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
