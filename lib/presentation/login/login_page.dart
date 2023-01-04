import 'dart:convert';

import 'package:amertad/data/login/login_page_controller.dart';
import 'package:amertad/data/module/button.dart';
import 'package:amertad/data/module/constans.dart';
import 'package:amertad/data/module/text_field.dart';
import 'package:amertad/data/router/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class LoginPage extends GetResponsiveView {
  @override
  LoginController controller = Get.put(LoginController());
  LoginPage({super.key});

  @override
  Widget phone() {
    return phoneLayote();
  }

  @override
  Widget tablet() {
    return const Scaffold(
      backgroundColor: Colors.black,
    );
  }

  @override
  Widget desktop() {
    return const Scaffold(
      backgroundColor: Colors.black,
    );
  }

  Widget phoneLayote() {
    return GetBuilder<LoginController>(builder: (controller) {
      Map data = {};
      return Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Get.width / 15, vertical: Get.height / 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: loginComponent(controller, data),
          ),
        ),
      );
    });
  }

  List<Widget> loginComponent(LoginController controller, data) {
    return <Widget>[
      const Spacer(),
      Text(
        'Sign in',
        style: Get.textTheme.headline1,
      ),
      const SizedBox(
        height: 45,
      ),
      TxtField(
        onSaved: (value) {
          data['identifier'] = value.toString();
        },
        formKey: keys.key1,
        obsecureText: false,
        perfixIcon: Icon(
          CupertinoIcons.person,
          color: ColorSelecet.black,
        ),
        keyboardType: TextInputType.emailAddress,
        labelText: 'Email or Phone',
        textInputAction: TextInputAction.next,
      ),
      const SizedBox(
        height: 15,
      ),
      TxtField(
        onSaved: (value) {
          data['password'] = value.toString();
        },
        formKey: keys.key2,
        obsecureText: controller.obsecure,
        perfixIcon: Icon(
          CupertinoIcons.lock,
          color: ColorSelecet.black,
        ),
        keyboardType: TextInputType.emailAddress,
        labelText: 'Password',
        textInputAction: TextInputAction.done,
        suffixIcon: InkWell(
          onTap: () => controller.textFieldObsecure(),
          child: Icon(
            CupertinoIcons.eye,
            color: ColorSelecet.black,
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Text(
          'Forgot Password?',
          style: Get.textTheme.headline2,
        ),
      ),
      const SizedBox(
        height: 40,
      ),
      InkWell(
        onTap: () {
          keys.key1.currentState!.save();
          keys.key2.currentState!.save();
          controller.signIn(jsonEncode(data));
        },
        child: Btn(
          hasBorder: false,
          title: 'title',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Continue',
                style: Get.textTheme.button,
              ),
              const SizedBox(
                width: 20,
              ),
              Icon(
                CupertinoIcons.arrow_right,
                color: ColorSelecet.white,
              )
            ],
          ),
        ),
      ),
      const Spacer(),
      Center(
        child: RichText(
            text: TextSpan(
                text: 'New here? ',
                style: Get.textTheme.subtitle2!
                    .copyWith(fontWeight: FontWeight.w400),
                children: [
              TextSpan(
                  text: 'Create an account',
                  style: Get.textTheme.headline2!
                      .copyWith(fontWeight: FontWeight.w600))
            ])),
      )
    ];
  }
}

class keys {
  static final key1 = GlobalKey<FormState>();
  static final key2 = GlobalKey<FormState>();
}
