import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_windows_store/page/home/home_controller.dart';
import 'package:flutter_windows_store/widget/app_comm_widget.dart';
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
    return PrimaryScrollController(
        controller: ScrollController(),
        child: _controller
            .obx((state) => CustomScrollView(slivers: _buildItem())));
  }

  List<Widget> _buildItem() {
    final widgets = <Widget>[];
    // banner
    widgets.add(SliverList(delegate: SliverChildListDelegate([_topBanner()])));
    final rankList = _controller.homeList
        .where((element) => element['cardType'] == 'rank_list');

    for (var element in rankList) {
      widgets.add(SliverToBoxAdapter(
          child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                element['title'],
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ))));
      final apps = element['dataList'][0]['apps'] as List;
      widgets.add(SliverPadding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        sliver: SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 5,
              mainAxisSpacing: 6,
              crossAxisSpacing: 14),
          itemBuilder: (context, index) => _rankItem(apps[index]),
          itemCount: apps.length,
        ),
      ));
    }
    return widgets;
  }

  Widget _rankItem(dynamic rankItem) {
    return Column(
      children: [
        Row(
          children: [
            appIcon(rankItem['logoFile']),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  rankItem['softName'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(rankItem['downloadCount'],
                    maxLines: 1, overflow: TextOverflow.ellipsis),
              ],
            )),
            Center(
                child: commBtn('下载',
                    onTap: () => _controller.downloadApp(
                        rankItem['softID'], rankItem['bizInfo'])))
          ],
        ),
        Padding(
            padding: const EdgeInsets.only(left: 50, top: 10),
            child: Divider(height: 1, color: Colors.grey[300]))
      ],
    );
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
