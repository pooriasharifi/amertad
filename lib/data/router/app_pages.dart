import 'package:amertad/data/router/app_router.dart';
import 'package:amertad/presentation/login/login_page.dart';
import 'package:amertad/presentation/messages/messages_page.dart';
import 'package:get/route_manager.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => LoginPage()),
    GetPage(name: Routes.messages, page: () => MessagesPage())
  ];
}
