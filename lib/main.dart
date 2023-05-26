
import 'package:flutter/material.dart';
import 'package:flutter_windows_store/constant/app_prefs.dart';
import 'package:flutter_windows_store/widget/desktop_scroll_behavior.dart';
import 'package:get/get.dart';

import 'constant/router_pages.dart';
import 'main_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(GetMaterialApp(
    title: 'Windows Store',
    theme: ThemeData(
      useMaterial3: true,
      primarySwatch: Colors.blue,
    ),
    debugShowCheckedModeBanner: false,
    getPages: RouterPages.getPages,
    scrollBehavior: DesktopScrollBehavior(),
  ));
}

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final _controller = Get.put(MainController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GetBuilder<MainController>(
            builder: (_) => Text(
                  RouterPages.pageNames[_controller.showPageIndex],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )),
      ),
      body: Row(
        children: [
          _rightBar(),
          Expanded(
            child: GetBuilder<MainController>(
                builder: (_) => PageView(
                      controller: _controller.pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: RouterPages.pages,
                    )),
          )
        ],
      ),
    );
  }

  Widget _rightBar() {
    return GetBuilder<MainController>(
        builder: (_) => NavigationRail(
              minWidth: 56,
              destinations: const [
                NavigationRailDestination(
                    icon: Icon(Icons.home), label: Text('首页')),
                NavigationRailDestination(
                    icon: Icon(Icons.find_in_page), label: Text('发现')),
                NavigationRailDestination(
                    icon: Icon(Icons.download), label: Text('下载')),
                NavigationRailDestination(
                    icon: Icon(Icons.settings), label: Text("设置"))
              ],
              selectedIndex: _controller.showPageIndex,
              labelType: NavigationRailLabelType.selected,
              onDestinationSelected: (index) => _controller.switchPage(index),
            ));
  }
}

/// 初始化一些设置
Future init() async {
  await AppPrefs.getInstance().initPrefs();
}


