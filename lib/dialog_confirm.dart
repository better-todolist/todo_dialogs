
import 'package:flutter/material.dart';

/// 确定弹窗
///
/// 弹出弹窗，要求用户确认行为
Future<bool> dialogConfirm(BuildContext context, {
  /// 确认弹窗显示的内容
  required Widget content,
  required Widget title,
  Icon icon = const Icon(Icons.info_outlined),
})async {
  /// TODO: 实现确认弹窗
  ///
  /// 1. 如果用户点击确认按键，那就返回 true,
  /// 2. 如果用户点击取消按键或者直接返回了，那就返回false
  /// 3. 可酌情添加参数，但是最好不会改变原本的使用方式
  throw UnimplementedError();
}

