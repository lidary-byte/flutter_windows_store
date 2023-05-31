import 'package:background_downloader/background_downloader.dart';
import 'package:flutter_windows_store/constant/app_prefs.dart';
import 'package:flutter_windows_store/event/task_number_event.dart';
import 'package:flutter_windows_store/util/app_event.dart';

class DownloadUtil {
  static DownloadUtil? _instance;

  static DownloadUtil getInstance() {
    _instance ??= DownloadUtil._internal();
    return _instance!;
  }

  DownloadUtil._internal();

  // final List<String> _taskIds = [];

  void download(String url, taskId, String fileName, String info) async {
// FileDownloader().registerCallbacks()
    await FileDownloader().trackTasks();

    final task = DownloadTask(
        url: url,
        directory: AppPrefs.getInstance().downloadPath,
        baseDirectory: BaseDirectory.temporary,
        taskId: taskId,
        filename: fileName,
        updates: Updates.statusAndProgress,
        metaData: info);

    final hasEnqueue = await FileDownloader().enqueue(task);

    if (hasEnqueue) {
      // _taskIds.add(task.taskId);
      AppEvent.getInstance()
          .eventBus
          .fire(RefreshDownloadListEvent(task.taskId));
    }
    // somewhere else: query the task status by getting a `TaskRecord`
// from the database
//     final record = await FileDownloader().database.recordForId(task.taskId);

//     print('Taskid ${record?.taskId} with task ${record?.task} has '
//         'status ${record?.status} and progress ${record?.progress}');

    // await FileDownloader().download(task);
  }
}
