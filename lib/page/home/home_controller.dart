import 'package:banner_carousel/banner_carousel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_windows_store/bean/home_banner_entity.dart';
import 'package:flutter_windows_store/http/http_manage.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // final List<HomeContentBeanData> _homeBean = [];
  //
  // List<HomeContentBeanData> get homeBean => _homeBean;

  final List<BannerModel> _bannerList = [];

  List<BannerModel> get bannerList => _bannerList;

  final List<HomeBannerData> _banner = [];

  List<HomeBannerData> get banner => _banner;
 

  @override
  void onReady() {
    super.onReady();
    // _homeList();
    _homeBanner();
  }

  void _homeBanner() async {
    try {
      var rep = await HttpManager.getInstance().get(
          "appstorecontents/page/top_contents",
          queryParameters: {'pageType': 'soft'});
      var data = HomeBannerEntity.fromJson(rep);
      if (data.status == 0 && data.data != null) {
        _bannerList.clear();
        data.data?[0].dataList?.forEach((element) {
          _bannerList.add(
              BannerModel(imagePath: element.contentImgBig ?? '', id: '${element.contentImgBig}'));
        });
        _banner.clear();
        _banner.addAll(data.data!);
        update();
      }
    } on DioError catch (e) {
      e.printError;
    }
  }

  // void _homeList() async {
  //   try {
  //     var rep = await HttpManager.getInstance()
  //         .get("api/webstorecontents/page/contents");
  //     var data = HomeContentBeanEntity.fromJson(rep);
  //
  //     if (data.status == 0 && data.data != null) {
  //       _homeBean.clear();
  //       _homeBean.addAll(data.data!);
  //       update();
  //     }
  //   } on DioError catch (e) {
  //     e.printError;
  //   }
  // }
}
