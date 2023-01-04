import 'dart:convert';
import 'dart:io';

import 'package:amertad/data/service/server.dart';
import 'package:get/get.dart';

import '../module/snack.dart';

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
      } else {
        errorSnackBar(title: 'خطا', msg: '${jsonResponse['message']}');
      }
    });
  }
}
