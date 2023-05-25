import 'package:flutter/material.dart';

/// app icon
Widget appIcon(String url) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(8.0),
    child: Image.network(
      url,
      fit: BoxFit.cover,
      width: 40,
      height: 40,
    ),
  );
}

/// 下载按钮
Widget appDownload({Function? onTap}) {
  return GestureDetector(
    onTap: onTap?.call(),
    child: Container(
      //边框设置
      decoration: const BoxDecoration(
        //背景
        color: Colors.blue,
        //设置四周圆角 角度
        borderRadius: BorderRadius.all(Radius.circular(14)),
      ),
      child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
          child:
              Text("下载", style: TextStyle(fontSize: 12, color: Colors.white))),
    ),
  );
}
