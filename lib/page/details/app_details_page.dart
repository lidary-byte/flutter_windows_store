import 'package:flutter/material.dart';
import 'package:flutter_windows_store/page/details/app_details_controller.dart';
import 'package:get/get.dart';

class AppDetailsPage extends StatelessWidget {
  AppDetailsPage({Key? key}) : super(key: key);
  final _controller = Get.put(AppDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            color: Colors.blue,
          )),
    );
  }
}
