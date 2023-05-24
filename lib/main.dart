import 'package:flutter/material.dart';
import 'package:flutter_windows_store/page/home/home_page.dart';
import 'package:get/get.dart';

import 'constant/router_pages.dart';
import 'main_controller.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'Windows Store',
    theme: ThemeData(
      useMaterial3: true,
      primarySwatch: Colors.blue,
    ),
    getPages: RouterPages.pages,
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
        title: const Text('Windows Store'),
      ),
      body: Row(
        children: [
          _rightBar(),
          Expanded(
            child: GetBuilder<MainController>(
                builder: (_) => PageView(
                      controller: _controller.pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        HomePage(),
                        const Text('data2'),
                        const Text('data3'),
                        const Text('data4'),
                      ], //禁止ViewPager的左右滑动
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
                    icon: Icon(Icons.library_music), label: Text('音乐库')),
                NavigationRailDestination(
                    icon: Icon(Icons.person), label: Text(""))
              ],
              selectedIndex: _controller.showPageIndex,
              labelType: NavigationRailLabelType.selected,
              onDestinationSelected: (index) => _controller.switchPage(index),
            ));
  }
}
