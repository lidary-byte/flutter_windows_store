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

/// app 通用按钮
Widget commBtn(String text, {GestureTapCallback? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      //边框设置
      decoration: const BoxDecoration(
        //背景
        color: Colors.blue,
        //设置四周圆角 角度
        borderRadius: BorderRadius.all(Radius.circular(14)),
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
          child: Text(text,
              style: const TextStyle(fontSize: 12, color: Colors.white))),
    ),
  );
}
