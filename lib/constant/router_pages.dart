import 'package:flutter_windows_store/page/home/home_page.dart';
import 'package:get/get.dart';

import '../main.dart';

class RouterPages {

  static const mainPageRouter = "/";
  static const homePageRouter = "/home_page";


  static final List<GetPage> pages = [
    GetPage(name: mainPageRouter, page: () => MainPage()),
    GetPage(name: homePageRouter, page: () => HomePage())
  ];
}
