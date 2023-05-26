import 'package:flutter/cupertino.dart';
import 'package:flutter_windows_store/page/details/app_details_page.dart';
import 'package:flutter_windows_store/page/download/download_page.dart';
import 'package:flutter_windows_store/page/home/home_page.dart';
import 'package:flutter_windows_store/page/setting/setting_page.dart';
import 'package:get/get.dart';

import '../main.dart';

class RouterPages {
  static const mainPageRouter = "/";
  static const homePageRouter = "/home_page";
  static const settingPageRouter = '/setting_page';
  static const downloadPageRouter = '/download_page';
  static const detailsPageRouter = '/details_page';

  static const List<Widget> pages = [
    HomePage(),
    DownloadPage(),
    DownloadPage(),
    SettingPage(),
  ];

  static const List pageNames = ['首页', 'page3', '下载', '设置'];

  static final List<GetPage> getPages = [
    GetPage(name: mainPageRouter, page: () => MainPage()),
    GetPage(name: homePageRouter, page: () => const HomePage()),
    GetPage(name: settingPageRouter, page: () => const SettingPage()),
    GetPage(name: downloadPageRouter, page: () => const DownloadPage()),
    GetPage(name: detailsPageRouter, page: () => AppDetailsPage())
  ];
}
