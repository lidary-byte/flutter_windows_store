import 'package:flutter_windows_store/widget/status_page.dart';
import 'package:get/get.dart';

class StatusController extends GetxController {
  PageStatus _pageStatus = LoadingStatus();

  PageStatus get pageStatus => _pageStatus;

  void updateLoading({List<Object>? ids, bool condition = true}) {
    if (_pageStatus is LoadingStatus) {
      return;
    }
    _pageStatus = LoadingStatus();
    update(ids, condition);
  }

  void updateError(
      {String? errorMsg, List<Object>? ids, bool condition = true}) {
    if (_pageStatus is ErrorStatus) {
      return;
    }
    _pageStatus = ErrorStatus(errorMsg: errorMsg);
    update(ids, condition);
  }

  void updateSuccess({List<Object>? ids, bool condition = true}) {
    if (_pageStatus is SuccessStatus) {
      return;
    }
    _pageStatus = SuccessStatus();
    update(ids, condition);
  }
}
