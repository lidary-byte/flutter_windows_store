import 'package:banner_carousel/banner_carousel.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_windows_store/constant/router_pages.dart';
import 'package:flutter_windows_store/entity/home_recommend_contents_entity.dart';
import 'package:flutter_windows_store/page/home/home_controller.dart';
import 'package:flutter_windows_store/widget/app_comm_widget.dart';
import 'package:flutter_windows_store/widget/status_page.dart';
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
        builder: (context) => StatusPage(
            contentWidget: () => PrimaryScrollController(
                controller: ScrollController(),
                child: CustomScrollView(slivers: _buildItem())),
            status: _controller.pageStatus,
            onRetry: _controller.homeData));
  }

  List<Widget> _buildItem() {
    final widgets = <Widget>[];
    // banner
    widgets.add(SliverPadding(
      padding: const EdgeInsets.only(top: 12),
      sliver: SliverList(delegate: SliverChildListDelegate([_topBanner()])),
    ));
    final rankList = _controller.homeList
        .where((element) => element.cardType == 'rank_list');

    for (var element in rankList) {
      widgets.add(SliverToBoxAdapter(
          child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                element.title ?? '',
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ))));
      final apps = element.dataList?[0].apps;
      widgets.add(SliverPadding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        sliver: SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 3,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12),
          itemBuilder: (context, index) => _rankItem(apps?[index]),
          itemCount: apps?.length,
        ),
      ));
    }
    return widgets;
  }

  Widget _rankItem(HomeRecommendContentsDataListApps? rankItem) {
    return GestureDetector(
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 8),
            Center(
              child: appIcon(rankItem?.logoFile ?? '', size: 80),
            ),
            const SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Text(
                  rankItem?.softName ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(rankItem?.downloadCount ?? '0',
                    maxLines: 1, overflow: TextOverflow.ellipsis),
              ],
            )),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: FilledButton(
                  child: const Text('下载'),
                  onPressed: () => _controller.downloadApp(
                      rankItem?.softID ?? '',
                      rankItem?.bizInfo ?? '',
                      rankItem?.softName ?? '',
                      rankItem?.logoFile ?? '')),
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
      onTap: () => Get.toNamed(RouterPages.detailsPageRouter, arguments: {
        'softId': rankItem?.softID,
        'bizInfo': rankItem?.bizInfo,
      }),
    );
  }

  Widget _topBanner() {
    List<Widget>? bannerWidget = _controller.banner[0].dataList
        ?.map((e) => GestureDetector(
              onTap: () {
                Get.toNamed(RouterPages.detailsPageRouter, arguments: {
                  'softId': e.appInfo?.softID,
                  'bizInfo': e.appInfo?.bizInfo,
                });
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(e.contentImgBig ?? ''),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                width: double.maxFinite,
              ),
            ))
        .toList();

    return BannerCarousel(
      animation: false,
      viewportFraction: 0.60,
      showIndicator: false,
      customizedBanners: bannerWidget,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
