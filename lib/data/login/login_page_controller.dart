import 'package:get/get.dart';

class LoginController extends GetxController {
  bool obsecure = true;

  textFieldObsecure() {
    obsecure = !obsecure;
    update();
  }
}
