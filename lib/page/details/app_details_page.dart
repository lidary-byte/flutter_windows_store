import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:flutter_windows_store/constant/constant.dart';
import 'package:flutter_windows_store/main.dart';
import 'package:flutter_windows_store/page/details/app_details_controller.dart';
import 'package:flutter_windows_store/widget/app_comm_widget.dart';
import 'package:flutter_windows_store/widget/status_page.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:url_launcher/url_launcher.dart';
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
              builder: (_) => StatusPage(
                  contentWidget: () => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            _appIntroduction(),
                            const SizedBox(width: 8),
                            Expanded(
                              flex: 2,
                              child: RefreshConfiguration(
                                footerTriggerDistance: 200,
                                child: SmartRefresher(
                                  controller: _controller.refreshController,
                                  enablePullDown: false,
                                  enablePullUp: true,
                                  footer: CustomFooter(
                                    height: 40,
                                    builder: (_, mode) {
                                      Widget? body;
                                      if (mode == LoadStatus.failed) {
                                        body = GestureDetector(
                                          onTap: _controller.appComment,
                                          child: const Text("加载失败, 点击重试！"),
                                        );
                                      } else if (mode == LoadStatus.loading) {
                                        body = const ProgressRing();
                                      } else if (mode == LoadStatus.noMore) {
                                        body = const Text("没有更多数据了!");
                                      }
                                      return SizedBox(
                                        child: Center(child: body),
                                      );
                                    },
                                  ),
                                  onLoading: _controller.appComment,
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
                                        padding:
                                            const EdgeInsets.only(bottom: 15),
                                        sliver:
                                            GetBuilder<AppDetailsController>(
                                                id: 'comment',
                                                builder: (_) => _comment()),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                  status: _controller.pageStatus),
            )));
  }

  /// 评论
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
                  backgroundImage: NetworkImage(item.profilePicUrl ?? ''),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [Text(item.nickName ?? '')],
                      ),
                      const SizedBox(height: 6),
                      _itemComment(item.contentInfo?.text ?? ''),
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

  Widget _itemComment(String comment) => HtmlWidget(
        comment,
        renderMode: RenderMode.column,
        textStyle: const TextStyle(fontSize: 14),
      );

  /// app相关描述
  Widget _describe() {
    var info =
        "${_controller.details?.detailInfo?.trimLeft().trimRight().replaceAll("\n", "</br>")}";
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
            HtmlWidget(
              '''<div class='app_desc'>$info</div>''',
              onTapUrl: (url) async {
                await launchUrl(Uri.parse("sms:5550101234"));
                return true;
              },
              customStylesBuilder: (element) => element.className == 'app_desc'
                  ? {
                      'padding': '12px',
                    }
                  : null,
              renderMode: RenderMode.column,
              textStyle: const TextStyle(fontSize: 14),
            )
          ],
        ));
  }

  /// 屏幕截图
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

  /// 左侧app信息
  Widget _appIntroduction() {
    return Expanded(
      flex: 1,
      child: Card(
          child: GetBuilder<AppDetailsController>(
              builder: (_) => Column(
                    children: [
                      const SizedBox(height: 80),
                      appIcon(_controller.details?.logoFile ?? '',
                          size: 120, radius: 4),
                      const SizedBox(height: 22),
                      Text(
                        _controller.details?.softName ?? '',
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
                            '${_controller.details?.score ?? 0 / 20}\n评分',
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(width: 40),
                          const Divider(
                            direction: Axis.vertical,
                            size: 50,
                          ),
                          const SizedBox(width: 40),
                          GetBuilder<AppDetailsController>(
                              id: 'comment',
                              builder: (_) => Text(
                                    '${_controller.commentSize}\n评论数',
                                    textAlign: TextAlign.center,
                                  ))
                        ],
                      ),
                    ],
                  ))),
    );
  }
}
