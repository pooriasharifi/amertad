import 'dart:convert';

import 'package:amertad/data/service/server.dart';
import 'package:get/get.dart';

import '../module/snack.dart';
import '../router/app_router.dart';

class LoginController extends GetxController {
  bool obsecure = true;

  textFieldObsecure() {
    obsecure = !obsecure;
    update();
  }

  signIn(data) {
    var res = RequestHandler().postDate(posturl: 'pre-login', postBody: data);
    res.then((value) async {
      var jsonResponse = jsonDecode(utf8.decode(value.bodyBytes));
      if (value.statusCode == 200) {
        okSnackBar(title: 'YOHO', msg: '${jsonResponse['status']}');
        Get.toNamed(Routes.messages);
      } else {
        errorSnackBar(title: 'error', msg: '${jsonResponse['message']}');
      }
    });
  }
}
