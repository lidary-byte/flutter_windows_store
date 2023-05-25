import 'package:flutter/material.dart';
import 'package:flutter_windows_store/page/download/download_controller.dart';
import 'package:get/get.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> with AutomaticKeepAliveClientMixin {

  final _controller = Get.put(DownloadController());

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const Center(
      child: Text('下载页面'),
    );
  }

  @override
  bool get wantKeepAlive =>  true;
}
