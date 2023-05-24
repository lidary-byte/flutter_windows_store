import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_windows_store/page/home/home_controller.dart';
import 'package:get/get.dart';

import '../../bean/home_list_entity.dart';

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
    return _controller.obx((state) => ListView.builder(
          itemBuilder: (context, index) => index == 0
              ? _topBanner()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        _controller.homeList[index - 1]['title'],
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 200,
                      child: GridView.extent(
                          mainAxisSpacing: 18,
                          maxCrossAxisExtent: 120,
                          scrollDirection: Axis.vertical,
                          children: _gridItem(_controller.homeList[index - 1])),
                    )
                  ],
                ),
          itemCount: _controller.homeList.length + 1,
        ));
  }

  List<Widget> _gridItem(dynamic appList) {
    if (appList['card_type'] == 'rank_list') {
      return (appList['dataList'][0]['apps'] as List)
          .map((e) => Column(
                children: [
                  Image.network(
                    e['logoFile'],
                    height: 40,
                    width: 40,
                  ),
                  Text(e['softName']),
                  Text(e['downloadCount'])
                ],
              ))
          .toList();
    }
    if (appList['card_type'] == 'course_rank_list_parts') {
      return (appList['dataList'][0]['courseList'] as List)
          .map((e) => Column(
                children: [
                  Image.network(
                    e['imgUrl'],
                    height: 40,
                    width: 40,
                  ),
                  Text(e['name']),
                  Text(e['shortDesc'])
                ],
              ))
          .toList();
    }
    return <Widget>[];
  }

  Widget _topBanner() {
    List<Widget>? bannerWidget = (_controller.banner[0]['dataList'] as List)
        .map((e) => GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(e['contentImgBig']),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                width: double.maxFinite,
              ),
            ))
        .toList();
    return Row(
      children: [
        BannerCarousel(
          customizedBanners: bannerWidget,
          customizedIndicators: const IndicatorModel.animation(
              width: 20, height: 5, spaceBetween: 2, widthAnimation: 50),
          height: 200,
          activeColor: Colors.blue,
          disableColor: Colors.grey,
          animation: true,
          borderRadius: 10,
          width: 500,
          indicatorBottom: false,
        ),
        // Expanded(
        //     child: SizedBox(
        //   width: double.infinity,
        //   height: 200,
        //   child: GridView.builder(
        //     //      physics:const NeverScrollableScrollPhysics(),
        //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 2),
        //     itemBuilder: (context, index) {
        //       return Container(
        //         width: 4,
        //         height: 4,
        //         decoration: BoxDecoration(
        //             image: DecorationImage(
        //               image: NetworkImage(_controller
        //                       .banner[1].dataList?[index].contentImgBig ??
        //                   ''),
        //               fit: BoxFit.cover,
        //             ),
        //             borderRadius: BorderRadius.circular(10)),
        //       );
        //     },
        //     itemCount: _controller.banner[1].dataList?.length,
        //   ),
        // ))
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
