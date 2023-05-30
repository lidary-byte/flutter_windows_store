import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_windows_store/constant/router_pages.dart';

List<NavigationPaneItem> mainNav() => [
      PaneItem(
          icon: const Icon(FluentIcons.home),
          title: const Text('首页'),
          body: RouterPages.pages[0]),
      PaneItem(
          icon: const Icon(FluentIcons.app_icon_default),
          title: const Text('应用'),
          body: RouterPages.pages[1]),
      PaneItem(
          icon: const Icon(FluentIcons.download),
          title: const Text('下载'),
          body: RouterPages.pages[2]),
      PaneItem(
          icon: const Icon(FluentIcons.settings),
          title: const Text('设置'),
          body: RouterPages.pages[3])
    ];
