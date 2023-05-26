import 'dart:convert';

import 'package:background_downloader/background_downloader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_windows_store/page/download/download_controller.dart';
import 'package:get/get.dart';

import '../../widget/app_comm_widget.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage>
    with AutomaticKeepAliveClientMixin {
  final _controller = Get.put(DownloadController());

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GetBuilder<DownloadController>(
        builder: (context) => CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
                child: Text(
              '下载列表',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )),
            SliverList.builder(
              itemBuilder: (context, index) {
                final task = _controller.taskRecord[index].taskRecord.task;
                final info = jsonDecode(task.metaData);
                return ListTile(
                  leading: appIcon(info['icon'] ?? ''),
                  title: Text(info['name'] ?? task.metaData),
                  subtitle: AnimatedContainer(
                      height: 35,
                      duration: const Duration(milliseconds: 200),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: LinearProgressIndicator(
                                value: _controller.taskRecord[index].progress,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text('${(_controller.taskRecord[index].progress * 100).round()}%'),
                            )
                          ],
                        ),
                      )),
                  trailing: commBtn('安装', onTap: () async {
                    await FileDownloader().openFile(task: task);
                  }),
                );
              },
              itemCount: _controller.taskRecord.length,
            ),
            const SliverToBoxAdapter(
                child: Text(
              '下载完成列表',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )),
            SliverList.builder(
              itemBuilder: (context, index) {
                final task = _controller.completeTask[index].task;
                final info = jsonDecode(task.metaData);
                return ListTile(
                  leading: appIcon(info['icon'] ?? ''),
                  title: Text(
                    info['name'] ?? task.metaData,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('文件路径:${task.directory}\\${task.filename}'),
                  trailing: commBtn('安装', onTap: () async {
                    await FileDownloader().openFile(task: task);
                  }),
                );
              },
              itemCount: _controller.completeTask.length,
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
