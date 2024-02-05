enum AppInfoType {
  name,
  companyName,
  fileVersion,
  productName,
  productVersion,
}

class AppInfo {
  final String name;
  final String companyName;
  final String fileVersion;
  final String productName;
  final String productVersion;

  AppInfo({
    required this.name,
    required this.companyName,
    required this.fileVersion,
    required this.productName,
    required this.productVersion,
  });

  factory AppInfo.fromMap(Map<String, String> map) {
    return AppInfo(
      name: map[AppInfoType.name.toString()] ?? '',
      companyName: map[AppInfoType.companyName.toString()] ?? '',
      fileVersion: map[AppInfoType.fileVersion.toString()] ?? '',
      productName: map[AppInfoType.productName.toString()] ?? '',
      productVersion: map[AppInfoType.productVersion.toString()] ?? '',
    );
  }

  factory AppInfo.allFromMap(Map<String, dynamic> map) {
    return AppInfo(
      name: map['DisplayName'] ?? '',
      companyName: map['Publisher'] ?? '',
      fileVersion: map['DisplayVersion'] ?? '',
      productName: '',
      productVersion: '',
    );
  }
}
