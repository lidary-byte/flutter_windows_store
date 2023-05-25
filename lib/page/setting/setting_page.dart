
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: () async {

        },
        icon: Icon(Icons.telegram),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
