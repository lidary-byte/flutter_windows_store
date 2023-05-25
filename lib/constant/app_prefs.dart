import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPrefs {
  SharedPreferences? _prefs;

  static AppPrefs? _instance;

  static AppPrefs getInstance() {
    _instance ??= AppPrefs._internal();
    return _instance!;
  }

  AppPrefs._internal();

  Future<void> initPrefs() async {
    _prefs = await SharedPreferences.getInstance();

    var downloadPath = _prefs?.getString(_downloadPathKey);
    if (downloadPath == null) {
      final downDir = await getDownloadsDirectory();
      downloadPath = downDir?.path ?? '';
      _prefs?.setString(_downloadPathKey, downloadPath);
    }
  }

  String get token => _prefs?.getString(_tokenKey) ?? tokenValue;

  String get downloadPath => _prefs?.getString('downloadPath') ?? '';

  Future<void> saveToken(String? token) async {
    if (token == null || token.isEmpty) {
      await _prefs?.remove(_tokenKey);
      return;
    }
    await _prefs?.setString(_tokenKey, token);
  }

  Future<void> saveDownloadPath(String path) async {
    await _prefs?.setString(_downloadPathKey, path);
  }

  final String _downloadPathKey = 'downloadPath';
  final String _tokenKey = 'tokenPath';

  final String tokenValue =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJvcyI6IndpbjEwIiwiY2giOiI4LjYuMC4wNDAzIiwibXQiOiJMZW5vdm8gVGhpbmtCb29rIDE0cCBHZW4gMiIsIm9zQml0IjoiNjQiLCJzbiI6IjJhZDYxNTVmODg5ZWM3M2M3NGIxMWY4MDYyY2Y0ZWU3YmUxMjcyZjFmNGI3YjE3NjQzZTIzN2ZkYmU1NTAyMGEiLCJleHAiOjE2ODYxODc5NjMsInV1aWQiOiI0MTU0MDVBNC00NUJBLTExRUMtODBGMC04NEE5MzhCNDVGODMiLCJtYWMiOiI0Y2Q1NzcwYTcwMjEifQ.qWiepancBcorkKHlA7LVR9rgMyu4x1Fy4RR5M1feC1Q';
}
