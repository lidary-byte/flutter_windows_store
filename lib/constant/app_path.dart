import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPath {
  SharedPreferences? _prefs;

  static AppPath? _instance;

  static AppPath getInstance() {
    _instance ??= AppPath._internal();
    return _instance!;
  }

  AppPath._internal();

  Future<void> initPrefs() async {
    _prefs = await SharedPreferences.getInstance();

    var downloadPath = _prefs?.getString(downloadPathKey);
    if (downloadPath == null) {
      final downDir = await getDownloadsDirectory();
      downloadPath = downDir?.path ?? '';
      _prefs?.setString(downloadPathKey, downloadPath);
    }
  }

  String get downloadPath => _prefs?.getString('downloadPath') ?? '';

  void saveDownloadPath(String path) async {
    await _prefs?.setString(downloadPathKey, path);
  }

  final String downloadPathKey = 'downloadPath';
}
