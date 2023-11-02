import 'package:fluent_ui/fluent_ui.dart';

typedef ContentWidget = Widget Function();

class StatusPage extends StatelessWidget {
  final VoidCallback? onRetry;
  final PageStatus? status;
  final ContentWidget contentWidget;

  const StatusPage(
      {super.key, required this.contentWidget, this.status, this.onRetry});

  @override
  Widget build(BuildContext context) {
    return _statusWidget();
  }

  Widget _statusWidget() {
    if (status is LoadingStatus) {
      return const Center(
        child: ProgressRing(),
      );
    } else if (status is SuccessStatus) {
      return contentWidget.call();
    } else if (status is ErrorStatus) {
      final errorBean = status as ErrorStatus;
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(errorBean.errorMsg ?? '数据加载异常'),
          const SizedBox(height: 16),
          FilledButton(onPressed: onRetry, child: const Text('重试'))
        ],
      );
    }
    return const SizedBox();
  }
}

abstract class PageStatus {}

class LoadingStatus extends PageStatus {}

class SuccessStatus extends PageStatus{}

class ErrorStatus extends PageStatus {
  String? errorMsg;

  ErrorStatus({this.errorMsg});
}
