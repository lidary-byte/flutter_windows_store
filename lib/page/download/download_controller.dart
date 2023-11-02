import 'dart:async';
import 'dart:core';

import 'package:background_downloader/background_downloader.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_windows_store/entity/download_task_record.dart';
import 'package:flutter_windows_store/event/task_number_event.dart';
import 'package:flutter_windows_store/util/app_event.dart';
import 'package:get/get.dart';

class DownloadController extends GetxController {
  StreamSubscription? _downloadListSubscription;

  final List<DownloadTaskRecord> _taskRecord = [];

  List<DownloadTaskRecord> get taskRecord => _taskRecord;

  /// 下载完成列表
  final List<TaskRecord> _completeTask = [];

  List<TaskRecord> get completeTask => _completeTask;

  @override
  void onReady() async {
    super.onReady();
    _registerDownloadListener();
    _refreshSqlDownloadList();

    _downloadListSubscription = AppEvent.getInstance()
        .eventBus
        .on<RefreshDownloadListEvent>()
        .listen((event) {
      _addDownloadList(event.id);
    });
  }

  void _registerDownloadListener() {
    FileDownloader()
        .registerCallbacks(
            taskStatusCallback: _downloadStatusCallback,
            taskProgressCallback: _downloadProgressCallback,
            taskNotificationTapCallback: _notificationTapCallback)
        .configureNotificationForGroup(FileDownloader.defaultGroup,
            // For the main download button
            // which uses 'enqueue' and a default group
            running: const TaskNotification(
                'Download {filename}', 'File: {filename} - {progress}'),
            complete: const TaskNotification(
                'Download {filename}', 'Download complete'),
            error: const TaskNotification(
                'Download {filename}', 'Download failed'),
            paused: const TaskNotification(
                'Download {filename}', 'Paused with metadata {metadata}'),
            progressBar: true)
        .configureNotification(
            complete: const TaskNotification(
                'Download {filename}', 'Download complete'),
            tapOpensFile: true); // dog can also open directly from tap
  }

  void _downloadStatusCallback(TaskStatusUpdate status) {
    debugPrint(
        '---------------------${status.status} ---- ${status.task.metaData}');
    if (status.status == TaskStatus.complete) {
      // _addCompleteDownloadList(
      //     TaskRecord(status.task, TaskStatus.complete, 1.0));
      _removeDownloadList(status.task.taskId);
    }
  }

  void _downloadProgressCallback(TaskProgressUpdate update) {
    debugPrint('---------------------${update.progress}');
    for (var element in taskRecord) {
      if (element.taskRecord.taskId == update.task.taskId) {
        element.progress = update.progress;
      }
    }
    this.update();
  }

  void _notificationTapCallback(Task task, NotificationType notificationType) {}

  void _addDownloadList(String id) async {
    final record = await FileDownloader().database.recordForId(id);
    if (record != null) {
      _taskRecord.add(DownloadTaskRecord(record));
      update();
    }
  }

  void _removeDownloadList(String taskId) async {
    _taskRecord.removeWhere((element) => element.taskRecord.taskId == taskId);
    update();
  }

  /// 获取sql存储的下载列表
  void _refreshSqlDownloadList() async {
    _completeTask.clear();
    final sqlDownloadList = await FileDownloader().database.allRecords();

    // 已下载
    _completeTask.addAll(sqlDownloadList
        .where((element) => element.status == TaskStatus.complete));
    sqlDownloadList
        .removeWhere((element) => element.status == TaskStatus.complete);

    for (var element in sqlDownloadList) {
      // 其他状态下的
      _taskRecord.add(DownloadTaskRecord(element));
    }
    update();
  }

  void _addCompleteDownloadList(TaskRecord taskRecord) async {
    _completeTask.insert(0, taskRecord);
    update();
  }

  @override
  void onClose() {
    FileDownloader().unregisterCallbacks();
    _downloadListSubscription?.cancel();
    super.onClose();
  }
}
