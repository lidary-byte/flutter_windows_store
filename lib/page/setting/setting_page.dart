import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_windows_store/page/setting/setting_controller.dart';
import 'package:flutter_windows_store/widget/app_comm_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage>
    with AutomaticKeepAliveClientMixin {
  final _controller = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GetBuilder<SettingController>(
      builder: (_) => ListView(
        children: [
          const Text(
            '偏好设置',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          ListTile(
            leading: const Icon(Icons.token),
            title: const Text('Token'),
            subtitle: TextField(
              controller: _controller.tokenController,
              enabled: _controller.tokenEdit,
              maxLines: null,
              onChanged: (text){

              },
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Visibility(
                  visible: _controller.visibleResetBtn,
                  child: commBtn('重置', onTap: () => _controller.resetToken()),
                ),
                const SizedBox(
                  width: 16,
                ),
                commBtn(_controller.tokenEdit ? '保存' : '更改',
                    onTap: () => _controller.changeTokenEdit())
              ],
            ),
            titleTextStyle: const TextStyle(
                fontWeight: FontWeight.w600, color: Colors.black, fontSize: 16),
            leadingAndTrailingTextStyle: const TextStyle(fontSize: 14),
          ),
          ListTile(
            leading: const Icon(Icons.download),
            title: const Text('文件保存路径'),
            subtitle: Text(_controller.downloadPath),
            trailing: commBtn('更改'),
            titleTextStyle: const TextStyle(
                fontWeight: FontWeight.w600, color: Colors.black, fontSize: 16),
            leadingAndTrailingTextStyle: const TextStyle(fontSize: 14),
            onTap: () => _controller.changeDownloadPath(),
          ),
          IconButton(
              onPressed: () async {
                _controller.onReady();
              },
              icon: Icon(Icons.download))
        ],
      ),
    );
    // Container(
    //   child: IconButton(
    //       onPressed: () async {
    //         String? selectedDirectory =
    //             await FilePicker.platform.getDirectoryPath();
    //
    //         if (selectedDirectory != null) {
    //           debugPrint('--------------------${selectedDirectory}');
    //         }
    //       },
    //       icon: Icon(Icons.download)));
  }

  @override
  bool get wantKeepAlive => true;
}
