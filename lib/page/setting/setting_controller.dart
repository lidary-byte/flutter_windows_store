import 'package:file_picker/file_picker.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../constant/app_path.dart';

class SettingController extends GetxController {
  String _downloadPath = '';

  String get downloadPath => _downloadPath;

  @override
  void onReady() {
    super.onReady();
    _getDownloadPath();
  }

  void _getDownloadPath() {
    _downloadPath = AppPath.getInstance().downloadPath;
    update();
  }

  void changeDownloadPath() async {
    String? selectedDirectory = await FilePicker.platform
        .getDirectoryPath(dialogTitle: 'Windows Store');
    if (selectedDirectory != null) {
      AppPath.getInstance().saveDownloadPath(selectedDirectory);
      _getDownloadPath();
    }
  }
}
