import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../constant/app_prefs.dart';

class SettingController extends GetxController {
  String _downloadPath = '';

  String get downloadPath => _downloadPath;

  String _token = '';

  String get token => _token;

  final tokenController = TextEditingController();

  bool _tokenEdit = false;

  bool get tokenEdit => _tokenEdit;

  bool _visibleResetBtn = false;

  bool get visibleResetBtn => _visibleResetBtn;

  @override
  void onInit() {
    super.onInit();
    tokenController.addListener(() {
      bool visible = tokenController.text != AppPrefs.getInstance().tokenValue;
      debugPrint('---------------------${tokenController.text}');
      if (visible != _visibleResetBtn) {
        _visibleResetBtn = visible;
        update();
      }
    });
  }

  @override
  void onReady() {
    super.onReady();
    _getDownloadPath();
    _getToken();
  }


  void _getToken() {
    _token = AppPrefs.getInstance().token;
    tokenController.text = _token;
    update();
  }

  void saveToken() async {
    await AppPrefs.getInstance().saveToken(tokenController.text);
  }

  void resetToken() async {
    await AppPrefs.getInstance().saveToken(null);
    _getToken();
  }

  void changeTokenEdit() {
    _tokenEdit = !_tokenEdit;
    update();
  }

  void _getDownloadPath() {
    _downloadPath = AppPrefs.getInstance().downloadPath;
    update();
  }

  void changeDownloadPath() async {
    String? selectedDirectory = await FilePicker.platform
        .getDirectoryPath(dialogTitle: 'Windows Store');
    if (selectedDirectory != null) {
      await AppPrefs.getInstance().saveDownloadPath(selectedDirectory);
      _getDownloadPath();
    }
  }

  @override
  void dispose() {
    tokenController.dispose();
    super.dispose();
  }
}
