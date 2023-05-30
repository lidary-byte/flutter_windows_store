import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_windows_store/page/setting/setting_controller.dart';
import 'package:get/get.dart';

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
    return material.Scaffold(
      body: GetBuilder<SettingController>(
        builder: (_) => ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            const Text(
              '偏好设置',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            // Token
            Row(
              children: [
                const Icon(
                  FluentIcons.laptop_secure,
                  size: 24,
                ),
                const SizedBox(width: 16),
                const Text('请输入你的Token', style: TextStyle(fontSize: 16)),
                const Expanded(child: SizedBox.shrink()),
                Visibility(
                  visible: _controller.visibleResetBtn,
                  child: FilledButton(
                      child: const Text('重置'),
                      onPressed: () => _controller.resetToken()),
                ),
                const SizedBox(
                  width: 16,
                ),
                FilledButton(
                  child: Text(_controller.tokenEdit ? '保存' : '更改'),
                  onPressed: () => _controller.changeTokenEdit(),
                )
              ],
            ),
            const SizedBox(height: 12),
            TextBox(
              controller: _controller.tokenController,
              enabled: _controller.tokenEdit,
              maxLines: null,
              onChanged: (text) {},
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                const Icon(
                  FluentIcons.download,
                  size: 24,
                ),
                const SizedBox(width: 16),
                const Text('下载文件保存路径', style: TextStyle(fontSize: 16)),
                const Expanded(child: SizedBox.shrink()),
                FilledButton(
                  child: const Text('更改'),
                  onPressed: () => _controller.changeDownloadPath(),
                )
              ],
            ),
            const SizedBox(height: 12),
            Text(_controller.downloadPath),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
