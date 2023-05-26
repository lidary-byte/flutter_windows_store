import 'package:flutter/material.dart';
import 'package:flutter_meedu_videoplayer/meedu_player.dart';
import 'package:flutter_windows_store/page/details/app_details_controller.dart';
import 'package:get/get.dart';

class AppDetailsPage extends StatelessWidget {
  AppDetailsPage({Key? key}) : super(key: key);
  final _controller = Get.put(AppDetailsController());
  final MeeduPlayerController _meeduPlayerController = MeeduPlayerController(
      controlsStyle: ControlsStyle.secondary, manageWakeLock: false);

  @override
  Widget build(BuildContext context) {
    _meeduPlayerController.setDataSource(DataSource(
        type: DataSourceType.network,
        source:
            "https://pc-store-video.lenovomm.cn/30436f5f88a64bc6bfc8f23a5e33d279/11ed684e366d4bfbb6d97ba2f0c71563-29067d48ec85ff5d7f89cb46ae732442-sd.mp4?auth_key=1685097865-0-0-f223e7608c3c7a1c5055ff34b8048001"));
    return Center(
      child: MeeduVideoPlayer(
        controller: _meeduPlayerController,
      ),
    );
  }
}
