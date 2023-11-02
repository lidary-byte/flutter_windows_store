import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_windows_store/entity/home_recommend_contents_entity.dart';
import 'package:flutter_windows_store/entity/top_contents_entity.dart';
import 'package:flutter_windows_store/http/http_manage.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin {
  final List<HomeRecommendContentsEntity> _homeList = [];

  List<HomeRecommendContentsEntity> get homeList => _homeList;

  final List<TopContentsEntity> _banner = [];

  List<TopContentsEntity> get banner => _banner;

  @override
  void onReady() {
    super.onReady();
    _homeData();
  }

  void _homeData() async {
    change(null, status: RxStatus.loading());
    final banner = HttpManager.getInstance().get<List<TopContentsEntity>>(
        "appstorecontents/page/top_contents",
        queryParameters: {'pageType': 'soft'});
    final homeList = HttpManager.getInstance()
        .get<List<HomeRecommendContentsEntity>>(
            "appstorecontents/page/op_recommend_contents",
            queryParameters: {'pageType': 'soft'});
    try {
      final resp = await Future.wait([banner,homeList]);

      if (resp.isNotEmpty && resp[0].isSuccess && resp[0].data != null) {
        _banner.clear();
        _banner.addAll(resp[0].data as List<TopContentsEntity>);
      }
      if (resp.length > 1 && resp[1].isSuccess && resp[1].data != null) {
        _homeList.clear();
        _homeList.addAll(resp[1].data as List<HomeRecommendContentsEntity>);
      }
      change(null, status: RxStatus.success());
    } on DioException catch (e) {
      e.printError;
      change(null, status: RxStatus.error());
    }
  }

  void downloadApp(
      String softId, String bizInfo, String softName, String icon) async {
    try {
      // final resp = await HttpManager.getInstance()
      //     .get('dlservice/getPcSoftDownloadUrlList', queryParameters: {
      //   // 这两个参数是必填项
      //   'softid': softId,
      //   'bizInfo': bizInfo,
      //   'bizType': '1',
      //   'product': '1',
      //   'vc': '2.0.44',
      //   'deviceModel': 'Lenovo ThinkBook 14p Gen 2',
      //   'deviceId': '4cd5770a7021',
      //   'sn': 'PF3BB6GM',
      //   'os': 'Windows 10 Home(x64)',
      //   'osBit': '64',
      //   'vt': '1',
      //   'cVersionName': '8.7.30.0524',
      //   'cVersionCode': '8.7.30.0524'
      // });
      // if (resp['status'] == 0 && resp['data'] != null) {
      //   final map = {'name': softName, 'icon': icon};
      //   DownloadUtil.getInstance().download(
      //       (resp['data']['downloadUrls'] as List)[0]['downLoadUrl'],
      //       softId,
      //       resp['data']['fileName'],
      //       jsonEncode(map));
      // }
      // change(null, status: RxStatus.success());
    } on DioError catch (e) {
      e.printError;
      change(null, status: RxStatus.error());
    }
  }
}
