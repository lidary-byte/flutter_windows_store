import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_windows_store/entity/app_info.dart';

class DeviceApps {
  static Future<String> getAppVersion({required String path}) async {
    try {
      var file = File(path);
      if (await file.exists()) {
        var versionInfo = await Process.run('powershell.exe', [
          '-Command',
          '& { (Get-Item "$path").VersionInfo.ProductVersion }'
        ]);

        return versionInfo.stdout.toString().trim();
      } else {
        debugPrint("File not exists");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return '';
  }

  static Future<AppInfo> getAppAllInfo({required String path}) async {
    try {
      var file = File(path);
      if (await file.exists()) {
        var appInfoMap = Map.fromEntries(AppInfoType.values.map((type) {
          var value = Process.runSync('powershell.exe', [
            '-Command',
            '& { (Get-Item "$path").VersionInfo.${type.toString().split('.').last} }'
          ]);

          return MapEntry(type.toString(), value.stdout.toString().trim());
        }));

        return AppInfo.fromMap(appInfoMap);
      } else {
        debugPrint("File not exists");
      }
    } catch (e) {
      debugPrint(e.toString());
    }

    return AppInfo(
      name: '',
      companyName: '',
      fileVersion: '',
      productName: '',
      productVersion: '',
    );
  }

  static Future<List<AppInfo>> getAllInstalledAppsInfo() async {
    try {
      final processes = await Process.run('powershell.exe', [
        '-Command',
        'Get-ItemProperty HKLM:\\Software\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\*, HKLM:\\Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\* | Select-Object DisplayName, Publisher, DisplayVersion | ConvertTo-Json -Depth 1'
      ]);

      if (processes.exitCode == 0) {
        try {
          if (processes.exitCode != 0) {
            throw processes.stderr;
          }

          final jsonData = processes.stdout as String;
          if (jsonData.trim().isEmpty) {
            return [];
          }

          List<dynamic> appList;
          try {
            appList = jsonDecode(jsonData).cast<Map<String, dynamic>>();
          } catch (e) {
            debugPrint('Error parsing JSON data: $e');
            return [];
          }

          return appList.map((appMap) => AppInfo.allFromMap(appMap)).toList();
        } catch (e) {
          debugPrint("Error :$e");
        }
      } else {
        debugPrint("Error getting installed apps info");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return [];
  }
}
