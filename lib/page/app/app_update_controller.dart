import 'package:flutter_windows_store/entity/app_info.dart';
import 'package:flutter_windows_store/util/device_apps.dart';
import 'package:get/get.dart';

class AppUpdateController extends GetxController {
  final List<AppInfo> _appInfo = [];

  List<AppInfo> get appInfo => _appInfo;

  @override
  void onReady() {
    super.onReady();
    installAppList();
  }

  void installAppList() async {
    _appInfo.clear();

    final installAppInfo = await DeviceApps.getAllInstalledAppsInfo();
    _appInfo.addAll(
        installAppInfo.where((element) => element.installLocation.isNotEmpty));
    update();
  }
}
