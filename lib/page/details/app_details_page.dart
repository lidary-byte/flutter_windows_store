import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_windows_store/constant/constant.dart';
import 'package:flutter_windows_store/main.dart';
import 'package:flutter_windows_store/page/details/app_details_controller.dart';
import 'package:flutter_windows_store/widget/app_comm_widget.dart';
import 'package:get/get.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:window_manager/window_manager.dart';

class AppDetailsPage extends StatelessWidget {
  AppDetailsPage({Key? key}) : super(key: key);
  final _controller = Get.put(AppDetailsController());
  final _themeController = Get.find<AppThemeController>();

  @override
  Widget build(BuildContext context) {
    return material.Scaffold(
        backgroundColor: Colors.transparent,
        body: NavigationView(
            appBar: NavigationAppBar(
              title: const DragToMoveArea(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    appTitle,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              actions: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Padding(
                    padding: const EdgeInsetsDirectional.only(end: 8.0),
                    child: GetBuilder<AppThemeController>(
                        builder: (_) => ToggleSwitch(
                              content: Text(_themeController.modeText),
                              checked: _themeController.isDark,
                              onChanged: (v) => _themeController.changeTheme(),
                            ))),
                SizedBox(
                  width: 138,
                  height: 50,
                  child: GetBuilder<AppThemeController>(
                      builder: (_) => WindowCaption(
                            brightness: _themeController.theme.brightness,
                            backgroundColor: Colors.transparent,
                          )),
                )
              ]),
            ),
            content: GetBuilder<AppDetailsController>(
              builder: (_) => _controller.details.isEmpty
                  ? Container(
                      alignment: Alignment.center, child: const ProgressRing())
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          _appIntroduction(),
                          const SizedBox(width: 8),
                          Expanded(
                              flex: 2,
                              child: CustomScrollView(
                                slivers: [
                                  SliverList(
                                      delegate: SliverChildListDelegate([
                                    _screenshots(),
                                    const SizedBox(height: 16),
                                    _describe(),
                                    const SizedBox(height: 16),
                                    const Card(
                                        padding: EdgeInsets.zero,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(12.0),
                                              child: Text('评论'),
                                            ),
                                            Divider(),
                                          ],
                                        )),
                                  ])),
                                  SliverPadding(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    sliver: _comment(),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
            )));
  }

  Widget _comment() {
    return SliverStack(children: [
      const SliverPositioned.fill(
          child: Card(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.zero, topRight: Radius.zero),
              child: SizedBox.shrink())),
      SliverList.builder(
        itemBuilder: (context, index) {
          final item = _controller.commentList[index];
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(item['profilePicUrl']),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [Text(item['nickName'])],
                      ),
                      const SizedBox(height: 6),
                      Text(
                        item['contentInfo']['text'],
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white.withAlpha(180)),
                      ),
                      const SizedBox(height: 12),
                      const Divider()
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: _controller.commentList.length,
      )
    ]);
  }

  Widget _describe() {
    return Card(
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('描述'),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(_controller.details['detailInfo']),
            )
          ],
        ));
  }

  Widget _screenshots() {
    return Card(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text('屏幕截图'),
          ),
          const Divider(),
          SizedBox(
              height: 260,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image.network(_controller.appDetailsImg[index]),
                ),
                itemCount: _controller.appDetailsImg.length,
              ))
        ],
      ),
    );
  }

  Widget _appIntroduction() {
    return Expanded(
      flex: 1,
      child: Card(
          child: GetBuilder<AppDetailsController>(
              builder: (_) => Column(
                    children: [
                      const SizedBox(height: 80),
                      appIcon(_controller.details['logoFile'],
                          size: 120, radius: 4),
                      const SizedBox(height: 22),
                      Text(
                        _controller.details['softName'],
                        style: const TextStyle(fontSize: 22),
                      ),
                      const SizedBox(height: 40),
                      FilledButton(
                          child: Container(
                              width: 160,
                              height: 25,
                              alignment: Alignment.center,
                              child: const Text(
                                '安装',
                                textAlign: TextAlign.center,
                              )),
                          onPressed: () {}),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${int.parse(_controller.details['score']) / 20}\n评分',
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(width: 40),
                          const Divider(
                            direction: Axis.vertical,
                            size: 50,
                          ),
                          const SizedBox(width: 40),
                          Text(
                            '${_controller.commentSize}\n评论数',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ],
                  ))),
    );
  }
}
