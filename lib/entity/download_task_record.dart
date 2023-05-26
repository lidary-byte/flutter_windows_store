import 'package:background_downloader/background_downloader.dart';

class DownloadTaskRecord {
  double progress = 0;
  late TaskRecord taskRecord;

  DownloadTaskRecord(this.taskRecord, {double? progress}) {
    progress ??= taskRecord.progress;
  }
}
