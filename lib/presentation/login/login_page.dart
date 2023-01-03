import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetResponsiveView {
  LoginPage({super.key});

  @override
  Widget phone() {
    return Scaffold(
      backgroundColor: Colors.yellow,
    );
  }

  @override
  Widget tablet() {
    return Scaffold(
      backgroundColor: Colors.black,
    );
  }

  @override
  Widget desktop() {
    return Scaffold(
      backgroundColor: Colors.black,
    );
  }
}
