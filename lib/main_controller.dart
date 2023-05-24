import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  final _pageController = PageController();

  PageController get pageController => _pageController;

  int showPageIndex = 0;

  void switchPage(int index) {
    if (showPageIndex == index) {
      return;
    }
    _pageController.jumpToPage(index);
    showPageIndex = index;
    update();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
