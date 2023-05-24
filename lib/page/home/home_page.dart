import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_windows_store/page/home/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  final _controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GetBuilder<HomeController>(
      builder: (_) => ListView.builder(
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          _banner(),
        //     Padding(
        //       padding: const EdgeInsets.all(16),
        //       child: Text(
        //         _controller.homeBean[index].title ?? '',
        //         style:
        //             const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        //       ),
        //     ),
        //     Container(
        //       height: 200,
        //       child: GridView.builder(
        //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //             crossAxisCount: 2),
        //         itemBuilder: (context, gridIndex) => _gridItem(
        //             _controller.homeBean[index].dataList?[0].apps?[gridIndex]),
        //         itemCount:
        //             _controller.homeBean[index].dataList?[0].apps?.length ?? 0,
        //         scrollDirection: Axis.horizontal,
        //       ),
        //     )
          ],
        ),
        itemCount: 1//_controller.homeBean.length,
      ),
    );
  }

  // Widget _gridItem(HomeContentBeanDataDataListApps? homeContentBeanData) {
  //   return Column(
  //     children: [
  //       Image.network(
  //         homeContentBeanData?.logoFile ?? '',
  //         height: 40,
  //         width: 40,
  //       ),
  //       Text(homeContentBeanData?.softName ?? ''),
  //       Text(homeContentBeanData?.downloadCount ?? '')
  //     ],
  //   );
  // }

  Widget _banner() {
    return Row(
      children: [
        BannerCarousel(
          banners: _controller.bannerList,
          customizedIndicators: IndicatorModel.animation(width: 20, height: 5, spaceBetween: 2, widthAnimation: 50),
          height: 120,
          activeColor: Colors.amberAccent,
          disableColor: Colors.white,
          animation: true,
          borderRadius: 10,
          width: 250,
          indicatorBottom: false,
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
