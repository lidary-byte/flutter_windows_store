import 'package:flutter_windows_store/entity/app_info.dart';
import 'package:flutter_windows_store/util/device_app.dart';
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
    installAppInfo.removeWhere((element) =>
        element.name.isBlank == true || element.fileVersion.isBlank == true);
    _appInfo.addAll(installAppInfo);
    update();
  }
}
