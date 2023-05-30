import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_windows_store/constant/constant.dart';
import 'package:flutter_windows_store/main.dart';
import 'package:flutter_windows_store/page/details/app_details_controller.dart';
import 'package:flutter_windows_store/widget/app_comm_widget.dart';
import 'package:get/get.dart';
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
                          Expanded(
                            flex: 1,
                            child: Card(
                                child: GetBuilder<AppDetailsController>(
                                    builder: (_) => Column(
                                          children: [
                                            const SizedBox(height: 40),
                                            appIcon(
                                                _controller.details['logoFile'],
                                                size: 60),
                                            const SizedBox(height: 16),
                                            Text(
                                              _controller.details['softName'],
                                              style: TextStyle(fontSize: 22),
                                            )
                                          ],
                                        ))),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            flex: 2,
                            child: GetBuilder<AppDetailsController>(
                              builder: (_) => ListView(
                                children: [
                                  Card(
                                      padding: EdgeInsets.zero,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Text('屏幕截图'),
                                          ),
                                          const Divider(),
                                          SizedBox(
                                              height: 260,
                                              child: ListView.builder(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemBuilder: (context, index) =>
                                                    Padding(
                                                  padding: EdgeInsets.all(8),
                                                  child: Image.network(
                                                      _controller.appDetailsImg[
                                                          index]),
                                                ),
                                                itemCount: _controller
                                                    .appDetailsImg.length,
                                              ))
                                        ],
                                      )),
                                  const SizedBox(height: 16),
                                  Card(
                                      padding: EdgeInsets.zero,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Text('描述'),
                                          ),
                                          const Divider(),
                                          Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Text(_controller
                                                .details['detailInfo']),
                                          )
                                        ],
                                      )),
                                  const SizedBox(height: 16),
                                  Card(
                                      padding: EdgeInsets.zero,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Text('评论'),
                                          ),
                                          const Divider(),
                                          Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Text(_controller
                                                .details['detailInfo']),
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
            )));
  }
}
